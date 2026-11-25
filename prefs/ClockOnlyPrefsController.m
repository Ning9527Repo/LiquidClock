// Native adapter for the evidence-derived Root.plist. Not sample/upstream source.
// Integration source only: never built, installed, injected or UIKit-tested here.
// Requires the integration target's existing Preferences.framework development headers.
#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <math.h>

@interface ClockOnlyPrefsController : PSListController
@property(nonatomic, copy) NSSet<NSString *> *clockAllowedKeys;
@end

@implementation ClockOnlyPrefsController

- (id)storedValueForKey:(NSString *)key fallback:(id)fallback {
    if (!key.length) return fallback;
    CFPropertyListRef copied = CFPreferencesCopyAppValue((__bridge CFStringRef)key,
                                        CFSTR("dylv.liquidassprefs"));
    id result = CFBridgingRelease(copied);
    if ([fallback isKindOfClass:[NSNumber class]])
        return [result isKindOfClass:[NSNumber class]] ? result : fallback;
    if ([fallback isKindOfClass:[NSString class]])
        return [result isKindOfClass:[NSString class]] ? result : fallback;
    return result ?: fallback;
}

- (NSArray *)specifiers {
    if (!_specifiers) {
        NSArray *source = [self loadSpecifiersFromPlistName:@"Root" target:self];
        NSMutableArray *visible = [NSMutableArray array];
        NSMutableSet *allowed = [NSMutableSet set];
        NSInteger major = [NSProcessInfo processInfo].operatingSystemVersion.majorVersion;
        NSInteger fps = [UIScreen mainScreen].maximumFramesPerSecond;
        for (PSSpecifier *specifier in source) {
            NSNumber *maxOS = [specifier propertyForKey:@"LACMaximumOSMajor"];
            if (maxOS && major > maxOS.integerValue) continue;
            NSString *key = [specifier propertyForKey:@"key"];
            if (key.length) [allowed addObject:key];
            if ([[specifier propertyForKey:@"LACDynamicMaximumFPS"] boolValue]) {
                // Never replace an unknown device maximum with a guessed 60/120.
                if (fps >= 1) {
                    [specifier setProperty:@((double)fps) forKey:@"default"];
                    [specifier setProperty:@((double)fps) forKey:@"max"];
                } else {
                    [specifier setProperty:@NO forKey:@"enabled"];
                }
            }
            BOOL enabled = !([[specifier propertyForKey:@"LACDynamicMaximumFPS"] boolValue] && fps < 1);
            for (NSDictionary *gate in [specifier propertyForKey:@"LACGates"]) {
                enabled = enabled && [[self storedValueForKey:gate[@"key"] fallback:gate[@"default"]] boolValue];
            }
            if (key.length) [specifier setProperty:@(enabled) forKey:@"enabled"];
            [visible addObject:specifier];
        }
        self.clockAllowedKeys = allowed;
        _specifiers = [visible copy];
    }
    return _specifiers;
}

- (id)readPreferenceValue:(PSSpecifier *)specifier {
    return [self storedValueForKey:[specifier propertyForKey:@"key"]
                         fallback:[specifier propertyForKey:@"default"]];
}

- (void)showPreferenceError:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Clock Settings"
        message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)setPreferenceValue:(id)value specifier:(PSSpecifier *)specifier {
    NSString *key = [specifier propertyForKey:@"key"];
    // Whitelist is derived solely from this generated page, never another surface.
    if (![self.clockAllowedKeys containsObject:key]) return;
    NSString *kind = [specifier propertyForKey:@"LACValueType"];
    id normalized = nil;
    if ([kind isEqualToString:@"boolean"] && [value isKindOfClass:[NSNumber class]])
        normalized = [NSNumber numberWithBool:[value boolValue]];
    else if ([kind isEqualToString:@"integer"] && [value isKindOfClass:[NSNumber class]])
        normalized = [NSNumber numberWithInt:[value boolValue] ? 1 : 0];
    else if ([kind isEqualToString:@"number"] && [value isKindOfClass:[NSNumber class]]) {
        double number = [value doubleValue];
        if (!isfinite(number)) return;
        NSNumber *min = [specifier propertyForKey:@"min"];
        NSNumber *max = [specifier propertyForKey:@"max"];
        if ((min && number < min.doubleValue) || (max && number > max.doubleValue)) return;
        // Display decimals are not evidence of quantization; do not round here.
        normalized = [NSNumber numberWithDouble:number];
    } else if ([kind isEqualToString:@"string"] && [value isKindOfClass:[NSString class]])
        normalized = value;
    if (!normalized) return;
    CFPreferencesSetAppValue((__bridge CFStringRef)key, (__bridge CFPropertyListRef)normalized,
                              CFSTR("dylv.liquidassprefs"));
    if (!CFPreferencesAppSynchronize(CFSTR("dylv.liquidassprefs"))) {
        [self showPreferenceError:@"Preferences synchronization failed. The value may remain cached; persistence was not confirmed."];
        return;
    }
    // Known sample observer at arm64e VA 0x45078..0x450b4.
    // Immediate commit is an explicit adapter choice, not the sample staged Apply UX.
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(),
                       CFSTR("dylv.liquidassprefs/Reload"), NULL, NULL, true);
    if ([kind isEqualToString:@"boolean"] || [kind isEqualToString:@"integer"]) {
        _specifiers = nil;
        [self reloadSpecifiers];
    }
}
@end
