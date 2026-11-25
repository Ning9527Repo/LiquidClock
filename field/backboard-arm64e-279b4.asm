backboard arm64e VA 0x279b4..0x27bc0; fat slice offset 0x94000
;  | _LGClockPosterFieldMap |  | _LGClockPosterFieldMap
000279b4: 7f2303d5 pacibsp    
000279b8: ff8303d1 sub        sp, sp, #0xe0
000279bc: fd7b0da9 stp        x29, x30, [sp, #0xd0]
000279c0: fd430391 add        x29, sp, #0xd0
000279c4: a0731f38 sturb      w0, [x29, #-9]
000279c8: a1031fb8 stur       w1, [x29, #-0x10]
000279cc: a8035fb8 ldur       w8, [x29, #-0x10]
000279d0: 08410071 subs       w8, w8, #0x10
000279d4: 83000054 b.lo       #0x279e4
000279d8: 01000014 b          #0x279dc ; 
000279dc: bf831ff8 stur       xzr, [x29, #-8]
000279e0: 74000014 b          #0x27bb0 ; 
000279e4: 080880d2 mov        x8, #0x40
000279e8: 0808a0f2 movk       x8, #0x40, lsl #16
000279ec: a8831ef8 stur       x8, [x29, #-0x18]
000279f0: 880000f0 adrp       x8, #0x3a000
000279f4: 08b940f9 ldr        x8, [x8, #0x170]
000279f8: c80c00b5 cbnz       x8, #0x27b90
000279fc: 01000014 b          #0x27a00 ; 
00027a00: a8735f38 ldurb      w8, [x29, #-9]
00027a04: e8000036 tbz        w8, #0, #0x27a20
00027a08: 01000014 b          #0x27a0c ; 
00027a0c: cbffff97 bl         #0x27938 ; __ZL25LGClockEditorApplyProfilev |  | __ZL25LGClockEditorApplyProfilev | 
00027a10: 80000037 tbnz       w0, #0, #0x27a20
00027a14: 01000014 b          #0x27a18 ; 
00027a18: bf831ff8 stur       xzr, [x29, #-8]
00027a1c: 65000014 b          #0x27bb0 ; 
00027a20: a8835ef8 ldur       x8, [x29, #-0x18]
00027a24: 08ed7cd3 lsl        x8, x8, #4
00027a28: a8031ef8 stur       x8, [x29, #-0x20]
00027a2c: 48208052 mov        w8, #0x102
00027a30: 0820a072 movk       w8, #0x100, lsl #16
00027a34: a8c31db8 stur       w8, [x29, #-0x24]
00027a38: a1c35db8 ldur       w1, [x29, #-0x24]
00027a3c: e9030091 mov        x9, sp
00027a40: 083080d2 mov        x8, #0x180
00027a44: 280100f9 str        x8, [x9]
00027a48: 400000d0 adrp       x0, #0x31000
00027a4c: 00880d91 add        x0, x0, #0x362
00027a50: 53010094 bl         #0x27f9c ; 
00027a54: a0831db8 stur       w0, [x29, #-0x28]
00027a58: a8835db8 ldur       w8, [x29, #-0x28]
00027a5c: 8800f836 tbz        w8, #0x1f, #0x27a6c
00027a60: 01000014 b          #0x27a64 ; 
00027a64: bf831ff8 stur       xzr, [x29, #-8]
00027a68: 52000014 b          #0x27bb0 ; 
00027a6c: a0835db8 ldur       w0, [x29, #-0x28]
00027a70: e1630091 add        x1, sp, #0x18
00027a74: 56020094 bl         #0x283cc ; 
00027a78: 40040035 cbnz       w0, #0x27b00
00027a7c: 01000014 b          #0x27a80 ; 
00027a80: e83b4079 ldrh       w8, [sp, #0x1c]
00027a84: 080d1412 and        w8, w8, #0xf000
00027a88: 08214071 subs       w8, w8, #8, lsl #12
00027a8c: a1030054 b.ne       #0x27b00
00027a90: 01000014 b          #0x27a94 ; 
00027a94: e82b40b9 ldr        w8, [sp, #0x28]
00027a98: e80f00b9 str        w8, [sp, #0xc]
00027a9c: 50020094 bl         #0x283dc ; 
00027aa0: e80f40b9 ldr        w8, [sp, #0xc]
00027aa4: 0801006b subs       w8, w8, w0
00027aa8: c1020054 b.ne       #0x27b00
00027aac: 01000014 b          #0x27ab0 ; 
00027ab0: e83b4079 ldrh       w8, [sp, #0x1c]
00027ab4: 08150012 and        w8, w8, #0x3f
00027ab8: 48020035 cbnz       w8, #0x27b00
00027abc: 01000014 b          #0x27ac0 ; 
00027ac0: a8735f38 ldurb      w8, [x29, #-9]
00027ac4: e8000036 tbz        w8, #0, #0x27ae0
00027ac8: 01000014 b          #0x27acc ; 
00027acc: a0835db8 ldur       w0, [x29, #-0x28]
00027ad0: a1035ef8 ldur       x1, [x29, #-0x20]
00027ad4: 46020094 bl         #0x283ec ; 
00027ad8: 40010035 cbnz       w0, #0x27b00
00027adc: 01000014 b          #0x27ae0 ; 
00027ae0: a8735f38 ldurb      w8, [x29, #-9]
00027ae4: 68010037 tbnz       w8, #0, #0x27b10
00027ae8: 01000014 b          #0x27aec ; 
00027aec: e83f40f9 ldr        x8, [sp, #0x78]
00027af0: a9035ef8 ldur       x9, [x29, #-0x20]
00027af4: 080109eb subs       x8, x8, x9
00027af8: c0000054 b.eq       #0x27b10
00027afc: 01000014 b          #0x27b00 ; 
00027b00: a0835db8 ldur       w0, [x29, #-0x28]
00027b04: 2a010094 bl         #0x27fac ; 
00027b08: bf831ff8 stur       xzr, [x29, #-8]
00027b0c: 29000014 b          #0x27bb0 ; 
00027b10: a0835db8 ldur       w0, [x29, #-0x28]
00027b14: e9030091 mov        x9, sp
00027b18: 880080d2 mov        x8, #4
00027b1c: 280100f9 str        x8, [x9]
00027b20: 01088052 mov        w1, #0x40
00027b24: 36020094 bl         #0x283fc ; 
00027b28: c000f836 tbz        w0, #0x1f, #0x27b40
00027b2c: 01000014 b          #0x27b30 ; 
00027b30: a0835db8 ldur       w0, [x29, #-0x28]
00027b34: 1e010094 bl         #0x27fac ; 
00027b38: bf831ff8 stur       xzr, [x29, #-8]
00027b3c: 1d000014 b          #0x27bb0 ; 
00027b40: a1035ef8 ldur       x1, [x29, #-0x20]
00027b44: a4835db8 ldur       w4, [x29, #-0x28]
00027b48: 000080d2 mov        x0, #0
00027b4c: 62008052 mov        w2, #3
00027b50: 23008052 mov        w3, #1
00027b54: 050080d2 mov        x5, #0
00027b58: 69010094 bl         #0x280fc ; 
00027b5c: e00b00f9 str        x0, [sp, #0x10]
00027b60: a0835db8 ldur       w0, [x29, #-0x28]
00027b64: 12010094 bl         #0x27fac ; 
00027b68: e80b40f9 ldr        x8, [sp, #0x10]
00027b6c: 080500b1 adds       x8, x8, #1
00027b70: 81000054 b.ne       #0x27b80
00027b74: 01000014 b          #0x27b78 ; 
00027b78: bf831ff8 stur       xzr, [x29, #-8]
00027b7c: 0d000014 b          #0x27bb0 ; 
00027b80: e80b40f9 ldr        x8, [sp, #0x10]
00027b84: 890000f0 adrp       x9, #0x3a000
00027b88: 28b900f9 str        x8, [x9, #0x170]
00027b8c: 01000014 b          #0x27b90 ; 
00027b90: 880000f0 adrp       x8, #0x3a000
00027b94: 08b940f9 ldr        x8, [x8, #0x170]
00027b98: a9835ef8 ldur       x9, [x29, #-0x18]
00027b9c: aa035fb8 ldur       w10, [x29, #-0x10]
00027ba0: 297d0a9b mul        x9, x9, x10
00027ba4: 0801098b add        x8, x8, x9
00027ba8: a8831ff8 stur       x8, [x29, #-8]
00027bac: 01000014 b          #0x27bb0 ; 
00027bb0: a0835ff8 ldur       x0, [x29, #-8]
00027bb4: fd7b4da9 ldp        x29, x30, [sp, #0xd0]
00027bb8: ff830391 add        sp, sp, #0xe0
00027bbc: ff0f5fd6 retab      
