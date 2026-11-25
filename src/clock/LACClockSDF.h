#pragma once
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
/* Binary-mask SDF, row 0 and x/y order preserved. Coverage >=128 is inside.
 * Magnitude = (Euclidean distance to the nearest opposite pixel CENTRE - 0.5)
 * / pixels_per_point; sign is negative inside, positive outside, in POINTS.
 * This is an exact binary centre EDT plus a half-pixel correction, NOT an
 * exact antialiased vector-contour distance. No implicit features outside the
 * mask. Uniform masks saturate to +/-max(width,height)/pixels_per_point.
 * Dimensions 1..1024, finite scale (0,16]; row padding is supported. Caller
 * supplies readable (height-1)*bytes_per_row+width bytes and count writable
 * float samples, valid for the entire synchronous call. All successful output
 * is finite; invalid geometry/allocation failure returns 0 without modifying
 * output. Thread-safe for independent buffers; no global scratch/cache. */
int LACClockSDFCreate(const uint8_t *coverage, uint32_t width, uint32_t height,
                      size_t bytes_per_row, float pixels_per_point,
                      float *out_points, size_t out_capacity);
#ifdef __cplusplus
}
#endif
