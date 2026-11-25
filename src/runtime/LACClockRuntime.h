#pragma once
#import <UIKit/UIKit.h>
#ifdef __cplusplus
extern "C" {
#endif
void LACClockRuntimeStart(void);
void LACClockUpdateView(UIView *view);
void LACClockUpdateVisibility(UIView *view);
void LACClockUpdateSubtitle(UIView *view);
void LACClockSetDate(UIView *view, NSDate *date);
void LACClockInvalidateAll(void);
void LACClockPosterWillStore(id configuration);
NSDictionary *LACClockMergePoster(id configuration, NSDictionary *original, BOOL properties, NSError **error);
#ifdef __cplusplus
}
#endif
