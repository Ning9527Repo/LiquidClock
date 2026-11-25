main arm64e VA 0x8afa4..0x8b270; fat slice offset 0xfc000
0008afa4: 7f2303d5 pacibsp     ; 
0008afa8: ffc307d1 sub        sp, sp, #0x1f0 ; 
0008afac: e923186d stp        d9, d8, [sp, #0x180] ; 
0008afb0: fc6f19a9 stp        x28, x27, [sp, #0x190] ; 
0008afb4: fa671aa9 stp        x26, x25, [sp, #0x1a0] ; 
0008afb8: f85f1ba9 stp        x24, x23, [sp, #0x1b0] ; 
0008afbc: f6571ca9 stp        x22, x21, [sp, #0x1c0] ; 
0008afc0: f44f1da9 stp        x20, x19, [sp, #0x1d0] ; 
0008afc4: fd7b1ea9 stp        x29, x30, [sp, #0x1e0] ; 
0008afc8: fd830791 add        x29, sp, #0x1e0 ; 
0008afcc: f40300aa mov        x20, x0 ; 
0008afd0: 81650094 bl         #0xa45d4 ; _objc_autoreleasePoolPush
0008afd4: f30300aa mov        x19, x0 ; 
0008afd8: 83620094 bl         #0xa39e4 ; _CACurrentMediaTime
0008afdc: 0840601e fmov       d8, d0 ; 
0008afe0: b70302d1 sub        x23, x29, #0x80 ; 
0008afe4: bf5f38a9 stp        xzr, x23, [x29, #-0x80] ; 
0008afe8: a80100b0 adrp       x8, #0xbf000 ; 
0008afec: 007d40fd ldr        d0, [x8, #0xf8] ; 
0008aff0: a00319fc stur       d0, [x29, #-0x70] ; 
0008aff4: bf8319b8 stur       wzr, [x29, #-0x68] ; 
0008aff8: b88302d1 sub        x24, x29, #0xa0 ; 
0008affc: bf6336a9 stp        xzr, x24, [x29, #-0xa0] ; 
0008b000: a00317fc stur       d0, [x29, #-0x90] ; 
0008b004: bf8317b8 stur       wzr, [x29, #-0x88] ; 
0008b008: b94303d1 sub        x25, x29, #0xd0 ; 
0008b00c: bf6733a9 stp        xzr, x25, [x29, #-0xd0] ; 
0008b010: a8010090 adrp       x8, #0xbf000 ; 
0008b014: 018140fd ldr        d1, [x8, #0x100] ; 
0008b018: a10314fc stur       d1, [x29, #-0xc0] ; 
0008b01c: 28630091 add        x8, x25, #0x18 ; 
0008b020: 10000090 adrp       x16, #0x8b000 ; 
0008b024: 10c20991 add        x16, x16, #0x270 ; 
0008b028: 1001c1da pacia      x16, x8 ; 
0008b02c: b08314f8 stur       x16, [x29, #-0xb8] ; 
0008b030: 28830091 add        x8, x25, #0x20 ; 
0008b034: 10000090 adrp       x16, #0x8b000 ; 
0008b038: 10020a91 add        x16, x16, #0x280 ; 
0008b03c: 1001c1da pacia      x16, x8 ; 
0008b040: b07f35a9 stp        x16, xzr, [x29, #-0xb0] ; 
0008b044: fac30391 add        x26, sp, #0xf0 ; 
0008b048: ff6b0fa9 stp        xzr, x26, [sp, #0xf0] ; 
0008b04c: e08300fd str        d0, [sp, #0x100] ; 
0008b050: ff8700f9 str        xzr, [sp, #0x108] ; 
0008b054: 88a24139 ldrb       w8, [x20, #0x68] ; 
0008b058: 960100d0 adrp       x22, #0xbd000 ; 
0008b05c: 1f050071 cmp        w8, #1 ; 
0008b060: 61040054 b.ne       #0x8b0ec ; 
0008b064: fb230291 add        x27, sp, #0x88 ; 
0008b068: 20038052 mov        w0, #0x19 ; 
0008b06c: 010080d2 mov        x1, #0 ; 
0008b070: a5640094 bl         #0xa4304 ; _dispatch_get_global_queue
0008b074: fd031daa mov        x29, x29 ; 
0008b078: af650094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
0008b07c: f50300aa mov        x21, x0 ; 
0008b080: 500200b0 adrp       x16, #0xd4000 ; 
0008b084: 109a44f9 ldr        x16, [x16, #0x930] ; 
0008b088: f1031baa mov        x17, x27 ; 
0008b08c: 315cedf2 movk       x17, #0x6ae1, lsl #48 ; 
0008b090: 300ac1da pacda      x16, x17 ; 
0008b094: f04700f9 str        x16, [sp, #0x88] ; 
0008b098: c03641fd ldr        d0, [x22, #0x268] ; 
0008b09c: e04b00fd str        d0, [sp, #0x90] ; 
0008b0a0: 68430091 add        x8, x27, #0x10 ; 
0008b0a4: 10000090 adrp       x16, #0x8b000 ; 
0008b0a8: 10220a91 add        x16, x16, #0x288 ; 
0008b0ac: 1001c1da pacia      x16, x8 ; 
0008b0b0: 808641ad ldp        q0, q1, [x20, #0x30] ; 
0008b0b4: 6083843c stur       q0, [x27, #0x48] ; 
0008b0b8: 480200f0 adrp       x8, #0xd6000 ; 
0008b0bc: 08a10391 add        x8, x8, #0xe8 ; 
0008b0c0: f0a309a9 stp        x16, x8, [sp, #0x98] ; 
0008b0c4: 881640f9 ldr        x8, [x20, #0x28] ; 
0008b0c8: fa230ca9 stp        x26, x8, [sp, #0xc0] ; 
0008b0cc: f9df0aa9 stp        x25, x23, [sp, #0xa8] ; 
0008b0d0: f85f00f9 str        x24, [sp, #0xb8] ; 
0008b0d4: 6183853c stur       q1, [x27, #0x58] ; 
0008b0d8: e2230291 add        x2, sp, #0x88 ; 
0008b0dc: 40008052 mov        w0, #2 ; 
0008b0e0: e10315aa mov        x1, x21 ; 
0008b0e4: 80640094 bl         #0xa42e4 ; _dispatch_apply
0008b0e8: 0b000014 b          #0x8b114 ; 
0008b0ec: 801640f9 ldr        x0, [x20, #0x28] ; 
0008b0f0: 8006436d ldp        d0, d1, [x20, #0x30] ; 
0008b0f4: e1620091 add        x1, x23, #0x18 ; 
0008b0f8: 02630091 add        x2, x24, #0x18 ; 
0008b0fc: 8d000094 bl         #0x8b330 ; 
0008b100: fd031daa mov        x29, x29 ; 
0008b104: 8c650094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
0008b108: a88353f8 ldur       x8, [x29, #-0xc8] ; 
0008b10c: 151540f9 ldr        x21, [x8, #0x28] ; 
0008b110: 001500f9 str        x0, [x8, #0x28] ; 
0008b114: e00315aa mov        x0, x21 ; 
0008b118: 77650094 bl         #0xa46f4 ; _objc_release
0008b11c: 32620094 bl         #0xa39e4 ; _CACurrentMediaTime
0008b120: 0838681e fsub       d8, d0, d8 ; 
0008b124: f5030091 mov        x21, sp ; 
0008b128: 500200b0 adrp       x16, #0xd4000 ; 
0008b12c: 109a44f9 ldr        x16, [x16, #0x930] ; 
0008b130: f10315aa mov        x17, x21 ; 
0008b134: 315cedf2 movk       x17, #0x6ae1, lsl #48 ; 
0008b138: 300ac1da pacda      x16, x17 ; 
0008b13c: f00300f9 str        x16, [sp] ; 
0008b140: c03641fd ldr        d0, [x22, #0x268] ; 
0008b144: e00700fd str        d0, [sp, #8] ; 
0008b148: a8420091 add        x8, x21, #0x10 ; 
0008b14c: 10000090 adrp       x16, #0x8b000 ; 
0008b150: 10821b91 add        x16, x16, #0x6e0 ; 
0008b154: 1001c1da pacia      x16, x8 ; 
0008b158: 480200f0 adrp       x8, #0xd6000 ; 
0008b15c: 08610491 add        x8, x8, #0x118 ; 
0008b160: f02301a9 stp        x16, x8, [sp, #0x10] ; 
0008b164: a0020191 add        x0, x21, #0x40 ; 
0008b168: 81820091 add        x1, x20, #0x20 ; 
0008b16c: 26650094 bl         #0xa4604 ; _objc_copyWeak
0008b170: 8016c03d ldr        q0, [x20, #0x50] ; 
0008b174: e083843c stur       q0, [sp, #0x48] ; 
0008b178: a84303d1 sub        x8, x29, #0xd0 ; 
0008b17c: 893240f9 ldr        x9, [x20, #0x60] ; 
0008b180: e92f00f9 str        x9, [sp, #0x58] ; 
0008b184: a90302d1 sub        x9, x29, #0x80 ; 
0008b188: e82702a9 stp        x8, x9, [sp, #0x20] ; 
0008b18c: 88a24139 ldrb       w8, [x20, #0x68] ; 
0008b190: e8030239 strb       w8, [sp, #0x80] ; 
0008b194: a88302d1 sub        x8, x29, #0xa0 ; 
0008b198: 800ec03d ldr        q0, [x20, #0x30] ; 
0008b19c: e01b803d str        q0, [sp, #0x60] ; 
0008b1a0: 891640f9 ldr        x9, [x20, #0x28] ; 
0008b1a4: e93b00f9 str        x9, [sp, #0x70] ; 
0008b1a8: e9c30391 add        x9, sp, #0xf0 ; 
0008b1ac: e82703a9 stp        x8, x9, [sp, #0x30] ; 
0008b1b0: e83f00fd str        d8, [sp, #0x78] ; 
0008b1b4: 400200b0 adrp       x0, #0xd4000 ; 
0008b1b8: 00a044f9 ldr        x0, [x0, #0x940] ; 
0008b1bc: e1030091 mov        x1, sp ; 
0008b1c0: 4d640094 bl         #0xa42f4 ; _dispatch_async
0008b1c4: a0020191 add        x0, x21, #0x40 ; 
0008b1c8: 13650094 bl         #0xa4614 ; _objc_destroyWeak
0008b1cc: e0c30391 add        x0, sp, #0xf0 ; 
0008b1d0: 01018052 mov        w1, #8 ; 
0008b1d4: ec630094 bl         #0xa4184 ; __Block_object_dispose
0008b1d8: a04303d1 sub        x0, x29, #0xd0 ; 
0008b1dc: 01018052 mov        w1, #8 ; 
0008b1e0: e9630094 bl         #0xa4184 ; __Block_object_dispose
0008b1e4: a08355f8 ldur       x0, [x29, #-0xa8] ; 
0008b1e8: 43650094 bl         #0xa46f4 ; _objc_release
0008b1ec: a08302d1 sub        x0, x29, #0xa0 ; 
0008b1f0: 01018052 mov        w1, #8 ; 
0008b1f4: e4630094 bl         #0xa4184 ; __Block_object_dispose
0008b1f8: a00302d1 sub        x0, x29, #0x80 ; 
0008b1fc: 01018052 mov        w1, #8 ; 
0008b200: e1630094 bl         #0xa4184 ; __Block_object_dispose
0008b204: e00313aa mov        x0, x19 ; 
0008b208: ef640094 bl         #0xa45c4 ; _objc_autoreleasePoolPop
0008b20c: fd7b5ea9 ldp        x29, x30, [sp, #0x1e0] ; 
0008b210: f44f5da9 ldp        x20, x19, [sp, #0x1d0] ; 
0008b214: f6575ca9 ldp        x22, x21, [sp, #0x1c0] ; 
0008b218: f85f5ba9 ldp        x24, x23, [sp, #0x1b0] ; 
0008b21c: fa675aa9 ldp        x26, x25, [sp, #0x1a0] ; 
0008b220: fc6f59a9 ldp        x28, x27, [sp, #0x190] ; 
0008b224: e923586d ldp        d9, d8, [sp, #0x180] ; 
0008b228: ffc30791 add        sp, sp, #0x1f0 ; 
0008b22c: ff0f5fd6 retab       ; 
0008b230: 01000014 b          #0x8b234 ; 
0008b234: f30300aa mov        x19, x0 ; 
0008b238: e0c30391 add        x0, sp, #0xf0 ; 
0008b23c: 01018052 mov        w1, #8 ; 
0008b240: d1630094 bl         #0xa4184 ; __Block_object_dispose
0008b244: a04303d1 sub        x0, x29, #0xd0 ; 
0008b248: 01018052 mov        w1, #8 ; 
0008b24c: ce630094 bl         #0xa4184 ; __Block_object_dispose
0008b250: a08302d1 sub        x0, x29, #0xa0 ; 
0008b254: 01018052 mov        w1, #8 ; 
0008b258: cb630094 bl         #0xa4184 ; __Block_object_dispose
0008b25c: a00302d1 sub        x0, x29, #0x80 ; 
0008b260: 01018052 mov        w1, #8 ; 
0008b264: c8630094 bl         #0xa4184 ; __Block_object_dispose
0008b268: e00313aa mov        x0, x19 ; 
0008b26c: ca630094 bl         #0xa4194 ; __Unwind_Resume
