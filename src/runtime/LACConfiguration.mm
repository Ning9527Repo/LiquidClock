#import "LACConfiguration.h"
#include <dlfcn.h>
#include <math.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

NSString *const LACPreferenceDomain=@"com.ning.liquidclock";
NSString *const LACReloadNotification=@"com.ning.liquidclock/Reload";
static NSDictionary *gSnapshot;
static NSString *gLibraryDirectory;
static NSLock *gConfigLock;
static NSArray<NSString *> *LACKeys(void) {
    return @[@"Clock.Enabled",@"Clock.FPS",@"Clock.CustomScaleEnabled",@"Clock.CustomScale",
        @"Clock.BezelWidth",@"Clock.GlassThickness",@"Clock.RefractionScale",@"Clock.RefractiveIndex",
        @"Clock.DispersionEnabled",@"Clock.DispersionStrength",@"Clock.Blur",@"Clock.LightTintColor",
        @"Clock.DarkTintColor",@"Lockscreen.Clock.DateFormat.Enabled",@"Lockscreen.Clock.DateFormat.Format"];
}
static void LACSetup(void) {
    static dispatch_once_t once;
    dispatch_once(&once,^{
        gConfigLock=[NSLock new];
        Dl_info info={};
        if (dladdr((const void *)&LACResourcePath,&info) && info.dli_fname)
            gLibraryDirectory=[[@(info.dli_fname) stringByDeletingLastPathComponent] copy];
    });
}
NSString *LACResourcePath(NSString *name) {
    LACSetup();
    return [[gLibraryDirectory stringByAppendingPathComponent:@"LiquidClockResources.bundle"] stringByAppendingPathComponent:name];
}
NSString *LACSharedPath(NSString *name) {
    return [@"/var/mobile/Library/Accessibility" stringByAppendingPathComponent:
        [@"com.ning.liquidclock-" stringByAppendingString:name]];
}
BOOL LACApplySandboxProfile(void) {
    LACSetup();
    NSString *root=gLibraryDirectory;
    // DynamicLibraries is Library/MobileSubstrate/DynamicLibraries for ordinary
    // rootless and Library/TweakInject on RootHide; locate only inside our root.
    NSRange library=[root rangeOfString:@"/Library/" options:NSBackwardsSearch];
    if (library.location==NSNotFound) return NO;
    NSString *base=library.location==0?@"/" : [root substringToIndex:library.location];
    NSString *path=[base stringByAppendingPathComponent:@"usr/lib/libsandy.dylib"];
    static void *handle;
    if (!handle) handle=dlopen(path.fileSystemRepresentation,RTLD_LAZY|RTLD_LOCAL);
    typedef int (*Apply)(const char *);
    Apply apply=handle?(Apply)dlsym(handle,"libSandy_applyProfile"):NULL;
    return apply && apply("com.ning.liquidclock")==0;
}
static BOOL LACValidValue(NSString *key,id value) {
    if ([key hasSuffix:@"Color"] || [key hasSuffix:@".Format"])
        return [value isKindOfClass:NSString.class] && [(NSString *)value length]<=512;
    return [value isKindOfClass:NSNumber.class] && isfinite([(NSNumber *)value doubleValue]);
}
void LACReloadConfiguration(void) {
    LACSetup();
    CFPreferencesAppSynchronize((__bridge CFStringRef)LACPreferenceDomain);
    NSDictionary *file=[NSDictionary dictionaryWithContentsOfFile:LACSharedPath(@"preferences.plist")];
    if (!file) { LACApplySandboxProfile(); file=[NSDictionary dictionaryWithContentsOfFile:LACSharedPath(@"preferences.plist")]; }
    NSMutableDictionary *next=[NSMutableDictionary dictionary];
    if ([file[@"schema"] isEqual:@1] && [file[@"values"] isKindOfClass:NSDictionary.class]) {
        for (NSString *key in LACKeys()) {
            id value=file[@"values"][key];
            if (value && LACValidValue(key,value)) next[key]=value;
        }
    }
    // This domain belongs only to LiquidClock; never consume or overwrite the
    // installed original LiquidAss's preferences. Shared validated snapshot
    // wins in sandboxed poster hosts; native domain wins in SpringBoard/Prefs.
    BOOL owner=[NSBundle.mainBundle.bundleIdentifier isEqual:@"com.apple.springboard"] ||
               [NSBundle.mainBundle.bundleIdentifier isEqual:@"com.apple.Preferences"];
    for (NSString *key in LACKeys()) {
        id value=CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)key,(__bridge CFStringRef)LACPreferenceDomain));
        if (LACValidValue(key,value) && (owner || !next[key])) next[key]=value;
    }
    [gConfigLock lock];
    if (next.count || !gSnapshot) gSnapshot=[next copy];
    [gConfigLock unlock];
}
id LACPreferenceValue(NSString *key,id fallback) {
    LACSetup();
    [gConfigLock lock];
    id value=gSnapshot[key];
    [gConfigLock unlock];
    if (!value) return fallback;
    if ([fallback isKindOfClass:NSNumber.class] && ![value isKindOfClass:NSNumber.class]) return fallback;
    if ([fallback isKindOfClass:NSString.class] && ![value isKindOfClass:NSString.class]) return fallback;
    return value;
}
double LACNumber(NSString *key,double fallback,double minimum,double maximum) {
    double value=[LACPreferenceValue(key,@(fallback)) doubleValue];
    return isfinite(value)?fmax(minimum,fmin(maximum,value)):fallback;
}
BOOL LACEnabled(void) { return [LACPreferenceValue(@"Clock.Enabled",@YES) boolValue]; }
BOOL LACPublishConfiguration(NSError **error) {
    LACSetup();
    NSMutableDictionary *values=[NSMutableDictionary dictionary];
    for (NSString *key in LACKeys()) {
        id value=CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)key,(__bridge CFStringRef)LACPreferenceDomain));
        if (value && LACValidValue(key,value)) values[key]=value;
    }
    NSData *data=[NSPropertyListSerialization dataWithPropertyList:@{@"schema":@1,@"values":values}
        format:NSPropertyListBinaryFormat_v1_0 options:0 error:error];
    if (!data || ![data writeToFile:LACSharedPath(@"preferences.plist") options:NSDataWritingAtomic error:error]) return NO;
    if (chmod(LACSharedPath(@"preferences.plist").fileSystemRepresentation,0644)) {
        if (error) *error=[NSError errorWithDomain:NSPOSIXErrorDomain code:errno userInfo:nil];
        return NO;
    }
    LACReloadConfiguration();
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(),(__bridge CFStringRef)LACReloadNotification,NULL,NULL,true);
    return YES;
}
BOOL LACIsClockHostProcess(void) {
    // Explicit IDs recovered from the sample sandbox profile, not all UIKit.
    NSArray *allowed=@[@"com.apple.springboard",@"com.apple.PosterBoard",
        @"com.apple.NanoUniverse.AegirProxyApp.AegirPoster",@"com.apple.weather.poster",
        @"com.apple.WatchFacesWallpaperSupport.ExtragalacticPoster",
        @"com.apple.PhotosUIPrivate.PhotosPosterProvider",@"com.apple.EmojiPoster.EmojiPosterExtension",
        @"com.apple.WallpaperKit.CollectionsPoster",@"com.apple.PridePoster.PridePosterExtension",
        @"com.apple.UnityPoster.UnityPosterExtension",@"com.apple.GradientPoster.GradientPosterExtension"];
    return [allowed containsObject:NSBundle.mainBundle.bundleIdentifier?:@""] ||
           [NSProcessInfo.processInfo.processName isEqual:@"SpringBoard"];
}
void LACLog(NSString *event,NSDictionary *fields) {
    // Metadata only: never label text, glyph pixels, poster images, tokens or IDs.
    static NSUInteger lines;
    @synchronized(LACPreferenceDomain) {
        if (lines++>=256) return;
        NSString *message=[NSString stringWithFormat:@"%@ %@ %@\n",NSDate.date,event,fields?:@{}];
        NSString *path=[NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches/LiquidClock.log"];
        int fd=open(path.fileSystemRepresentation,O_WRONLY|O_CREAT|O_APPEND|O_NOFOLLOW|O_CLOEXEC,0600);
        if (fd>=0) { NSData *bytes=[message dataUsingEncoding:NSUTF8StringEncoding]; (void)write(fd,bytes.bytes,bytes.length);close(fd); }
        NSLog(@"[LiquidClock] %@ %@",event,fields?:@{});
    }
}
