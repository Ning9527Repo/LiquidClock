#pragma once
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#ifdef __cplusplus
extern "C" {
#endif
FOUNDATION_EXPORT NSString *const LACPreferenceDomain;
FOUNDATION_EXPORT NSString *const LACReloadNotification;
NSString *LACResourcePath(NSString *name);
NSString *LACSharedPath(NSString *name);
id LACPreferenceValue(NSString *key, id fallback);
double LACNumber(NSString *key, double fallback, double minimum, double maximum);
BOOL LACEnabled(void);
BOOL LACIsClockHostProcess(void);
void LACReloadConfiguration(void);
BOOL LACPublishConfiguration(NSError **error);
BOOL LACApplySandboxProfile(void);
void LACLog(NSString *event, NSDictionary *fields);
#ifdef __cplusplus
}
#endif
