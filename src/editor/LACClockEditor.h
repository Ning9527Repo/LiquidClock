#pragma once
#include <CoreFoundation/CoreFoundation.h>
#include <CoreGraphics/CoreGraphics.h>
#include <stdbool.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
/* C ABI, ARC implementation. All calls MUST be on the UIKit main thread;
 * wrong-thread calls fail/no-op, never dispatch_sync. Object arguments are
 * non-transferring (__bridge void *) live UIKit objects, not arbitrary pointers.
 * Copy results / outError follow the CF +1 rule. Callback arguments are borrowed
 * for the duration of the callback. One active editor process-wide, one draft
 * per stable poster identifier. No private selectors/hooks are auto-installed. */
typedef enum { LACEChangeRestore=1, LACEChangePreview=2,
    LACEChangeCancel=3, LACEChangeCommit=4 } LACEChangeReason;
typedef void (*LACEChangeCallback)(CFStringRef posterID, CFDictionaryRef style,
    double resizeProgress, LACEChangeReason reason, void *context);
/* URL must be a local plist path writable by this process; fontsURL points at
 * the directory containing BOTH uploaded OTFs. Configure once before binding.
 * globalValues optionally contains the sample Clock.Legacy.Style/ResizeProgress.
 * No project preferences are rewritten. Returns false on bad/corrupt storage. */
bool LACEConfigure(CFURLRef stateFileURL, CFURLRef fontsURL,
    CFDictionaryRef globalValues, CFErrorRef *outError);
void LACESetChangeCallback(LACEChangeCallback callback, void *context);
bool LACEBindClockView(void *clockView, void *presenterViewController, CFStringRef posterID);
void LACEUnbindClockView(void *clockView);
bool LACEPresentEditor(void *presenterViewController, CFStringRef posterID);
/* Call when native poster editor focus/configuration is invalidated. */
void LACECancelEditor(void);
CFDictionaryRef LACECopyPreviewStyle(CFStringRef posterID) CF_RETURNS_RETAINED;
bool LACEGetPreviewProgress(CFStringRef posterID, double *outProgress);
/* Restore independently per key from userInfo, then configuredProperties, then
 * this poster's committed journal, then explicit global defaults; never another
 * poster. Reject malformed known keys. An active draft is cancelled first.
 * The host supplies a stable configuration UUID, NOT a pointer/index. */
bool LACEPosterRestore(CFStringRef posterID, CFDictionaryRef userInfo,
    CFDictionaryRef configuredProperties, CFErrorRef *outError);
/* Merge only committed values into native userInfo/configuredProperties before
 * invoking the original native store method. Drafts never leak into saves.
 * Other keys and nested values remain intact. Does NOT call a private method. */
CFDictionaryRef LACEPosterCopyUserInfo(CFStringRef posterID,
    CFDictionaryRef original, CFErrorRef *outError) CF_RETURNS_RETAINED;
/* UIFont at exact uploaded name/variation; caller CFRelease(result). Height /
 * width axes default to their font defaults; progress is geometry, not HGHT.
 * Renderers may use this to match the editor; nil on unavailable fonts. */
CFTypeRef LACECopyPreviewFont(CFStringRef posterID, double pointSize) CF_RETURNS_RETAINED;
/* Native poster depth adapter: source rect is the clock occlusion rect in the
 * poster view's coordinate system. Clears that rect from the foreground replica
 * using an even-odd shape (sample 0x73324..0x734ec). It does NOT cut glyphs out of
 * the clock, toggle Apple's depth eligibility, or infer private scene objects.
 * Existing masks are composed, preserved, and conditionally restored. Re-call
 * after geometry changes. Return false on cross-window/invalid geometry. */
bool LACEPosterUpdateDepthMask(void *foregroundReplica, void *posterView,
    CGRect clockOcclusionRect, bool enabled);
void LACEPosterClearDepthMask(void *foregroundReplica);
#ifdef __cplusplus
}
#endif
