main arm64e VA 0xa2c2c..0xa2d94; fat slice offset 0xfc000
000a2c2c: 7f2303d5 pacibsp     ; 
000a2c30: ff4303d1 sub        sp, sp, #0xd0 ; 
000a2c34: f6570aa9 stp        x22, x21, [sp, #0xa0] ; 
000a2c38: f44f0ba9 stp        x20, x19, [sp, #0xb0] ; 
000a2c3c: fd7b0ca9 stp        x29, x30, [sp, #0xc0] ; 
000a2c40: fd030391 add        x29, sp, #0xc0 ; 
000a2c44: 760200b0 adrp       x22, #0xef000 ; 
000a2c48: d59246f9 ldr        x21, [x22, #0xd20] ; 
000a2c4c: 950500b5 cbnz       x21, #0xa2cfc ; 
000a2c50: f40300aa mov        x20, x0 ; 
000a2c54: 20010034 cbz        w0, #0xa2c78 ; 
000a2c58: 680200b0 adrp       x8, #0xef000 ; 
000a2c5c: 089d46f9 ldr        x8, [x8, #0xd38] ; 
000a2c60: 1f0500b1 cmn        x8, #1 ; 
000a2c64: 41090054 b.ne       #0xa2d8c ; 
000a2c68: 680200b0 adrp       x8, #0xef000 ; 
000a2c6c: 08c17439 ldrb       w8, [x8, #0xd30] ; 
000a2c70: 1f050071 cmp        w8, #1 ; 
000a2c74: 21040054 b.ne       #0xa2cf8 ; 
000a2c78: 08308052 mov        w8, #0x180 ; 
000a2c7c: e80300f9 str        x8, [sp] ; 
000a2c80: c00000d0 adrp       x0, #0xbc000 ; 
000a2c84: 00543f91 add        x0, x0, #0xfd5 ; 
000a2c88: 41208052 mov        w1, #0x102 ; 
000a2c8c: 0120a072 movk       w1, #0x100, lsl #16 ; 
000a2c90: d9060094 bl         #0xa47f4 ; _open
000a2c94: 6002f837 tbnz       w0, #0x1f, #0xa2ce0 ; 
000a2c98: f30300aa mov        x19, x0 ; 
000a2c9c: e1430091 add        x1, sp, #0x10 ; 
000a2ca0: e9050094 bl         #0xa4444 ; _fstat
000a2ca4: 80010035 cbnz       w0, #0xa2cd4 ; 
000a2ca8: e82b4079 ldrh       w8, [sp, #0x14] ; 
000a2cac: 080d1412 and        w8, w8, #0xf000 ; 
000a2cb0: 1f214071 cmp        w8, #8, lsl #12 ; 
000a2cb4: 01010054 b.ne       #0xa2cd4 ; 
000a2cb8: f52340b9 ldr        w21, [sp, #0x20] ; 
000a2cbc: f2050094 bl         #0xa4484 ; _getuid
000a2cc0: bf02006b cmp        w21, w0 ; 
000a2cc4: 81000054 b.ne       #0xa2cd4 ; 
000a2cc8: e82b4079 ldrh       w8, [sp, #0x14] ; 
000a2ccc: 1f150072 tst        w8, #0x3f ; 
000a2cd0: 20020054 b.eq       #0xa2d14 ; 
000a2cd4: e00313aa mov        x0, x19 ; 
000a2cd8: 77050094 bl         #0xa42b4 ; _close
000a2cdc: 07000014 b          #0xa2cf8 ; 
000a2ce0: 31050094 bl         #0xa41a4 ; ___error
000a2ce4: 080040b9 ldr        w8, [x0] ; 
000a2ce8: e80300f9 str        x8, [sp] ; 
000a2cec: e0010090 adrp       x0, #0xde000 ; 
000a2cf0: 00400b91 add        x0, x0, #0x2d0 ; 
000a2cf4: e4040094 bl         #0xa4084 ; _NSLog
000a2cf8: 150080d2 mov        x21, #0 ; 
000a2cfc: e00315aa mov        x0, x21 ; 
000a2d00: fd7b4ca9 ldp        x29, x30, [sp, #0xc0] ; 
000a2d04: f44f4ba9 ldp        x20, x19, [sp, #0xb0] ; 
000a2d08: f6574aa9 ldp        x22, x21, [sp, #0xa0] ; 
000a2d0c: ff430391 add        sp, sp, #0xd0 ; 
000a2d10: ff0f5fd6 retab       ; 
000a2d14: e8830a32 mov        w8, #0x400040 ; 
000a2d18: d4000034 cbz        w20, #0xa2d30 ; 
000a2d1c: e00313aa mov        x0, x19 ; 
000a2d20: e1830a32 mov        w1, #0x400040 ; 
000a2d24: d0050094 bl         #0xa4464 ; _ftruncate
000a2d28: 60fdff35 cbnz       w0, #0xa2cd4 ; 
000a2d2c: 04000014 b          #0xa2d3c ; 
000a2d30: e93b40f9 ldr        x9, [sp, #0x70] ; 
000a2d34: 3f0108eb cmp        x9, x8 ; 
000a2d38: e1fcff54 b.ne       #0xa2cd4 ; 
000a2d3c: 88008052 mov        w8, #4 ; 
000a2d40: e80300f9 str        x8, [sp] ; 
000a2d44: e00313aa mov        x0, x19 ; 
000a2d48: 01088052 mov        w1, #0x40 ; 
000a2d4c: a2050094 bl         #0xa43d4 ; _fcntl
000a2d50: 20fcff37 tbnz       w0, #0x1f, #0xa2cd4 ; 
000a2d54: 000080d2 mov        x0, #0 ; 
000a2d58: e1830a32 mov        w1, #0x400040 ; 
000a2d5c: 62008052 mov        w2, #3 ; 
000a2d60: 23008052 mov        w3, #1 ; 
000a2d64: e40313aa mov        x4, x19 ; 
000a2d68: 050080d2 mov        x5, #0 ; 
000a2d6c: f2050094 bl         #0xa4534 ; _mmap
000a2d70: f50300aa mov        x21, x0 ; 
000a2d74: e00313aa mov        x0, x19 ; 
000a2d78: 4f050094 bl         #0xa42b4 ; _close
000a2d7c: bf0600b1 cmn        x21, #1 ; 
000a2d80: c0fbff54 b.eq       #0xa2cf8 ; 
000a2d84: d59206f9 str        x21, [x22, #0xd20] ; 
000a2d88: ddffff17 b          #0xa2cfc ; 
000a2d8c: fa020094 bl         #0xa3974 ; 
000a2d90: b6ffff17 b          #0xa2c68 ; 
