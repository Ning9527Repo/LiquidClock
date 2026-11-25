main arm64e VA 0x87e04..0x87e24; fat slice offset 0xfc000
00087e04: 7f2303d5 pacibsp     ; 
00087e08: fd7bbfa9 stp        x29, x30, [sp, #-0x10]! ; 
00087e0c: fd030091 mov        x29, sp ; 
00087e10: b1710094 bl         #0xa44d4 ; _mach_absolute_time
00087e14: 48030090 adrp       x8, #0xef000 ; 
00087e18: 00d105f9 str        x0, [x8, #0xba0] ; 
00087e1c: fd7bc1a8 ldp        x29, x30, [sp], #0x10 ; 
00087e20: ff0f5fd6 retab       ; 
