#pragma once
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef struct LACClockFieldPublisher LACClockFieldPublisher;

/* Open exactly 1 or 16 sample-compatible slots. Newly created files are 0600;
 * existing files must be regular, single-link, euid-owned, exactly mode 0600
 * and exactly slot_count*0x400040 bytes (an empty file may be sized if create).
 * Final symlinks are rejected. Caller must supply a TRUSTED parent-directory
 * chain: final-component O_NOFOLLOW is not ancestor/path-race protection.
 * Holds nonblocking exclusive flock until Close; no in-place resizing of a
 * nonempty file. Cooperating writers must obey flock. Noncooperating same-uid
 * writers/truncation can still cause corruption/SIGBUS despite fstat checks.
 * Readers must retain their own mapping and coordinate its lifetime externally.
 * Main/editor fields use 1 slot, poster fields 16; caller selects real path. */
LACClockFieldPublisher *LACClockFieldPublisherOpen(const char *path,
                                                    uint32_t slot_count,
                                                    int create_if_missing);
/* Close unmaps/closes once. Caller must first stop/join ALL operations and
 * prevent future access; Close cannot race Publish/Invalidate/another Close.
 * NULL is accepted, a freed non-NULL pointer is NOT reusable. Close does not
 * invalidate the last frame; call Invalidate before Close when appropriate. */
void LACClockFieldPublisherClose(LACClockFieldPublisher *publisher);

/* Synchronous packed LE float32 SDF, finite POINT distances, row 0 = top.
 * |sample| <= 65504 so the unchanged downstream R16Float codec stays finite.
 * Calls on a live publisher are serialized internally. The caller owns a
 * stable, readable field of exactly width*height floats until return; do not
 * alias publisher storage (including a second mapping of the same inode).
 * Returns 1 only after final release-even publication, 0 on error. A failed
 * validation does not change a slot. Sequence is NEVER reset/wrapped; exhausted
 * files must be retired only after readers have unmapped. An abandoned odd
 * sequence may be recovered. Kind 1..4 has no established symbolic labels.
 * On ownership/token change +0x20 is release-cleared (sample takeover rule);
 * on subsequent frames it and unknown +0x3c are preserved. This new writer
 * adds a post-odd full fence; that does NOT prove the ORIGINAL writer ordered
 * correctly, nor make concurrent non-atomic snapshots portable ISO C. */
int LACClockFieldPublish(LACClockFieldPublisher *publisher, uint32_t slot,
                         uint32_t kind, uint32_t width, uint32_t height,
                         float points_width, float points_height,
                         const float *distance_field, size_t sample_count);
/* Fail closed on an owned slot: publish time=0, or leave terminal odd when the
 * sequence is exhausted. Returns 0 for invalid args, foreign token or changed
 * file. Useful on missing/unsupported glyph sources; not an automatic timeout. */
int LACClockFieldInvalidate(LACClockFieldPublisher *publisher, uint32_t slot);
#ifdef __cplusplus
}
#endif
