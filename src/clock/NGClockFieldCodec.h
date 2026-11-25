#pragma once
#include <stddef.h>
#include <stdint.h>
#include "../../field/clock_field_protocol.h"
#ifdef __cplusplus
extern "C" {
#endif

/* IEEE-754 round-to-nearest, ties-to-even. NaNs are quieted, not rejected. */
uint16_t NGClockFloat32BitsToHalf(uint32_t bits);

/* Accepts an already coherent LGClockFieldCopyStable snapshot, NOT live mmap.
 * Converts the packed little-endian float32 SDF to R16Float row-major texels.
 * Destination must not overlap the snapshot. 1=success, 0=invalid/capacity.
 * No original field cursor or producer bytes are modified by this function.
 */
int NGClockFieldSnapshotToR16(const void *snapshot, size_t snapshot_bytes,
                             void *half_texels, size_t half_capacity);
#ifdef __cplusplus
}
#endif
