#!/usr/bin/env python3
"""Offline-only regression runner; does not invoke an iOS compiler/device."""
from pathlib import Path
import hashlib, os, subprocess, sys, tempfile
ROOT=Path(__file__).resolve().parent.parent

def run(args, cwd=ROOT, env=None):
    print('+', ' '.join(map(str,args)), flush=True)
    subprocess.run(args, cwd=cwd, env=env, check=True)

def sha(path): return hashlib.sha256(path.read_bytes()).hexdigest()

expected={
 'renderer/embedded-00.metal':'07b51d83c07c370509b05192d30617cd0667ccded67f953ecd168a047f12d23e',
 'assets/fonts/SF-Compact-Display-Regular.otf':'5006936cb9d018bc3e72015cf39eed7939911388d510ba0322370febe7a6c09f',
 'assets/fonts/SFAdaptiveSoftNumeric-VF.otf':'337e5736f88aa5360fcb8f509f38349f3b6483e12e7ba3e9f18436c085a026ef',
}
for rel,digest in expected.items():
    actual=sha(ROOT/rel)
    if actual!=digest: raise SystemExit(f'hash mismatch: {rel}: {actual}')

run([sys.executable,'-m','unittest','discover','-s','tests','-v'])
run([sys.executable,'-B','tests/test_clock_abi.py'])
run([sys.executable,'-m','unittest','-v','test_clock_field_protocol'],cwd=ROOT/'field')
run([sys.executable,'-m','unittest','-v','test_editor_transaction_model'],cwd=ROOT/'editor')
with tempfile.TemporaryDirectory(prefix='liquidass-clock-') as tmp:
    reader=Path(tmp)/'field-reader'
    codec=Path(tmp)/'field-codec'
    run(['clang','-std=c11','-Wall','-Wextra','-Werror','-I'+str(ROOT/'field'),
         str(ROOT/'field/clock_field_reader.c'),str(ROOT/'field/test_reader.c'),'-o',str(reader)])
    run(['clang','-std=c11','-Wall','-Wextra','-Werror',
         str(ROOT/'src/clock/NGClockFieldCodec.c'),
         str(ROOT/'tests/field_codec_test.c'),'-o',str(codec)])
    run([str(codec)])
    run([sys.executable,'tests/test_half_conversion.py'])
    uniform=Path(tmp)/'uniform.o'
    source='#include "clock_uniforms.h"\nint f(void){return sizeof(LGClockMetalUniformsRecovered);}\n'
    subprocess.run(['clang','-std=c11','-Wall','-Wextra','-Werror','-I'+str(ROOT/'renderer'),'-x','c','-c','-o',str(uniform),'-'],input=source,text=True,check=True)
print('PASS: offline source/hash/protocol/editor/shader checks (not iOS/Metal runtime)')
