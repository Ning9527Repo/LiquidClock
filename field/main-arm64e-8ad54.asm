main arm64e VA 0x8ad54..0x8afa4; fat slice offset 0xfc000
0008ad54: 080300f0 adrp       x8, #0xed000
0008ad58: 086580b9 ldrsw      x8, [x8, #0x64]
0008ad5c: 09686838 ldrb       w9, [x0, x8]
0008ad60: 09120037 tbnz       w9, #0, #0x8afa0
0008ad64: 7f2303d5 pacibsp    
0008ad68: ffc303d1 sub        sp, sp, #0xf0
0008ad6c: e923096d stp        d9, d8, [sp, #0x90]
0008ad70: fa670aa9 stp        x26, x25, [sp, #0xa0]
0008ad74: f85f0ba9 stp        x24, x23, [sp, #0xb0]
0008ad78: f6570ca9 stp        x22, x21, [sp, #0xc0]
0008ad7c: f44f0da9 stp        x20, x19, [sp, #0xd0]
0008ad80: fd7b0ea9 stp        x29, x30, [sp, #0xe0]
0008ad84: fd830391 add        x29, sp, #0xe0
0008ad88: f30300aa mov        x19, x0
0008ad8c: 090300f0 adrp       x9, #0xed000
0008ad90: 293d80b9 ldrsw      x9, [x9, #0x3c]
0008ad94: 176869f8 ldr        x23, [x0, x9]
0008ad98: 570f00b4 cbz        x23, #0x8af80
0008ad9c: 0a0300f0 adrp       x10, #0xed000
0008ada0: 4a3580b9 ldrsw      x10, [x10, #0x34]
0008ada4: 6a6a6a38 ldrb       w10, [x19, x10]
0008ada8: ca0e0037 tbnz       w10, #0, #0x8af80
0008adac: 2a008052 mov        w10, #1
0008adb0: 6a6a2838 strb       w10, [x19, x8]
0008adb4: 7f6a29f8 str        xzr, [x19, x9]
0008adb8: 080300f0 adrp       x8, #0xed000
0008adbc: 084180b9 ldrsw      x8, [x8, #0x40]
0008adc0: 606ae83c ldr        q0, [x19, x8]
0008adc4: a0039a3c stur       q0, [x29, #-0x60]
0008adc8: 080300f0 adrp       x8, #0xed000
0008adcc: 084580b9 ldrsw      x8, [x8, #0x44]
0008add0: 796a6838 ldrb       w25, [x19, x8]
0008add4: 080300f0 adrp       x8, #0xed000
0008add8: 084980b9 ldrsw      x8, [x8, #0x48]
0008addc: 786a68f8 ldr        x24, [x19, x8]
0008ade0: e00313aa mov        x0, x19
0008ade4: d79b0094 bl         #0xb1d40 ; 
0008ade8: fd031daa mov        x29, x29
0008adec: 52660094 bl         #0xa4734 ; 
0008adf0: f40300aa mov        x20, x0
0008adf4: 8b820094 bl         #0xab820 ; 
0008adf8: fd031daa mov        x29, x29
0008adfc: 4e660094 bl         #0xa4734 ; 
0008ae00: f50300aa mov        x21, x0
0008ae04: 7f820094 bl         #0xab800 ; 
0008ae08: 0820601e fcmp       d0, #0.0
0008ae0c: 81010054 b.ne       #0x8ae3c
0008ae10: 080300d0 adrp       x8, #0xec000
0008ae14: 008d43f9 ldr        x0, [x8, #0x718]
0008ae18: e27a0094 bl         #0xa99a0 ; 
0008ae1c: fd031daa mov        x29, x29
0008ae20: 45660094 bl         #0xa4734 ; 
0008ae24: f60300aa mov        x22, x0
0008ae28: 76820094 bl         #0xab800 ; 
0008ae2c: 0840601e fmov       d8, d0
0008ae30: e00316aa mov        x0, x22
0008ae34: 30660094 bl         #0xa46f4 ; 
0008ae38: 02000014 b          #0x8ae40 ; 
0008ae3c: 0840601e fmov       d8, d0
0008ae40: e00315aa mov        x0, x21
0008ae44: 2c660094 bl         #0xa46f4 ; 
0008ae48: e00314aa mov        x0, x20
0008ae4c: 2a660094 bl         #0xa46f4 ; 
0008ae50: 800200f0 adrp       x0, #0xdd000
0008ae54: 00c00091 add        x0, x0, #0x30
0008ae58: ca380094 bl         #0x99180 ; _LGGlassPreferenceValue
0008ae5c: fd031daa mov        x29, x29
0008ae60: 35660094 bl         #0xa4734 ; 
0008ae64: f40300aa mov        x20, x0
0008ae68: e80200f0 adrp       x8, #0xe9000
0008ae6c: 01e140f9 ldr        x1, [x8, #0x1c0]
0008ae70: 1d660094 bl         #0xa46e4 ; 
0008ae74: 0950641e fmov       d9, #9.00000000
0008ae78: 0050641e fmov       d0, #9.00000000
0008ae7c: 60000036 tbz        w0, #0, #0x8ae88
0008ae80: e00314aa mov        x0, x20
0008ae84: d7700094 bl         #0xa71e0 ; 
0008ae88: 0800669e fmov       x8, d0
0008ae8c: 08f94092 and        x8, x8, #0x7fffffffffffffff
0008ae90: 09feefd2 mov        x9, #0x7ff0000000000000
0008ae94: 1f0109eb cmp        x8, x9
0008ae98: 00bc691e fcsel      d0, d0, d9, lt
0008ae9c: 01e4002f movi       d1, #0000000000000000
0008aea0: 0068611e fmaxnm     d0, d0, d1
0008aea4: 280be8d2 mov        x8, #0x4059000000000000
0008aea8: 0101679e fmov       d1, x8
0008aeac: 0020611e fcmp       d0, d1
0008aeb0: 29cc601e fcsel      d9, d1, d0, gt
0008aeb4: 080300f0 adrp       x8, #0xed000
0008aeb8: 082d80b9 ldrsw      x8, [x8, #0x2c]
0008aebc: 756a68f8 ldr        x21, [x19, x8]
0008aec0: 080300f0 adrp       x8, #0xed000
0008aec4: 083180b9 ldrsw      x8, [x8, #0x30]
0008aec8: 766a68f8 ldr        x22, [x19, x8]
0008aecc: a0a301d1 sub        x0, x29, #0x68
0008aed0: e10313aa mov        x1, x19
0008aed4: e8650094 bl         #0xa4674 ; 
0008aed8: d3f3ff97 bl         #0x87e24 ; 
0008aedc: fd031daa mov        x29, x29
0008aee0: 15660094 bl         #0xa4734 ; 
0008aee4: f30300aa mov        x19, x0
0008aee8: fa230091 add        x26, sp, #8
0008aeec: 500200d0 adrp       x16, #0xd4000
0008aef0: 109a44f9 ldr        x16, [x16, #0x930]
0008aef4: f1031aaa mov        x17, x26
0008aef8: 315cedf2 movk       x17, #0x6ae1, lsl #48
0008aefc: 300ac1da pacda      x16, x17
0008af00: f00700f9 str        x16, [sp, #8]
0008af04: 880100f0 adrp       x8, #0xbd000
0008af08: 003541fd ldr        d0, [x8, #0x268]
0008af0c: e00b00fd str        d0, [sp, #0x10]
0008af10: 48430091 add        x8, x26, #0x10
0008af14: 10000090 adrp       x16, #0x8a000
0008af18: 10923e91 add        x16, x16, #0xfa4
0008af1c: 1001c1da pacia      x16, x8
0008af20: 68020090 adrp       x8, #0xd6000
0008af24: 08210591 add        x8, x8, #0x148
0008af28: f0a301a9 stp        x16, x8, [sp, #0x18]
0008af2c: f9c30139 strb       w25, [sp, #0x70]
0008af30: f71b00f9 str        x23, [sp, #0x30]
0008af34: a003da3c ldur       q0, [x29, #-0x60]
0008af38: e083833c stur       q0, [sp, #0x38]
0008af3c: e9a3046d stp        d9, d8, [sp, #0x48]
0008af40: 40830091 add        x0, x26, #0x20
0008af44: a1a301d1 sub        x1, x29, #0x68
0008af48: af650094 bl         #0xa4604 ; 
0008af4c: f8d705a9 stp        x24, x21, [sp, #0x58]
0008af50: f63700f9 str        x22, [sp, #0x68]
0008af54: e1230091 add        x1, sp, #8
0008af58: e00313aa mov        x0, x19
0008af5c: e6640094 bl         #0xa42f4 ; 
0008af60: e00313aa mov        x0, x19
0008af64: e4650094 bl         #0xa46f4 ; 
0008af68: 40830091 add        x0, x26, #0x20
0008af6c: aa650094 bl         #0xa4614 ; 
0008af70: a0a301d1 sub        x0, x29, #0x68
0008af74: a8650094 bl         #0xa4614 ; 
0008af78: e00314aa mov        x0, x20
0008af7c: de650094 bl         #0xa46f4 ; 
0008af80: fd7b4ea9 ldp        x29, x30, [sp, #0xe0]
0008af84: f44f4da9 ldp        x20, x19, [sp, #0xd0]
0008af88: f6574ca9 ldp        x22, x21, [sp, #0xc0]
0008af8c: f85f4ba9 ldp        x24, x23, [sp, #0xb0]
0008af90: fa674aa9 ldp        x26, x25, [sp, #0xa0]
0008af94: e923496d ldp        d9, d8, [sp, #0x90]
0008af98: ffc30391 add        sp, sp, #0xf0
0008af9c: ff2303d5 autibsp    
0008afa0: c0035fd6 ret        
