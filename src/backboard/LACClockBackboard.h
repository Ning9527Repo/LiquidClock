#pragma once
#include "LACClockFilterContract.h"
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum LACClockBackboardStatus {
    LACClockBackboardNotInitialized=0,
    LACClockBackboardReady=1, /* registered, NOT evidence of a rendered frame */
    LACClockBackboardWaitingForTable=2, /* retryable ONLY before hooks begin */
    LACClockBackboardBadConfiguration=-1,
    LACClockBackboardUnsupportedABI=-2,
    LACClockBackboardResolverFailed=-3,
    LACClockBackboardHookUnavailable=-4,
    LACClockBackboardMetalUnavailable=-5,
    LACClockBackboardRegistrationFailed=-6
} LACClockBackboardStatus;

typedef struct LACClockBackboardOptions {
    uint32_t version; /* LAC_CLOCK_FILTER_CONTRACT_VERSION */
    const char *mainFieldPath;
    const char *editorFieldPath;
    const char *posterFieldsPath;
    const char *metalLibraryPath; /* standalone ClockOnly.metallib, not sample */
    uint32_t fieldOwnerUID;
} LACClockBackboardOptions;

/* Explicit one-time initialization; NO constructor or auto-install. Copies all
 * strings. Call in Backboardd, not SpringBoard. Required: Foundation, Metal,
 * QuartzCore, reader.c and NGClockFieldCodec.c, plus backboard .mm/.cpp files.
 * Requires an already-present MSHookFunction export, not a loaded sample.
 * Private-layout profiles: iOS16.x and iOS17.2.1 (including RootHide); all
 * other layouts FAIL CLOSED. Resolver fixtures are not runtime certification.
 * Only WaitingForTable may be retried, before any intern/hook/registration.
 * Other repeated calls return the previous result; no partial-hook retry.
 * The process entry uses 250ms/30s bounded retries (the cap is a local policy).
 * There is deliberately no teardown: registered callbacks/completion blocks
 * and their mappings have process lifetime. Do not unload this implementation.
 */
LACClockBackboardStatus LACClockBackboardInitialize(const LACClockBackboardOptions *options);
LACClockBackboardStatus LACClockBackboardGetStatus(void);
const char *LACClockBackboardLastError(void);
/* Acknowledgement protocol (NEW rule, not recovered sample cursor units):
 * +0x20 becomes the maximum GPU-successful sequence, only after a completed
 * command buffer whose +0x10 token,+0x18 time,+0x08 sequence still match.
 * Host must validate a stable even header and require ack>=current sequence
 * AND its own current nonzero token/time, before hiding the native label.
 * Registration-ready alone never authorizes native-label removal.
 * GPU completion is NOT proof of CA presentation/compositing. No command
 * buffer commit/wait/present is performed: CoreAnimation retains ownership.
 */
#ifdef __cplusplus
}
#endif
