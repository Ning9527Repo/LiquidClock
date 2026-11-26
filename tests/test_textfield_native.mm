/* REAL UIKit/CoreText harness. Compile for iOS 16; execute only inside a real
 * iOS application runtime. NOT a Linux test and NOT a fake UIKit substitute.
 * Includes the owned implementation to inspect private normalization/cache
 * invariants. Do not also link LACClockTextField.mm into this test executable.
 * Link LACClockSDF.c and UIKit, CoreText, QuartzCore, Foundation, CoreGraphics.
 * Define LAC_TEXTFIELD_TEST_APP to provide a UIApplicationMain test launcher.
 */
#import "../src/clock/LACClockTextField.mm"
#import <dispatch/dispatch.h>
#include <assert.h>
#include <stdio.h>

@interface LACCountingLabel : UILabel
@property(nonatomic) NSUInteger measurements;
@end
@implementation LACCountingLabel
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)lines {
    ++_measurements;
    return [super textRectForBounds:bounds limitedToNumberOfLines:lines];
}
@end

static BOOL zero_snapshot(const LACClockSDFSnapshot *snapshot) {
    const unsigned char *bytes=(const unsigned char *)snapshot;
    for (size_t i=0;i<sizeof(*snapshot);++i) if (bytes[i]) return NO;
    return YES;
}
static void check_field(LACClockSDFSnapshot snapshot) {
    assert(snapshot.distance && snapshot.width && snapshot.height && snapshot.generation);
    assert(snapshot.count==(size_t)snapshot.width*snapshot.height);
    BOOL in=NO,out=NO;
    for (size_t i=0;i<snapshot.count;++i) {
        assert(isfinite(snapshot.distance[i]));
        in|=snapshot.distance[i]<0; out|=snapshot.distance[i]>0;
    }
    assert(in && out);
}
static UIView *fixture(LACCountingLabel **outLabel) {
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0,0,220,120)];
    LACCountingLabel *label=[[LACCountingLabel alloc] initWithFrame:CGRectMake(12,8,190,44)];
    label.font=[UIFont systemFontOfSize:32]; label.text=@"12:34";
    label.lineBreakMode=NSLineBreakByClipping;
    [view addSubview:label]; [view layoutIfNeeded]; *outLabel=label;
    return view;
}

static void rich_text(void) {
    UILabel *label=[UILabel new]; label.font=[UIFont systemFontOfSize:17];
    UIFont *first=[UIFont monospacedDigitSystemFontOfSize:23 weight:UIFontWeightMedium];
    UIFont *second=[UIFont italicSystemFontOfSize:29];
    NSMutableParagraphStyle *p=[NSMutableParagraphStyle new];
    p.alignment=NSTextAlignmentRight; p.baseWritingDirection=NSWritingDirectionRightToLeft;
    p.lineBreakMode=NSLineBreakByCharWrapping; p.lineSpacing=3; p.lineHeightMultiple=1.1;
    p.minimumLineHeight=27; p.maximumLineHeight=45; p.paragraphSpacing=4; p.paragraphSpacingBefore=2;
    p.firstLineHeadIndent=5; p.headIndent=7; p.tailIndent=-9; p.defaultTabInterval=24;
    p.tabStops=@[[[NSTextTab alloc] initWithTextAlignment:NSTextAlignmentRight location:35 options:@{}]];
    NSMutableArray *directions=[NSMutableArray arrayWithObject:@(NSWritingDirectionRightToLeft|NSWritingDirectionOverride)];
    NSMutableString *language=[NSMutableString stringWithString:@"ar"];
    NSShadow *shadow=[NSShadow new]; shadow.shadowOffset=CGSizeMake(4,5);
    NSDictionary *attributes=@{NSFontAttributeName:first,NSParagraphStyleAttributeName:p,
        NSKernAttributeName:@1.75,NSLigatureAttributeName:@0,NSBaselineOffsetAttributeName:@4,
        NSStrokeWidthAttributeName:@-2,NSObliquenessAttributeName:@0.1,NSExpansionAttributeName:@0.05,
        NSWritingDirectionAttributeName:directions,NSUnderlineStyleAttributeName:@1,
        NSStrikethroughStyleAttributeName:@1,NSUnderlineColorAttributeName:UIColor.blackColor,
        NSStrikethroughColorAttributeName:UIColor.blackColor,NSForegroundColorAttributeName:UIColor.redColor,
        NSBackgroundColorAttributeName:UIColor.blackColor,NSShadowAttributeName:shadow,
        (__bridge NSString *)kCTLanguageAttributeName:language,
        (__bridge NSString *)kCTBackgroundColorAttributeName:(__bridge id)UIColor.blackColor.CGColor};
    NSMutableAttributedString *original=[[NSMutableAttributedString alloc]
        initWithString:@"office العربية אבג 12" attributes:attributes];
    [original addAttribute:NSFontAttributeName value:second range:NSMakeRange(0,6)];
    label.attributedText=original;
    NSAttributedString *source=LACSource(label);
    NSAttributedString *normalized=LACClockText(label,source); assert(normalized);
    assert([normalized.string isEqual:original.string]); /* never reverse bidi text */
    for (NSString *key in @[NSKernAttributeName,NSLigatureAttributeName,NSBaselineOffsetAttributeName,
            NSStrokeWidthAttributeName,NSObliquenessAttributeName,NSExpansionAttributeName,
            NSWritingDirectionAttributeName,NSUnderlineStyleAttributeName,NSStrikethroughStyleAttributeName,
            (__bridge NSString *)kCTLanguageAttributeName])
        assert([[normalized attribute:key atIndex:8 effectiveRange:NULL]
                isEqual:[source attribute:key atIndex:8 effectiveRange:NULL]]);
    assert([normalized attribute:(__bridge NSString *)kCTFontAttributeName atIndex:0 effectiveRange:NULL]==second);
    assert([normalized attribute:(__bridge NSString *)kCTFontAttributeName atIndex:8 effectiveRange:NULL]==first);
    assert(![normalized attribute:NSShadowAttributeName atIndex:0 effectiveRange:NULL]);
    assert(![normalized attribute:NSBackgroundColorAttributeName atIndex:0 effectiveRange:NULL]);
    assert(![normalized attribute:(__bridge NSString *)kCTBackgroundColorAttributeName atIndex:0 effectiveRange:NULL]);
    CTParagraphStyleRef cp=(__bridge CTParagraphStyleRef)[normalized
        attribute:(__bridge NSString *)kCTParagraphStyleAttributeName atIndex:0 effectiveRange:NULL];
    assert(cp);
    CTTextAlignment alignment=kCTTextAlignmentLeft;
    assert(CTParagraphStyleGetValueForSpecifier(cp,kCTParagraphStyleSpecifierAlignment,sizeof(alignment),&alignment));
    assert(alignment==kCTTextAlignmentRight);
    CGFloat spacing=0,indent=0;
    assert(CTParagraphStyleGetValueForSpecifier(cp,kCTParagraphStyleSpecifierLineSpacingAdjustment,sizeof(spacing),&spacing));
    assert(spacing==3);
    assert(CTParagraphStyleGetValueForSpecifier(cp,kCTParagraphStyleSpecifierFirstLineHeadIndent,sizeof(indent),&indent));
    assert(indent==5);
    /* Mutating caller-owned values must not retroactively mutate a signature. */
    NSParagraphStyle *frozen=[source attribute:NSParagraphStyleAttributeName atIndex:8 effectiveRange:NULL];
    NSArray *frozenDirections=[source attribute:NSWritingDirectionAttributeName atIndex:8 effectiveRange:NULL];
    NSString *frozenLanguage=[source attribute:(__bridge NSString *)kCTLanguageAttributeName atIndex:8 effectiveRange:NULL];
    p.lineSpacing=19; directions[0]=@(NSWritingDirectionLeftToRight); [language setString:@"en"];
    assert(frozen.lineSpacing==3 && [frozenDirections[0] intValue]!=(int)NSWritingDirectionLeftToRight);
    assert([frozenLanguage isEqual:@"ar"]);
    /* Inspect real CoreText runs: font/rich attributes survive shaping. */
    CTLineRef line=CTLineCreateWithAttributedString((__bridge CFAttributedStringRef)normalized); assert(line);
    CFArrayRef runs=CTLineGetGlyphRuns(line); assert(CFArrayGetCount(runs)>1);
    BOOL rtl=NO;
    for (CFIndex i=0;i<CFArrayGetCount(runs);++i)
        rtl|=(CTRunGetStatus((CTRunRef)CFArrayGetValueAtIndex(runs,i))&kCTRunStatusRightToLeft)!=0;
    assert(rtl); CFRelease(line);
    UIView *richView=[[UIView alloc] initWithFrame:CGRectMake(0,0,500,160)];
    label.frame=richView.bounds; label.numberOfLines=0; [richView addSubview:label];
    LACClockSDFSnapshot richSnapshot;
    assert(LACClockGetSDFForView(richView,1,0,&richSnapshot)); check_field(richSnapshot);
    p.hyphenationFactor=0.8;
    assert(!LACParagraph(p)); p.hyphenationFactor=0;
    p.usesDefaultHyphenation=YES;
    assert(!LACParagraph(p)); p.usesDefaultHyphenation=NO;
    p.lineBreakStrategy=NSLineBreakStrategyHangulWordPriority;
    assert(!LACParagraph(p)); p.lineBreakStrategy=NSLineBreakStrategyNone;
    NSTextAttachment *attachment=[NSTextAttachment new];
    label.attributedText=[NSAttributedString attributedStringWithAttachment:attachment];
    assert(!LACClockText(label,LACSource(label)));
    puts("PASS NATIVE UIKit/CoreText: rich runs, font objects, paragraph metrics, bidi, mutable signature isolation, attachment rejection");
}

static void cache_contract(void) {
    LACCountingLabel *label; UIView *view=fixture(&label);
    LACClockSDFSnapshot a,b;
    assert(LACClockGetSDFForView(view,2,0,&a)); check_field(a);
    assert(a.width==440 && a.height==240 && a.points_width==220 && a.points_height==120);
    size_t top=0,bottom=0;
    for (uint32_t y=0;y<a.height;++y) for (uint32_t x=0;x<a.width;++x)
        if (a.distance[(size_t)y*a.width+x]<0) { if (y<a.height/2) ++top; else ++bottom; }
    assert(top>100 && bottom==0); /* raw row zero really is top, not a double flip */
    NSUInteger measurements=label.measurements;
    assert(LACClockGetSDFForView(view,2,0,&b));
    assert(a.generation==b.generation && a.distance==b.distance && label.measurements==measurements);
    assert(LACClockGetSDFForView(view,2,10,&b));
    assert(a.generation==b.generation && label.measurements==measurements);
    label.text=@"56:78";
    assert(LACClockGetSDFForView(view,2,10,&b));
    assert(a.generation==b.generation && label.measurements==measurements); /* deliberate revision misuse */
    assert(LACClockGetSDFForView(view,2,11,&b));
    assert(b.generation>a.generation && label.measurements>measurements); a=b;
    assert(LACClockGetSDFForView(view,2,12,&b)); assert(a.generation==b.generation);
    uint32_t w,h; float pw,ph,*copy=NULL; size_t count;
    assert(LACClockCreateSDFForView(view,2,&w,&h,&pw,&ph,&copy,&count));
    assert(copy!=a.distance && count==a.count && !memcmp(copy,a.distance,count*sizeof(float)));
    free(copy);
    LACClockInvalidateSDFCacheForView(view);
    assert(LACClockGetSDFForView(view,2,12,&b)); assert(b.generation>a.generation); a=b;
    UIView *parent=[[UIView alloc] initWithFrame:view.frame]; [parent addSubview:view];
    assert(LACClockGetSDFForView(view,2,20,&b)); a=b;
    parent.hidden=YES;
    assert(LACClockGetSDFForView(view,2,20,&b)); assert(a.generation==b.generation);
    assert(!LACClockGetSDFForView(view,2,21,&b)); assert(zero_snapshot(&b));
    parent.hidden=NO;
    assert(LACClockGetSDFForView(view,2,21,&b)); assert(b.generation>a.generation);
    label.text=@"12:34"; assert(LACClockGetSDFForView(view,2,0,&a));
    assert(a.generation>b.generation); /* automatic mode detects content again */
    view.bounds=CGRectMake(3,7,220,120); label.transform=CGAffineTransformMakeRotation(0.1);
    assert(LACClockGetSDFForView(view,2,0,&b)); check_field(b); assert(b.generation>a.generation);
    LACClockSDFCache *cache=objc_getAssociatedObject(view,&kLACClockSDFCacheKey);
    cache.generationCounter=UINT64_MAX;
    LACClockInvalidateSDFCacheForView(view);
    assert(!LACClockGetSDFForView(view,2,30,&b)); assert(zero_snapshot(&b));
    assert(cache.generationCounter==UINT64_MAX); /* invalidation must not reset to 1 */
    puts("PASS NATIVE UIKit: cache hit/no raster, revisions, generations/no wrap, owned copy, ancestor invalidation, affine/bounds changes, top-row orientation");
}

static void fail_closed(void) {
    LACCountingLabel *label; UIView *view=fixture(&label);
    LACClockSDFSnapshot s;
    memset(&s,0xa5,sizeof(s));
    assert(!LACClockGetSDFForView(nil,2,0,&s) && zero_snapshot(&s));
    assert(!LACClockGetSDFForView(view,2,0,NULL));
    const float invalidScales[]={0,0.5f,NAN,INFINITY,4.5f};
    for (unsigned i=0;i<sizeof(invalidScales)/sizeof(*invalidScales);++i) {
        memset(&s,0xa5,sizeof(s));
        assert(!LACClockGetSDFForView(view,invalidScales[i],0,&s) && zero_snapshot(&s));
    }
    __block BOOL rejected=NO;
    dispatch_sync(dispatch_get_global_queue(QOS_CLASS_DEFAULT,0),^{
        LACClockSDFSnapshot result;
        memset(&result,0xa5,sizeof(result));
        rejected=!LACClockGetSDFForView(view,2,0,&result) && zero_snapshot(&result);
    });
    assert(rejected);
    assert(LACClockGetSDFForView(view,2,0,&s)); uint64_t generation=s.generation;
    label.text=@"   "; assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s));
    label.text=@"12:34"; assert(LACClockGetSDFForView(view,2,0,&s) && s.generation>generation);
    CATextLayer *layer=[CATextLayer layer]; layer.string=@"not a UILabel source";
    [label.layer addSublayer:layer];
    assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s)); [layer removeFromSuperlayer];
    CALayer *mask=[CALayer layer]; mask.frame=label.bounds; label.layer.mask=mask;
    assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s)); label.layer.mask=nil;
    CATransform3D transform=CATransform3DIdentity; transform.m34=-0.01; label.layer.transform=transform;
    assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s)); label.layer.transform=CATransform3DIdentity;
    label.frame=CGRectMake(0,0,15,44); label.text=@"12345678901234567890";
    label.lineBreakMode=NSLineBreakByTruncatingTail;
    assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s));
    label.adjustsFontSizeToFitWidth=YES;
    assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s));
    label.adjustsFontSizeToFitWidth=NO; label.text=@"";
    assert(!LACClockGetSDFForView(view,2,0,&s) && zero_snapshot(&s));
    uint32_t w=1,h=1; float pw=1,ph=1,*distance=(float *)(uintptr_t)1; size_t count=1;
    assert(!LACClockCreateSDFForView(view,2,&w,&h,&pw,&ph,&distance,&count));
    assert(!w && !h && !pw && !ph && !distance && !count);
    LACClockInvalidateSDFCacheForView(nil);
    puts("PASS NATIVE UIKit: zeroed failures, off-main, blank/unsupported/masked/perspective/overflow/fitting rejection, copy failure reset");
}

static void clipping(void) {
    UIView *root=[[UIView alloc] initWithFrame:CGRectMake(0,0,220,120)];
    UIView *clip=[[UIView alloc] initWithFrame:CGRectMake(0,0,30,60)]; clip.clipsToBounds=YES;
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0,0,180,44)];
    label.font=[UIFont systemFontOfSize:32]; label.text=@"123456";
    [clip addSubview:label]; [root addSubview:clip]; [root layoutIfNeeded];
    LACClockSDFSnapshot s; assert(LACClockGetSDFForView(root,2,0,&s)); check_field(s);
    for (uint32_t y=0;y<s.height;++y) for (uint32_t x=60;x<s.width;++x)
        assert(s.distance[(size_t)y*s.width+x]>0);
    puts("PASS NATIVE UIKit: ancestor rectangle clipping in root coordinates");
}

int LACRunTextFieldNativeTests(void) {
    assert(NSThread.isMainThread);
    @autoreleasepool { rich_text(); cache_contract(); fail_closed(); clipping(); }
    puts("PASS REAL iOS UIKit/CoreText textfield suite");
    return 0;
}

#if defined(LAC_TEXTFIELD_TEST_APP)
@interface LACTextFieldTestApp : UIResponder <UIApplicationDelegate>
@property(nonatomic,strong) UIWindow *window;
@end
@implementation LACTextFieldTestApp
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options {
    (void)application; (void)options;
    self.window=[[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController=[UIViewController new]; [self.window makeKeyAndVisible];
    dispatch_async(dispatch_get_main_queue(),^{ exit(LACRunTextFieldNativeTests()); });
    return YES;
}
@end
int main(int argc,char **argv) {
    @autoreleasepool { return UIApplicationMain(argc,argv,nil,NSStringFromClass(LACTextFieldTestApp.class)); }
}
#endif
