#!/usr/bin/env python3
"""Regenerate the curated hash ledger for sample-derived clock sources."""
from pathlib import Path
import hashlib
ROOT=Path(__file__).resolve().parents[1]
FILES=(
 'renderer/embedded-00.metal','renderer/LiquidGlassClock.metal',
 'renderer/ClockOnly.metal','renderer/clock_uniforms.h',
 'tools/make_clock_shader.py','field/clock_field_protocol.h',
 'field/clock_field_reader.c','field/test_clock_field_protocol.py',
 'src/clock/NGClockFieldCodec.h','src/clock/NGClockFieldCodec.c',
 'abi/clock-abi.json','abi/ABI-EVIDENCE.md',
 'prefs/prefs-schema.json','prefs/Root.plist',
 'prefs/ClockOnlyPrefsController.m','prefs/generate_clock_prefs.py',
 'prefs/build_schema.py','tests/test_clock_abi.py','tests/test_clock_prefs.py',
 'tests/test_clock_shader.py','tests/test_half_conversion.py',
 'tests/field_codec_test.c','tests/run_regression.py',
 'assets/fonts/SF-Compact-Display-Regular.otf',
 'assets/fonts/SFAdaptiveSoftNumeric-VF.otf')
lines=[]
for rel in FILES:
 p=ROOT/rel
 if not p.is_file(): raise SystemExit(f'missing: {rel}')
 lines.append(f'{hashlib.sha256(p.read_bytes()).hexdigest()}  {rel}')
out=ROOT/'evidence/reconstruction-sha256.txt'
out.write_text('\n'.join(lines)+'\n')
print(f'wrote {len(lines)} SHA-256 entries to {out}')
