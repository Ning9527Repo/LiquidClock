#pragma once
#include "LACClockFilterContract.h"
#include "../../renderer/clock_uniforms.h"
#include "../../field/clock_field_protocol.h"
#ifdef __cplusplus
extern "C" {
#endif
int LACClockValidateVisualParameters(const LACClockVisualParameters *p);
int LACClockBuildUniforms(const LGClockFieldHeader *header,
                          const LACClockVisualParameters *p,
                          uint32_t source_width, uint32_t source_height,
                          uint32_t output_width, uint32_t output_height,
                          LGClockMetalUniformsRecovered *out);
int LACClockPrepareField(const void *mapped, size_t mapped_bytes,
                         void *snapshot, size_t snapshot_capacity,
                         void *half_texels, size_t half_capacity,
                         LGClockFieldHeader *accepted);
/* Requires valid aligned read/write mapping, stable lifetime and cooperating
 * publisher (no sequence reset/wrap, token unique per incarnation). CAS-max is
 * monotonic; token/time/sequence double-checks reject stale completions. The
 * cross-word check is not a transaction; hosts MUST recheck their stable header
 * and token/time after reading ack. See protocol-races in progress evidence. */
int LACClockAcknowledgeCompleted(void *mapped, size_t bytes,
                                const LGClockFieldHeader *accepted);
#ifdef __cplusplus
}
#endif
