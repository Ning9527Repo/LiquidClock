# Sample-reconstruction checkpoint

This directory is a **local, static reconstruction workspace**, not an installable release yet.

## Locked sample

- Package: `dylv.liquidass` `0.1.2t+r2`
- Input SHA-256: `e9f579c00b768376dd807c79c1796ee3bbce93d852e97b8f0354511208278a99`
- Target slice for address evidence: arm64e, subtype `0x80000002`
- No sample was executed, loaded, injected, or installed.

## Concrete work completed here

1. `renderer/embedded-00.metal` is byte-identical to the renderer string extracted from the supplied `LiquidAssBackboardd.dylib` arm64e slice. `renderer/ClockOnly.metal` is generated from that exact sample source, renames the entrypoints, and rejects non-clock `useGlyphMask` modes before pixel/helper evaluation; helper source remains shared with the sample and this is not a full renderer/plugin by itself. Three generator/source-lock tests pass; the on-device Metal compiler and runtime pipeline are still unverified.
2. `renderer/clock_uniforms.h` records the source uniform order and compiles with host vector alignment assertions. The actual iOS Metal compiler still must confirm the upload stride before production use.
3. `field/clock_field_protocol.h` records the 64-byte field header and 4 MiB payload constraints proved by `LGClockFieldValid` and the producer/consumer traces. The numeric magic `0x4c474446` serializes on arm64 little-endian as bytes `46 44 47 4c`; tests pin that byte order. Unknown fields remain explicitly unnamed.
4. `field/clock_field_reader.c` implements an offline-safe seqlock snapshot helper; it is not wired to a device path or permission mechanism.
5. `field/test_clock_field_protocol.py` and the C layout check cover the verified limits and exact header size.
6. `evidence/clock-hook-manifest.json` contains only the clock display/editor/poster-related system hooks filtered from the package ctor trace; it is not a claim that all private selectors are stable across iOS versions.
7. `assets/fonts/` contains the two font files shipped in the sample, with hashes in `evidence/reconstruction-sha256.txt`.
8. `editor/` contains arm64e instruction evidence for stage, resize, font panel, save, cancel, and finish. The save path is confirmed to commit `Clock.Legacy.Style` and `Clock.Legacy.ResizeProgress`; failed commits present an alert; cancel restores prior style/progress.
9. `editor/editor_transaction_model.py` and its tests model only those observed stage/save/cancel transitions; they are not a substitute for UIKit runtime testing.
10. The C seqlock reader has passed a local smoke test covering coherent copy, odd-sequence rejection, and mapped-size rejection.

## Still blocking a complete standalone source

- The sample ctor installs many non-clock hooks in the same initializer; the clock-only hook list must be implemented independently rather than invoking the whole ctor.
- The exact semantics of field header offsets `0x10`, `0x20`, and `0x3c`, the editor/poster slot routing, and the private Metal upload ABI need more binary evidence or device A/B evidence.
- The sample uses private SpringBoard/PosterBoard/BackBoard classes and MobileSubstrate. Linux syntax checks are not an iOS build or runtime validation.
- No repository, remote commit, CI build, deb, installation, injection, respring, or true-device test has been performed in this checkpoint.

## Recheck commands

```sh
cd sample-reconstruction/field
python3 -m unittest -v test_clock_field_protocol.py
clang -std=c11 -Wall -Wextra -Werror -I. check_field.c -o /tmp/check_field && /tmp/check_field

cd ../renderer
clang -std=c11 -Wall -Wextra -Werror -x c -c -o /tmp/check_uniform.o - <<'EOF'
#include "clock_uniforms.h"
int f(void) { return sizeof(LGClockMetalUniformsRecovered); }
EOF
```
