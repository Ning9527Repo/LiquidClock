// Explicit Backboardd-only process entry. No sample library is ever loaded.
#import "LACConfiguration.h"
#import "../backboard/LACClockBackboard.h"
#include <sys/stat.h>
#include <unistd.h>
static LACClockBackboardStatus gStatus=LACClockBackboardNotInitialized;
static unsigned gTableRetries;
static const unsigned kMaxTableRetries=120; // local bounded policy: 30 seconds
static void LACConfigureBackboard(void) {
    LACReloadConfiguration();
    LACClockVisualParameters p=LACClockDefaultVisualParameters();
    p.radius=0;
    p.bezelWidth=(float)LACNumber(@"Clock.BezelWidth",9,0,80);
    p.glassThickness=(float)LACNumber(@"Clock.GlassThickness",120,0,500);
    p.refractionScale=(float)LACNumber(@"Clock.RefractionScale",1.399999976158142,0,5);
    p.refractiveIndex=(float)LACNumber(@"Clock.RefractiveIndex",1.600000023841858,1,5);
    p.dispersionStrength=[LACPreferenceValue(@"Clock.DispersionEnabled",@0) boolValue]?
        (float)LACNumber(@"Clock.DispersionStrength",0,0,2):0;
    p.backdropZoom=1;p.shapeScale=1;
    // The shipped iOS16+ settings intentionally omit tint controls. Leave the
    // renderer's recovered neutral defaults; no fabricated dynamic color source.
    for(int channel=0;channel<3;++channel)
        if(!LACClockSetVisualParameters((LACClockChannel)channel,&p))
            LACLog(@"backend-parameters-rejected",@{@"channel":@(channel)});
}
static void LACWriteBackboardStatus(void) {
    BOOL exhausted=gStatus==LACClockBackboardWaitingForTable&&gTableRetries>=kMaxTableRetries;
    NSString *error=exhausted?@"filter table still pending after 30 seconds; retries exhausted":@(LACClockBackboardLastError()?:"");
    NSDictionary *status=@{@"schema":@1,@"registered":@(gStatus==LACClockBackboardReady),
        @"status":@(gStatus),@"error":error,@"pid":@(getpid()),
        @"updatedAt":NSDate.date,@"tableRetries":@(gTableRetries),@"retryExhausted":@(exhausted),
        @"os":NSProcessInfo.processInfo.operatingSystemVersionString};
    NSData *data=[NSPropertyListSerialization dataWithPropertyList:status
        format:NSPropertyListBinaryFormat_v1_0 options:0 error:NULL];
    if([data writeToFile:LACSharedPath(@"backboard-status.plist") options:NSDataWritingAtomic error:NULL])
        chmod(LACSharedPath(@"backboard-status.plist").fileSystemRepresentation,0644);
    LACLog(@"backboard-initialize",@{@"status":@(gStatus),@"error":error});
}
static void LACAttemptBackboard(unsigned retry) {
    gTableRetries=retry;
    LACClockBackboardOptions o={};o.version=LAC_CLOCK_FILTER_CONTRACT_VERSION;
    o.mainFieldPath=LACSharedPath(@"main-field.bin").fileSystemRepresentation;
    o.editorFieldPath=LACSharedPath(@"editor-field.bin").fileSystemRepresentation;
    o.posterFieldsPath=LACSharedPath(@"poster-fields.bin").fileSystemRepresentation;
    o.metalLibraryPath=LACResourcePath(@"ClockOnly.metallib").fileSystemRepresentation;
    o.fieldOwnerUID=501;
    gStatus=LACClockBackboardInitialize(&o);
    if(retry%4==0||gStatus!=LACClockBackboardWaitingForTable||retry==kMaxTableRetries)
        LACWriteBackboardStatus();
    if(gStatus==LACClockBackboardWaitingForTable&&retry<kMaxTableRetries) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,250*NSEC_PER_MSEC),dispatch_get_main_queue(),^{
            LACAttemptBackboard(retry+1);
        });
    }
}
static void LACBackboardReload(CFNotificationCenterRef center,void *observer,CFStringRef name,const void *object,CFDictionaryRef info) {
    (void)center;(void)observer;(void)name;(void)object;(void)info;
    dispatch_async(dispatch_get_main_queue(),^{LACConfigureBackboard();});
}
__attribute__((constructor)) static void LACBackboardEntry(void) {
    @autoreleasepool {
        if(![NSProcessInfo.processInfo.processName isEqual:@"backboardd"])return;
        dispatch_async(dispatch_get_main_queue(),^{
            LACReloadConfiguration();LACApplySandboxProfile();
            LACConfigureBackboard();LACAttemptBackboard(0);
            CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),NULL,LACBackboardReload,
                (__bridge CFStringRef)LACReloadNotification,NULL,CFNotificationSuspensionBehaviorDeliverImmediately);
        });
    }
}
