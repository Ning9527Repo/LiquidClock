#pragma once
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>
#import "LACClockEditor.h"
#include "LACEState.hpp"
FOUNDATION_EXPORT NSString * const LACEStyleKey;
FOUNDATION_EXPORT NSString * const LACEProgressKey;
FOUNDATION_EXPORT NSString * const LACEPosterStyleKey;
FOUNDATION_EXPORT NSString * const LACEPosterProgressKey;
FOUNDATION_EXPORT NSString * const LACEDidChange;
NSError *LACEError(NSInteger code, NSString *description);
NSDictionary *LACENormalizeStyle(id object, NSError **error);
NSDictionary *LACEStyle(lace::State state);
bool LACEValidateFonts(NSURL *directory, NSError **error);
UIFont *LACEFont(lace::State state, CGFloat size);
void LACERenderEditorPreview(UIView *view);
@class LACEStore;
@interface LACESession : NSObject {
@public lace::Transaction transaction;
}
@property(nonatomic,copy) NSString *posterID;
@property(nonatomic,weak) LACEStore *store;
- (BOOL)stageWeight:(double)weight softness:(double)softness progress:(double)progress;
- (BOOL)commit:(NSError **)error;
- (void)cancel;
@end
@interface LACEStore : NSObject {
@public lace::Store core;
}
@property(nonatomic,strong) NSURL *fileURL;
@property(nonatomic,strong) NSMutableDictionary *records;
@property(nonatomic,strong) LACESession *active;
@property(nonatomic) BOOL emittingChange;
@property(nonatomic) LACEChangeCallback callback;
@property(nonatomic) void *callbackContext;
- (instancetype)initWithURL:(NSURL *)url globals:(NSDictionary *)globals error:(NSError **)error;
- (NSDictionary *)committedRecord:(NSString *)poster;
- (lace::State)stateForPoster:(NSString *)poster preview:(BOOL)preview;
- (LACESession *)begin:(NSString *)poster;
- (BOOL)restore:(NSString *)poster userInfo:(NSDictionary *)info properties:(NSDictionary *)props error:(NSError **)error;
- (BOOL)save:(LACESession *)session error:(NSError **)error;
- (void)changed:(NSString *)poster reason:(LACEChangeReason)reason;
@end
@interface LACEEditorController : UIViewController <UIAdaptivePresentationControllerDelegate>
- (instancetype)initWithSession:(LACESession *)session;
- (void)cancelAndDismiss;
@end
