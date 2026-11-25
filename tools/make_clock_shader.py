#!/usr/bin/env python3
"""Generate an explicitly clock-gated Metal entry from the uploaded sample.

The common library's clock algorithm is left byte-for-byte intact outside a
single entrypoint gate. This does not claim the shared helper is clock-only.
"""
from pathlib import Path
import hashlib

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / 'renderer' / 'embedded-00.metal'
DEST = ROOT / 'renderer' / 'ClockOnly.metal'
SOURCE_SHA256 = '07b51d83c07c370509b05192d30617cd0667ccded67f953ecd168a047f12d23e'
BEFORE = '''{
    float2 localUV = in.position.xy / max(u.outputResolution, float2(1.0));'''
AFTER = '''{
    // This standalone entry accepts the sample's clock-only mode range.
    if (!(u.useGlyphMask > 1.5 && u.useGlyphMask <= 2.5)) return float4(0.0);
    float2 localUV = in.position.xy / max(u.outputResolution, float2(1.0));'''

def render():
    b = SOURCE.read_bytes()
    if hashlib.sha256(b).hexdigest() != SOURCE_SHA256:
        raise ValueError('uploaded sample renderer hash mismatch')
    text = b.decode('utf-8')
    if text.count(BEFORE) != 1:
        raise ValueError('clock fragment gate not unique')
    text = text.replace(BEFORE, AFTER)
    for old, new in [('liquidGlassVertex(', 'ningClockVertex('),
                     ('liquidGlassFragment(', 'ningClockFragment(')]:
        if text.count(old) != 1:
            raise ValueError('entry name not unique: ' + old)
        text = text.replace(old, new)
    return text.encode('utf-8')

if __name__ == '__main__':
    result = render()
    DEST.write_bytes(result)
    print(f'{DEST.name}: {len(result)} bytes, SHA256 {hashlib.sha256(result).hexdigest()}')
