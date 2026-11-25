main arm64e 0x87e68..0x87ed4
00087e68 ldp        x8, x9, [x0, #0x20]
00087e6c ldr        x10, [x8, #0x10]
00087e70 cmp        x10, x9
00087e74 b.eq       #0x87ed0
00087e78 add        x9, x8, #8
00087e7c ldr        x8, [x8, #8]
00087e80 add        x8, x8, #1
00087e84 orr        x8, x8, #1
00087e88 stlr       x8, [x9]
00087e8c ldr        x9, [x0, #0x20]
00087e90 adrp       x10, #0xbf000
00087e94 ldr        d0, [x10, #0xf0]
00087e98 str        d0, [x9], #0x38
00087e9c mov        w10, #1
00087ea0 stlr       w10, [x9]
00087ea4 ldp        x9, x10, [x0, #0x20]
00087ea8 add        x9, x9, #0x10
00087eac stlr       x10, [x9]
00087eb0 ldr        x9, [x0, #0x20]
00087eb4 str        xzr, [x9, #0x18]
00087eb8 add        x9, x9, #0x20
00087ebc stlr       xzr, [x9]
00087ec0 ldr        x9, [x0, #0x20]
00087ec4 add        x9, x9, #8
00087ec8 add        x8, x8, #1
00087ecc stlr       x8, [x9]
00087ed0 ret        
