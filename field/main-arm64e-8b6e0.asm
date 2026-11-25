main arm64e VA 0x8b6e0..0x8bb44; fat slice offset 0xfc000
0008b6e0: 7f2303d5 pacibsp    
0008b6e4: ff8302d1 sub        sp, sp, #0xa0
0008b6e8: eb2b036d stp        d11, d10, [sp, #0x30]
0008b6ec: e923046d stp        d9, d8, [sp, #0x40]
0008b6f0: fa6705a9 stp        x26, x25, [sp, #0x50]
0008b6f4: f85f06a9 stp        x24, x23, [sp, #0x60]
0008b6f8: f65707a9 stp        x22, x21, [sp, #0x70]
0008b6fc: f44f08a9 stp        x20, x19, [sp, #0x80]
0008b700: fd7b09a9 stp        x29, x30, [sp, #0x90]
0008b704: fd430291 add        x29, sp, #0x90
0008b708: f40300aa mov        x20, x0
0008b70c: 00000191 add        x0, x0, #0x40
0008b710: dd630094 bl         #0xa4684 ; 
0008b714: f30300aa mov        x19, x0
0008b718: 001e00b4 cbz        x0, #0x8bad8
0008b71c: 080300d0 adrp       x8, #0xed000
0008b720: 083580b9 ldrsw      x8, [x8, #0x34]
0008b724: 686a6838 ldrb       w8, [x19, x8]
0008b728: 881d0037 tbnz       w8, #0, #0x8bad8
0008b72c: 080300d0 adrp       x8, #0xed000
0008b730: 086580b9 ldrsw      x8, [x8, #0x64]
0008b734: 7f6a2838 strb       wzr, [x19, x8]
0008b738: 882640f9 ldr        x8, [x20, #0x48]
0008b73c: 090300d0 adrp       x9, #0xed000
0008b740: 294980b9 ldrsw      x9, [x9, #0x48]
0008b744: 696a69f8 ldr        x9, [x19, x9]
0008b748: 1f0109eb cmp        x8, x9
0008b74c: 211c0054 b.ne       #0x8bad0
0008b750: 881240f9 ldr        x8, [x20, #0x20]
0008b754: 080540f9 ldr        x8, [x8, #8]
0008b758: 001540f9 ldr        x0, [x8, #0x28]
0008b75c: 01770094 bl         #0xa9360 ; 
0008b760: 801b00b4 cbz        x0, #0x8bad0
0008b764: 881240f9 ldr        x8, [x20, #0x20]
0008b768: 080540f9 ldr        x8, [x8, #8]
0008b76c: 001540f9 ldr        x0, [x8, #0x28]
0008b770: fc760094 bl         #0xa9360 ; 
0008b774: 1f0050f1 cmp        x0, #0x400, lsl #12
0008b778: c81a0054 b.hi       #0x8bad0
0008b77c: 882645a9 ldp        x8, x9, [x20, #0x50]
0008b780: 08410091 add        x8, x8, #0x10
0008b784: 08c1bff8 ldapr      x8, [x8]
0008b788: 1f0109eb cmp        x8, x9
0008b78c: 211a0054 b.ne       #0x8bad0
0008b790: 51630094 bl         #0xa44d4 ; 
0008b794: f50300aa mov        x21, x0
0008b798: 882a40f9 ldr        x8, [x20, #0x50]
0008b79c: 09210091 add        x9, x8, #8
0008b7a0: 080540f9 ldr        x8, [x8, #8]
0008b7a4: 08050091 add        x8, x8, #1
0008b7a8: 170140b2 orr        x23, x8, #1
0008b7ac: 37fd9fc8 stlr       x23, [x9]
0008b7b0: 982a40f9 ldr        x24, [x20, #0x50]
0008b7b4: 881240f9 ldr        x8, [x20, #0x20]
0008b7b8: 080540f9 ldr        x8, [x8, #8]
0008b7bc: 001540f9 ldr        x0, [x8, #0x28]
0008b7c0: d5630094 bl         #0xa4714 ; 
0008b7c4: 4f690094 bl         #0xa5d00 ; 
0008b7c8: f60300aa mov        x22, x0
0008b7cc: 881240f9 ldr        x8, [x20, #0x20]
0008b7d0: 080540f9 ldr        x8, [x8, #8]
0008b7d4: 001540f9 ldr        x0, [x8, #0x28]
0008b7d8: e2760094 bl         #0xa9360 ; 
0008b7dc: e20300aa mov        x2, x0
0008b7e0: 00030191 add        x0, x24, #0x40
0008b7e4: e10316aa mov        x1, x22
0008b7e8: 43630094 bl         #0xa44f4 ; 
0008b7ec: 881640f9 ldr        x8, [x20, #0x28]
0008b7f0: 080540f9 ldr        x8, [x8, #8]
0008b7f4: 081940b9 ldr        w8, [x8, #0x18]
0008b7f8: 892a40f9 ldr        x9, [x20, #0x50]
0008b7fc: 282900b9 str        w8, [x9, #0x28]
0008b800: 881a40f9 ldr        x8, [x20, #0x30]
0008b804: 080540f9 ldr        x8, [x8, #8]
0008b808: 081940b9 ldr        w8, [x8, #0x18]
0008b80c: 282d00b9 str        w8, [x9, #0x2c]
0008b810: 801ac03d ldr        q0, [x20, #0x60]
0008b814: 0068610e fcvtn      v0.2s, v0.2d
0008b818: 201900fd str        d0, [x9, #0x30]
0008b81c: 350d00f9 str        x21, [x9, #0x18]
0008b820: 28210091 add        x8, x9, #8
0008b824: e9060091 add        x9, x23, #1
0008b828: 09fd9fc8 stlr       x9, [x8]
0008b82c: 080300d0 adrp       x8, #0xed000
0008b830: 083980b9 ldrsw      x8, [x8, #0x38]
0008b834: 696a68f8 ldr        x9, [x19, x8]
0008b838: 490000b5 cbnz       x9, #0x8b840
0008b83c: 756a28f8 str        x21, [x19, x8]
0008b840: 190300b0 adrp       x25, #0xec000
0008b844: 206342f9 ldr        x0, [x25, #0x4c0]
0008b848: 66680094 bl         #0xa59e0 ; 
0008b84c: 206342f9 ldr        x0, [x25, #0x4c0]
0008b850: 22008052 mov        w2, #1
0008b854: 4b840094 bl         #0xac980 ; 
0008b858: 88024239 ldrb       w8, [x20, #0x80]
0008b85c: 680a0036 tbz        w8, #0, #0x8b9a8
0008b860: 480200b0 adrp       x8, #0xd4000
0008b864: 088544f9 ldr        x8, [x8, #0x908]
0008b868: 0825406d ldp        d8, d9, [x8]
0008b86c: 8a2e466d ldp        d10, d11, [x20, #0x60]
0008b870: 080300d0 adrp       x8, #0xed000
0008b874: 080580b9 ldrsw      x8, [x8, #4]
0008b878: 606a68f8 ldr        x0, [x19, x8]
0008b87c: 0041601e fmov       d0, d8
0008b880: 2141601e fmov       d1, d9
0008b884: 4241601e fmov       d2, d10
0008b888: 6341601e fmov       d3, d11
0008b88c: 75850094 bl         #0xace60 ; 
0008b890: 080300d0 adrp       x8, #0xed000
0008b894: 082180b9 ldrsw      x8, [x8, #0x20]
0008b898: 606a68f8 ldr        x0, [x19, x8]
0008b89c: 0041601e fmov       d0, d8
0008b8a0: 2141601e fmov       d1, d9
0008b8a4: 4241601e fmov       d2, d10
0008b8a8: 6341601e fmov       d3, d11
0008b8ac: 6d850094 bl         #0xace60 ; 
0008b8b0: 080300d0 adrp       x8, #0xed000
0008b8b4: 170980b9 ldrsw      x23, [x8, #8]
0008b8b8: 606a77f8 ldr        x0, [x19, x23]
0008b8bc: 0041601e fmov       d0, d8
0008b8c0: 2141601e fmov       d1, d9
0008b8c4: 4241601e fmov       d2, d10
0008b8c8: 6341601e fmov       d3, d11
0008b8cc: 65850094 bl         #0xace60 ; 
0008b8d0: 080300d0 adrp       x8, #0xed000
0008b8d4: 160d80b9 ldrsw      x22, [x8, #0xc]
0008b8d8: 606a76f8 ldr        x0, [x19, x22]
0008b8dc: 0041601e fmov       d0, d8
0008b8e0: 2141601e fmov       d1, d9
0008b8e4: 4241601e fmov       d2, d10
0008b8e8: 6341601e fmov       d3, d11
0008b8ec: 5d850094 bl         #0xace60 ; 
0008b8f0: 080300d0 adrp       x8, #0xed000
0008b8f4: 081180b9 ldrsw      x8, [x8, #0x10]
0008b8f8: 606a68f8 ldr        x0, [x19, x8]
0008b8fc: 0041601e fmov       d0, d8
0008b900: 2141601e fmov       d1, d9
0008b904: 4241601e fmov       d2, d10
0008b908: 6341601e fmov       d3, d11
0008b90c: 55850094 bl         #0xace60 ; 
0008b910: 080300d0 adrp       x8, #0xed000
0008b914: 1a1d80b9 ldrsw      x26, [x8, #0x1c]
0008b918: 606a7af8 ldr        x0, [x19, x26]
0008b91c: 0041601e fmov       d0, d8
0008b920: 2141601e fmov       d1, d9
0008b924: 4241601e fmov       d2, d10
0008b928: 6341601e fmov       d3, d11
0008b92c: 4d850094 bl         #0xace60 ; 
0008b930: 080300d0 adrp       x8, #0xed000
0008b934: 182580b9 ldrsw      x24, [x8, #0x24]
0008b938: 606a78f8 ldr        x0, [x19, x24]
0008b93c: 0041601e fmov       d0, d8
0008b940: 2141601e fmov       d1, d9
0008b944: 4241601e fmov       d2, d10
0008b948: 6341601e fmov       d3, d11
0008b94c: 45850094 bl         #0xace60 ; 
0008b950: 080300d0 adrp       x8, #0xed000
0008b954: 082980b9 ldrsw      x8, [x8, #0x28]
0008b958: 606a68f8 ldr        x0, [x19, x8]
0008b95c: 0041601e fmov       d0, d8
0008b960: 2141601e fmov       d1, d9
0008b964: 4241601e fmov       d2, d10
0008b968: 6341601e fmov       d3, d11
0008b96c: 3d850094 bl         #0xace60 ; 
0008b970: 823a40f9 ldr        x2, [x20, #0x70]
0008b974: 606a77f8 ldr        x0, [x19, x23]
0008b978: 5a8a0094 bl         #0xae2e0 ; 
0008b97c: 881e40f9 ldr        x8, [x20, #0x38]
0008b980: 080540f9 ldr        x8, [x8, #8]
0008b984: 020d40f9 ldr        x2, [x8, #0x18]
0008b988: 606a78f8 ldr        x0, [x19, x24]
0008b98c: d5820094 bl         #0xac4e0 ; 
0008b990: 881e40f9 ldr        x8, [x20, #0x38]
0008b994: 080540f9 ldr        x8, [x8, #8]
0008b998: 080d40f9 ldr        x8, [x8, #0x18]
0008b99c: c80000b4 cbz        x8, #0x8b9b4
0008b9a0: 020080d2 mov        x2, #0
0008b9a4: 05000014 b          #0x8b9b8 ; 
0008b9a8: 080300d0 adrp       x8, #0xed000
0008b9ac: 1a1d80b9 ldrsw      x26, [x8, #0x1c]
0008b9b0: 21000014 b          #0x8ba34 ; 
0008b9b4: 823a40f9 ldr        x2, [x20, #0x70]
0008b9b8: 606a78f8 ldr        x0, [x19, x24]
0008b9bc: 498a0094 bl         #0xae2e0 ; 
0008b9c0: 606a76f8 ldr        x0, [x19, x22]
0008b9c4: ff740094 bl         #0xa8dc0 ; 
0008b9c8: 60030037 tbnz       w0, #0, #0x8ba34
0008b9cc: 606a76f8 ldr        x0, [x19, x22]
0008b9d0: 04760094 bl         #0xa91e0 ; 
0008b9d4: fd031daa mov        x29, x29
0008b9d8: 57630094 bl         #0xa4734 ; 
0008b9dc: f60300aa mov        x22, x0
0008b9e0: 080300b0 adrp       x8, #0xec000
0008b9e4: 005944f9 ldr        x0, [x8, #0x8b0]
0008b9e8: 26640094 bl         #0xa4a80 ; 
0008b9ec: fd031daa mov        x29, x29
0008b9f0: 51630094 bl         #0xa4734 ; 
0008b9f4: f70300aa mov        x23, x0
0008b9f8: 2a640094 bl         #0xa4aa0 ; 
0008b9fc: fd031daa mov        x29, x29
0008ba00: 4d630094 bl         #0xa4734 ; 
0008ba04: f80300aa mov        x24, x0
0008ba08: 830200d0 adrp       x3, #0xdd000
0008ba0c: 63400191 add        x3, x3, #0x50
0008ba10: e00316aa mov        x0, x22
0008ba14: e20318aa mov        x2, x24
0008ba18: b28f0094 bl         #0xaf8e0 ; 
0008ba1c: e00318aa mov        x0, x24
0008ba20: 35630094 bl         #0xa46f4 ; 
0008ba24: e00317aa mov        x0, x23
0008ba28: 33630094 bl         #0xa46f4 ; 
0008ba2c: e00316aa mov        x0, x22
0008ba30: 31630094 bl         #0xa46f4 ; 
0008ba34: 606a7af8 ldr        x0, [x19, x26]
0008ba38: 9a760094 bl         #0xa94a0 ; 
0008ba3c: 206342f9 ldr        x0, [x25, #0x4c0]
0008ba40: f8690094 bl         #0xa6220 ; 
0008ba44: 080300d0 adrp       x8, #0xed000
0008ba48: 081980b9 ldrsw      x8, [x8, #0x18]
0008ba4c: 686a68f8 ldr        x8, [x19, x8]
0008ba50: 090300d0 adrp       x9, #0xed000
0008ba54: 366980b9 ldrsw      x22, [x9, #0x68]
0008ba58: 0801f8b7 tbnz       x8, #0x3f, #0x8ba78
0008ba5c: 686a76f8 ldr        x8, [x19, x22]
0008ba60: 1f2500f1 cmp        x8, #9
0008ba64: a8000054 b.hi       #0x8ba78
0008ba68: 820200d0 adrp       x2, #0xdd000
0008ba6c: 42c00591 add        x2, x2, #0x170
0008ba70: e00313aa mov        x0, x19
0008ba74: 8b770094 bl         #0xa98a0 ; 
0008ba78: 686a76f8 ldr        x8, [x19, x22]
0008ba7c: 09050091 add        x9, x8, #1
0008ba80: 696a36f8 str        x9, [x19, x22]
0008ba84: 1f0900f1 cmp        x8, #2
0008ba88: 48020054 b.hi       #0x8bad0
0008ba8c: 88a642a9 ldp        x8, x9, [x20, #0x28]
0008ba90: 080540f9 ldr        x8, [x8, #8]
0008ba94: 290540f9 ldr        x9, [x9, #8]
0008ba98: 803e40fd ldr        d0, [x20, #0x78]
0008ba9c: 8a0100d0 adrp       x10, #0xbd000
0008baa0: 413144fd ldr        d1, [x10, #0x860]
0008baa4: 0008611e fmul       d0, d0, d1
0008baa8: 8a024239 ldrb       w10, [x20, #0x80]
0008baac: 081940b9 ldr        w8, [x8, #0x18]
0008bab0: 291940b9 ldr        w9, [x9, #0x18]
0008bab4: ea1300f9 str        x10, [sp, #0x20]
0008bab8: e00f00fd str        d0, [sp, #0x18]
0008babc: e8a700a9 stp        x8, x9, [sp, #8]
0008bac0: f50300f9 str        x21, [sp]
0008bac4: 800200d0 adrp       x0, #0xdd000
0008bac8: 00400691 add        x0, x0, #0x190
0008bacc: 3b5a0094 bl         #0xa23b8 ; _LGLog
0008bad0: e00313aa mov        x0, x19
0008bad4: fb7c0094 bl         #0xaaec0 ; 
0008bad8: 881e40f9 ldr        x8, [x20, #0x38]
0008badc: 080540f9 ldr        x8, [x8, #8]
0008bae0: 000d40f9 ldr        x0, [x8, #0x18]
0008bae4: 400000b4 cbz        x0, #0x8baec
0008bae8: 9b600094 bl         #0xa3d54 ; 
0008baec: 803a40f9 ldr        x0, [x20, #0x70]
0008baf0: cd600094 bl         #0xa3e24 ; 
0008baf4: e00313aa mov        x0, x19
0008baf8: fd7b49a9 ldp        x29, x30, [sp, #0x90]
0008bafc: f44f48a9 ldp        x20, x19, [sp, #0x80]
0008bb00: f65747a9 ldp        x22, x21, [sp, #0x70]
0008bb04: f85f46a9 ldp        x24, x23, [sp, #0x60]
0008bb08: fa6745a9 ldp        x26, x25, [sp, #0x50]
0008bb0c: e923446d ldp        d9, d8, [sp, #0x40]
0008bb10: eb2b436d ldp        d11, d10, [sp, #0x30]
0008bb14: ff830291 add        sp, sp, #0xa0
0008bb18: ff2303d5 autibsp    
0008bb1c: d0071eca eor        x16, x30, x30, lsl #1
0008bb20: 5000f0b6 tbz        x16, #0x3e, #0x8bb28
0008bb24: 208e38d4 brk        #0xc471
0008bb28: f3620014 b          #0xa46f4 ; 
0008bb2c: 3f040071 cmp        w1, #1
0008bb30: 81000054 b.ne       #0x8bb40
0008bb34: b0620094 bl         #0xa45f4 ; 
0008bb38: bb620094 bl         #0xa4624 ; 
0008bb3c: beffff17 b          #0x8ba34 ; 
0008bb40: 95610094 bl         #0xa4194 ; 
