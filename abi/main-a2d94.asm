main arm64e VA 0xa2d94..0xa2f0c; fat slice offset 0xfc000
000a2d94: 3f3c0071 cmp        w1, #0xf ; 
000a2d98: 69000054 b.ls       #0xa2da4 ; 
000a2d9c: 000080d2 mov        x0, #0 ; 
000a2da0: c0035fd6 ret         ; 
000a2da4: 7f2303d5 pacibsp     ; 
000a2da8: ff8303d1 sub        sp, sp, #0xe0 ; 
000a2dac: f85f0aa9 stp        x24, x23, [sp, #0xa0] ; 
000a2db0: f6570ba9 stp        x22, x21, [sp, #0xb0] ; 
000a2db4: f44f0ca9 stp        x20, x19, [sp, #0xc0] ; 
000a2db8: fd7b0da9 stp        x29, x30, [sp, #0xd0] ; 
000a2dbc: fd430391 add        x29, sp, #0xd0 ; 
000a2dc0: f30301aa mov        x19, x1 ; 
000a2dc4: 770200b0 adrp       x23, #0xef000 ; 
000a2dc8: f69646f9 ldr        x22, [x23, #0xd28] ; 
000a2dcc: b60000b4 cbz        x22, #0xa2de0 ; 
000a2dd0: 6842130b add        w8, w19, w19, lsl #16 ; 
000a2dd4: 08651a53 lsl        w8, w8, #6 ; 
000a2dd8: c002088b add        x0, x22, x8 ; 
000a2ddc: 25000014 b          #0xa2e70 ; 
000a2de0: f50300aa mov        x21, x0 ; 
000a2de4: 20010034 cbz        w0, #0xa2e08 ; 
000a2de8: 680200b0 adrp       x8, #0xef000 ; 
000a2dec: 089d46f9 ldr        x8, [x8, #0xd38] ; 
000a2df0: 1f0500b1 cmn        x8, #1 ; 
000a2df4: 81080054 b.ne       #0xa2f04 ; 
000a2df8: 680200b0 adrp       x8, #0xef000 ; 
000a2dfc: 08c17439 ldrb       w8, [x8, #0xd30] ; 
000a2e00: 1f050071 cmp        w8, #1 ; 
000a2e04: 41030054 b.ne       #0xa2e6c ; 
000a2e08: 08308052 mov        w8, #0x180 ; 
000a2e0c: e80300f9 str        x8, [sp] ; 
000a2e10: c00000f0 adrp       x0, #0xbd000 ; 
000a2e14: 00140191 add        x0, x0, #0x45 ; 
000a2e18: 41208052 mov        w1, #0x102 ; 
000a2e1c: 0120a072 movk       w1, #0x100, lsl #16 ; 
000a2e20: 75060094 bl         #0xa47f4 ; _open
000a2e24: 4002f837 tbnz       w0, #0x1f, #0xa2e6c ; 
000a2e28: f40300aa mov        x20, x0 ; 
000a2e2c: e1430091 add        x1, sp, #0x10 ; 
000a2e30: 85050094 bl         #0xa4444 ; _fstat
000a2e34: 80010035 cbnz       w0, #0xa2e64 ; 
000a2e38: e82b4079 ldrh       w8, [sp, #0x14] ; 
000a2e3c: 080d1412 and        w8, w8, #0xf000 ; 
000a2e40: 1f214071 cmp        w8, #8, lsl #12 ; 
000a2e44: 01010054 b.ne       #0xa2e64 ; 
000a2e48: f62340b9 ldr        w22, [sp, #0x20] ; 
000a2e4c: 8e050094 bl         #0xa4484 ; _getuid
000a2e50: df02006b cmp        w22, w0 ; 
000a2e54: 81000054 b.ne       #0xa2e64 ; 
000a2e58: e82b4079 ldrh       w8, [sp, #0x14] ; 
000a2e5c: 1f150072 tst        w8, #0x3f ; 
000a2e60: 60010054 b.eq       #0xa2e8c ; 
000a2e64: e00314aa mov        x0, x20 ; 
000a2e68: 13050094 bl         #0xa42b4 ; _close
000a2e6c: 000080d2 mov        x0, #0 ; 
000a2e70: fd7b4da9 ldp        x29, x30, [sp, #0xd0] ; 
000a2e74: f44f4ca9 ldp        x20, x19, [sp, #0xc0] ; 
000a2e78: f6574ba9 ldp        x22, x21, [sp, #0xb0] ; 
000a2e7c: f85f4aa9 ldp        x24, x23, [sp, #0xa0] ; 
000a2e80: ff830391 add        sp, sp, #0xe0 ; 
000a2e84: ff2303d5 autibsp     ; 
000a2e88: c0035fd6 ret         ; 
000a2e8c: e8830632 mov        w8, #0x4000400 ; 
000a2e90: d5000034 cbz        w21, #0xa2ea8 ; 
000a2e94: e00314aa mov        x0, x20 ; 
000a2e98: e1830632 mov        w1, #0x4000400 ; 
000a2e9c: 72050094 bl         #0xa4464 ; _ftruncate
000a2ea0: 20feff35 cbnz       w0, #0xa2e64 ; 
000a2ea4: 04000014 b          #0xa2eb4 ; 
000a2ea8: e93b40f9 ldr        x9, [sp, #0x70] ; 
000a2eac: 3f0108eb cmp        x9, x8 ; 
000a2eb0: a1fdff54 b.ne       #0xa2e64 ; 
000a2eb4: 88008052 mov        w8, #4 ; 
000a2eb8: e80300f9 str        x8, [sp] ; 
000a2ebc: e00314aa mov        x0, x20 ; 
000a2ec0: 01088052 mov        w1, #0x40 ; 
000a2ec4: 44050094 bl         #0xa43d4 ; _fcntl
000a2ec8: e0fcff37 tbnz       w0, #0x1f, #0xa2e64 ; 
000a2ecc: 000080d2 mov        x0, #0 ; 
000a2ed0: e1830632 mov        w1, #0x4000400 ; 
000a2ed4: 62008052 mov        w2, #3 ; 
000a2ed8: 23008052 mov        w3, #1 ; 
000a2edc: e40314aa mov        x4, x20 ; 
000a2ee0: 050080d2 mov        x5, #0 ; 
000a2ee4: 94050094 bl         #0xa4534 ; _mmap
000a2ee8: f60300aa mov        x22, x0 ; 
000a2eec: e00314aa mov        x0, x20 ; 
000a2ef0: f1040094 bl         #0xa42b4 ; _close
000a2ef4: df0600b1 cmn        x22, #1 ; 
000a2ef8: a0fbff54 b.eq       #0xa2e6c ; 
000a2efc: f69606f9 str        x22, [x23, #0xd28] ; 
000a2f00: b4ffff17 b          #0xa2dd0 ; 
000a2f04: a1020094 bl         #0xa3988 ; 
000a2f08: bcffff17 b          #0xa2df8 ; 
