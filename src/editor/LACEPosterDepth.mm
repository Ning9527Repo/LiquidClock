#import "LACEInternal.h"
#import <objc/runtime.h>
static char kDepthAttachment;
@interface LACEDepthAttachment : NSObject
@property(nonatomic,strong) CALayer *originalMask;
@property(nonatomic,strong) CALayer *composite;
@property(nonatomic,strong) CAShapeLayer *inverse;
@end
@implementation LACEDepthAttachment
@end
static BOOL FiniteRect(CGRect rect) {
    return lace::finite(rect.origin.x)&&lace::finite(rect.origin.y)&&
        lace::finite(rect.size.width)&&lace::finite(rect.size.height)&&rect.size.width>0&&rect.size.height>0;
}
void LACEPosterClearDepthMask(void *foregroundReplica) {
    if(!NSThread.isMainThread)return;UIView *replica=(__bridge id)foregroundReplica;
    if(![replica isKindOfClass:UIView.class])return;
    LACEDepthAttachment *attachment=objc_getAssociatedObject(replica,&kDepthAttachment);if(!attachment)return;
    [CATransaction begin];[CATransaction setDisableActions:YES];
    // Never overwrite a native replacement installed since our last update.
    BOOL stillInstalled=replica.layer.mask==attachment.composite;
    attachment.composite.mask=nil;
    if(stillInstalled)replica.layer.mask=attachment.originalMask;
    [CATransaction commit];
    objc_setAssociatedObject(replica,&kDepthAttachment,nil,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
bool LACEPosterUpdateDepthMask(void *foregroundReplica,void *posterView,CGRect clockRect,bool enabled) {
    if(!NSThread.isMainThread)return false;
    UIView *replica=(__bridge id)foregroundReplica,*poster=(__bridge id)posterView;
    if(![replica isKindOfClass:UIView.class])return false;
    if(!enabled){LACEPosterClearDepthMask(foregroundReplica);return true;}
    if(![poster isKindOfClass:UIView.class]||!replica.window||replica.window!=poster.window||
        !FiniteRect(clockRect)||!FiniteRect(replica.bounds)) {
        LACEPosterClearDepthMask(foregroundReplica);return false;
    }
    CGRect hole=[replica convertRect:clockRect fromView:poster];
    if(!FiniteRect(hole)){LACEPosterClearDepthMask(foregroundReplica);return false;}
    CGRect bounds=replica.layer.bounds;hole=CGRectIntersection(bounds,hole);
    if(CGRectIsNull(hole)||CGRectIsEmpty(hole)){LACEPosterClearDepthMask(foregroundReplica);return true;}
    LACEDepthAttachment *attachment=objc_getAssociatedObject(replica,&kDepthAttachment);
    if(attachment&&replica.layer.mask!=attachment.composite) {
        LACEPosterClearDepthMask(foregroundReplica);attachment=nil;
    }
    [CATransaction begin];[CATransaction setDisableActions:YES];
    if(!attachment) {
        attachment=[LACEDepthAttachment new];attachment.originalMask=replica.layer.mask;
        attachment.composite=[CALayer layer];attachment.inverse=[CAShapeLayer layer];
        attachment.inverse.fillColor=UIColor.whiteColor.CGColor;attachment.inverse.fillRule=kCAFillRuleEvenOdd;
        [attachment.composite addSublayer:attachment.inverse];
        // Original mask is used as an unmodified alpha mask on our composition,
        // rather than overwriting its path, animation, contents, or sublayers.
        replica.layer.mask=nil;attachment.composite.mask=attachment.originalMask;
        replica.layer.mask=attachment.composite;
        objc_setAssociatedObject(replica,&kDepthAttachment,attachment,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    attachment.composite.frame=bounds;attachment.composite.bounds=bounds;
    attachment.inverse.frame=bounds;attachment.inverse.bounds=bounds;
    CGMutablePathRef path=CGPathCreateMutable();CGPathAddRect(path,nullptr,bounds);CGPathAddRect(path,nullptr,hole);
    attachment.inverse.path=path;CGPathRelease(path);[CATransaction commit];return true;
}
