main arm64e 0x8805c..0x880a4
0008805c ldr        x8, [x0, #0x20]
00088060 add        x9, x8, #8
00088064 ldr        x8, [x8, #8]
00088068 add        x8, x8, #1
0008806c orr        x8, x8, #1
00088070 stlr       x8, [x9]
00088074 ldp        x9, x10, [x0, #0x20]
00088078 add        x9, x9, #0x10
0008807c stlr       x10, [x9]
00088080 ldr        x9, [x0, #0x20]
00088084 str        xzr, [x9, #0x18]
00088088 add        x9, x9, #0x20
0008808c stlr       xzr, [x9]
00088090 ldr        x9, [x0, #0x20]
00088094 add        x9, x9, #8
00088098 add        x8, x8, #1
0008809c stlr       x8, [x9]
000880a0 ret        
