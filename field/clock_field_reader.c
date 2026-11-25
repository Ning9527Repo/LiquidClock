#include "clock_field_protocol.h"
#include <string.h>

/* Single-slot snapshot helper for externally mapped arm64 field storage.
 * 1 means accepted by the checks; 0 means retry/error (out may be modified).
 * Requires a serialized writer, no sequence wrap during a read, and no
 * unmapping/truncation while copying. Not a portable ISO C thread seqlock:
 * concurrent non-atomic payload accesses need a platform memory contract.
 * A reader fence cannot repair the original producer's missing post-odd
 * write barrier; see abi/ABI-EVIDENCE.md. No file/permission policy here.
 */
int LGClockFieldCopyStable(const void *mapped, size_t mapped_size,
                           void *out, size_t out_capacity) {
    if (!mapped || !out || mapped_size < LG_CLOCK_FIELD_HEADER_SIZE ||
        out_capacity < LG_CLOCK_FIELD_HEADER_SIZE ||
        (uintptr_t)mapped % _Alignof(LGClockFieldHeader)) return 0;
    const LGClockFieldHeader *src=(const LGClockFieldHeader *)mapped;
    uint64_t seq1=__atomic_load_n(&src->sequence,__ATOMIC_ACQUIRE);
    if (seq1 & 1u) return 0;
    LGClockFieldHeader local;
    memcpy(&local,src,sizeof(local));
    if (local.sequence != seq1 || !LGClockFieldHeaderBasicValid(&local)) return 0;
    size_t pixel_bytes=(size_t)local.width*(size_t)local.height*4u;
    size_t total=LG_CLOCK_FIELD_HEADER_SIZE+pixel_bytes;
    if (total > LG_CLOCK_FIELD_SLOT_BYTES || total > mapped_size || total > out_capacity) return 0;
    uintptr_t src_addr=(uintptr_t)mapped, dst_addr=(uintptr_t)out;
    if (dst_addr >= src_addr ? dst_addr-src_addr < total : src_addr-dst_addr < total) return 0;
    memcpy(out,&local,sizeof(local));
    memcpy((unsigned char *)out+LG_CLOCK_FIELD_HEADER_SIZE,
           (const unsigned char *)mapped+LG_CLOCK_FIELD_HEADER_SIZE,pixel_bytes);
#ifdef LG_CLOCK_FIELD_TEST_BEFORE_RECHECK
    LG_CLOCK_FIELD_TEST_BEFORE_RECHECK();
#endif
    /* Keep header/pixel reads before sequence revalidation (ARM: DMB ISHLD).
     * A final acquire load alone does not order earlier payload reads. */
    __atomic_thread_fence(__ATOMIC_ACQUIRE);
    uint64_t seq2=__atomic_load_n(&src->sequence,__ATOMIC_ACQUIRE);
    if (seq1 != seq2 || (seq2 & 1u)) return 0;
    return 1;
}
