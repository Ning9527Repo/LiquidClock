#import "LACClockTextField.h"
#import "LACClockSDF.h"
#import <CoreText/CoreText.h>
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>

static char kLACClockSDFCacheKey;
@interface LACClockSDFCache : NSObject
@property(nonatomic) float *samples;
@property(nonatomic) LACClockSDFSnapshot snapshot;
@property(nonatomic,copy) NSArray *signature;
@property(nonatomic) uint64_t revision;
@property(nonatomic) uint64_t generationCounter;
@property(nonatomic) float scale;
@property(nonatomic) CGRect bounds;
@property(nonatomic,strong) UITraitCollection *traits;
@end
@implementation LACClockSDFCache
- (void)dealloc { free(_samples); }
@end

static BOOL LACFiniteRect(CGRect r) {
    return isfinite(r.origin.x) && isfinite(r.origin.y) &&
           isfinite(r.size.width) && isfinite(r.size.height) &&
           r.size.width > 0 && r.size.height > 0;
}

/* Map actual local basis vectors, not convertRect's axis-aligned bounding box:
 * rotations, mirroring and non-uniform affine scaling keep the glyph geometry. */
static CGAffineTransform LACMap(UIView *node, UIView *root) {
    CGPoint p = [node convertPoint:CGPointZero toView:root];
    CGPoint x = [node convertPoint:CGPointMake(1,0) toView:root];
    CGPoint y = [node convertPoint:CGPointMake(0,1) toView:root];
    return CGAffineTransformMake(x.x-p.x,x.y-p.y,y.x-p.x,y.y-p.y,p.x,p.y);
}

static BOOL LACFiniteMap(CGAffineTransform t) {
    return isfinite(t.a) && isfinite(t.b) && isfinite(t.c) && isfinite(t.d) &&
           isfinite(t.tx) && isfinite(t.ty) && fabs(t.a*t.d-t.b*t.c) > 1e-10;
}

/* Preserve per-run font descriptors (including variable axes/traits), language,
 * kern, ligature, baseline and writing-direction attributes. Only geometry-mask
 * colors are replaced; missing font/paragraph values receive UILabel defaults.
 * UIFont is explicitly CTFont-bridged in the SDK; recreating by name loses axes. */
static CTParagraphStyleRef LACParagraph(NSParagraphStyle *p) {
    /* These TextKit paragraph policies have no equivalent in the CT paragraph
     * settings below. Do not silently drop them while claiming rich fidelity. */
    if (p.hyphenationFactor != 0 || p.usesDefaultHyphenation ||
        p.lineBreakStrategy != NSLineBreakStrategyNone) return NULL;
    CTTextAlignment align = (CTTextAlignment)p.alignment;
    /* NSTextAlignment and CTTextAlignment have different enum values. */
    switch (p.alignment) {
        case NSTextAlignmentLeft: align=kCTTextAlignmentLeft; break;
        case NSTextAlignmentRight: align=kCTTextAlignmentRight; break;
        case NSTextAlignmentCenter: align=kCTTextAlignmentCenter; break;
        case NSTextAlignmentJustified: align=kCTTextAlignmentJustified; break;
        default: align=kCTTextAlignmentNatural; break;
    }
    CTLineBreakMode mode = (CTLineBreakMode)p.lineBreakMode;
    CTWritingDirection direction = (CTWritingDirection)p.baseWritingDirection;
    CGFloat first=p.firstLineHeadIndent, head=p.headIndent, tail=p.tailIndent;
    CGFloat interval=p.defaultTabInterval, multiple=p.lineHeightMultiple;
    CGFloat maxHeight=p.maximumLineHeight, minHeight=p.minimumLineHeight;
    CGFloat spacing=p.lineSpacing, after=p.paragraphSpacing, before=p.paragraphSpacingBefore;
    NSMutableArray *tabs=[NSMutableArray array];
    for (NSTextTab *tab in p.tabStops) {
        CTTextAlignment ta=kCTTextAlignmentLeft;
        if (tab.alignment==NSTextAlignmentRight) ta=kCTTextAlignmentRight;
        else if (tab.alignment==NSTextAlignmentCenter) ta=kCTTextAlignmentCenter;
        else if (tab.alignment==NSTextAlignmentNatural) ta=kCTTextAlignmentNatural;
        CTTextTabRef t=CTTextTabCreate(ta,tab.location,(__bridge CFDictionaryRef)tab.options);
        if (t) { [tabs addObject:CFBridgingRelease(t)]; }
    }
    CFArrayRef tabArray=(__bridge CFArrayRef)tabs;
#define S(spec,value) {kCTParagraphStyleSpecifier##spec,sizeof(value),&value}
    CTParagraphStyleSetting settings[]={
        S(Alignment,align), S(LineBreakMode,mode), S(BaseWritingDirection,direction),
        S(FirstLineHeadIndent,first), S(HeadIndent,head), S(TailIndent,tail),
        S(TabStops,tabArray), S(DefaultTabInterval,interval), S(LineHeightMultiple,multiple),
        S(MaximumLineHeight,maxHeight), S(MinimumLineHeight,minHeight),
        S(LineSpacingAdjustment,spacing), S(ParagraphSpacing,after), S(ParagraphSpacingBefore,before)
    };
#undef S
    return CTParagraphStyleCreate(settings,sizeof(settings)/sizeof(settings[0]));
}

static NSAttributedString *LACSource(UILabel *label) {
    if (label.attributedText.length) {
        NSMutableAttributedString *s=[label.attributedText mutableCopy];
        [label.attributedText enumerateAttributesInRange:NSMakeRange(0,s.length) options:0
            usingBlock:^(NSDictionary *attrs, NSRange range, BOOL *stop) {
                (void)stop;
                /* Deep-copy mutable paragraph styles for correct cache equality. */
                id p=attrs[NSParagraphStyleAttributeName];
                if ([p isKindOfClass:NSParagraphStyle.class])
                    [s addAttribute:NSParagraphStyleAttributeName value:[p copy] range:range];
                /* NSAttributedString copy does not deep-copy attribute values. */
                for (NSString *key in @[NSWritingDirectionAttributeName,
                        (__bridge NSString *)kCTWritingDirectionAttributeName,
                        (__bridge NSString *)kCTLanguageAttributeName]) {
                    id value=attrs[key];
                    if ([value conformsToProtocol:@protocol(NSCopying)])
                        [s addAttribute:key value:[value copy] range:range];
                }
            }];
        return s;
    }
    if (!label.text.length) return nil;
    return [[NSAttributedString alloc] initWithString:label.text];
}

static NSAttributedString *LACClockText(UILabel *label, NSAttributedString *source) {
    if (!source.length || source.length > 16384) return nil;
    NSMutableAttributedString *text=[source mutableCopy];
    NSMutableParagraphStyle *fallback=[NSMutableParagraphStyle new];
    fallback.alignment=label.textAlignment;
    fallback.lineBreakMode=label.lineBreakMode;
    /* Natural direction stays natural; CoreText uses Unicode bidi and the
     * preserved NSWritingDirection run overrides, never reverse the string. */
    fallback.baseWritingDirection=NSWritingDirectionNatural;
    __block BOOL supported=YES;
    [source enumerateAttributesInRange:NSMakeRange(0,source.length) options:0
        usingBlock:^(NSDictionary *attrs, NSRange range, BOOL *stop) {
            (void)stop;
            if (attrs[NSAttachmentAttributeName] || attrs[(__bridge NSString *)kCTRunDelegateAttributeName]) {
                supported=NO; return;
            }
            id font=attrs[(__bridge NSString *)kCTFontAttributeName] ?: attrs[NSFontAttributeName];
            if (!font) font=label.font ?: [UIFont systemFontOfSize:17];
            [text addAttribute:(__bridge NSString *)kCTFontAttributeName value:font range:range];
            if (!attrs[(__bridge NSString *)kCTParagraphStyleAttributeName]) {
                NSParagraphStyle *p=attrs[NSParagraphStyleAttributeName] ?: fallback;
                if (![p isKindOfClass:NSParagraphStyle.class]) { supported=NO; return; }
                CTParagraphStyleRef cp=LACParagraph(p);
                if (!cp) { supported=NO; return; }
                [text addAttribute:(__bridge NSString *)kCTParagraphStyleAttributeName
                             value:CFBridgingRelease(cp) range:range];
            }
        }];
    if (!supported) return nil;
    NSRange all=NSMakeRange(0,text.length);
    [text addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:all];
    [text addAttribute:(__bridge NSString *)kCTForegroundColorAttributeName
                 value:(__bridge id)UIColor.whiteColor.CGColor range:all];
    [text addAttribute:(__bridge NSString *)kCTForegroundColorFromContextAttributeName value:@YES range:all];
    [text addAttribute:NSStrokeColorAttributeName value:UIColor.whiteColor range:all];
    [text addAttribute:(__bridge NSString *)kCTStrokeColorAttributeName
                 value:(__bridge id)UIColor.whiteColor.CGColor range:all];
    [text addAttribute:NSUnderlineColorAttributeName value:UIColor.whiteColor range:all];
    [text addAttribute:(__bridge NSString *)kCTUnderlineColorAttributeName
                 value:(__bridge id)UIColor.whiteColor.CGColor range:all];
    [text addAttribute:NSStrikethroughColorAttributeName value:UIColor.whiteColor range:all];
    [text removeAttribute:NSBackgroundColorAttributeName range:all];
    [text removeAttribute:(__bridge NSString *)kCTBackgroundColorAttributeName range:all];
    [text removeAttribute:NSShadowAttributeName range:all];
    return text;
}

static BOOL LACHasUnsupportedLayer(CALayer *layer, NSUInteger *budget) {
    if (layer.hidden || layer.opacity <= 0.01) return NO;
    if (!*budget) return YES;
    --*budget;
    if ([layer isKindOfClass:CATextLayer.class]) return YES;
    for (CALayer *child in layer.sublayers) {
        /* UIView-owned layers are visited through the view tree. */
        if ([child.delegate isKindOfClass:UIView.class]) continue;
        if (LACHasUnsupportedLayer(child,budget)) return YES;
    }
    return NO;
}

static BOOL LACCollect(UIView *node, UIView *root, NSMutableArray *labels,
                        NSMutableArray *signature, NSUInteger *budget, NSUInteger depth) {
    if (!*budget || depth > 64) return NO;
    --*budget;
    if (node.hidden || node.alpha <= 0.01) return YES;
    if (!LACFiniteRect(node.bounds) || !CATransform3DIsAffine(node.layer.transform) ||
        !CATransform3DIsIdentity(node.layer.sublayerTransform) || node.layer.mask ||
        (node.clipsToBounds && node.layer.cornerRadius > 0)) return NO;
    CGAffineTransform map=LACMap(node,root);
    if (!LACFiniteMap(map)) return NO;
    [signature addObject:@[[NSValue valueWithNonretainedObject:node],
        [NSValue valueWithCGRect:node.bounds], [NSValue valueWithCGAffineTransform:map],
        @(node.clipsToBounds), @(node.alpha)]];
    if ([node isKindOfClass:UILabel.class]) {
        UILabel *label=(UILabel *)node;
        NSAttributedString *source=LACSource(label);
        if (source.length) {
            if (labels.count >= 64) return NO;
            [labels addObject:@[label,source]];
            [signature addObject:@[source,label.font ?: [UIFont systemFontOfSize:17],
                @(label.textAlignment),@(label.lineBreakMode),@(label.numberOfLines),
                @(label.adjustsFontSizeToFitWidth),@(label.minimumScaleFactor),
                @(label.baselineAdjustment),@(label.allowsDefaultTighteningForTruncation),
                @(label.lineBreakStrategy),@(label.effectiveUserInterfaceLayoutDirection)]];
        }
    }
    NSUInteger layerBudget=512;
    if (LACHasUnsupportedLayer(node.layer,&layerBudget)) return NO;
    for (UIView *child in node.subviews)
        if (!LACCollect(child,root,labels,signature,budget,depth+1)) return NO;
    return YES;
}

static BOOL LACDrawLabel(CGContextRef ctx, UIView *root, UILabel *label,
                          NSAttributedString *source) {
    NSAttributedString *text=LACClockText(label,source);
    if (!text) return NO;
    CGRect r=[label textRectForBounds:label.bounds limitedToNumberOfLines:label.numberOfLines];
    if (!LACFiniteRect(r)) return NO;
    /* Do not silently approximate UIKit's font shrinking or tracking fitter.
     * A fitting-enabled label is supported only when its unscaled line fits. */
    if (label.adjustsFontSizeToFitWidth || label.allowsDefaultTighteningForTruncation) {
        CTLineRef line=CTLineCreateWithAttributedString((__bridge CFAttributedStringRef)text);
        if (!line) return NO;
        double width=CTLineGetTypographicBounds(line,NULL,NULL,NULL);
        CFRelease(line);
        if (width > label.bounds.size.width+0.01) return NO;
    }
    CTFramesetterRef setter=CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef)text);
    CGPathRef path=CGPathCreateWithRect(CGRectMake(0,0,r.size.width,r.size.height),NULL);
    CTFrameRef frame=(setter && path) ? CTFramesetterCreateFrame(setter,CFRangeMake(0,text.length),path,NULL) : NULL;
    if (setter) CFRelease(setter);
    if (path) CGPathRelease(path);
    if (!frame) return NO;
    CFArrayRef lines=CTFrameGetLines(frame);
    CFIndex lineCount=CFArrayGetCount(lines);
    CFRange visible=CTFrameGetVisibleStringRange(frame);
    /* CoreText frames do not reproduce UILabel's final-line ellipsis/fitting.
     * Reject overflowing/truncated strings instead of publishing wrong glyphs.
     * Fully fitting single/multiline rich text keeps all paragraph metrics. */
    BOOL complete=(lineCount > 0 && (label.numberOfLines <= 0 || lineCount <= label.numberOfLines));
    if (visible.location+visible.length < (CFIndex)text.length) {
        NSString *tail=[text.string substringFromIndex:(NSUInteger)(visible.location+visible.length)];
        complete=complete && [tail stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet].length==0;
    }
    /* A clipping/truncating paragraph may report the entire string visible
     * while its unbroken line exceeds the frame. Never publish clipped glyphs
     * as if UIKit's ellipsis/fitting had been reproduced. */
    for (CFIndex i=0;complete && i<lineCount;++i) {
        CTLineRef line=(CTLineRef)CFArrayGetValueAtIndex(lines,i);
        CGPoint origin;
        CTFrameGetLineOrigins(frame,CFRangeMake(i,1),&origin);
        double used=CTLineGetTypographicBounds(line,NULL,NULL,NULL)-CTLineGetTrailingWhitespaceWidth(line);
        complete=isfinite(used) && isfinite(origin.x) && isfinite(origin.y) &&
                 origin.x >= -0.01 && origin.x+fmax(0.0,used) <= r.size.width+0.01;
    }
    if (!complete) { CFRelease(frame); return NO; }
    CGContextSaveGState(ctx);
    for (UIView *ancestor=(label==root ? nil : label.superview); ancestor; ancestor=ancestor.superview) {
        if (ancestor.clipsToBounds || ancestor==root) {
            CGAffineTransform t=LACMap(ancestor,root);
            CGMutablePathRef clip=CGPathCreateMutable();
            CGPathAddRect(clip,&t,ancestor.bounds);
            CGContextAddPath(ctx,clip); CGContextClip(ctx); CGPathRelease(clip);
        }
        if (ancestor==root) break;
    }
    CGContextConcatCTM(ctx,LACMap(label,root));
    CGContextClipToRect(ctx,label.bounds);
    /* Raw bitmap ROW ZERO is our top row. Keep UIKit y-down coordinates in
     * buffer space, and flip CoreText locally exactly once. Never perform a
     * second ph-maxY conversion or a post-render row flip. Bounds origin and
     * all affine ancestors have already been included by LACMap. */
    CGContextTranslateCTM(ctx,r.origin.x,CGRectGetMaxY(r));
    CGContextScaleCTM(ctx,1,-1);
    CGContextSetTextMatrix(ctx,CGAffineTransformIdentity);
    CTFrameDraw(frame,ctx);
    CGContextRestoreGState(ctx);
    CFRelease(frame);
    return YES;
}

static float *LACBuild(UIView *view, NSArray *labels, float scale,
                        uint32_t width, uint32_t height) {
    const size_t count=(size_t)width*height;
    uint8_t *mask=(uint8_t *)calloc(count,1);
    if (!mask) return NULL;
    CGColorSpaceRef gray=CGColorSpaceCreateDeviceGray();
    CGContextRef ctx=gray ? CGBitmapContextCreate(mask,width,height,8,width,gray,kCGImageAlphaNone) : NULL;
    if (gray) CGColorSpaceRelease(gray);
    if (!ctx) { free(mask); return NULL; }
    CGContextScaleCTM(ctx,scale,scale);
    CGContextTranslateCTM(ctx,-view.bounds.origin.x,-view.bounds.origin.y);
    CGContextClipToRect(ctx,view.bounds);
    CGContextSetGrayFillColor(ctx,1,1); CGContextSetGrayStrokeColor(ctx,1,1);
    CGContextSetShouldAntialias(ctx,true);
    CGContextSetShouldSmoothFonts(ctx,false);
    BOOL ok=YES;
    for (NSArray *entry in labels)
        if (!LACDrawLabel(ctx,view,entry[0],entry[1])) { ok=NO; break; }
    CGContextFlush(ctx); CGContextRelease(ctx);
    BOOL anyIn=NO, anyOut=NO;
    for (size_t i=0;i<count;++i) { anyIn |= mask[i]>=128; anyOut |= mask[i]<128; }
    float *distance=ok && anyIn && anyOut ? (float *)malloc(count*sizeof(float)) : NULL;
    if (distance && !LACClockSDFCreate(mask,width,height,width,scale,distance,count)) {
        free(distance); distance=NULL;
    }
    free(mask);
    return distance;
}

static void LACClear(LACClockSDFCache *cache) {
    free(cache.samples); cache.samples=NULL;
    cache.signature=nil; cache.revision=0;
    LACClockSDFSnapshot empty={}; cache.snapshot=empty;
}

#include "LACClockGeometry.hpp"
static char kLACReplacementCacheKey;

static CGPathRef LACReplacementPath(NSAttributedString *text) CF_RETURNS_RETAINED;
static CGPathRef LACReplacementPath(NSAttributedString *text) {
    CTLineRef line=CTLineCreateWithAttributedString((__bridge CFAttributedStringRef)text);
    if(!line)return NULL;
    CGMutablePathRef path=CGPathCreateMutable();
    CFArrayRef runs=CTLineGetGlyphRuns(line);BOOL ok=YES;
    for(CFIndex r=0;ok&&r<CFArrayGetCount(runs);++r) {
        CTRunRef run=(CTRunRef)CFArrayGetValueAtIndex(runs,r);
        NSDictionary *attrs=(__bridge NSDictionary *)CTRunGetAttributes(run);
        CTFontRef font=(__bridge CTFontRef)attrs[(__bridge NSString *)kCTFontAttributeName];
        CGAffineTransform matrix=CTRunGetTextMatrix(run);
        CFIndex count=CTRunGetGlyphCount(run);
        if(!font||!LACFiniteMap(matrix)||count>1024){ok=NO;break;}
        for(CFIndex i=0;ok&&i<count;++i) {
            CGGlyph glyph=0;CGPoint position=CGPointZero;
            CTRunGetGlyphs(run,CFRangeMake(i,1),&glyph);
            CTRunGetPositions(run,CFRangeMake(i,1),&position);
            if(!glyph||!isfinite(position.x)||!isfinite(position.y)){ok=NO;break;}
            CGPathRef part=CTFontCreatePathForGlyph(font,glyph,NULL);
            // A missing outline may be a color glyph. No guessed bitmap fallback.
            if(!part){ok=NO;break;}
            CGAffineTransform t=matrix;t.tx+=position.x;t.ty+=position.y;
            CGPathAddPath(path,&t,part);CGPathRelease(part);
        }
    }
    CFRelease(line);
    if(!ok||CGPathIsEmpty(path)){CGPathRelease(path);return NULL;}
    return path;
}

int LACClockGetReplacementSDF(UIView *owner,UILabel *label,UIFont *fontOverride,
    CGSize pointSize,CGFloat digitHeight,float scale,LACClockSDFSnapshot *out) {
    if(out)memset(out,0,sizeof(*out));
    if(!out||!owner||!NSThread.isMainThread)return 0;
    LACClockSDFCache *cache=objc_getAssociatedObject(owner,&kLACReplacementCacheKey);
    if(!cache){cache=[LACClockSDFCache new];objc_setAssociatedObject(owner,&kLACReplacementCacheKey,cache,OBJC_ASSOCIATION_RETAIN_NONATOMIC);}
    unsigned width=0,height=0;
    if(!label||!lacclock::rasterSize(pointSize.width,pointSize.height,scale,width,height)||
       !isfinite(digitHeight)||digitHeight<=0||digitHeight>pointSize.height){LACClear(cache);return 0;}
    NSAttributedString *source=LACSource(label);
    if(!source.length||source.length>128||[source.string rangeOfCharacterFromSet:NSCharacterSet.newlineCharacterSet].location!=NSNotFound){LACClear(cache);return 0;}
    NSMutableAttributedString *styled=[source mutableCopy];
    if(fontOverride) {
        NSRange all=NSMakeRange(0,styled.length);
        [styled addAttribute:NSFontAttributeName value:fontOverride range:all];
        [styled addAttribute:(__bridge NSString *)kCTFontAttributeName value:fontOverride range:all];
    }
    NSAttributedString *text=LACClockText(label,styled);
    __block BOOL supported=text!=nil;
    [text enumerateAttributesInRange:NSMakeRange(0,text.length) options:0 usingBlock:^(NSDictionary *a,NSRange range,BOOL *stop){
        (void)range;(void)stop;
        for(NSString *key in @[NSUnderlineStyleAttributeName,NSStrikethroughStyleAttributeName,NSStrokeWidthAttributeName,NSBaselineOffsetAttributeName])
            if([a[key] doubleValue]!=0)supported=NO;
    }];
    if(!supported){LACClear(cache);return 0;}
    NSArray *signature=@[text,@(digitHeight),[NSValue valueWithCGSize:pointSize],@(scale),owner.traitCollection];
    if(cache.samples&&[signature isEqualToArray:cache.signature]){*out=cache.snapshot;return 1;}
    CGPathRef path=LACReplacementPath(text);
    lacclock::PathFit fit={};
    CGRect ink=path?CGPathGetPathBoundingBox(path):CGRectZero;
    if(!path||!lacclock::fitPath({ink.origin.x,ink.origin.y,ink.size.width,ink.size.height},pointSize.width,digitHeight,fit)) {
        if(path)CGPathRelease(path);LACClear(cache);return 0;
    }
    const size_t count=(size_t)width*height;
    uint8_t *mask=(uint8_t *)calloc(count,1);
    CGColorSpaceRef gray=CGColorSpaceCreateDeviceGray();
    CGContextRef ctx=mask&&gray?CGBitmapContextCreate(mask,width,height,8,width,gray,kCGImageAlphaNone):NULL;
    if(gray)CGColorSpaceRelease(gray);
    if(!ctx){free(mask);CGPathRelease(path);LACClear(cache);return 0;}
    CGContextScaleCTM(ctx,scale,scale);
    CGContextClipToRect(ctx,CGRectMake(0,0,pointSize.width,pointSize.height));
    // One y flip, at the ink's maxY, places its top at row zero.
    CGContextConcatCTM(ctx,CGAffineTransformMake(fit.scale,0,0,-fit.scale,fit.tx,fit.ty));
    CGContextSetGrayFillColor(ctx,1,1);CGContextSetShouldAntialias(ctx,true);
    CGContextAddPath(ctx,path);CGContextFillPath(ctx);CGContextFlush(ctx);
    CGContextRelease(ctx);CGPathRelease(path);
    BOOL inside=NO,outside=NO;
    for(size_t i=0;i<count;++i){inside|=mask[i]>=128;outside|=mask[i]<128;}
    float *distance=inside&&outside?(float *)malloc(count*sizeof(float)):NULL;
    if(distance&&!LACClockSDFCreate(mask,width,height,width,scale,distance,count)){free(distance);distance=NULL;}
    free(mask);
    if(!distance||cache.generationCounter==UINT64_MAX){free(distance);LACClear(cache);return 0;}
    free(cache.samples);cache.samples=distance;cache.signature=signature;
    LACClockSDFSnapshot built={width,height,(float)pointSize.width,(float)pointSize.height,distance,count,++cache.generationCounter};
    cache.snapshot=built;*out=built;return 1;
}

void LACClockInvalidateSDFCacheForView(UIView *view) {
    if (!view || !NSThread.isMainThread) return;
    LACClear(objc_getAssociatedObject(view,&kLACClockSDFCacheKey));
    LACClear(objc_getAssociatedObject(view,&kLACReplacementCacheKey));
}

int LACClockGetSDFForView(UIView *view, float scale, uint64_t revision,
                         LACClockSDFSnapshot *out) {
    if (out) memset(out,0,sizeof(*out));
    if (!out || !view || !NSThread.isMainThread || !isfinite(scale) || scale<1 || scale>4) return 0;
    LACClockSDFCache *cache=objc_getAssociatedObject(view,&kLACClockSDFCacheKey);
    if (!cache) {
        cache=[LACClockSDFCache new];
        objc_setAssociatedObject(view,&kLACClockSDFCacheKey,cache,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    CGRect bounds=view.bounds;
    if (!LACFiniteRect(bounds) || bounds.size.width>2048 || bounds.size.height>2048) {
        LACClear(cache); return 0;
    }
    const uint32_t width=(uint32_t)ceil(bounds.size.width*scale);
    const uint32_t height=(uint32_t)ceil(bounds.size.height*scale);
    if (!width || !height || width>1024 || height>1024) { LACClear(cache); return 0; }
    BOOL sameGeometry=cache.samples && CGRectEqualToRect(cache.bounds,bounds) &&
                      cache.scale==scale && [cache.traits isEqual:view.traitCollection];
    if (revision && sameGeometry && revision==cache.revision) {
        *out=cache.snapshot; return 1;
    }
    /* Explicit-revision hits deliberately do not traverse ancestors/descendants.
     * The revision owner must invalidate ancestor visibility changes as well. */
    for (UIView *ancestor=view; ancestor; ancestor=ancestor.superview) {
        if (ancestor.hidden || ancestor.alpha<=0.01) { LACClear(cache); return 0; }
    }
    NSMutableArray *labels=[NSMutableArray array], *signature=[NSMutableArray array];
    NSUInteger budget=512;
    if (!LACCollect(view,view,labels,signature,&budget,0) || !labels.count) {
        LACClear(cache); return 0;
    }
    if (sameGeometry && [signature isEqualToArray:cache.signature]) {
        cache.revision=revision; *out=cache.snapshot; return 1;
    }
    float *distance=LACBuild(view,labels,scale,width,height);
    if (!distance) { LACClear(cache); return 0; }
    if (cache.generationCounter == UINT64_MAX) {
        free(distance); LACClear(cache); return 0;
    }
    uint64_t generation=++cache.generationCounter;
    free(cache.samples); cache.samples=distance;
    cache.scale=scale; cache.bounds=bounds; cache.traits=view.traitCollection;
    cache.signature=signature; cache.revision=revision;
    LACClockSDFSnapshot built={width,height,(float)bounds.size.width,(float)bounds.size.height,
                              distance,(size_t)width*height,generation};
    cache.snapshot=built;
    *out=built;
    return 1;
}

int LACClockCreateSDFForView(UIView *view, float scale,
                             uint32_t *out_width, uint32_t *out_height,
                             float *out_points_width, float *out_points_height,
                             float **out_distance, size_t *out_count) {
    if (out_width) *out_width=0;
    if (out_height) *out_height=0;
    if (out_points_width) *out_points_width=0;
    if (out_points_height) *out_points_height=0;
    if (out_distance) *out_distance=NULL;
    if (out_count) *out_count=0;
    if (!out_width || !out_height || !out_points_width || !out_points_height ||
        !out_distance || !out_count) return 0;
    LACClockSDFSnapshot snapshot={};
    if (!LACClockGetSDFForView(view,scale,0,&snapshot)) return 0;
    float *copy=(float *)malloc(snapshot.count*sizeof(float));
    if (!copy) return 0;
    memcpy(copy,snapshot.distance,snapshot.count*sizeof(float));
    *out_width=snapshot.width; *out_height=snapshot.height;
    *out_points_width=snapshot.points_width; *out_points_height=snapshot.points_height;
    *out_distance=copy; *out_count=snapshot.count;
    return 1;
}
