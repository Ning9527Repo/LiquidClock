main arm64e VA 0x87580..0x87e04; fat slice offset 0xfc000
00087580: 7f2303d5 pacibsp     ; 
00087584: ff0305d1 sub        sp, sp, #0x140 ; 
00087588: fc6f0ea9 stp        x28, x27, [sp, #0xe0] ; 
0008758c: fa670fa9 stp        x26, x25, [sp, #0xf0] ; 
00087590: f85f10a9 stp        x24, x23, [sp, #0x100] ; 
00087594: f65711a9 stp        x22, x21, [sp, #0x110] ; 
00087598: f44f12a9 stp        x20, x19, [sp, #0x120] ; 
0008759c: fd7b13a9 stp        x29, x30, [sp, #0x130] ; 
000875a0: fdc30491 add        x29, sp, #0x130 ; 
000875a4: 280300b0 adrp       x8, #0xec000 ; 
000875a8: 08f544f9 ldr        x8, [x8, #0x9e8] ; 
000875ac: e0a303a9 stp        x0, x8, [sp, #0x38] ; 
000875b0: 080300d0 adrp       x8, #0xe9000 ; 
000875b4: 017943f9 ldr        x1, [x8, #0x6f0] ; 
000875b8: e0e30091 add        x0, sp, #0x38 ; 
000875bc: 3a740094 bl         #0xa46a4 ; _objc_msgSendSuper2
000875c0: f30300aa mov        x19, x0 ; 
000875c4: 803d00b4 cbz        x0, #0x87d74 ; 
000875c8: e00313aa mov        x0, x19 ; 
000875cc: 02008052 mov        w2, #0 ; 
000875d0: aca00094 bl         #0xaf880 ; 
000875d4: 3a0300b0 adrp       x26, #0xec000 ; 
000875d8: 407342f9 ldr        x0, [x26, #0x4e0] ; 
000875dc: 597a0094 bl         #0xa5f40 ; 
000875e0: fd031daa mov        x29, x29 ; 
000875e4: 54740094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000875e8: f40300aa mov        x20, x0 ; 
000875ec: e00313aa mov        x0, x19 ; 
000875f0: e20314aa mov        x2, x20 ; 
000875f4: 33920094 bl         #0xabec0 ; 
000875f8: e00314aa mov        x0, x20 ; 
000875fc: 3e740094 bl         #0xa46f4 ; _objc_release
00087600: e00313aa mov        x0, x19 ; 
00087604: 02008052 mov        w2, #0 ; 
00087608: 569a0094 bl         #0xadf60 ; 
0008760c: 3b0300b0 adrp       x27, #0xec000 ; 
00087610: 60b342f9 ldr        x0, [x27, #0x560] ; 
00087614: e0730094 bl         #0xa4594 ; _objc_alloc
00087618: f40300aa mov        x20, x0 ; 
0008761c: e00313aa mov        x0, x19 ; 
00087620: 68790094 bl         #0xa5bc0 ; 
00087624: e00314aa mov        x0, x20 ; 
00087628: 1e840094 bl         #0xa86a0 ; 
0008762c: 280300d0 adrp       x8, #0xed000 ; 
00087630: 170580b9 ldrsw      x23, [x8, #4] ; 
00087634: 686a77f8 ldr        x8, [x19, x23] ; 
00087638: 606a37f8 str        x0, [x19, x23] ; 
0008763c: e00308aa mov        x0, x8 ; 
00087640: 2d740094 bl         #0xa46f4 ; _objc_release
00087644: 3c0300b0 adrp       x28, #0xec000 ; 
00087648: 806b42f9 ldr        x0, [x28, #0x4d0] ; 
0008764c: e5860094 bl         #0xa91e0 ; 
00087650: fd031daa mov        x29, x29 ; 
00087654: 38740094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087658: 280300d0 adrp       x8, #0xed000 ; 
0008765c: 140980b9 ldrsw      x20, [x8, #8] ; 
00087660: 686a74f8 ldr        x8, [x19, x20] ; 
00087664: 606a34f8 str        x0, [x19, x20] ; 
00087668: e00308aa mov        x0, x8 ; 
0008766c: 22740094 bl         #0xa46f4 ; _objc_release
00087670: 746a74f8 ldr        x20, [x19, x20] ; 
00087674: 606a77f8 ldr        x0, [x19, x23] ; 
00087678: da860094 bl         #0xa91e0 ; 
0008767c: fd031daa mov        x29, x29 ; 
00087680: 2d740094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087684: f50300aa mov        x21, x0 ; 
00087688: e20314aa mov        x2, x20 ; 
0008768c: c5980094 bl         #0xad9a0 ; 
00087690: e00315aa mov        x0, x21 ; 
00087694: 18740094 bl         #0xa46f4 ; _objc_release
00087698: 626a77f8 ldr        x2, [x19, x23] ; 
0008769c: e00313aa mov        x0, x19 ; 
000876a0: 38760094 bl         #0xa4f80 ; 
000876a4: 280300b0 adrp       x8, #0xec000 ; 
000876a8: 00dd42f9 ldr        x0, [x8, #0x5b8] ; 
000876ac: ba730094 bl         #0xa4594 ; _objc_alloc
000876b0: f40300aa mov        x20, x0 ; 
000876b4: e00313aa mov        x0, x19 ; 
000876b8: 42790094 bl         #0xa5bc0 ; 
000876bc: 0410631e fmov       d4, #6.00000000 ; 
000876c0: e00314aa mov        x0, x20 ; 
000876c4: ff830094 bl         #0xa86c0 ; 
000876c8: 280300d0 adrp       x8, #0xed000 ; 
000876cc: 150d80b9 ldrsw      x21, [x8, #0xc] ; 
000876d0: 686a75f8 ldr        x8, [x19, x21] ; 
000876d4: 606a35f8 str        x0, [x19, x21] ; 
000876d8: e00308aa mov        x0, x8 ; 
000876dc: 06740094 bl         #0xa46f4 ; _objc_release
000876e0: 606a75f8 ldr        x0, [x19, x21] ; 
000876e4: 22008052 mov        w2, #1 ; 
000876e8: c6950094 bl         #0xace00 ; 
000876ec: 606a75f8 ldr        x0, [x19, x21] ; 
000876f0: bc860094 bl         #0xa91e0 ; 
000876f4: fd031daa mov        x29, x29 ; 
000876f8: 0f740094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000876fc: f40300aa mov        x20, x0 ; 
00087700: c2020090 adrp       x2, #0xdf000 ; 
00087704: 42001191 add        x2, x2, #0x440 ; 
00087708: 830200b0 adrp       x3, #0xd8000 ; 
0008770c: 63403f91 add        x3, x3, #0xfd0 ; 
00087710: 74a00094 bl         #0xaf8e0 ; 
00087714: e00314aa mov        x0, x20 ; 
00087718: f7730094 bl         #0xa46f4 ; _objc_release
0008771c: 606a77f8 ldr        x0, [x19, x23] ; 
00087720: 626a75f8 ldr        x2, [x19, x21] ; 
00087724: 17760094 bl         #0xa4f80 ; 
00087728: 280300b0 adrp       x8, #0xec000 ; 
0008772c: 00f542f9 ldr        x0, [x8, #0x5e8] ; 
00087730: 99730094 bl         #0xa4594 ; _objc_alloc
00087734: f40300aa mov        x20, x0 ; 
00087738: e00313aa mov        x0, x19 ; 
0008773c: 21790094 bl         #0xa5bc0 ; 
00087740: c8010090 adrp       x8, #0xbf000 ; 
00087744: 047540fd ldr        d4, [x8, #0xe8] ; 
00087748: a80100d0 adrp       x8, #0xbd000 ; 
0008774c: 051542fd ldr        d5, [x8, #0x428] ; 
00087750: e00314aa mov        x0, x20 ; 
00087754: f3830094 bl         #0xa8720 ; 
00087758: 280300d0 adrp       x8, #0xed000 ; 
0008775c: 151180b9 ldrsw      x21, [x8, #0x10] ; 
00087760: 686a75f8 ldr        x8, [x19, x21] ; 
00087764: 606a35f8 str        x0, [x19, x21] ; 
00087768: e00308aa mov        x0, x8 ; 
0008776c: e2730094 bl         #0xa46f4 ; _objc_release
00087770: 606a75f8 ldr        x0, [x19, x21] ; 
00087774: a80100d0 adrp       x8, #0xbd000 ; 
00087778: 00a141fd ldr        d0, [x8, #0x340] ; 
0008777c: 59920094 bl         #0xac0e0 ; 
00087780: 606a75f8 ldr        x0, [x19, x21] ; 
00087784: 97860094 bl         #0xa91e0 ; 
00087788: fd031daa mov        x29, x29 ; 
0008778c: ea730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087790: f40300aa mov        x20, x0 ; 
00087794: 00e4002f movi       d0, #0000000000000000 ; 
00087798: b2930094 bl         #0xac660 ; 
0008779c: e00314aa mov        x0, x20 ; 
000877a0: d5730094 bl         #0xa46f4 ; _objc_release
000877a4: 606a77f8 ldr        x0, [x19, x23] ; 
000877a8: 626a75f8 ldr        x2, [x19, x21] ; 
000877ac: f5750094 bl         #0xa4f80 ; 
000877b0: 360300b0 adrp       x22, #0xec000 ; 
000877b4: c04643f9 ldr        x0, [x22, #0x688] ; 
000877b8: 5a880094 bl         #0xa9920 ; 
000877bc: fd031daa mov        x29, x29 ; 
000877c0: dd730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000877c4: f40300aa mov        x20, x0 ; 
000877c8: 36790094 bl         #0xa5ca0 ; 
000877cc: fd031daa mov        x29, x29 ; 
000877d0: d9730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000877d4: f50300aa mov        x21, x0 ; 
000877d8: 820200d0 adrp       x2, #0xd9000 ; 
000877dc: 42c00291 add        x2, x2, #0xb0 ; 
000877e0: 60850094 bl         #0xa8d60 ; 
000877e4: 08000052 eor        w8, w0, #1 ; 
000877e8: 290300d0 adrp       x9, #0xed000 ; 
000877ec: 381580b9 ldrsw      x24, [x9, #0x14] ; 
000877f0: 686a3838 strb       w8, [x19, x24] ; 
000877f4: e00315aa mov        x0, x21 ; 
000877f8: bf730094 bl         #0xa46f4 ; _objc_release
000877fc: e00314aa mov        x0, x20 ; 
00087800: bd730094 bl         #0xa46f4 ; _objc_release
00087804: 280300d0 adrp       x8, #0xed000 ; 
00087808: 191980b9 ldrsw      x25, [x8, #0x18] ; 
0008780c: 08008092 mov        x8, #-1 ; 
00087810: 686a39f8 str        x8, [x19, x25] ; 
00087814: c04643f9 ldr        x0, [x22, #0x688] ; 
00087818: 42880094 bl         #0xa9920 ; 
0008781c: fd031daa mov        x29, x29 ; 
00087820: c5730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087824: f40300aa mov        x20, x0 ; 
00087828: 1e790094 bl         #0xa5ca0 ; 
0008782c: fd031daa mov        x29, x29 ; 
00087830: c1730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087834: f50300aa mov        x21, x0 ; 
00087838: a20200b0 adrp       x2, #0xdc000 ; 
0008783c: 42400f91 add        x2, x2, #0x3d0 ; 
00087840: 48850094 bl         #0xa8d60 ; 
00087844: f60300aa mov        x22, x0 ; 
00087848: e00315aa mov        x0, x21 ; 
0008784c: aa730094 bl         #0xa46f4 ; _objc_release
00087850: e00314aa mov        x0, x20 ; 
00087854: a8730094 bl         #0xa46f4 ; _objc_release
00087858: b6010034 cbz        w22, #0x8788c ; 
0008785c: 080080d2 mov        x8, #0 ; 
00087860: 49030090 adrp       x9, #0xef000 ; 
00087864: 29412e91 add        x9, x9, #0xb90 ; 
00087868: 2a696838 ldrb       w10, [x9, x8] ; 
0008786c: aa000036 tbz        w10, #0, #0x87880 ; 
00087870: 08050091 add        x8, x8, #1 ; 
00087874: 1f4100f1 cmp        x8, #0x10 ; 
00087878: 81ffff54 b.ne       #0x87868 ; 
0008787c: 04000014 b          #0x8788c ; 
00087880: 2a008052 mov        w10, #1 ; 
00087884: 2a692838 strb       w10, [x9, x8] ; 
00087888: 686a39f8 str        x8, [x19, x25] ; 
0008788c: 686a7838 ldrb       w8, [x19, x24] ; 
00087890: a90200b0 adrp       x9, #0xdc000 ; 
00087894: 29411991 add        x9, x9, #0x650 ; 
00087898: aa0200b0 adrp       x10, #0xdc000 ; 
0008789c: 4ac11991 add        x10, x10, #0x670 ; 
000878a0: 1f010071 cmp        w8, #0 ; 
000878a4: 4011899a csel       x0, x10, x9, ne ; 
000878a8: 97730094 bl         #0xa4704 ; _objc_retain
000878ac: f40300aa mov        x20, x0 ; 
000878b0: 686a79f8 ldr        x8, [x19, x25] ; 
000878b4: 8801f8b7 tbnz       x8, #0x3f, #0x878e4 ; 
000878b8: e80300f9 str        x8, [sp] ; 
000878bc: a20200b0 adrp       x2, #0xdc000 ; 
000878c0: 42403991 add        x2, x2, #0xe50 ; 
000878c4: e00314aa mov        x0, x20 ; 
000878c8: e6a20094 bl         #0xb0460 ; 
000878cc: fd031daa mov        x29, x29 ; 
000878d0: 99730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000878d4: f50300aa mov        x21, x0 ; 
000878d8: e00314aa mov        x0, x20 ; 
000878dc: 86730094 bl         #0xa46f4 ; _objc_release
000878e0: f40315aa mov        x20, x21 ; 
000878e4: 280300b0 adrp       x8, #0xec000 ; 
000878e8: 005544f9 ldr        x0, [x8, #0x8a8] ; 
000878ec: 2a730094 bl         #0xa4594 ; _objc_alloc
000878f0: f50300aa mov        x21, x0 ; 
000878f4: e00313aa mov        x0, x19 ; 
000878f8: b2780094 bl         #0xa5bc0 ; 
000878fc: e00315aa mov        x0, x21 ; 
00087900: 020080d2 mov        x2, #0 ; 
00087904: e30314aa mov        x3, x20 ; 
00087908: 7e830094 bl         #0xa8700 ; 
0008790c: 280300d0 adrp       x8, #0xed000 ; 
00087910: 151d80b9 ldrsw      x21, [x8, #0x1c] ; 
00087914: 686a75f8 ldr        x8, [x19, x21] ; 
00087918: 606a35f8 str        x0, [x19, x21] ; 
0008791c: e00308aa mov        x0, x8 ; 
00087920: 75730094 bl         #0xa46f4 ; _objc_release
00087924: 606a75f8 ldr        x0, [x19, x21] ; 
00087928: c2020090 adrp       x2, #0xdf000 ; 
0008792c: 42a02891 add        x2, x2, #0xa28 ; 
00087930: 9c970094 bl         #0xad7a0 ; 
00087934: 606a75f8 ldr        x0, [x19, x21] ; 
00087938: 620200b0 adrp       x2, #0xd4000 ; 
0008793c: 420044f9 ldr        x2, [x2, #0x800] ; 
00087940: b0970094 bl         #0xad800 ; 
00087944: 606a77f8 ldr        x0, [x19, x23] ; 
00087948: 626a75f8 ldr        x2, [x19, x21] ; 
0008794c: 8d750094 bl         #0xa4f80 ; 
00087950: 60b342f9 ldr        x0, [x27, #0x560] ; 
00087954: 10730094 bl         #0xa4594 ; _objc_alloc
00087958: f50300aa mov        x21, x0 ; 
0008795c: e00313aa mov        x0, x19 ; 
00087960: 98780094 bl         #0xa5bc0 ; 
00087964: e00315aa mov        x0, x21 ; 
00087968: 4e830094 bl         #0xa86a0 ; 
0008796c: 280300d0 adrp       x8, #0xed000 ; 
00087970: 152180b9 ldrsw      x21, [x8, #0x20] ; 
00087974: 686a75f8 ldr        x8, [x19, x21] ; 
00087978: 606a35f8 str        x0, [x19, x21] ; 
0008797c: e00308aa mov        x0, x8 ; 
00087980: 5d730094 bl         #0xa46f4 ; _objc_release
00087984: 606a75f8 ldr        x0, [x19, x21] ; 
00087988: 02008052 mov        w2, #0 ; 
0008798c: bd9f0094 bl         #0xaf880 ; 
00087990: 606a77f8 ldr        x0, [x19, x23] ; 
00087994: 626a75f8 ldr        x2, [x19, x21] ; 
00087998: 7a750094 bl         #0xa4f80 ; 
0008799c: e00313aa mov        x0, x19 ; 
000879a0: 908d0094 bl         #0xaafe0 ; 
000879a4: 806b42f9 ldr        x0, [x28, #0x4d0] ; 
000879a8: 0e860094 bl         #0xa91e0 ; 
000879ac: fd031daa mov        x29, x29 ; 
000879b0: 61730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000879b4: 280300d0 adrp       x8, #0xed000 ; 
000879b8: 162580b9 ldrsw      x22, [x8, #0x24] ; 
000879bc: 686a76f8 ldr        x8, [x19, x22] ; 
000879c0: 606a36f8 str        x0, [x19, x22] ; 
000879c4: e00308aa mov        x0, x8 ; 
000879c8: 4b730094 bl         #0xa46f4 ; _objc_release
000879cc: 407342f9 ldr        x0, [x26, #0x4e0] ; 
000879d0: 5c790094 bl         #0xa5f40 ; 
000879d4: fd031daa mov        x29, x29 ; 
000879d8: 57730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
000879dc: f50300aa mov        x21, x0 ; 
000879e0: 4d730094 bl         #0xa4714 ; _objc_retainAutorelease
000879e4: e7730094 bl         #0xa4980 ; 
000879e8: e20300aa mov        x2, x0 ; 
000879ec: 606a76f8 ldr        x0, [x19, x22] ; 
000879f0: bc940094 bl         #0xacce0 ; 
000879f4: e00315aa mov        x0, x21 ; 
000879f8: 3f730094 bl         #0xa46f4 ; _objc_release
000879fc: 407342f9 ldr        x0, [x26, #0x4e0] ; 
00087a00: a80100d0 adrp       x8, #0xbd000 ; 
00087a04: 01b941fd ldr        d1, [x8, #0x370] ; 
00087a08: 00106e1e fmov       d0, #1.00000000 ; 
00087a0c: ed790094 bl         #0xa61c0 ; 
00087a10: fd031daa mov        x29, x29 ; 
00087a14: 48730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087a18: f50300aa mov        x21, x0 ; 
00087a1c: 3e730094 bl         #0xa4714 ; _objc_retainAutorelease
00087a20: d8730094 bl         #0xa4980 ; 
00087a24: e20300aa mov        x2, x0 ; 
00087a28: 606a76f8 ldr        x0, [x19, x22] ; 
00087a2c: bd9d0094 bl         #0xaf120 ; 
00087a30: e00315aa mov        x0, x21 ; 
00087a34: 30730094 bl         #0xa46f4 ; _objc_release
00087a38: 606a76f8 ldr        x0, [x19, x22] ; 
00087a3c: 00106e1e fmov       d0, #1.00000000 ; 
00087a40: 98970094 bl         #0xad8a0 ; 
00087a44: 680200b0 adrp       x8, #0xd4000 ; 
00087a48: 085d44f9 ldr        x8, [x8, #0x8b8] ; 
00087a4c: 020140f9 ldr        x2, [x8] ; 
00087a50: 606a76f8 ldr        x0, [x19, x22] ; 
00087a54: ab920094 bl         #0xac500 ; 
00087a58: 280300b0 adrp       x8, #0xec000 ; 
00087a5c: 008d43f9 ldr        x0, [x8, #0x718] ; 
00087a60: d0870094 bl         #0xa99a0 ; 
00087a64: fd031daa mov        x29, x29 ; 
00087a68: 33730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087a6c: f50300aa mov        x21, x0 ; 
00087a70: 648f0094 bl         #0xab800 ; 
00087a74: 606a76f8 ldr        x0, [x19, x22] ; 
00087a78: aa920094 bl         #0xac520 ; 
00087a7c: e00315aa mov        x0, x21 ; 
00087a80: 1d730094 bl         #0xa46f4 ; _objc_release
00087a84: 606a76f8 ldr        x0, [x19, x22] ; 
00087a88: 00102e1e fmov       s0, #1.00000000 ; 
00087a8c: 2d990094 bl         #0xadf40 ; 
00087a90: 407342f9 ldr        x0, [x26, #0x4e0] ; 
00087a94: 0ba80094 bl         #0xb1ac0 ; 
00087a98: fd031daa mov        x29, x29 ; 
00087a9c: 26730094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087aa0: f50300aa mov        x21, x0 ; 
00087aa4: 1c730094 bl         #0xa4714 ; _objc_retainAutorelease
00087aa8: b6730094 bl         #0xa4980 ; 
00087aac: e20300aa mov        x2, x0 ; 
00087ab0: 606a76f8 ldr        x0, [x19, x22] ; 
00087ab4: 4b9c0094 bl         #0xaebe0 ; 
00087ab8: e00315aa mov        x0, x21 ; 
00087abc: 0e730094 bl         #0xa46f4 ; _objc_release
00087ac0: 606a76f8 ldr        x0, [x19, x22] ; 
00087ac4: c8010090 adrp       x8, #0xbf000 ; 
00087ac8: 000941bd ldr        s0, [x8, #0x108] ; 
00087acc: 559c0094 bl         #0xaec20 ; 
00087ad0: 606a76f8 ldr        x0, [x19, x22] ; 
00087ad4: 00d0631e fmov       d0, #7.50000000 ; 
00087ad8: 5a9c0094 bl         #0xaec40 ; 
00087adc: 680200b0 adrp       x8, #0xd4000 ; 
00087ae0: 089144f9 ldr        x8, [x8, #0x920] ; 
00087ae4: 0005406d ldp        d0, d1, [x8] ; 
00087ae8: 606a76f8 ldr        x0, [x19, x22] ; 
00087aec: 459c0094 bl         #0xaec00 ; 
00087af0: 280300b0 adrp       x8, #0xec000 ; 
00087af4: 00f542f9 ldr        x0, [x8, #0x5e8] ; 
00087af8: a7720094 bl         #0xa4594 ; _objc_alloc
00087afc: f50300aa mov        x21, x0 ; 
00087b00: e00313aa mov        x0, x19 ; 
00087b04: 2f780094 bl         #0xa5bc0 ; 
00087b08: a80100d0 adrp       x8, #0xbd000 ; 
00087b0c: 044d41fd ldr        d4, [x8, #0x298] ; 
00087b10: 05106e1e fmov       d5, #1.00000000 ; 
00087b14: e00315aa mov        x0, x21 ; 
00087b18: 02830094 bl         #0xa8720 ; 
00087b1c: 280300d0 adrp       x8, #0xed000 ; 
00087b20: 172980b9 ldrsw      x23, [x8, #0x28] ; 
00087b24: 686a77f8 ldr        x8, [x19, x23] ; 
00087b28: 606a37f8 str        x0, [x19, x23] ; 
00087b2c: e00308aa mov        x0, x8 ; 
00087b30: f1720094 bl         #0xa46f4 ; _objc_release
00087b34: 606a77f8 ldr        x0, [x19, x23] ; 
00087b38: a80100d0 adrp       x8, #0xbd000 ; 
00087b3c: 000d42fd ldr        d0, [x8, #0x418] ; 
00087b40: 68910094 bl         #0xac0e0 ; 
00087b44: 606a77f8 ldr        x0, [x19, x23] ; 
00087b48: 02008052 mov        w2, #0 ; 
00087b4c: ad910094 bl         #0xac200 ; 
00087b50: 606a77f8 ldr        x0, [x19, x23] ; 
00087b54: a3850094 bl         #0xa91e0 ; 
00087b58: fd031daa mov        x29, x29 ; 
00087b5c: f6720094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087b60: f50300aa mov        x21, x0 ; 
00087b64: 00e4002f movi       d0, #0000000000000000 ; 
00087b68: be920094 bl         #0xac660 ; 
00087b6c: e00315aa mov        x0, x21 ; 
00087b70: e1720094 bl         #0xa46f4 ; _objc_release
00087b74: 756a76f8 ldr        x21, [x19, x22] ; 
00087b78: 606a77f8 ldr        x0, [x19, x23] ; 
00087b7c: 99850094 bl         #0xa91e0 ; 
00087b80: fd031daa mov        x29, x29 ; 
00087b84: ec720094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087b88: f60300aa mov        x22, x0 ; 
00087b8c: e20315aa mov        x2, x21 ; 
00087b90: 84970094 bl         #0xad9a0 ; 
00087b94: e00316aa mov        x0, x22 ; 
00087b98: d7720094 bl         #0xa46f4 ; _objc_release
00087b9c: 626a77f8 ldr        x2, [x19, x23] ; 
00087ba0: e00313aa mov        x0, x19 ; 
00087ba4: f7740094 bl         #0xa4f80 ; 
00087ba8: 686a7838 ldrb       w8, [x19, x24] ; 
00087bac: 1f050071 cmp        w8, #1 ; 
00087bb0: a1000054 b.ne       #0x87bc4 ; 
00087bb4: 20008052 mov        w0, #1 ; 
00087bb8: 1d6c0094 bl         #0xa2c2c ; _LGClockEditorFieldMap
00087bbc: f60300aa mov        x22, x0 ; 
00087bc0: 1f000014 b          #0x87c3c ; 
00087bc4: 57030090 adrp       x23, #0xef000 ; 
00087bc8: f6da45f9 ldr        x22, [x23, #0xbb0] ; 
00087bcc: 960300b5 cbnz       x22, #0x87c3c ; 
00087bd0: 08308052 mov        w8, #0x180 ; 
00087bd4: e80300f9 str        x8, [sp] ; 
00087bd8: a0010090 adrp       x0, #0xbb000 ; 
00087bdc: 00c42f91 add        x0, x0, #0xbf1 ; 
00087be0: 41608052 mov        w1, #0x302 ; 
00087be4: 0120a072 movk       w1, #0x100, lsl #16 ; 
00087be8: 03730094 bl         #0xa47f4 ; _open
00087bec: 6002f837 tbnz       w0, #0x1f, #0x87c38 ; 
00087bf0: f50300aa mov        x21, x0 ; 
00087bf4: e1230191 add        x1, sp, #0x48 ; 
00087bf8: 13720094 bl         #0xa4444 ; _fstat
00087bfc: a0010035 cbnz       w0, #0x87c30 ; 
00087c00: e89b4079 ldrh       w8, [sp, #0x4c] ; 
00087c04: 080d1412 and        w8, w8, #0xf000 ; 
00087c08: 1f214071 cmp        w8, #8, lsl #12 ; 
00087c0c: 21010054 b.ne       #0x87c30 ; 
00087c10: f65b40b9 ldr        w22, [sp, #0x58] ; 
00087c14: 1c720094 bl         #0xa4484 ; _getuid
00087c18: df02006b cmp        w22, w0 ; 
00087c1c: a1000054 b.ne       #0x87c30 ; 
00087c20: e00315aa mov        x0, x21 ; 
00087c24: e1830a32 mov        w1, #0x400040 ; 
00087c28: 0f720094 bl         #0xa4464 ; _ftruncate
00087c2c: a00b0034 cbz        w0, #0x87da0 ; 
00087c30: e00315aa mov        x0, x21 ; 
00087c34: a0710094 bl         #0xa42b4 ; _close
00087c38: 160080d2 mov        x22, #0 ; 
00087c3c: 280300d0 adrp       x8, #0xed000 ; 
00087c40: 1a2d80b9 ldrsw      x26, [x8, #0x2c] ; 
00087c44: 766a3af8 str        x22, [x19, x26] ; 
00087c48: 280300b0 adrp       x8, #0xec000 ; 
00087c4c: 004543f9 ldr        x0, [x8, #0x688] ; 
00087c50: 34870094 bl         #0xa9920 ; 
00087c54: fd031daa mov        x29, x29 ; 
00087c58: b7720094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087c5c: f50300aa mov        x21, x0 ; 
00087c60: 10780094 bl         #0xa5ca0 ; 
00087c64: fd031daa mov        x29, x29 ; 
00087c68: b3720094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087c6c: f60300aa mov        x22, x0 ; 
00087c70: a20200b0 adrp       x2, #0xdc000 ; 
00087c74: 42400f91 add        x2, x2, #0x3d0 ; 
00087c78: 3a840094 bl         #0xa8d60 ; 
00087c7c: f70300aa mov        x23, x0 ; 
00087c80: e00316aa mov        x0, x22 ; 
00087c84: 9c720094 bl         #0xa46f4 ; _objc_release
00087c88: e00315aa mov        x0, x21 ; 
00087c8c: 9a720094 bl         #0xa46f4 ; _objc_release
00087c90: 17010034 cbz        w23, #0x87cb0 ; 
00087c94: 616a79f8 ldr        x1, [x19, x25] ; 
00087c98: 8100f8b7 tbnz       x1, #0x3f, #0x87ca8 ; 
00087c9c: 20008052 mov        w0, #1 ; 
00087ca0: 3d6c0094 bl         #0xa2d94 ; _LGClockPosterFieldMap
00087ca4: 02000014 b          #0x87cac ; 
00087ca8: 000080d2 mov        x0, #0 ; 
00087cac: 606a3af8 str        x0, [x19, x26] ; 
00087cb0: 09720094 bl         #0xa44d4 ; _mach_absolute_time
00087cb4: f50300aa mov        x21, x0 ; 
00087cb8: 280300d0 adrp       x8, #0xed000 ; 
00087cbc: 163180b9 ldrsw      x22, [x8, #0x30] ; 
00087cc0: 606a36f8 str        x0, [x19, x22] ; 
00087cc4: 686a7838 ldrb       w8, [x19, x24] ; 
00087cc8: 1f050071 cmp        w8, #1 ; 
00087ccc: 41010054 b.ne       #0x87cf4 ; 
00087cd0: 686a79f8 ldr        x8, [x19, x25] ; 
00087cd4: 0801f8b6 tbz        x8, #0x3f, #0x87cf4 ; 
00087cd8: 48030090 adrp       x8, #0xef000 ; 
00087cdc: 08d545f9 ldr        x8, [x8, #0xba8] ; 
00087ce0: 1f0500b1 cmn        x8, #1 ; 
00087ce4: 61080054 b.ne       #0x87df0 ; 
00087ce8: 48030090 adrp       x8, #0xef000 ; 
00087cec: 15d145f9 ldr        x21, [x8, #0xba0] ; 
00087cf0: 756a36f8 str        x21, [x19, x22] ; 
00087cf4: 776a7af8 ldr        x23, [x19, x26] ; 
00087cf8: 770300b4 cbz        x23, #0x87d64 ; 
00087cfc: 4a000094 bl         #0x87e24 ; 
00087d00: fd031daa mov        x29, x29 ; 
00087d04: 8c720094 bl         #0xa4734 ; _objc_retainAutoreleasedReturnValue
00087d08: f60300aa mov        x22, x0 ; 
00087d0c: e8230091 add        x8, sp, #8 ; 
00087d10: 700200b0 adrp       x16, #0xd4000 ; 
00087d14: 109a44f9 ldr        x16, [x16, #0x930] ; 
00087d18: f10308aa mov        x17, x8 ; 
00087d1c: 315cedf2 movk       x17, #0x6ae1, lsl #48 ; 
00087d20: 300ac1da pacda      x16, x17 ; 
00087d24: f00700f9 str        x16, [sp, #8] ; 
00087d28: a90100d0 adrp       x9, #0xbd000 ; 
00087d2c: 207941fd ldr        d0, [x9, #0x2f0] ; 
00087d30: e00b00fd str        d0, [sp, #0x10] ; 
00087d34: 08410091 add        x8, x8, #0x10 ; 
00087d38: 690200f0 adrp       x9, #0xd6000 ; 
00087d3c: 29610291 add        x9, x9, #0x98 ; 
00087d40: 10000090 adrp       x16, #0x87000 ; 
00087d44: 10a23991 add        x16, x16, #0xe68 ; 
00087d48: 1001c1da pacia      x16, x8 ; 
00087d4c: f0a701a9 stp        x16, x9, [sp, #0x18] ; 
00087d50: f7d702a9 stp        x23, x21, [sp, #0x28] ; 
00087d54: e1230091 add        x1, sp, #8 ; 
00087d58: 7b710094 bl         #0xa4344 ; _dispatch_sync
00087d5c: e00316aa mov        x0, x22 ; 
00087d60: 65720094 bl         #0xa46f4 ; _objc_release
00087d64: e00313aa mov        x0, x19 ; 
00087d68: 67720094 bl         #0xa4704 ; _objc_retain
00087d6c: e00314aa mov        x0, x20 ; 
00087d70: 61720094 bl         #0xa46f4 ; _objc_release
00087d74: e00313aa mov        x0, x19 ; 
00087d78: 5f720094 bl         #0xa46f4 ; _objc_release
00087d7c: e00313aa mov        x0, x19 ; 
00087d80: fd7b53a9 ldp        x29, x30, [sp, #0x130] ; 
00087d84: f44f52a9 ldp        x20, x19, [sp, #0x120] ; 
00087d88: f65751a9 ldp        x22, x21, [sp, #0x110] ; 
00087d8c: f85f50a9 ldp        x24, x23, [sp, #0x100] ; 
00087d90: fa674fa9 ldp        x26, x25, [sp, #0xf0] ; 
00087d94: fc6f4ea9 ldp        x28, x27, [sp, #0xe0] ; 
00087d98: ff030591 add        sp, sp, #0x140 ; 
00087d9c: ff0f5fd6 retab       ; 
00087da0: 88008052 mov        w8, #4 ; 
00087da4: e80300f9 str        x8, [sp] ; 
00087da8: e00315aa mov        x0, x21 ; 
00087dac: 01088052 mov        w1, #0x40 ; 
00087db0: 89710094 bl         #0xa43d4 ; _fcntl
00087db4: e0f3ff37 tbnz       w0, #0x1f, #0x87c30 ; 
00087db8: 000080d2 mov        x0, #0 ; 
00087dbc: e1830a32 mov        w1, #0x400040 ; 
00087dc0: 62008052 mov        w2, #3 ; 
00087dc4: 23008052 mov        w3, #1 ; 
00087dc8: e40315aa mov        x4, x21 ; 
00087dcc: 050080d2 mov        x5, #0 ; 
00087dd0: d9710094 bl         #0xa4534 ; _mmap
00087dd4: f60300aa mov        x22, x0 ; 
00087dd8: e00315aa mov        x0, x21 ; 
00087ddc: 36710094 bl         #0xa42b4 ; _close
00087de0: df0600b1 cmn        x22, #1 ; 
00087de4: a0f2ff54 b.eq       #0x87c38 ; 
00087de8: f6da05f9 str        x22, [x23, #0xbb0] ; 
00087dec: 94ffff17 b          #0x87c3c ; 
00087df0: 666e0094 bl         #0xa3788 ; 
00087df4: bdffff17 b          #0x87ce8 ; 
00087df8: ff710094 bl         #0xa45f4 ; _objc_begin_catch
00087dfc: 0a720094 bl         #0xa4624 ; _objc_end_catch
00087e00: 47feff17 b          #0x8771c ; 
