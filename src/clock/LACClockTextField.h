#pragma once
#import <UIKit/UIKit.h>
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
typedef struct LACClockSDFSnapshot {
    uint32_t width, height;
    float points_width, points_height;
    const float *distance;
    size_t count;
    uint64_t generation;
} LACClockSDFSnapshot;

/* MAIN THREAD ONLY, model-layer UILabel geometry (not a screen capture).
 * Mask/SDF row 0 = top of view.bounds, x to right, negatives inside, in points.
 * Visible UILabel descendants use their original rich text/fonts/paragraphs,
 * bidi and affine transforms. Rectangular clips between each label and root
 * are respected; external ancestor clips are not a viewport/screen capture.
 * No labels, only CATextLayer/custom drawing, empty masks, attachments, masks,
 * non-affine transforms, overflowing truncation, explicit NSParagraphStyle
 * hyphenation/non-default break strategies and font/tracking shrinking
 * fail CLOSED (return 0), rather than approximate UIKit-only fitting behavior.
 * No fallback rounded rectangle or fabricated all-clear field is published.
 * Colors/shadows are deliberately removed for a monochrome glyph geometry mask.
 *
 * Scale must be finite in [1,4]; ceil(bounds.size*scale) must be 1..1024
 * on both axes, bounds sizes <=2048 points. Layout must be settled by caller.
 * Generation is per-view/cache-lifetime, increases only after a successful
 * rebuild, survives explicit invalidation, and never wraps (exhaustion fails).
 * It is NOT a global identity across views or newly opened publisher handles.
 *
 * revision=0: automatically compare text/geometry snapshot; no raster/EDT on hit.
 * revision!=0: O(1) cache hit for same bounds/scale/traits/revision, with NO tree
 * traversal, including no ancestor visibility check on that hit. CALLER MUST
 * advance revision or invalidate for ANY descendant/ancestor visibility, text,
 * attributes, layout, clipping, transform or label-option change. Never reuse a
 * revision for changed content. This is an invalidation contract, not a timer.
 * Borrowed distance remains valid only until the next changed Get, Invalidate,
 * or view destruction. Do NOT free or mutate it; synchronously publish/copy it
 * before yielding the main thread. A cache hit keeps generation unchanged.
 * Output snapshot is all-zero on failure; no stale cached field is returned. */
int LACClockGetSDFForView(UIView *view, float pixels_per_point, uint64_t revision,
                         LACClockSDFSnapshot *out_snapshot);
void LACClockInvalidateSDFCacheForView(UIView *view);

/* Compatibility copying API; uses automatic cache validation but allocates and
 * copies on each successful call. All outputs are reset on failure. free() the
 * returned distance. For 120Hz use Get + generation-based publication instead. */
int LACClockCreateSDFForView(UIView *view, float pixels_per_point,
                             uint32_t *out_width, uint32_t *out_height,
                             float *out_points_width, float *out_points_height,
                             float **out_distance, size_t *out_count);
#ifdef __cplusplus
}
#endif
