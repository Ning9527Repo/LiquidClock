#include "NGClockFieldCodec.h"
#include <string.h>

#if __BYTE_ORDER__ != __ORDER_LITTLE_ENDIAN__
#error "Sample field and texture packing require a little-endian target"
#endif

uint16_t NGClockFloat32BitsToHalf(uint32_t bits) {
    uint32_t sign = (bits >> 16) & 0x8000u;
    uint32_t exponent = (bits >> 23) & 0xffu;
    uint32_t fraction = bits & 0x7fffffu;
    if (exponent == 255u) {
        if (!fraction) return (uint16_t)(sign | 0x7c00u);
        return (uint16_t)(sign | 0x7c00u | 0x0200u | (fraction >> 13));
    }
    if (exponent > 142u) return (uint16_t)(sign | 0x7c00u);
    if (exponent < 102u) return (uint16_t)sign;
    if (exponent < 113u) {
        uint32_t significand = fraction | 0x800000u;
        unsigned shift = 126u - exponent; /* 14..24 */
        uint32_t truncated = significand >> shift;
        uint32_t remainder = significand & ((1u << shift) - 1u);
        uint32_t midpoint = 1u << (shift - 1u);
        if (remainder > midpoint || (remainder == midpoint && (truncated & 1u))) ++truncated;
        return (uint16_t)(sign | truncated); /* rounding may yield min normal */
    }
    uint32_t half = ((exponent - 112u) << 10) | (fraction >> 13);
    uint32_t remainder = fraction & 0x1fffu;
    if (remainder > 0x1000u || (remainder == 0x1000u && (half & 1u))) ++half;
    return (uint16_t)(sign | half);
}

int NGClockFieldSnapshotToR16(const void *snapshot, size_t snapshot_bytes,
                             void *half_texels, size_t half_capacity) {
    if (!snapshot || !half_texels || snapshot_bytes < LG_CLOCK_FIELD_HEADER_SIZE) return 0;
    LGClockFieldHeader h;
    memcpy(&h, snapshot, sizeof(h));
    if ((h.sequence & 1u) || !LGClockFieldHeaderBasicValid(&h)) return 0;
    size_t count = (size_t)h.width * h.height;
    size_t source_bytes = LG_CLOCK_FIELD_HEADER_SIZE + count * sizeof(float);
    size_t dest_bytes = count * sizeof(uint16_t);
    if (snapshot_bytes < source_bytes || half_capacity < dest_bytes) return 0;
    uintptr_t src = (uintptr_t)snapshot, dst = (uintptr_t)half_texels;
    if (dst >= src ? dst - src < source_bytes : src - dst < dest_bytes) return 0;
    const unsigned char *pixels = (const unsigned char *)snapshot + LG_CLOCK_FIELD_HEADER_SIZE;
    unsigned char *dest = (unsigned char *)half_texels;
    for (size_t i = 0; i < count; ++i) {
        uint32_t bits;
        memcpy(&bits, pixels + i * 4u, sizeof(bits));
        uint16_t half = NGClockFloat32BitsToHalf(bits);
        memcpy(dest + i * 2u, &half, sizeof(half));
    }
    return 1;
}
