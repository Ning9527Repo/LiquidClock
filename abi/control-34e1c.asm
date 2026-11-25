main arm64e 0x34e1c..0x34fa4
00034e1c pacibsp    
00034e20 sub        sp, sp, #0x100
00034e24 stp        d11, d10, [sp, #0xa0]
00034e28 stp        d9, d8, [sp, #0xb0]
00034e2c stp        x24, x23, [sp, #0xc0]
00034e30 stp        x22, x21, [sp, #0xd0]
00034e34 stp        x20, x19, [sp, #0xe0]
00034e38 stp        x29, x30, [sp, #0xf0]
00034e3c add        x29, sp, #0xf0
00034e40 mov        x19, x1
00034e44 fmov       s8, s2
00034e48 fmov       s9, s1
00034e4c fmov       s10, s0
00034e50 mov        x20, x0
00034e54 adrp       x23, #0xef000
00034e58 ldr        x22, [x23, #0x328]
00034e5c cbz        x22, #0x34ea8
00034e60 add        x8, x22, #4
00034e64 ldr        w9, [x22, #4]
00034e68 add        w9, w9, #1
00034e6c orr        w9, w9, #1
00034e70 stlr       w9, [x8]
00034e74 stp        w20, w19, [x22, #8]
00034e78 stp        s10, s9, [x22, #0x10]
00034e7c str        s8, [x22, #0x18]
00034e80 add        w9, w9, #1
00034e84 stlr       w9, [x8]
00034e88 ldp        x29, x30, [sp, #0xf0]
00034e8c ldp        x20, x19, [sp, #0xe0]
00034e90 ldp        x22, x21, [sp, #0xd0]
00034e94 ldp        x24, x23, [sp, #0xc0]
00034e98 ldp        d9, d8, [sp, #0xb0]
00034e9c ldp        d11, d10, [sp, #0xa0]
00034ea0 add        sp, sp, #0x100
00034ea4 retab      
00034ea8 mov        w8, #0x1b6
00034eac str        x8, [sp]
00034eb0 adrp       x0, #0xb7000
00034eb4 add        x0, x0, #0xed8
00034eb8 mov        w1, #0x202
00034ebc bl         #0xa47f4
00034ec0 tbnz       w0, #0x1f, #0x34e88
00034ec4 mov        x21, x0
00034ec8 mov        w1, #0x1c
00034ecc bl         #0xa4464
00034ed0 cbz        w0, #0x34f08
00034ed4 mov        x0, x21
00034ed8 ldp        x29, x30, [sp, #0xf0]
00034edc ldp        x20, x19, [sp, #0xe0]
00034ee0 ldp        x22, x21, [sp, #0xd0]
00034ee4 ldp        x24, x23, [sp, #0xc0]
00034ee8 ldp        d9, d8, [sp, #0xb0]
00034eec ldp        d11, d10, [sp, #0xa0]
00034ef0 add        sp, sp, #0x100
00034ef4 autibsp    
00034ef8 eor        x16, x30, x30, lsl #1
00034efc tbz        x16, #0x3e, #0x34f04
00034f00 brk        #0xc471
00034f04 b          #0xa42b4
00034f08 movi       v0.2d, #0000000000000000
00034f0c stp        q0, q0, [sp, #0x80]
00034f10 stp        q0, q0, [sp, #0x60]
00034f14 stp        q0, q0, [sp, #0x40]
00034f18 stp        q0, q0, [sp, #0x20]
00034f1c str        q0, [sp, #0x10]
00034f20 add        x1, sp, #0x10
00034f24 mov        x0, x21
00034f28 bl         #0xa4444
00034f2c cbnz       w0, #0x34f98
00034f30 ldr        x8, [sp, #0x70]
00034f34 cmp        x8, #0x1b
00034f38 b.le       #0x34f98
00034f3c mov        x0, #0
00034f40 mov        w1, #0x1c
00034f44 mov        w2, #3
00034f48 mov        w3, #1
00034f4c mov        x4, x21
00034f50 mov        x5, #0
00034f54 bl         #0xa4534
00034f58 mov        x22, x0
00034f5c mov        x0, x21
00034f60 bl         #0xa42b4
00034f64 cmn        x22, #1
00034f68 b.eq       #0x34e88
00034f6c mov        w8, #0x4353
00034f70 movk       w8, #0x4c47, lsl #16
00034f74 str        x22, [x23, #0x328]
00034f78 ldr        w9, [x22]
00034f7c cmp        w9, w8
00034f80 b.eq       #0x34e60
00034f84 stp        xzr, xzr, [x22]
00034f88 str        wzr, [x22, #0x18]
00034f8c str        xzr, [x22, #0x10]
00034f90 str        w8, [x22]
00034f94 b          #0x34e60
00034f98 mov        x0, x21
00034f9c bl         #0xa42b4
00034fa0 b          #0x34e88
