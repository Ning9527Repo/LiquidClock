#include "LACClockSDF.h"
#include <float.h>
#include <math.h>
#include <stdlib.h>

/* Exact squared Euclidean EDT of binary pixel centres. Skip absent sites rather
 * than representing infinity by 1e20f: adding q*q to that float loses q*q and
 * can discard the only real feature. Double intersections avoid cancellation
 * at long rows and exact integer squared distances fit float at our limits. */
static void edt_1d(const double *f, uint32_t n, double *d,
                   int32_t *v, double *z) {
    int32_t k = -1;
    for (uint32_t q = 0; q < n; ++q) {
        if (!isfinite(f[q])) continue;
        double s = -INFINITY;
        while (k >= 0) {
            const int32_t p = v[k];
            s = ((f[q] - f[p]) + (double)q*q - (double)p*p) /
                (2.0 * ((double)q - p));
            if (s > z[k]) break;
            --k;
        }
        ++k;
        v[k] = (int32_t)q;
        z[k] = k ? s : -INFINITY;
        z[k+1] = INFINITY;
    }
    if (k < 0) {
        for (uint32_t q = 0; q < n; ++q) d[q] = INFINITY;
        return;
    }
    const int32_t last = k;
    k = 0;
    for (uint32_t q = 0; q < n; ++q) {
        while (k < last && z[k+1] < (double)q) ++k;
        const double delta = (double)q - v[k];
        d[q] = delta*delta + f[v[k]];
    }
}

static void edt_2d(const uint8_t *inside, int target, uint32_t w, uint32_t h,
                   float *out, double *line, double *tmp, int32_t *v, double *z) {
    for (uint32_t y = 0; y < h; ++y) {
        for (uint32_t x = 0; x < w; ++x)
            line[x] = inside[(size_t)y*w+x] == target ? 0.0 : INFINITY;
        edt_1d(line,w,tmp,v,z);
        for (uint32_t x = 0; x < w; ++x) out[(size_t)y*w+x] = (float)tmp[x];
    }
    for (uint32_t x = 0; x < w; ++x) {
        for (uint32_t y = 0; y < h; ++y) line[y] = out[(size_t)y*w+x];
        edt_1d(line,h,tmp,v,z);
        for (uint32_t y = 0; y < h; ++y) out[(size_t)y*w+x] = (float)tmp[y];
    }
}

int LACClockSDFCreate(const uint8_t *coverage, uint32_t width, uint32_t height,
                      size_t bytes_per_row, float pixels_per_point,
                      float *out_points, size_t out_capacity) {
    if (!coverage || !out_points || !width || !height || width > 1024u ||
        height > 1024u || bytes_per_row < width ||
        !isfinite(pixels_per_point) || pixels_per_point <= 0.0f ||
        pixels_per_point > 16.0f) return 0;
    if (height > 1u && bytes_per_row > (SIZE_MAX-width)/(height-1u)) return 0;
    const size_t count = (size_t)width*height;
    const size_t maxdim = width > height ? width : height;
    /* Include the uniform-mask saturation and diagonal distances in the bound.
     * A positive but subnormal scale must not turn a successful SDF into Inf. */
    const double bound = hypot((double)width,(double)height)/pixels_per_point;
    if (out_capacity < count || !isfinite(bound) || bound > FLT_MAX) return 0;
    float *to_inside = (float *)malloc(count*sizeof(float));
    float *to_outside = (float *)malloc(count*sizeof(float));
    uint8_t *inside = (uint8_t *)malloc(count);
    double *line = (double *)malloc(maxdim*sizeof(double));
    double *tmp = (double *)malloc(maxdim*sizeof(double));
    int32_t *v = (int32_t *)malloc(maxdim*sizeof(int32_t));
    double *z = (double *)malloc((maxdim+1u)*sizeof(double));
    if (!to_inside || !to_outside || !inside || !line || !tmp || !v || !z) {
        free(to_inside); free(to_outside); free(inside);
        free(line); free(tmp); free(v); free(z);
        return 0;
    }
    int any_in = 0, any_out = 0;
    for (uint32_t y = 0; y < height; ++y) for (uint32_t x = 0; x < width; ++x) {
        const uint8_t on = coverage[(size_t)y*bytes_per_row+x] >= 128u;
        inside[(size_t)y*width+x] = on;
        any_in |= on;
        any_out |= !on;
    }
    if (!any_in || !any_out) {
        const float edge = (float)((double)maxdim/pixels_per_point);
        for (size_t i = 0; i < count; ++i) out_points[i] = any_in ? -edge : edge;
    } else {
        edt_2d(inside,1,width,height,to_inside,line,tmp,v,z);
        edt_2d(inside,0,width,height,to_outside,line,tmp,v,z);
        for (size_t i = 0; i < count; ++i) {
            const double squared = inside[i] ? to_outside[i] : to_inside[i];
            const float d = (float)((sqrt(squared)-0.5)/pixels_per_point);
            out_points[i] = inside[i] ? -d : d;
        }
    }
    free(to_inside); free(to_outside); free(inside);
    free(line); free(tmp); free(v); free(z);
    return 1;
}
