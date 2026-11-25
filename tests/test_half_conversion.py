#!/usr/bin/env python3
"""Cross-check the extracted-field half converter against IEEE binary16 packing."""
import ctypes, math, pathlib, random, shutil, struct, subprocess, tempfile
R=pathlib.Path(__file__).resolve().parents[1]
cc=shutil.which('clang')
if not cc: raise SystemExit('clang required')
with tempfile.TemporaryDirectory(prefix='lg-half-crosscheck-') as td:
    lib=pathlib.Path(td)/'codec.so'
    subprocess.run([cc,'-std=c11','-Wall','-Wextra','-Werror','-O2','-shared','-fPIC',
        str(R/'src/clock/NGClockFieldCodec.c'),'-o',str(lib)],check=True)
    convert=ctypes.CDLL(str(lib)).NGClockFloat32BitsToHalf
    convert.argtypes=[ctypes.c_uint32]; convert.restype=ctypes.c_uint16
    rng=random.Random(0x4c474446)
    samples=[0,0x80000000,0x7f800000,0xff800000,0x7f800001,
             0x33000000,0x33800000,0x38800000,0x3f801000,0x3f803000,
             0x477fe000,0x477ff000]
    samples += [rng.getrandbits(32) for _ in range(100000)]
    for bits in samples:
        actual=convert(bits)
        x=struct.unpack('<f',struct.pack('<I',bits))[0]
        if math.isnan(x):
            if actual & 0x7c00 != 0x7c00 or not actual & 0x03ff or not actual & 0x0200:
                raise AssertionError(f'NaN mismatch {bits:08x} -> {actual:04x}')
            continue
        try: expected=struct.unpack('<H',struct.pack('<e',x))[0]
        except OverflowError: expected=(0x8000 if math.copysign(1.0,x)<0 else 0)|0x7c00
        if actual != expected:
            raise AssertionError(f'{bits:08x}: got {actual:04x}, expected {expected:04x}')
print(f'PASS: {len(samples)} IEEE binary16 vectors (host only)')
