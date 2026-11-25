# Field native validation checkpoint

Status: in progress. Scope restricted to `src/clock/LACClockSDF.*`, `LACClockTextField.*`, `LACClockFieldPublisher.*`, the four assigned C tests, new `tests/test_textfield*`, and `evidence/field-native*`.

Environment observed: Alpine aarch64, clang 19.1.4, SDK `/tmp/sdk/iPhoneOS16.5.sdk`. This directory is not a Git working tree. No Hooks, codec, editor, backboard, build scripts, or regression-runner changes are authorized.

Plan:
1. Read the existing implementations and assigned tests without rediscovering the repository.
2. Validate exact EDT for varied dimensions, both signs, antialias and subpixel masks; correct implementation defects.
3. Validate publisher ownership, concurrency, sequence exhaustion, flock, and invalidation semantics.
4. Validate text field cache/revision and attributed-text handling; add a genuine native harness only if feasible.
5. Run host tests (explicitly host-only) and strict iOS 16 arm64e syntax/object compilation; record commands, complete results, final API contract, and SHA-256 snapshots.

No tests have passed in this continuation yet. UIKit/CoreText cannot execute in iSH; compilation must not be represented as native runtime validation.
