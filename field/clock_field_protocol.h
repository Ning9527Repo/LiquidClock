#pragma once
#include <stdint.h>
#include <stddef.h>

#define LG_CLOCK_FIELD_MAGIC 0x4c474446u /* arm64 LE bytes: 46 44 47 4c ('FDGL') */
#define LG_CLOCK_FIELD_VERSION 2u
#define LG_CLOCK_FIELD_SLOT_BYTES 0x400040u
#define LG_CLOCK_FIELD_PIXEL_BYTES 0x400000u
#define LG_CLOCK_FIELD_HEADER_SIZE 0x40u

/*
 * 64-byte header recovered from LGClockFieldValid and the writer/reader
 * instruction traces in the supplied 0.1.2t+r2 arm64e slices.
 *
 * Confirmed by binary evidence:
 *   +0x00 magic, +0x04 version
 *   +0x08 is the atomic sequence word used by the consumer
 *   +0x10 must be non-zero
 *   +0x18 is written by the producer before the final release sequence
 *   +0x28/+0x2c width/height
 *   +0x30/+0x34 positive finite point dimensions
 *   +0x38 kind, restricted to 1..4
 *   +0x40 begins the pixel payload
 *
 * +0x10 is an ownership/incarnation token: async results are discarded
 * when it differs. +0x18 is mach_absolute_time(), also zeroed to invalidate.
 * +0x20 is release-cleared on ownership takeover. Backboardd advances it
 * with release CAS-max after encoding (0xea50..0xeaa8); units unresolved.
 * +0x3c has no recovered meaning. No requirement that reserved words be 0.
 * Payload: width*height float32 signed-distance samples, not BGRA pixels.
 * Backboardd converts these to half and uploads Metal pixelFormat 0x19.
 * Full address evidence and memory-order limitations: abi/ABI-EVIDENCE.md.
 */
typedef struct LGClockFieldHeader {
    uint32_t magic;                 /* 0x00 */
    uint32_t version;               /* 0x04 */
    uint64_t sequence;              /* 0x08: odd while publishing */
    uint64_t token_10;              /* 0x10: nonzero ownership/incarnation token */
    uint64_t mach_absolute_time;    /* 0x18: producer writes mach_absolute_time() */
    uint64_t reserved_20;           /* 0x20: consumer CAS-max cursor; units unresolved */
    uint32_t width;                 /* 0x28 */
    uint32_t height;                /* 0x2c */
    float points_width;             /* 0x30 */
    float points_height;            /* 0x34 */
    uint32_t kind;                  /* 0x38: 1..4 */
    uint32_t reserved_3c;           /* 0x3c */
} LGClockFieldHeader;

#if defined(__cplusplus)
static_assert(sizeof(LGClockFieldHeader) == 64, "LG field header size");
static_assert(offsetof(LGClockFieldHeader, width) == 0x28, "LG width offset");
static_assert(offsetof(LGClockFieldHeader, points_width) == 0x30, "LG point offset");
#else
_Static_assert(sizeof(LGClockFieldHeader) == 64, "LG field header size");
_Static_assert(offsetof(LGClockFieldHeader, width) == 0x28, "LG width offset");
_Static_assert(offsetof(LGClockFieldHeader, points_width) == 0x30, "LG point offset");
#endif

static inline int LGClockFieldHeaderBasicValid(const LGClockFieldHeader *h) {
    if (!h || h->magic != LG_CLOCK_FIELD_MAGIC || h->version != LG_CLOCK_FIELD_VERSION) return 0;
    if (!h->token_10 || !h->mach_absolute_time) return 0;
    if (!h->width || !h->height || h->width > 0x400u || h->height > 0x400u) return 0;
    if ((uint64_t)h->width * (uint64_t)h->height * 4u > LG_CLOCK_FIELD_PIXEL_BYTES) return 0;
    if (!(h->points_width > 0.0f) || !(h->points_height > 0.0f)) return 0;
    if (h->points_width > 2048.0f || h->points_height > 2048.0f) return 0;
    if (h->kind < 1u || h->kind > 4u) return 0;
    return 1;
}

/* Implemented by clock_field_reader.c. Input must be aligned to 8 bytes;
 * output must not overlap input. 1=accepted; 0=invalid/retry, output may
 * have changed. No mmap/file policy, producer repair, or retry loop here.
 * Payload is a tightly packed LE float32 SDF, width*4 bytes per row.
 */
#ifdef __cplusplus
extern "C" {
#endif
int LGClockFieldCopyStable(const void *mapped, size_t mapped_size,
                          void *out, size_t out_capacity);
#ifdef __cplusplus
}
#endif
