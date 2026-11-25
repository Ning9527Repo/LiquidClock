#pragma once
#include <stddef.h>
#include <stdint.h>

#define LG_CLOCK_METAL_UNIFORM_BYTES 192u
#define LG_CLOCK_METAL_FRAGMENT_BUFFER_INDEX 0u
#define LG_CLOCK_METAL_BACKDROP_TEXTURE_INDEX 0u
#define LG_CLOCK_METAL_FIELD_TEXTURE_INDEX 1u
#define LG_CLOCK_METAL_FIELD_PIXEL_FORMAT 25u /* MTLPixelFormatR16Float */
#define LG_CLOCK_METAL_FIELD_TEXEL_BYTES 2u
/* Field texture upload rowbytes = width * LG_CLOCK_METAL_FIELD_TEXEL_BYTES. */

/* Exact field order from the package's embedded Metal source.
 * Backboardd arm64e 0xe968..0xe980 passes length=0xc0 (192), index=0,
 * bytes=sp+0x870 to setFragmentBytes:length:atIndex:. The supplied main
 * liquidass.dylib is the producer; this upload lives in Backboardd instead.
 * Host offsets are exhaustively asserted by abi/test_abi.c. No iOS Metal
 * compilation or runtime reflection was performed; see abi/ABI-EVIDENCE.md.
 */
/* Clang vector types express Metal's float2/float4 alignment on the host. */
typedef float LGFloat2 __attribute__((ext_vector_type(2)));
typedef float LGFloat4 __attribute__((ext_vector_type(4)));
typedef struct {
    LGFloat2 resolution;               /* 0 */
    LGFloat2 outputResolution;         /* 8 */
    LGFloat2 screenResolution;         /* 16 */
    LGFloat2 cardOrigin;               /* 24 */
    LGFloat2 wallpaperResolution;      /* 32 */
    LGFloat2 lensOrigin;               /* 40 */
    float radius;                      /* 48 */
    float bezelWidth;                  /* 52 */
    float glassThickness;              /* 56 */
    float refractionScale;             /* 60 */
    float refractiveIndex;             /* 64 */
    LGFloat2 wallpaperOrigin;          /* 72 */
    LGFloat2 samplingTransformX;       /* 80 */
    LGFloat2 samplingTransformY;       /* 88 */
    LGFloat2 samplingTransformOffset;  /* 96 */
    float samplingOrientation;         /* 104 */
    float backdropZoom;                /* 108 */
    float shapeScale;                  /* 112 */
    LGFloat2 shapeOrigin;              /* 120 */
    LGFloat2 shapeSize;                /* 128 */
    float useGlyphMask;                /* 136 */
    float dispersionStrength;          /* 140 */
    LGFloat4 tintColor;                /* 144 */
    LGFloat2 validMaxUV;               /* 160 */
    float clockOrientation;            /* 168 */
    float coverSideRefraction;         /* 172 */
    float captureAligned;              /* 176 */
    float _metalTailPadding[3];        /* 180..191, 16-byte struct alignment */
} LGClockMetalUniformsRecovered;

#if defined(__cplusplus)
static_assert(offsetof(LGClockMetalUniformsRecovered,tintColor)==144,"Metal float4 alignment");
static_assert(offsetof(LGClockMetalUniformsRecovered,clockOrientation)==168,"Metal orientation offset");
static_assert(sizeof(LGClockMetalUniformsRecovered)==192,"Metal uniform stride");
#else
_Static_assert(offsetof(LGClockMetalUniformsRecovered,tintColor)==144,"Metal float4 alignment");
_Static_assert(offsetof(LGClockMetalUniformsRecovered,clockOrientation)==168,"Metal orientation offset");
_Static_assert(sizeof(LGClockMetalUniformsRecovered)==192,"Metal uniform stride");
#endif
