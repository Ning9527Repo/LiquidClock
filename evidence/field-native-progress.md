# Field native validation checkpoint

Status: in progress. Scope restricted to `src/clock/LACClockSDF.*`, `LACClockTextField.*`, `LACClockFieldPublisher.*`, the four assigned C tests, new `tests/test_textfield*`, and `evidence/field-native*`.

Environment observed: Alpine aarch64, clang 19.1.4, SDK `/tmp/sdk/iPhoneOS16.5.sdk`. This directory is not a Git working tree. No Hooks, codec, editor, backboard, build scripts, or regression-runner changes are authorized.

Plan:
1. Read the existing implementations and assigned tests without rediscovering the repository.
2. Validate exact EDT for varied dimensions, both signs, antialias and subpixel masks; correct implementation defects.
3. Validate publisher ownership, concurrency, sequence exhaustion, flock, and invalidation semantics.
4. Validate text field cache/revision and attributed-text handling; add a genuine native harness only if feasible.
5. Run host tests (explicitly host-only) and strict iOS 16 arm64e syntax/object compilation; record commands, complete results, final API contract, and SHA-256 snapshots.

Final validation (2026-11-26): `sh evidence/field-native-validate.sh` passed with GCC 14.2 and Clang 19.1.4. The independent EDT oracle checked 2,591,689 samples; publisher file-policy, slot ownership, token takeover, invalidation, sequence exhaustion, aliasing, cross-process locking, and concurrency tests passed. Each main publisher stress run performed 2,400 writes plus 600 invalidations; three additional contract stress repeats passed. The SDF -> mmap publisher -> stable snapshot -> R16Float -> invalidation integration passed. `LACClockSDF.c`, `LACClockFieldPublisher.c`, `LACClockTextField.mm`, and the genuine UIKit/CoreText harness compiled as strict arm64e iOS 16 objects with `-Wall -Wextra -Werror`. Source hashes were recorded before and after the validation and matched.

Host limitation: this iSH kernel stubs `mincore(NULL)` as resident/success. The publisher test forwards and verifies the real `munmap` call/return plus fd closure instead; it explicitly skips this unreliable residency oracle. UIKit/CoreText assertions have only been compiled, not executed; this is not runtime, visual-parity, or performance validation. ASan/UBSan/TSan were not run because host sanitizer runtimes are unavailable.
