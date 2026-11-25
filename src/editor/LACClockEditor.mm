#import "LACEInternal.h"
#import <objc/runtime.h>
static LACEStore *gStore;
static __weak LACEEditorController *gEditor;
static char kBinding;
static BOOL MainThread(void) {return NSThread.isMainThread;}
static BOOL PosterID(NSString *value) {return [value isKindOfClass:NSString.class]&&value.length>0&&value.length<=512;}
static void ExportError(CFErrorRef *outError,NSError *error) {
    if(outError)*outError=error?(CFErrorRef)CFBridgingRetain(error):nullptr;
}
@interface LACEClockBinding : NSObject
@property(nonatomic,weak) UIView *view;
@property(nonatomic,weak) UIViewController *presenter;
@property(nonatomic,copy) NSString *posterID;
@property(nonatomic,weak) UILongPressGestureRecognizer *gesture;
@property(nonatomic) BOOL originalInteraction;
- (void)pressed:(UILongPressGestureRecognizer *)gesture;
- (void)changed:(NSNotification *)note;
@end
@implementation LACEClockBinding
- (void)pressed:(UILongPressGestureRecognizer *)gesture {
    if(gesture.state==UIGestureRecognizerStateBegan&&self.view.window&&self.presenter)
        LACEPresentEditor((__bridge void *)self.presenter,(__bridge CFStringRef)self.posterID);
}
- (void)changed:(NSNotification *)note {
    if([note.userInfo[@"posterID"] isEqualToString:self.posterID]) {
        // Renderer callback is the authority for applying style/progress. Do not
        // overwrite native UILabel fonts/transforms or swallow existing gestures.
        [self.view setNeedsLayout];[self.view setNeedsDisplay];
    }
}
- (void)dealloc {[NSNotificationCenter.defaultCenter removeObserver:self];}
@end
bool LACEConfigure(CFURLRef stateFileURL,CFURLRef fontsURL,CFDictionaryRef globals,CFErrorRef *outError) {
    if(outError)*outError=nullptr;
    if(!MainThread()){ExportError(outError,LACEError(1,@"Call editor APIs on the UIKit main thread"));return false;}
    if(gStore){ExportError(outError,LACEError(2,@"Clock editor is already configured"));return false;}
    NSURL *state=(__bridge NSURL *)stateFileURL,*fonts=(__bridge NSURL *)fontsURL;
    if(![state isKindOfClass:NSURL.class]||!state.isFileURL||![fonts isKindOfClass:NSURL.class]||!fonts.isFileURL) {
        ExportError(outError,LACEError(3,@"State file and uploaded fonts must be local file URLs"));return false;
    }
    NSError *error=nil;LACEStore *store=[[LACEStore alloc] initWithURL:state globals:(__bridge NSDictionary *)globals error:&error];
    if(!store||!LACEValidateFonts(fonts,&error)){ExportError(outError,error);return false;}
    gStore=store;return true;
}
void LACESetChangeCallback(LACEChangeCallback callback,void *context) {
    if(!MainThread())return;gStore.callback=callback;gStore.callbackContext=context;
}
bool LACEBindClockView(void *clockView,void *presenterViewController,CFStringRef posterID) {
    if(!MainThread()||!gStore)return false;
    UIView *view=(__bridge id)clockView;UIViewController *presenter=(__bridge id)presenterViewController;
    NSString *poster=(__bridge NSString *)posterID;
    if(![view isKindOfClass:UIView.class]||![presenter isKindOfClass:UIViewController.class]||!PosterID(poster))return false;
    LACEClockBinding *binding=objc_getAssociatedObject(view,&kBinding);
    if(binding){binding.presenter=presenter;binding.posterID=poster;return true;}
    binding=[LACEClockBinding new];binding.view=view;binding.presenter=presenter;binding.posterID=poster;
    binding.originalInteraction=view.userInteractionEnabled;view.userInteractionEnabled=YES;
    UILongPressGestureRecognizer *gesture=[[UILongPressGestureRecognizer alloc] initWithTarget:binding action:@selector(pressed:)];
    gesture.cancelsTouchesInView=NO;gesture.minimumPressDuration=.55;binding.gesture=gesture;
    [view addGestureRecognizer:gesture];objc_setAssociatedObject(view,&kBinding,binding,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [NSNotificationCenter.defaultCenter addObserver:binding selector:@selector(changed:) name:LACEDidChange object:gStore];
    return true;
}
void LACEUnbindClockView(void *clockView) {
    if(!MainThread())return;UIView *view=(__bridge id)clockView;if(![view isKindOfClass:UIView.class])return;
    LACEClockBinding *binding=objc_getAssociatedObject(view,&kBinding);if(!binding)return;
    [view removeGestureRecognizer:binding.gesture];[NSNotificationCenter.defaultCenter removeObserver:binding];
    if(!binding.originalInteraction&&view.userInteractionEnabled)view.userInteractionEnabled=NO;
    objc_setAssociatedObject(view,&kBinding,nil,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
bool LACEPresentEditor(void *presenterViewController,CFStringRef posterID) {
    if(!MainThread()||!gStore||gStore.active)return false;
    UIViewController *presenter=(__bridge id)presenterViewController;NSString *poster=(__bridge NSString *)posterID;
    if(![presenter isKindOfClass:UIViewController.class]||!PosterID(poster)||!presenter.viewIfLoaded.window||
        presenter.isBeingDismissed||presenter.presentedViewController)return false;
    LACESession *session=[gStore begin:poster];if(!session)return false;
    LACEEditorController *editor=[[LACEEditorController alloc] initWithSession:session];gEditor=editor;
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:editor];
    nav.modalPresentationStyle=UIModalPresentationFormSheet;
    [presenter presentViewController:nav animated:YES completion:nil];nav.presentationController.delegate=editor;
    return true;
}
void LACECancelEditor(void) {
    if(!MainThread())return;LACEEditorController *editor=gEditor;
    if(editor)[editor cancelAndDismiss];else [gStore.active cancel];
}
CFDictionaryRef LACECopyPreviewStyle(CFStringRef posterID) {
    NSString *poster=(__bridge NSString *)posterID;if(!MainThread()||!gStore||!PosterID(poster))return nullptr;
    return (CFDictionaryRef)CFBridgingRetain(LACEStyle([gStore stateForPoster:poster preview:YES]));
}
bool LACEGetPreviewProgress(CFStringRef posterID,double *outProgress) {
    NSString *poster=(__bridge NSString *)posterID;if(!MainThread()||!gStore||!PosterID(poster)||!outProgress)return false;
    *outProgress=[gStore stateForPoster:poster preview:YES].progress;return true;
}
bool LACEPosterRestore(CFStringRef posterID,CFDictionaryRef userInfo,CFDictionaryRef configuredProperties,CFErrorRef *outError) {
    if(outError)*outError=nullptr;NSString *poster=(__bridge NSString *)posterID;
    if(!MainThread()||!gStore||!PosterID(poster)){ExportError(outError,LACEError(4,@"Restore requires a configured main-thread editor and stable poster ID"));return false;}
    BOOL closing=[gStore.active.posterID isEqualToString:poster];LACEEditorController *editor=gEditor;
    NSError *error=nil;BOOL ok=[gStore restore:poster userInfo:(__bridge NSDictionary *)userInfo properties:(__bridge NSDictionary *)configuredProperties error:&error];
    if(ok&&closing)[editor cancelAndDismiss];if(!ok)ExportError(outError,error);return ok;
}
CFDictionaryRef LACEPosterCopyUserInfo(CFStringRef posterID,CFDictionaryRef original,CFErrorRef *outError) {
    if(outError)*outError=nullptr;NSString *poster=(__bridge NSString *)posterID;
    NSDictionary *base=(__bridge NSDictionary *)original;
    if(!MainThread()||!gStore||!PosterID(poster)||(base&&![base isKindOfClass:NSDictionary.class])) {
        ExportError(outError,LACEError(5,@"Save merge requires a configured main-thread editor, poster ID and dictionary"));return nullptr;
    }
    NSMutableDictionary *merged=base?[base mutableCopy]:[NSMutableDictionary dictionary];
    NSDictionary *record=[gStore committedRecord:poster];
    merged[LACEPosterStyleKey]=record[LACEPosterStyleKey];merged[LACEPosterProgressKey]=record[LACEPosterProgressKey];
    return (CFDictionaryRef)CFBridgingRetain([merged copy]);
}
CFTypeRef LACECopyPreviewFont(CFStringRef posterID,double pointSize) {
    NSString *poster=(__bridge NSString *)posterID;
    if(!MainThread()||!gStore||!PosterID(poster))return nullptr;
    UIFont *font=LACEFont([gStore stateForPoster:poster preview:YES],pointSize);
    return font?CFBridgingRetain(font):nullptr;
}
