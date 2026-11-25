#!/usr/bin/env python3
"""Offline validator for the 64-byte field header recovered from the sample."""
from __future__ import annotations
import math, struct, unittest

MAGIC=0x4c474446
VERSION=2
SLOT=0x400040
PIXELS=0x400000
HEADER=struct.Struct('<IIQQQQIIffII')
assert HEADER.size == 64
assert struct.pack('<I', MAGIC) == bytes.fromhex('46 44 47 4c')

def pack(*, sequence=2, owner=1, generation=1, width=64, height=32,
         points=(64.0,32.0), kind=1, reserved20=0, reserved3c=0):
    return HEADER.pack(MAGIC,VERSION,sequence,owner,generation,reserved20,
                       width,height,*points,kind,reserved3c)

def validate(raw: bytes) -> bool:
    if len(raw) < HEADER.size: return False
    magic,version,seq,owner,generation,res20,w,h,pw,ph,kind,res3c=HEADER.unpack_from(raw)
    if magic != MAGIC or version != VERSION: return False
    if not owner or not generation: return False
    if not w or not h or w > 0x400 or h > 0x400: return False
    if w*h*4 > PIXELS: return False
    if not (math.isfinite(pw) and math.isfinite(ph) and pw > 0 and ph > 0): return False
    if pw > 2048 or ph > 2048 or not (1 <= kind <= 4): return False
    return True

class HeaderTests(unittest.TestCase):
    def test_valid(self): self.assertTrue(validate(pack()))
    def test_magic_version(self):
        for off,val in ((0,0),(4,1)):
            b=bytearray(pack()); struct.pack_into('<I',b,off,val); self.assertFalse(validate(b))
    def test_required_tokens(self):
        for key in ('owner','generation'):
            kw={key:0}; self.assertFalse(validate(pack(**kw)))
    def test_limits(self):
        self.assertFalse(validate(pack(width=0x401)))
        self.assertTrue(validate(pack(width=1024,height=1024)))
        self.assertFalse(validate(pack(width=1024,height=1023,points=(float('nan'),32))))
        self.assertFalse(validate(pack(kind=0)))
        self.assertFalse(validate(pack(kind=5)))
    def test_extra_slot_payload_does_not_change_header(self):
        self.assertTrue(validate(pack()+bytes(SLOT-HEADER.size)))

if __name__ == '__main__': unittest.main()
