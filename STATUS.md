# LiquidClock Status

This is a source reconstruction for the clock-only portion of the supplied LiquidAss package. It is **not yet an installable or device-validated release**.

## Sample boundary

- Sample: `dylv.liquidass` `0.1.2t+r2`, SHA-256 `e9f579c00b768376dd807c79c1796ee3bbce93d852e97b8f0354511208278a99`.
- Address evidence targets the arm64e slice (`cpusubtype 0x80000002`).
- The sample was only inspected statically. It was never executed, loaded, installed, or injected.
- Device identified for eventual validation: iOS 17.2.1 (21C66).
- Source repository: `Ning9527Repo/LiquidClock`, branch `main`.

## Implemented source

- A clock-only Metal shader derived from the sample shader, with separate main, editor, and per-poster filter names. Non-clock surfaces are deliberately excluded.
- A 64-byte shared-field protocol, bounded file publisher/reader, SDF generation, float32-to-binary16 conversion, and a Backboardd-side Metal encoder with explicit completion acknowledgement.
- A UIKit text-field capture/cache adapter that fails closed on unsupported text/layout configurations.
- A native UIKit editor, uploaded-font validation, per-poster transaction journal, cancel/restore/commit handling, poster depth-mask adapter, and an optional editor-preview render callback.
- Clock-only SpringBoard/PosterBoard hooks, a separate Backboardd entry, a private sandbox-profile adapter, and a Preferences controller/schema.
- Manual-only macOS native validation workflow. It is not triggered by source pushes.

## Validation completed locally

- `python3 -B tests/run_regression.py`: passed; 32 Python tests, field protocol tests, editor transaction model, ABI checks, codec and binary16 checks.
- `sh evidence/field-native-validate.sh`: passed with GCC/Clang host matrices, 2,591,689 exact SDF oracle samples, publisher concurrency/invalidation stress, and strict ARM64e object compilation. The iSH `mincore` residency oracle is explicitly skipped because the kernel implementation is unreliable.
- `sh tests/test_backboard_build.sh` and `test_backboard.py`: strict ARM64e objects plus six host/static backboard checks passed.
- Native editor tests: 209 transaction/store/geometry checks in debug and optimized host builds; all five editor Objective-C++ units compiled to ARM64e objects; the public C ABI compiled in C and C++; both supplied font hashes/names/axes matched the extracted sample.
- Runtime/configuration/backboard entry/preferences and hook sources pass strict ARM64e iOS 16 syntax checking.
- No UIKit/CoreText runtime assertions have been executed. These checks are compile/host evidence only.

## Remaining release blockers

- No end-to-end iOS dylib link, Apple Metal compiler/metallib build, signed package, dependency/control/layout validation, or installation has been completed.
- The private CA filter registration and callback ABI, sample field acknowledgement semantics, and actual SpringBoard/Backboardd rendering remain unverified on-device. The reconstruction uses bounded profiles and fails closed when they do not match; this is not evidence of visual parity.
- The private sandbox profile and shared field paths need validation on the actual RootHide device.
- No respring, injection, or device mutation has been performed.

## Recheck

```sh
python3 -B tests/run_regression.py
sh evidence/field-native-validate.sh
sh tests/test_backboard_build.sh
python3 -B tests/test_native_editor.py
```

The native editor command takes several minutes on this iSH host. A usable release still requires a separately authorized macOS/Xcode build and device validation.
