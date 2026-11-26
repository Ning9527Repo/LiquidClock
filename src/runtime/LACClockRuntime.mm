#import "LACClockRuntime.h"
#import "LACConfiguration.h"
#import "../clock/LACClockFieldPublisher.h"
#import "../clock/LACClockTextField.h"
#import "../editor/LACClockEditor.h"
#import "../backboard/LACClockFilterContract.h"
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>
#import <objc/message.h>
#include <fcntl.h>
#include <unistd.h>
#include <math.h>

static char kClockState,kDateState;
static NSHashTable *gClockStates;
static LACClockFieldPublisher *gMainPublisher,*gEditorPublisher,*gPosterPublisher;
static BOOL gPosterSlots[16];
static BOOL gMainClaimed,gEditorClaimed,gStarted,gEditorConfigured;
static NSMutableSet<NSString *> *gKnownPosters;
static NSUInteger gCaptureDepth;
static void LACConfigureFrameRate(void);

@interface LACNativeLabel : NSObject
@property(nonatomic,weak) UILabel *label;
@property(nonatomic,strong) UIFont *font;
@property(nonatomic,strong) UIFont *appliedFont;
@property(nonatomic,copy) NSAttributedString *attributed;
@property(nonatomic,copy) NSAttributedString *appliedAttributed;
@property(nonatomic) float nativeOpacity,appliedOpacity;
@property(nonatomic) CGAffineTransform transform,appliedTransform;
@property(nonatomic) BOOL hiddenByUs;
@end
@implementation LACNativeLabel @end

@interface LACBackdropClock : UIView
@end
@implementation LACBackdropClock
+ (Class)layerClass { return NSClassFromString(@"CABackdropLayer")?:CALayer.class; }
- (BOOL)pointInside:(CGPoint)p withEvent:(UIEvent *)event { (void)p;(void)event;return NO; }
@end

@interface LACClockState : NSObject
@property(nonatomic,weak) UIView *source;
@property(nonatomic,strong) LACBackdropClock *glass;
@property(nonatomic,strong) NSMutableArray<LACNativeLabel *> *labels;
@property(nonatomic,copy) NSString *posterID;
@property(nonatomic) LACClockChannel channel;
@property(nonatomic) int slot;
@property(nonatomic) BOOL busy,published,claimed,awaiting;
@property(nonatomic) uint64_t awaitGeneration;
@property(nonatomic) uint64_t generation;
@property(nonatomic) uint64_t acceptedSequence,acceptedToken,acceptedTime;
@property(nonatomic,strong) NSDate *date;
@property(nonatomic,weak) UIViewController *presenter;
@end
static void LACReleaseChannel(LACClockState *state);
@implementation LACClockState
- (void)dealloc { LACReleaseChannel(self); }
@end

@interface LACDateState : NSObject
@property(nonatomic,weak) UILabel *label;
@property(nonatomic,copy) NSAttributedString *nativeAttributed;
@property(nonatomic,copy) NSString *nativeText,*applied;
@end
@implementation LACDateState @end

static id LACObjectGetter(id object,const char *name) {
    SEL sel=sel_registerName(name);
    Method m=object?class_getInstanceMethod(object_getClass(object),sel):NULL;
    char t[16]={0};
    if(!m||method_getNumberOfArguments(m)!=2)return nil;
    method_getReturnType(m,t,sizeof(t));
    if(t[0]!='@')return nil;
    @try { return ((id(*)(id,SEL))objc_msgSend)(object,sel); }
    @catch(NSException *e) { (void)e;return nil; }
}
static NSString *LACPosterIdentifier(id configuration) {
    // Accept only actual UUID values, never pointer/index/stringified objects.
    id value=LACObjectGetter(configuration,"UUID");
    if(!value)value=LACObjectGetter(configuration,"identifier");
    if([value isKindOfClass:NSUUID.class])return [value UUIDString];
    if([value isKindOfClass:NSString.class]) {
        NSUUID *uuid=[[NSUUID alloc]initWithUUIDString:value];
        if(uuid)return uuid.UUIDString;
    }
    return nil;
}
static UIViewController *LACPresenter(UIView *view) {
    UIResponder *p=view;
    for(NSUInteger n=0;p && n<64;++n,p=p.nextResponder)
        if([p isKindOfClass:UIViewController.class])return (UIViewController *)p;
    return nil;
}
static id LACFindConfiguration(UIViewController *controller) {
    Class config=NSClassFromString(@"PRPosterConfiguration");
    for(UIViewController *c=controller;c;c=c.parentViewController) {
        for(NSString *name in @[@"posterConfiguration",@"configuration"]) {
            id value=LACObjectGetter(c,name.UTF8String);
            if(config && [value isKindOfClass:config] && LACPosterIdentifier(value))return value;
        }
    }
    return nil;
}
static NSArray<UILabel *> *LACLabels(UIView *root) {
    NSMutableArray *found=[NSMutableArray array],*stack=[NSMutableArray arrayWithObject:root];
    for(NSUInteger n=0;stack.count && n<512;++n) {
        UIView *v=stack.lastObject;[stack removeLastObject];
        if(v.hidden || v.alpha<=0.01)continue;
        if([v isKindOfClass:UILabel.class] && (((UILabel *)v).text.length || ((UILabel *)v).attributedText.length)) [found addObject:v];
        for(UIView *child in v.subviews)if(![child isKindOfClass:LACBackdropClock.class])[stack addObject:child];
    }
    return found;
}
static LACClockFieldPublisher *LACPublisher(LACClockState *s) {
    if(s.channel==LACClockChannelPoster) {
        if(!gPosterPublisher)gPosterPublisher=LACClockFieldPublisherOpen(LACSharedPath(@"poster-fields.bin").fileSystemRepresentation,16,1);
        return gPosterPublisher;
    }
    if(s.channel==LACClockChannelEditor) {
        if(!gEditorPublisher)gEditorPublisher=LACClockFieldPublisherOpen(LACSharedPath(@"editor-field.bin").fileSystemRepresentation,1,1);
        return gEditorPublisher;
    }
    if(!gMainPublisher)gMainPublisher=LACClockFieldPublisherOpen(LACSharedPath(@"main-field.bin").fileSystemRepresentation,1,1);
    return gMainPublisher;
}
static uint32_t LACSlot(LACClockState *s) { return s.channel==LACClockChannelPoster?(uint32_t)s.slot:0u; }
static void LACInvalidateField(LACClockState *s) {
    if(s.published) { LACClockFieldPublisher *p=LACPublisher(s);if(p)LACClockFieldInvalidate(p,LACSlot(s)); }
    s.published=NO;s.generation=0;s.awaiting=NO;
}
static void LACReleaseChannel(LACClockState *s) {
    if(!s.claimed)return;
    LACInvalidateField(s);
    if(s.channel==LACClockChannelPoster && s.slot>=0 && s.slot<16)gPosterSlots[s.slot]=NO;
    else if(s.channel==LACClockChannelMain)gMainClaimed=NO;
    else if(s.channel==LACClockChannelEditor)gEditorClaimed=NO;
    s.claimed=NO;
}
static BOOL LACClaimChannel(LACClockState *s) {
    if(s.claimed)return YES;
    BOOL editor=[NSProcessInfo.processInfo.processName isEqual:@"PosterBoard"];
    if(editor && !gEditorClaimed) { gEditorClaimed=YES;s.channel=LACClockChannelEditor;s.slot=0; }
    else if(!editor && !gMainClaimed) { gMainClaimed=YES;s.channel=LACClockChannelMain;s.slot=0; }
    else { s.channel=LACClockChannelPoster;s.slot=-1;for(int i=0;i<16;++i)if(!gPosterSlots[i]) {gPosterSlots[i]=YES;s.slot=i;break;}if(s.slot<0)return NO; }
    s.claimed=YES;return YES;
}

static void LACRestoreLabels(LACClockState *s,BOOL typography) {
    [CATransaction begin];[CATransaction setDisableActions:YES];
    for(LACNativeLabel *n in s.labels) {
        UILabel *label=n.label;if(!label)continue;
        if(n.hiddenByUs && fabsf(label.layer.opacity-n.appliedOpacity)<0.0001f)label.layer.opacity=n.nativeOpacity;
        n.hiddenByUs=NO;
        if(typography) {
            if(n.appliedFont && [label.font isEqual:n.appliedFont])label.font=n.font;
            if(n.appliedAttributed && [label.attributedText isEqualToAttributedString:n.appliedAttributed])label.attributedText=n.attributed;
            if(CGAffineTransformEqualToTransform(label.transform,n.appliedTransform))label.transform=n.transform;
            n.appliedFont=nil;n.appliedAttributed=nil;
        }
    }
    [CATransaction commit];
}
static void LACHideNative(LACClockState *s) {
    [CATransaction begin];[CATransaction setDisableActions:YES];
    for(LACNativeLabel *n in s.labels) {
        UILabel *label=n.label;if(!label)continue;
        if(!n.hiddenByUs)n.nativeOpacity=label.layer.opacity;
        label.layer.opacity=0;n.appliedOpacity=0;n.hiddenByUs=YES;
    }
    [CATransaction commit];
}
static void LACRefreshTypography(LACClockState *s) {
    NSArray<UILabel *> *labels=LACLabels(s.source);
    NSMutableArray *next=[NSMutableArray array];
    for(UILabel *label in labels) {
        LACNativeLabel *saved=nil;
        for(LACNativeLabel *n in s.labels)if(n.label==label){saved=n;break;}
        if(!saved) { saved=[LACNativeLabel new];saved.label=label;saved.font=label.font;
            saved.attributed=label.attributedText;saved.transform=label.transform;saved.appliedTransform=label.transform; }
        else {
            if(saved.appliedFont && ![label.font isEqual:saved.appliedFont])saved.font=label.font;
            if(saved.appliedAttributed && ![label.attributedText isEqualToAttributedString:saved.appliedAttributed])saved.attributed=label.attributedText;
            if(!CGAffineTransformEqualToTransform(label.transform,saved.appliedTransform))saved.transform=label.transform;
        }
        if(s.posterID.length) {
            CFTypeRef ref=LACECopyPreviewFont((__bridge CFStringRef)s.posterID,saved.font.pointSize);
            UIFont *font=CFBridgingRelease(ref);
            if(font) {
                label.font=font;saved.appliedFont=font;
                if(saved.attributed.length) {
                    NSMutableAttributedString *text=[saved.attributed mutableCopy];
                    [text addAttribute:NSFontAttributeName value:font range:NSMakeRange(0,text.length)];
                    label.attributedText=text;saved.appliedAttributed=text;
                }
            }
        }
        double scale=[LACPreferenceValue(@"Clock.CustomScaleEnabled",@YES) boolValue]?LACNumber(@"Clock.CustomScale",1,0.1,1.5):1;
        saved.appliedTransform=CGAffineTransformConcat(saved.transform,CGAffineTransformMakeScale(scale,scale));
        label.transform=saved.appliedTransform;
        [next addObject:saved];
    }
    for(LACNativeLabel *old in s.labels)if(![next containsObject:old] && old.hiddenByUs && old.label.layer.opacity==0)old.label.layer.opacity=old.nativeOpacity;
    s.labels=next;
}
static NSString *LACFieldPath(LACClockState *s) {
    return LACSharedPath(s.channel==LACClockChannelMain?@"main-field.bin":s.channel==LACClockChannelEditor?@"editor-field.bin":@"poster-fields.bin");
}
static BOOL LACReadOwnHeader(LACClockState *s,uint64_t words[5]) {
    int fd=open(LACFieldPath(s).fileSystemRepresentation,O_RDONLY|O_NOFOLLOW|O_CLOEXEC);
    if(fd<0)return NO;
    off_t at=(off_t)LACSlot(s)*0x400040;
    ssize_t n=pread(fd,words,5*sizeof(uint64_t),at);uint64_t after=0;
    ssize_t m=pread(fd,&after,sizeof(after),at+8);close(fd);
    return n==5*(ssize_t)sizeof(uint64_t) && m==(ssize_t)sizeof(after) &&
        after==words[1] && words[1] && !(words[1]&1) && words[2] && words[3];
}
static BOOL LACRememberPublication(LACClockState *s) {
    uint64_t words[5]={0};if(!LACReadOwnHeader(s,words))return NO;
    s.acceptedSequence=words[1];s.acceptedToken=words[2];s.acceptedTime=words[3];return YES;
}
static BOOL LACFieldWasRendered(LACClockState *s) {
    // Acknowledge only OUR current immutable token/time/sequence. A ready flag
    // or an old/foreign frame can never authorize hiding the native label.
    uint64_t words[5]={0};
    return LACReadOwnHeader(s,words) && words[1]==s.acceptedSequence &&
        words[2]==s.acceptedToken && words[3]==s.acceptedTime && words[4]>=words[1];
}
static BOOL LACFilterReady(void) {
    NSDictionary *ready=[NSDictionary dictionaryWithContentsOfFile:LACSharedPath(@"backboard-status.plist")];
    return [ready[@"schema"] isEqual:@1] && [ready[@"registered"] boolValue];
}
static BOOL LACMakeGlass(LACClockState *s) {
    if(s.glass)return YES;
    if(!NSClassFromString(@"CABackdropLayer") || !LACFilterReady())return NO;
    Class filterClass=NSClassFromString(@"CAFilter");
    SEL factory=sel_registerName("filterWithType:");
    if(!filterClass || ![filterClass respondsToSelector:factory])return NO;
    char name[64]={0};
    // Main host links the small contract implementation, not Backboardd init.
    const char *prefix=s.channel==LACClockChannelMain?LAC_CLOCK_FILTER_TYPE:s.channel==LACClockChannelEditor?LAC_CLOCK_EDITOR_FILTER_TYPE:LAC_CLOCK_POSTER_FILTER_TYPE_PREFIX;
    if(s.channel==LACClockChannelPoster)snprintf(name,sizeof(name),"%s%d",prefix,s.slot);else snprintf(name,sizeof(name),"%s",prefix);
    @try {
        id custom=((id(*)(id,SEL,id))objc_msgSend)(filterClass,factory,@(name));
        if(!custom)return NO;
        LACBackdropClock *view=[[LACBackdropClock alloc]initWithFrame:s.source.bounds];
        view.userInteractionEnabled=NO;view.accessibilityElementsHidden=YES;
        view.backgroundColor=UIColor.clearColor;
        NSMutableArray *filters=[NSMutableArray array];
        double blur=LACNumber(@"Clock.Blur",6,0,50);
        if(blur>0) {
            id gaussian=((id(*)(id,SEL,id))objc_msgSend)(filterClass,factory,@"gaussianBlur");
            if(!gaussian)return NO;
            [gaussian setValue:@(blur) forKey:@"inputRadius"];
            [filters addObject:gaussian];
        }
        [filters addObject:custom];view.layer.filters=filters;
        // CABackdropLayer's ordinary capture group is not a custom filter KVC
        // transport. Only the sample-evidenced filter type chooses the channel.
        s.glass=view;return YES;
    } @catch(NSException *e) { (void)e;LACLog(@"filter-host-unavailable",@{});return NO; }
}
static void LACAlignGlass(LACClockState *s) {
    UIView *source=s.source,*parent=source.superview;
    if(!source || !parent)return;
    LACBackdropClock *glass=s.glass;
    [CATransaction begin];[CATransaction setDisableActions:YES];
    if(glass.superview!=parent)[parent insertSubview:glass aboveSubview:source];
    glass.bounds=source.bounds;glass.center=source.center;glass.transform=source.transform;
    glass.hidden=source.hidden || !source.window;glass.alpha=source.alpha;
    [CATransaction commit];
}
static void LACAwaitField(LACClockState *s,uint64_t generation,unsigned attempts) {
    __weak LACClockState *weak=s;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW,16*NSEC_PER_MSEC),dispatch_get_main_queue(),^{
        LACClockState *live=weak;
        if(!live || !live.published || live.generation!=generation || live.awaitGeneration!=generation || !live.source.window || !LACEnabled())return;
        if(LACFieldWasRendered(live)) { live.awaiting=NO;LACHideNative(live);LACLog(@"clock-gpu-handoff",@{@"channel":@(live.channel)}); }
        else if(attempts<120)LACAwaitField(live,generation,attempts+1);
        else { live.awaiting=NO;LACRestoreLabels(live,NO);live.glass.hidden=YES;LACLog(@"clock-frame-timeout",@{}); }
    });
}

static void LACRefreshPoster(LACClockState *s) {
    UIViewController *presenter=LACPresenter(s.source);
    s.presenter=presenter;
    id config=LACFindConfiguration(presenter);
    NSString *identity=LACPosterIdentifier(config);
    if(!identity.length || [identity isEqual:s.posterID])return;
    LACEUnbindClockView((__bridge void *)s.source);
    CFErrorRef error=NULL;
    id userInfo=LACObjectGetter(config,"userInfo"),properties=LACObjectGetter(config,"configuredProperties");
    BOOL restored=LACEPosterRestore((__bridge CFStringRef)identity,
        [userInfo isKindOfClass:NSDictionary.class]?(__bridge CFDictionaryRef)userInfo:NULL,
        [properties isKindOfClass:NSDictionary.class]?(__bridge CFDictionaryRef)properties:NULL,&error);
    if(error)CFRelease(error);
    if(!restored) { LACLog(@"poster-restore-rejected",@{});return; }
    s.posterID=identity;[gKnownPosters addObject:identity];
    LACEBindClockView((__bridge void *)s.source,(__bridge void *)presenter,(__bridge CFStringRef)identity);
}
void LACClockUpdateView(UIView *view) {
    if(!view || !NSThread.isMainThread || gCaptureDepth)return;
    LACClockState *s=objc_getAssociatedObject(view,&kClockState);
    // The legacy parent can contain a prominent time child; never replace both
    // layers or publish two independent copies of the same clock text.
    if([view isKindOfClass:NSClassFromString(@"SBFLockScreenDateView")]) {
        NSMutableArray *todo=[view.subviews mutableCopy];BOOL prominent=NO;
        for(NSUInteger n=0;todo.count && n<512;++n) {
            UIView *node=todo.lastObject;[todo removeLastObject];
            if([node isKindOfClass:NSClassFromString(@"CSProminentTimeView")]){prominent=YES;break;}
            [todo addObjectsFromArray:node.subviews];
        }
        if(prominent) { if(s){LACRestoreLabels(s,YES);[s.glass removeFromSuperview];LACReleaseChannel(s);}return; }
    }
    if(!s) { s=[LACClockState new];s.source=view;s.slot=-1;s.labels=[NSMutableArray array];
        objc_setAssociatedObject(view,&kClockState,s,OBJC_ASSOCIATION_RETAIN_NONATOMIC);[gClockStates addObject:s]; }
    if(s.busy)return;
    s.busy=YES;
    @try {
        if(!view.window || view.hidden || view.alpha<=0.01 || !LACEnabled()) {
            LACRestoreLabels(s,YES);LACClockInvalidateSDFCacheForView(view);LACInvalidateField(s);
            [s.glass removeFromSuperview];s.glass=nil;LACReleaseChannel(s);return;
        }
        LACRefreshPoster(s);LACRestoreLabels(s,NO);LACRefreshTypography(s);
        if(!LACClaimChannel(s)) { LACLog(@"poster-slots-exhausted",@{});return; }
        CGFloat maximum=MAX(view.bounds.size.width,view.bounds.size.height);
        float scale=(float)MIN(view.window.screen.scale,maximum>0?1024.0/maximum:0);
        LACClockSDFSnapshot snapshot={};
        ++gCaptureDepth;
        int captured=0;
        @try { captured=LACClockGetSDFForView(view,scale,0,&snapshot); }
        @finally { --gCaptureDepth; }
        if(!captured) { LACInvalidateField(s);s.glass.hidden=YES;LACLog(@"unsupported-glyph-source",@{});return; }
        LACClockFieldPublisher *publisher=LACPublisher(s);
        if(!publisher) { LACLog(@"field-open-failed",@{@"channel":@(s.channel),@"errno":@(errno)});return; }
        if(!s.published || s.generation!=snapshot.generation) {
            if(!LACClockFieldPublish(publisher,LACSlot(s),1,snapshot.width,snapshot.height,
                snapshot.points_width,snapshot.points_height,snapshot.distance,snapshot.count)) {
                LACInvalidateField(s);s.glass.hidden=YES;LACLog(@"field-publication-failed",@{});return;
            }
            s.published=YES;s.generation=snapshot.generation;
            if(!LACRememberPublication(s)) {LACInvalidateField(s);s.glass.hidden=YES;return;}
        }
        if(!LACMakeGlass(s))return;
        LACAlignGlass(s);
        if(LACFieldWasRendered(s)) {s.awaiting=NO;LACHideNative(s);}
        else if(!s.awaiting || s.awaitGeneration!=s.generation) {s.awaiting=YES;s.awaitGeneration=s.generation;LACAwaitField(s,s.generation,0);}
    } @finally { s.busy=NO; }
}
void LACClockUpdateVisibility(UIView *view) {
    if(gCaptureDepth || !NSThread.isMainThread)return;
    LACClockState *s=objc_getAssociatedObject(view,&kClockState);
    if(!s || !view.window || view.hidden || view.alpha<=0.01)LACClockUpdateView(view);
    else LACAlignGlass(s);
}
void LACClockSetDate(UIView *view,NSDate *date) {
    LACClockUpdateView(view);
    LACClockState *s=objc_getAssociatedObject(view,&kClockState);s.date=date;
}
void LACClockUpdateSubtitle(UIView *view) {
    if(!view || !NSThread.isMainThread || gCaptureDepth)return;
    NSArray<UILabel *> *labels=LACLabels(view);
    if(labels.count!=1)return;
    UILabel *label=labels.firstObject;
    LACDateState *state=objc_getAssociatedObject(view,&kDateState);
    if(!state) { state=[LACDateState new];state.label=label;state.nativeText=label.text;
        state.nativeAttributed=label.attributedText;objc_setAssociatedObject(view,&kDateState,state,OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
    if(state.applied && ![label.text isEqual:state.applied]) {state.nativeText=label.text;state.nativeAttributed=label.attributedText;}
    NSString *format=LACPreferenceValue(@"Lockscreen.Clock.DateFormat.Format",@"");
    if(!LACEnabled() || ![LACPreferenceValue(@"Lockscreen.Clock.DateFormat.Enabled",@YES) boolValue] || !format.length) {
        if(state.applied && [label.text isEqual:state.applied]) {
            if(state.nativeAttributed.length)label.attributedText=state.nativeAttributed;else label.text=state.nativeText;
        }
        state.applied=nil;return;
    }
    NSDateFormatter *formatter=[NSDateFormatter new];formatter.locale=NSLocale.currentLocale;
    formatter.timeZone=NSTimeZone.localTimeZone;formatter.dateFormat=format;
    // Runtime-supplied date when available; current wall clock is an explicit
    // fallback for subtitle classes exposing layout only, not time travel UI.
    NSDate *date=LACObjectGetter(view,"date");if(![date isKindOfClass:NSDate.class])date=NSDate.date;
    NSString *text=[formatter stringFromDate:date];
    if(text.length) { label.text=text;state.applied=text; }
}
static void LACEditorChanged(CFStringRef poster,CFDictionaryRef style,double progress,LACEChangeReason reason,void *context) {
    (void)style;(void)progress;(void)reason;(void)context;
    NSString *identity=(__bridge NSString *)poster;
    for(LACClockState *s in gClockStates.allObjects)if([s.posterID isEqual:identity]) {
        LACClockInvalidateSDFCacheForView(s.source);LACClockUpdateView(s.source);
    }
}
static void LACReloaded(CFNotificationCenterRef center,void *observer,CFStringRef name,const void *object,CFDictionaryRef info) {
    (void)center;(void)observer;(void)name;(void)object;(void)info;
    dispatch_async(dispatch_get_main_queue(),^{ LACClockInvalidateAll(); });
}
void LACClockInvalidateAll(void) {
    if(!NSThread.isMainThread){dispatch_async(dispatch_get_main_queue(),^{LACClockInvalidateAll();});return;}
    LACReloadConfiguration();LACConfigureFrameRate();
    for(LACClockState *s in gClockStates.allObjects) {s.glass.layer.filters=nil;[s.glass removeFromSuperview];s.glass=nil;
        LACClockInvalidateSDFCacheForView(s.source);LACClockUpdateView(s.source);}
}
static void LACRenderEditorPreview(void *view,void *context) {
    (void)context;LACClockUpdateView((__bridge UIView *)view);
}
@interface LACFrameDriver : NSObject
@property(nonatomic,strong) CADisplayLink *link;
- (void)tick:(CADisplayLink *)link;
@end
@implementation LACFrameDriver
- (void)tick:(CADisplayLink *)link {
    static CFTimeInterval retryAt;
    BOOL retry=link.timestamp>=retryAt;if(retry)retryAt=link.timestamp+1;
    for(LACClockState *s in gClockStates.allObjects)if(s.published && s.source.window && !s.source.hidden && s.source.alpha>0.01) {
        if(!s.glass) { if(retry)LACClockUpdateView(s.source);continue; }
        LACAlignGlass(s);[s.glass.layer setNeedsDisplay];
    }
}
@end
static LACFrameDriver *gFrameDriver;
static void LACConfigureFrameRate(void) {
    NSInteger maximum=UIScreen.mainScreen.maximumFramesPerSecond;
    if(maximum<1)return;
    double fps=LACNumber(@"Clock.FPS",(double)maximum,1,(double)maximum);
    if(!gFrameDriver) {gFrameDriver=[LACFrameDriver new];gFrameDriver.link=[CADisplayLink displayLinkWithTarget:gFrameDriver selector:@selector(tick:)];
        [gFrameDriver.link addToRunLoop:NSRunLoop.mainRunLoop forMode:NSRunLoopCommonModes];}
    gFrameDriver.link.preferredFrameRateRange=CAFrameRateRangeMake(1,(float)fps,(float)fps);
    gFrameDriver.link.paused=!LACEnabled();
}
void LACClockRuntimeStart(void) {
    if(!NSThread.isMainThread || gStarted)return;gStarted=YES;
    gClockStates=[NSHashTable weakObjectsHashTable];gKnownPosters=[NSMutableSet set];LACReloadConfiguration();LACApplySandboxProfile();LACConfigureFrameRate();
    CFErrorRef error=NULL;
    BOOL configured=LACEConfigure((__bridge CFURLRef)[NSURL fileURLWithPath:LACSharedPath(@"posters.plist")],
        (__bridge CFURLRef)[NSURL fileURLWithPath:LACResourcePath(@"Fonts")],NULL,&error);
    if(error)CFRelease(error);
    gEditorConfigured=configured;
    if(configured) {LACESetChangeCallback(LACEditorChanged,NULL);LACESetPreviewRenderCallback(LACRenderEditorPreview,NULL);}
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),NULL,LACReloaded,
        (__bridge CFStringRef)LACReloadNotification,NULL,CFNotificationSuspensionBehaviorDeliverImmediately);
    LACLog(@"runtime-start",@{@"editorConfigured":@(configured)});
}
void LACClockPosterWillStore(id configuration) { (void)configuration; }
NSDictionary *LACClockMergePoster(id config,NSDictionary *original,BOOL properties,NSError **error) {
    (void)properties;
    NSString *identity=LACPosterIdentifier(config);
    if(!gEditorConfigured || ![gKnownPosters containsObject:identity] || ![original isKindOfClass:NSDictionary.class])return original;
    CFErrorRef copiedError=NULL;
    CFDictionaryRef merged=LACEPosterCopyUserInfo((__bridge CFStringRef)identity,(__bridge CFDictionaryRef)original,&copiedError);
    if(copiedError) { if(error)*error=CFBridgingRelease(copiedError);else CFRelease(copiedError); }
    return CFBridgingRelease(merged);
}
