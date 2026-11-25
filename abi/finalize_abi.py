from pathlib import Path
import json
R=Path('/var/minis/workspace/liquidass-clock/sample-reconstruction')
p=R/'field/clock_field_protocol.h'
s=p.read_text()
s=s.replace(' * +0x20 is release-cleared on ownership takeover; further use unresolved.', ' * +0x20 is release-cleared on ownership takeover. Backboardd advances it\n * with release CAS-max after encoding (0xea50..0xeaa8); units unresolved.')
s=s.replace('uint64_t reserved_20;           /* 0x20: not identified */','uint64_t reserved_20;           /* 0x20: consumer CAS-max cursor; units unresolved */')
if 'int LGClockFieldCopyStable(' not in s:
    s+='''
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
'''
p.write_text(s)
p=R/'renderer/clock_uniforms.h';s=p.read_text()
if '#define LG_CLOCK_METAL_UNIFORM_BYTES' not in s:
    s=s.replace('#include <stdint.h>','#include <stdint.h>\n\n#define LG_CLOCK_METAL_UNIFORM_BYTES 192u\n#define LG_CLOCK_METAL_FRAGMENT_BUFFER_INDEX 0u\n#define LG_CLOCK_METAL_BACKDROP_TEXTURE_INDEX 0u\n#define LG_CLOCK_METAL_FIELD_TEXTURE_INDEX 1u\n#define LG_CLOCK_METAL_FIELD_PIXEL_FORMAT 25u /* MTLPixelFormatR16Float */\n#define LG_CLOCK_METAL_FIELD_TEXEL_BYTES 2u\n/* Field texture upload rowbytes = width * LG_CLOCK_METAL_FIELD_TEXEL_BYTES. */')
p.write_text(s)
notes='''# LiquidAss 0.1.2t+r2 — clock ABI evidence

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
'''
(R/'abi/ABI-EVIDENCE.md').write_text(notes)
fields=[('magic',0,'u32'),('version',4,'u32'),('sequence',8,'u64'),('token_10',16,'u64'),('mach_absolute_time',24,'u64'),('reserved_20',32,'u64'),('width',40,'u32'),('height',44,'u32'),('points_width',48,'f32'),('points_height',52,'f32'),('kind',56,'u32'),('reserved_3c',60,'u32')]
uf=[('resolution',0,2),('outputResolution',8,2),('screenResolution',16,2),('cardOrigin',24,2),('wallpaperResolution',32,2),('lensOrigin',40,2),('radius',48,1),('bezelWidth',52,1),('glassThickness',56,1),('refractionScale',60,1),('refractiveIndex',64,1),('wallpaperOrigin',72,2),('samplingTransformX',80,2),('samplingTransformY',88,2),('samplingTransformOffset',96,2),('samplingOrientation',104,1),('backdropZoom',108,1),('shapeScale',112,1),('shapeOrigin',120,2),('shapeSize',128,2),('useGlyphMask',136,1),('dispersionStrength',140,1),('tintColor',144,4),('validMaxUV',160,2),('clockOrientation',168,1),('coverSideRefraction',172,1),('captureAligned',176,1)]
e=json.loads((R/'abi/binary-evidence.json').read_text())
a={'schema':1,'sample_version':'0.1.2t+r2','arch':'arm64e','address_space':'unslid slice VA','samples':{n:{k:e[n][k] for k in ('sha256','slice_sha256','slice_offset','subtype')} for n in ('main','backboard')},'field':{'status':'confirmed_static','magic_numeric':'0x4c474446','magic_le_hex':'4644474c','version':2,'header_bytes':64,'slot_bytes':0x400040,'fields':[{'name':n,'offset':o,'type':t,'status':'unknown_semantics' if n=='reserved_3c' else 'confirmed_layout'} for n,o,t in fields],'payload':{'type':'float32_le_sdf','offset':64,'rowbytes':'width*4','max_bytes':0x400000},'validation_va':'backboard:0x1586c..0x15a78','producer_va':'main:0x8b77c..0x8b828','reader_va':'backboard:0x120cc..0x122a8'},'metal':{'status':'confirmed_static_not_runtime','uniform_bytes':192,'uniform_alignment':16,'uniform_fields':[{'name':n,'offset':o,'float_count':c} for n,o,c in uf],'padding_ranges':[[68,72],[116,120],[180,192]],'fragment_buffer_index':0,'backdrop_texture_index':0,'field_texture_index':1,'field_texture_nil_fallback':'backdrop','pixel_format':25,'pixel_format_name':'R16Float','rowbytes':'width*2','mipmap_level':0,'mipmapped':False,'usage':1,'storage_mode':0,'upload_va':'backboard:0xe968..0xe980','texture_bind_va':'backboard:0xe910..0xe964','texture_create_upload_va':'backboard:0x12348..0x12450'},'unknown':['reserved_20 units/source (CAS-max use confirmed at backboard:0xea50..0xeaa8)','reserved_3c semantics','kind 1..4 named meanings','producer post-odd store ordering and lifetime contract','complete per-frame uniform CPU value sources','iOS/GPU/live standalone integration'],'validation':{'host_tests':'see host-test-results.json','ios_build':False,'device_runtime':False}}
(R/'abi/clock-abi.json').write_text(json.dumps(a,indent=2)+'\n')
(R/'tests/test_clock_abi.py').write_text('''#!/usr/bin/env python3
"""Offline ABI regression runner; host executables only, no iOS build."""
import json, pathlib, shutil, subprocess, tempfile, sys
sys.dont_write_bytecode = True
R = pathlib.Path(__file__).resolve().parents[1]
results = []
def run(argv):
    p = subprocess.run(argv, cwd=R, text=True, capture_output=True)
    results.append({"command":argv,"returncode":p.returncode,
                    "stdout":p.stdout,"stderr":p.stderr})
    if p.returncode: raise RuntimeError("failed: " + " ".join(argv))
try:
    cc = shutil.which("clang")
    if not cc: raise RuntimeError("clang is required for ext_vector_type ABI tests")
    with tempfile.TemporaryDirectory(prefix="clock-abi-host-") as d:
        for src in ("abi/test_abi.c", "abi/test_reader_edges.c", "field/test_reader.c"):
            exe = str(pathlib.Path(d)/pathlib.Path(src).stem)
            extra = ["field/clock_field_reader.c"] if src == "field/test_reader.c" else []
            run([cc,"-std=c11","-Wall","-Wextra","-Werror","-O2",src,*extra,"-o",exe])
            run([exe])
        run([sys.executable,"-B","field/test_clock_field_protocol.py"])
    status = "passed"
except Exception as exc:
    status = "failed"
    results.append({"error":str(exc)})
(R/"abi/host-test-results.json").write_text(json.dumps(
    {"status":status,"scope":"Linux host only; not iOS or GPU", "results":results},indent=2)+"\\n")
print(status + ": " + str(len(results)) + " commands; abi/host-test-results.json")
if status != "passed": sys.exit(1)
''')
print('Saved protocol declaration, Metal constants, ABI-EVIDENCE.md, clock-abi.json and tests/test_clock_abi.py')
