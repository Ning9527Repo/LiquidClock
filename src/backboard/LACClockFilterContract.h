#pragma once
#include <stdint.h>

/* NEW reconstruction-only names, deliberately not LiquidAss's installed names.
 * CAFilter creation: +filterWithType: with one name below. Attach ONLY to a
 * CABackdropLayer belonging to the system clock/editor/poster clock glyph host.
 * No widget/control/generic-refraction alias is registered. groupName may be nil.
 * Type selects the field channel; no undocumented serialized KVC property is
 * invented. Do NOT set arbitrary input* properties on this private filter.
 * Geometry comes from CA's captured source/destination textures and its render
 * callback. Visual parameters are configured IN BACKBOARDD via the API below;
 * changing a main-process struct does not configure a different process.
 */
#define LAC_CLOCK_FILTER_TYPE "com.ning.liquidclock"
#define LAC_CLOCK_EDITOR_FILTER_TYPE "com.ning.liquidclock.editor"
#define LAC_CLOCK_POSTER_FILTER_TYPE_PREFIX "com.ning.liquidclock.poster"
#define LAC_CLOCK_VERTEX_FUNCTION "ningClockVertex"
#define LAC_CLOCK_FRAGMENT_FUNCTION "ningClockFragment"
#define LAC_CLOCK_POSTER_SLOT_COUNT 16u
#define LAC_CLOCK_FILTER_CONTRACT_VERSION 1u

#ifdef __cplusplus
extern "C" {
#endif

typedef enum LACClockChannel {
    LACClockChannelMain = 0,
    LACClockChannelEditor = 1,
    LACClockChannelPoster = 2
} LACClockChannel;

/* A producer path is supplied explicitly to Backboardd initialization (see
 * LACClockBackboard.h). main/editor each have one 0x400040-byte wire slot;
 * poster has exactly 16. Type ...posterN selects N, decimal 0 through 15.
 * Paths are not transported as CAFilter properties. No sample file is loaded.
 */
typedef struct LACClockVisualParameters {
    uint32_t version;              /* LAC_CLOCK_FILTER_CONTRACT_VERSION */
    float radius;                  /* point units; >=0 */
    float bezelWidth;
    float glassThickness;
    float refractionScale;
    float refractiveIndex;
    float dispersionStrength;
    float tintRGBA[4];
    float backdropZoom;            /* >0 */
    float shapeScale;              /* >0 */
    float clockOrientation;        /* sample shader's 0/2/3/4 orientation */
    float coverSideRefraction;
} LACClockVisualParameters;

/* Safe immutable defaults; setter returns 0 for unsupported/nonfinite values.
 * Call in Backboardd only. Parameters are per channel, not generic surfaces.
 * Header is C/C++/Objective-C compatible and imports no private framework API.
 */
LACClockVisualParameters LACClockDefaultVisualParameters(void);
int LACClockSetVisualParameters(LACClockChannel channel,
                               const LACClockVisualParameters *parameters);
/* Destination capacity >=64 is sufficient for every supported filter name. */
int LACClockCopyFilterType(LACClockChannel channel, uint32_t poster_slot,
                           char *destination, uint32_t capacity);
#ifdef __cplusplus
}
#endif
