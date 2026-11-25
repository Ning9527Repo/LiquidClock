# LiquidAss 0.1.2t+r2 — clock ABI evidence

Scope: supplied arm64e slices only; no upstream fill, CI, iOS build, install,
injection or remote write. Addresses are unslid slice VAs, not runtime PCs.
Existing directed disassembly was reused, not rescanned.

## Confirmed

- `renderer/clock_uniforms.h` matches the package embedded `Uniforms` member
  order. 192 bytes, alignment 16; padding at 68..71, 116..119, 180..191.
  `abi/test_abi.c` asserts every member offset and the 64-byte field header.
- Backboardd `0xe968..0xe980`: x2=sp+0x870, x3=0xc0, x4=0;
  `setFragmentBytes:length:atIndex:` uses fragment buffer index 0.
  This is NOT an upload in the main producer liquidass.dylib.
- Backboardd `0xe910..0xe91c`: backdrop texture index 0;
  `0xe938..0xe964`: field texture index 1, falling back to backdrop if nil.
  Buffer/texture indices are separate Metal resource namespaces.
- Backboardd `0x1586c..0x15a78` validates magic numeric 0x4c474446,
  version 2, nonzero +0x10/+0x18, dimensions 1..1024, float payload <=4MiB,
  finite positive point dimensions <=2048, and kind 1..4. LE magic bytes
  are **46 44 47 4c** (FDGL), NOT literal LGFD bytes.
- Header size 0x40, payload +0x40; slot 0x400040. Pixel payload is tightly
  packed float32 SDF, rowbytes width*4, not BGRA or half on the wire.
- Backboardd `0x120cc..0x12110` takes initial acquire/LDAPR sequence and
  64-byte header copy. `0x12260..0x122a8` copies pixels and rechecks equal
  even sequence. `0x12348..0x12358` converts each float to half.
  `0x1238c..0x12398`: format 0x19 (R16Float), no mipmaps;
  `0x123b0..0x123c4`: shader-read usage=1, shared storage=0;
  `0x1240c..0x12450`: region (0,0,w,h), mip=0, rowbytes=w*2.
- Main `0x8b77c..0x8b78c` rejects stale ownership token +0x10;
  `0x8b790` calls mach_absolute_time; `0x8b7ac` publishes odd sequence;
  `0x8b7e8..0x8b81c` writes pixels/dimensions/point size/time +0x18;
  `0x8b828` publishes final even sequence with STLR.
- Backboardd `0xea30..0xea48` checks owner before +0x20 use;
  `0xea50..0xeaa8` advances +0x20 with release CAS-max. Existing member name
  reserved_20 is retained for source compatibility, not a zero requirement.

## Usable interface and test boundary

Link field/clock_field_reader.c and include field/clock_field_protocol.h.
LGClockFieldCopyStable requires aligned, stable mapping, distinct output,
serialized writer, no sequence wrap/unmap/truncate during copy. It returns
1 for an accepted snapshot, 0 for retry/error; failed output must be discarded.
It adds header.sequence equality and a read fence before recheck. Unknown
words are accepted. It does not open/create files or modify producer storage.

Run: python3 -B tests/test_clock_abi.py
This invokes only existing host C tests via clang and the offline Python
header tests. It compiles no iOS library and performs no deployment.

## Explicitly unresolved / blockers

- +0x20 cursor units/source and +0x3c semantics; kind values' named meanings.
- Producer odd STLR does not establish a post-odd write barrier in the
  recovered path. Reader acquire/fence cannot fix missing writer ordering;
  ISO C concurrent non-atomic payload access is not a portable seqlock.
- Full dynamic producer ownership arbitration, multi-process lifetime and
  platform memory contract remain unvalidated. No freshness timeout inferred.
- Uniform byte layout and argument slots are statically confirmed; not every
  per-frame CPU value/coordinate transform or Metal runtime reflection was
  established. Tail padding must not be treated as extra shader fields.
- No iOS SDK build, GPU render, independent live clock integration, capture
  isolation, UI/editor lifecycle or device stability test was performed.
  These modules alone are not a complete deployable standalone clock.
