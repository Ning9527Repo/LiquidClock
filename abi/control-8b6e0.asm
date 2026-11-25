main arm64e 0x8b6e0..0x8bb44
0008b6e0 pacibsp    
0008b6e4 sub        sp, sp, #0xa0
0008b6e8 stp        d11, d10, [sp, #0x30]
0008b6ec stp        d9, d8, [sp, #0x40]
0008b6f0 stp        x26, x25, [sp, #0x50]
0008b6f4 stp        x24, x23, [sp, #0x60]
0008b6f8 stp        x22, x21, [sp, #0x70]
0008b6fc stp        x20, x19, [sp, #0x80]
0008b700 stp        x29, x30, [sp, #0x90]
0008b704 add        x29, sp, #0x90
0008b708 mov        x20, x0
0008b70c add        x0, x0, #0x40
0008b710 bl         #0xa4684
0008b714 mov        x19, x0
0008b718 cbz        x0, #0x8bad8
0008b71c adrp       x8, #0xed000
0008b720 ldrsw      x8, [x8, #0x34]
0008b724 ldrb       w8, [x19, x8]
0008b728 tbnz       w8, #0, #0x8bad8
0008b72c adrp       x8, #0xed000
0008b730 ldrsw      x8, [x8, #0x64]
0008b734 strb       wzr, [x19, x8]
0008b738 ldr        x8, [x20, #0x48]
0008b73c adrp       x9, #0xed000
0008b740 ldrsw      x9, [x9, #0x48]
0008b744 ldr        x9, [x19, x9]
0008b748 cmp        x8, x9
0008b74c b.ne       #0x8bad0
0008b750 ldr        x8, [x20, #0x20]
0008b754 ldr        x8, [x8, #8]
0008b758 ldr        x0, [x8, #0x28]
0008b75c bl         #0xa9360
0008b760 cbz        x0, #0x8bad0
0008b764 ldr        x8, [x20, #0x20]
0008b768 ldr        x8, [x8, #8]
0008b76c ldr        x0, [x8, #0x28]
0008b770 bl         #0xa9360
0008b774 cmp        x0, #0x400, lsl #12
0008b778 b.hi       #0x8bad0
0008b77c ldp        x8, x9, [x20, #0x50]
0008b780 add        x8, x8, #0x10
0008b784 ldapr      x8, [x8]
0008b788 cmp        x8, x9
0008b78c b.ne       #0x8bad0
0008b790 bl         #0xa44d4
0008b794 mov        x21, x0
0008b798 ldr        x8, [x20, #0x50]
0008b79c add        x9, x8, #8
0008b7a0 ldr        x8, [x8, #8]
0008b7a4 add        x8, x8, #1
0008b7a8 orr        x23, x8, #1
0008b7ac stlr       x23, [x9]
0008b7b0 ldr        x24, [x20, #0x50]
0008b7b4 ldr        x8, [x20, #0x20]
0008b7b8 ldr        x8, [x8, #8]
0008b7bc ldr        x0, [x8, #0x28]
0008b7c0 bl         #0xa4714
0008b7c4 bl         #0xa5d00
0008b7c8 mov        x22, x0
0008b7cc ldr        x8, [x20, #0x20]
0008b7d0 ldr        x8, [x8, #8]
0008b7d4 ldr        x0, [x8, #0x28]
0008b7d8 bl         #0xa9360
0008b7dc mov        x2, x0
0008b7e0 add        x0, x24, #0x40
0008b7e4 mov        x1, x22
0008b7e8 bl         #0xa44f4
0008b7ec ldr        x8, [x20, #0x28]
0008b7f0 ldr        x8, [x8, #8]
0008b7f4 ldr        w8, [x8, #0x18]
0008b7f8 ldr        x9, [x20, #0x50]
0008b7fc str        w8, [x9, #0x28]
0008b800 ldr        x8, [x20, #0x30]
0008b804 ldr        x8, [x8, #8]
0008b808 ldr        w8, [x8, #0x18]
0008b80c str        w8, [x9, #0x2c]
0008b810 ldr        q0, [x20, #0x60]
0008b814 fcvtn      v0.2s, v0.2d
0008b818 str        d0, [x9, #0x30]
0008b81c str        x21, [x9, #0x18]
0008b820 add        x8, x9, #8
0008b824 add        x9, x23, #1
0008b828 stlr       x9, [x8]
0008b82c adrp       x8, #0xed000
0008b830 ldrsw      x8, [x8, #0x38]
0008b834 ldr        x9, [x19, x8]
0008b838 cbnz       x9, #0x8b840
0008b83c str        x21, [x19, x8]
0008b840 adrp       x25, #0xec000
0008b844 ldr        x0, [x25, #0x4c0]
0008b848 bl         #0xa59e0
0008b84c ldr        x0, [x25, #0x4c0]
0008b850 mov        w2, #1
0008b854 bl         #0xac980
0008b858 ldrb       w8, [x20, #0x80]
0008b85c tbz        w8, #0, #0x8b9a8
0008b860 adrp       x8, #0xd4000
0008b864 ldr        x8, [x8, #0x908]
0008b868 ldp        d8, d9, [x8]
0008b86c ldp        d10, d11, [x20, #0x60]
0008b870 adrp       x8, #0xed000
0008b874 ldrsw      x8, [x8, #4]
0008b878 ldr        x0, [x19, x8]
0008b87c fmov       d0, d8
0008b880 fmov       d1, d9
0008b884 fmov       d2, d10
0008b888 fmov       d3, d11
0008b88c bl         #0xace60
0008b890 adrp       x8, #0xed000
0008b894 ldrsw      x8, [x8, #0x20]
0008b898 ldr        x0, [x19, x8]
0008b89c fmov       d0, d8
0008b8a0 fmov       d1, d9
0008b8a4 fmov       d2, d10
0008b8a8 fmov       d3, d11
0008b8ac bl         #0xace60
0008b8b0 adrp       x8, #0xed000
0008b8b4 ldrsw      x23, [x8, #8]
0008b8b8 ldr        x0, [x19, x23]
0008b8bc fmov       d0, d8
0008b8c0 fmov       d1, d9
0008b8c4 fmov       d2, d10
0008b8c8 fmov       d3, d11
0008b8cc bl         #0xace60
0008b8d0 adrp       x8, #0xed000
0008b8d4 ldrsw      x22, [x8, #0xc]
0008b8d8 ldr        x0, [x19, x22]
0008b8dc fmov       d0, d8
0008b8e0 fmov       d1, d9
0008b8e4 fmov       d2, d10
0008b8e8 fmov       d3, d11
0008b8ec bl         #0xace60
0008b8f0 adrp       x8, #0xed000
0008b8f4 ldrsw      x8, [x8, #0x10]
0008b8f8 ldr        x0, [x19, x8]
0008b8fc fmov       d0, d8
0008b900 fmov       d1, d9
0008b904 fmov       d2, d10
0008b908 fmov       d3, d11
0008b90c bl         #0xace60
0008b910 adrp       x8, #0xed000
0008b914 ldrsw      x26, [x8, #0x1c]
0008b918 ldr        x0, [x19, x26]
0008b91c fmov       d0, d8
0008b920 fmov       d1, d9
0008b924 fmov       d2, d10
0008b928 fmov       d3, d11
0008b92c bl         #0xace60
0008b930 adrp       x8, #0xed000
0008b934 ldrsw      x24, [x8, #0x24]
0008b938 ldr        x0, [x19, x24]
0008b93c fmov       d0, d8
0008b940 fmov       d1, d9
0008b944 fmov       d2, d10
0008b948 fmov       d3, d11
0008b94c bl         #0xace60
0008b950 adrp       x8, #0xed000
0008b954 ldrsw      x8, [x8, #0x28]
0008b958 ldr        x0, [x19, x8]
0008b95c fmov       d0, d8
0008b960 fmov       d1, d9
0008b964 fmov       d2, d10
0008b968 fmov       d3, d11
0008b96c bl         #0xace60
0008b970 ldr        x2, [x20, #0x70]
0008b974 ldr        x0, [x19, x23]
0008b978 bl         #0xae2e0
0008b97c ldr        x8, [x20, #0x38]
0008b980 ldr        x8, [x8, #8]
0008b984 ldr        x2, [x8, #0x18]
0008b988 ldr        x0, [x19, x24]
0008b98c bl         #0xac4e0
0008b990 ldr        x8, [x20, #0x38]
0008b994 ldr        x8, [x8, #8]
0008b998 ldr        x8, [x8, #0x18]
0008b99c cbz        x8, #0x8b9b4
0008b9a0 mov        x2, #0
0008b9a4 b          #0x8b9b8
0008b9a8 adrp       x8, #0xed000
0008b9ac ldrsw      x26, [x8, #0x1c]
0008b9b0 b          #0x8ba34
0008b9b4 ldr        x2, [x20, #0x70]
0008b9b8 ldr        x0, [x19, x24]
0008b9bc bl         #0xae2e0
0008b9c0 ldr        x0, [x19, x22]
0008b9c4 bl         #0xa8dc0
0008b9c8 tbnz       w0, #0, #0x8ba34
0008b9cc ldr        x0, [x19, x22]
0008b9d0 bl         #0xa91e0
0008b9d4 mov        x29, x29
0008b9d8 bl         #0xa4734
0008b9dc mov        x22, x0
0008b9e0 adrp       x8, #0xec000
0008b9e4 ldr        x0, [x8, #0x8b0]
0008b9e8 bl         #0xa4a80
0008b9ec mov        x29, x29
0008b9f0 bl         #0xa4734
0008b9f4 mov        x23, x0
0008b9f8 bl         #0xa4aa0
0008b9fc mov        x29, x29
0008ba00 bl         #0xa4734
0008ba04 mov        x24, x0
0008ba08 adrp       x3, #0xdd000
0008ba0c add        x3, x3, #0x50
0008ba10 mov        x0, x22
0008ba14 mov        x2, x24
0008ba18 bl         #0xaf8e0
0008ba1c mov        x0, x24
0008ba20 bl         #0xa46f4
0008ba24 mov        x0, x23
0008ba28 bl         #0xa46f4
0008ba2c mov        x0, x22
0008ba30 bl         #0xa46f4
0008ba34 ldr        x0, [x19, x26]
0008ba38 bl         #0xa94a0
0008ba3c ldr        x0, [x25, #0x4c0]
0008ba40 bl         #0xa6220
0008ba44 adrp       x8, #0xed000
0008ba48 ldrsw      x8, [x8, #0x18]
0008ba4c ldr        x8, [x19, x8]
0008ba50 adrp       x9, #0xed000
0008ba54 ldrsw      x22, [x9, #0x68]
0008ba58 tbnz       x8, #0x3f, #0x8ba78
0008ba5c ldr        x8, [x19, x22]
0008ba60 cmp        x8, #9
0008ba64 b.hi       #0x8ba78
0008ba68 adrp       x2, #0xdd000
0008ba6c add        x2, x2, #0x170
0008ba70 mov        x0, x19
0008ba74 bl         #0xa98a0
0008ba78 ldr        x8, [x19, x22]
0008ba7c add        x9, x8, #1
0008ba80 str        x9, [x19, x22]
0008ba84 cmp        x8, #2
0008ba88 b.hi       #0x8bad0
0008ba8c ldp        x8, x9, [x20, #0x28]
0008ba90 ldr        x8, [x8, #8]
0008ba94 ldr        x9, [x9, #8]
0008ba98 ldr        d0, [x20, #0x78]
0008ba9c adrp       x10, #0xbd000
0008baa0 ldr        d1, [x10, #0x860]
0008baa4 fmul       d0, d0, d1
0008baa8 ldrb       w10, [x20, #0x80]
0008baac ldr        w8, [x8, #0x18]
0008bab0 ldr        w9, [x9, #0x18]
0008bab4 str        x10, [sp, #0x20]
0008bab8 str        d0, [sp, #0x18]
0008babc stp        x8, x9, [sp, #8]
0008bac0 str        x21, [sp]
0008bac4 adrp       x0, #0xdd000
0008bac8 add        x0, x0, #0x190
0008bacc bl         #0xa23b8
0008bad0 mov        x0, x19
0008bad4 bl         #0xaaec0
0008bad8 ldr        x8, [x20, #0x38]
0008badc ldr        x8, [x8, #8]
0008bae0 ldr        x0, [x8, #0x18]
0008bae4 cbz        x0, #0x8baec
0008bae8 bl         #0xa3d54
0008baec ldr        x0, [x20, #0x70]
0008baf0 bl         #0xa3e24
0008baf4 mov        x0, x19
0008baf8 ldp        x29, x30, [sp, #0x90]
0008bafc ldp        x20, x19, [sp, #0x80]
0008bb00 ldp        x22, x21, [sp, #0x70]
0008bb04 ldp        x24, x23, [sp, #0x60]
0008bb08 ldp        x26, x25, [sp, #0x50]
0008bb0c ldp        d9, d8, [sp, #0x40]
0008bb10 ldp        d11, d10, [sp, #0x30]
0008bb14 add        sp, sp, #0xa0
0008bb18 autibsp    
0008bb1c eor        x16, x30, x30, lsl #1
0008bb20 tbz        x16, #0x3e, #0x8bb28
0008bb24 brk        #0xc471
0008bb28 b          #0xa46f4
0008bb2c cmp        w1, #1
0008bb30 b.ne       #0x8bb40
0008bb34 bl         #0xa45f4
0008bb38 bl         #0xa4624
0008bb3c b          #0x8ba34
0008bb40 bl         #0xa4194
