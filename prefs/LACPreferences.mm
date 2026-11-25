// Independent native adapter. Evidence-only ClockOnlyPrefsController.m is kept
// unchanged for reproducibility; this class owns only com.ning.liquidclock.
#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>
#import "../src/runtime/LACConfiguration.h"
#include <math.h>
@interface LACPreferences : PSListController
@property(nonatomic,copy) NSArray *lacSpecifiers;
@property(nonatomic,copy) NSSet *lacKeys;
@property(nonatomic) BOOL lacLoading;
@end
@implementation LACPreferences
- (void)viewDidLoad {
    [super viewDidLoad];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(lacActive:)
        name:UIApplicationDidBecomeActiveNotification object:nil];
}
- (void)dealloc { [NSNotificationCenter.defaultCenter removeObserver:self]; }
- (void)lacActive:(NSNotification *)n {
    (void)n;
    if (!self.isViewLoaded || !self.view.window || self.navigationController.topViewController!=self) return;
    self.lacSpecifiers=nil; [super setSpecifiers:nil];[self reloadSpecifiers];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    LACReloadConfiguration();
    self.lacSpecifiers=nil;[super setSpecifiers:nil];[self reloadSpecifiers];
    NSError *error=nil;
    if (!LACPublishConfiguration(&error)) LACLog(@"settings-publish-failed",@{@"code":@(error.code)});
}
- (void)setSpecifiers:(NSArray *)values {
    [super setSpecifiers:values];self.lacSpecifiers=values;
}
- (NSArray *)specifiers {
    if (self.lacSpecifiers || self.lacLoading) return self.lacSpecifiers;
    self.lacLoading=YES;
    @try {
        NSArray *source=[self loadSpecifiersFromPlistName:@"Root" target:self bundle:[NSBundle bundleForClass:self.class]];
        NSMutableArray *visible=[NSMutableArray array];NSMutableSet *keys=[NSMutableSet set];
        NSInteger major=NSProcessInfo.processInfo.operatingSystemVersion.majorVersion;
        NSInteger fps=UIScreen.mainScreen.maximumFramesPerSecond;
        for(PSSpecifier *s in source) {
            NSNumber *maxOS=[s propertyForKey:@"LACMaximumOSMajor"];
            if(maxOS && major>maxOS.integerValue)continue;
            NSString *key=[s propertyForKey:@"key"];
            if(key.length)[keys addObject:key];
            BOOL enabled=YES;
            if([[s propertyForKey:@"LACDynamicMaximumFPS"] boolValue]) {
                enabled=fps>=1;
                if(enabled) { [s setProperty:@((double)fps) forKey:@"default"];[s setProperty:@((double)fps) forKey:@"max"]; }
            }
            for(NSDictionary *gate in [s propertyForKey:@"LACGates"])
                enabled=enabled && [LACPreferenceValue(gate[@"key"],gate[@"default"]) boolValue];
            if(key.length)[s setProperty:@(enabled) forKey:@"enabled"];
            [visible addObject:s];
        }
        self.lacKeys=keys;self.lacSpecifiers=[visible copy];[super setSpecifiers:self.lacSpecifiers];
        return self.lacSpecifiers;
    } @finally { self.lacLoading=NO; }
}
- (id)readPreferenceValue:(PSSpecifier *)specifier {
    return LACPreferenceValue([specifier propertyForKey:@"key"],[specifier propertyForKey:@"default"]);
}
- (void)setPreferenceValue:(id)value specifier:(PSSpecifier *)specifier {
    NSString *key=[specifier propertyForKey:@"key"];
    if(![self.lacKeys containsObject:key])return;
    NSString *kind=[specifier propertyForKey:@"LACValueType"];
    id normalized=nil;
    if([kind isEqual:@"boolean"] && [value isKindOfClass:NSNumber.class])normalized=@([value boolValue]);
    else if([kind isEqual:@"integer"] && [value isKindOfClass:NSNumber.class])normalized=[NSNumber numberWithInt:[value boolValue]?1:0];
    else if([kind isEqual:@"number"] && [value isKindOfClass:NSNumber.class]) {
        double n=[value doubleValue];NSNumber *minimum=[specifier propertyForKey:@"min"],*maximum=[specifier propertyForKey:@"max"];
        if(!isfinite(n)||(minimum && n<minimum.doubleValue)||(maximum && n>maximum.doubleValue))return;
        normalized=@(n);
    } else if([kind isEqual:@"string"] && [value isKindOfClass:NSString.class] && [value length]<=512)normalized=value;
    if(!normalized)return;
    CFPreferencesSetAppValue((__bridge CFStringRef)key,(__bridge CFPropertyListRef)normalized,(__bridge CFStringRef)LACPreferenceDomain);
    if(!CFPreferencesAppSynchronize((__bridge CFStringRef)LACPreferenceDomain)) { LACLog(@"settings-synchronize-failed",@{});return; }
    NSError *error=nil;
    if(!LACPublishConfiguration(&error)) {
        UIAlertController *a=[UIAlertController alertControllerWithTitle:@"LiquidClock" message:@"共享配置未保存，请检查插件目录权限。" preferredStyle:UIAlertControllerStyleAlert];
        [a addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];[self presentViewController:a animated:YES completion:nil];
        return;
    }
    if([kind isEqual:@"boolean"]||[kind isEqual:@"integer"]) { self.lacSpecifiers=nil;[super setSpecifiers:nil];[self reloadSpecifiers]; }
}
@end
