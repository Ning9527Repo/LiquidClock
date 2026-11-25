main arm64e VA 0x880a4..0x88cd0; fat slice offset 0xfc000
000880a4: 7f2303d5 pacibsp    
000880a8: eb2bb86d stp        d11, d10, [sp, #-0x80]!
000880ac: e923016d stp        d9, d8, [sp, #0x10]
000880b0: fc6f02a9 stp        x28, x27, [sp, #0x20]
000880b4: fa6703a9 stp        x26, x25, [sp, #0x30]
000880b8: f85f04a9 stp        x24, x23, [sp, #0x40]
000880bc: f65705a9 stp        x22, x21, [sp, #0x50]
000880c0: f44f06a9 stp        x20, x19, [sp, #0x60]
000880c4: fd7b07a9 stp        x29, x30, [sp, #0x70]
000880c8: fdc30191 add        x29, sp, #0x70
000880cc: ff4307d1 sub        sp, sp, #0x1d0
000880d0: f60300aa mov        x22, x0
000880d4: 68020090 adrp       x8, #0xd4000
000880d8: 089d44f9 ldr        x8, [x8, #0x938]
000880dc: 080140f9 ldr        x8, [x8]
000880e0: a80318f8 stur       x8, [x29, #-0x80]
000880e4: e00302aa mov        x0, x2
000880e8: 87710094 bl         #0xa4704 ; 
000880ec: f50300aa mov        x21, x0
000880f0: ae680094 bl         #0xa23a8 ; _LGDebugLoggingEnabled
000880f4: 005a0034 cbz        w0, #0x88c34
000880f8: 3b6e0094 bl         #0xa39e4 ; 
000880fc: 280300b0 adrp       x8, #0xed000
00088100: 134d80b9 ldrsw      x19, [x8, #0x4c]
00088104: c86a73f8 ldr        x8, [x22, x19]
00088108: 1f3d01f1 cmp        x8, #0x4f
0008810c: 48590054 b.hi       #0x88c34
00088110: 0840601e fmov       d8, d0
00088114: 290300b0 adrp       x9, #0xed000
00088118: 345180b9 ldrsw      x20, [x9, #0x50]
0008811c: c06a74fc ldr        d0, [x22, x20]
00088120: 0039601e fsub       d0, d8, d0
00088124: 01106c1e fmov       d1, #0.50000000
00088128: 0020611e fcmp       d0, d1
0008812c: e5000054 b.pl       #0x88148
00088130: a2020090 adrp       x2, #0xdc000
00088134: 42c03991 add        x2, x2, #0xe70
00088138: e00315aa mov        x0, x21
0008813c: 09830094 bl         #0xa8d60 ; 
00088140: a0570037 tbnz       w0, #0, #0x88c34
00088144: c86a73f8 ldr        x8, [x22, x19]
00088148: c86a34fc str        d8, [x22, x20]
0008814c: 08050091 add        x8, x8, #1
00088150: c86a33f8 str        x8, [x22, x19]
00088154: 28030090 adrp       x8, #0xec000
00088158: 005542f9 ldr        x0, [x8, #0x4a8]
0008815c: 118b0094 bl         #0xaada0 ; 
00088160: fd031daa mov        x29, x29
00088164: 74710094 bl         #0xa4734 ; 
00088168: e06f00f9 str        x0, [sp, #0xd8]
0008816c: 158b0094 bl         #0xaadc0 ; 
00088170: fd031daa mov        x29, x29
00088174: 70710094 bl         #0xa4734 ; 
00088178: e06b00f9 str        x0, [sp, #0xd0]
0008817c: 280300b0 adrp       x8, #0xed000
00088180: 081580b9 ldrsw      x8, [x8, #0x14]
00088184: c86a6838 ldrb       w8, [x22, x8]
00088188: e87b00f9 str        x8, [sp, #0xf0]
0008818c: 280300b0 adrp       x8, #0xed000
00088190: 081980b9 ldrsw      x8, [x8, #0x18]
00088194: c96a68f8 ldr        x9, [x22, x8]
00088198: 280300b0 adrp       x8, #0xed000
0008819c: 082d80b9 ldrsw      x8, [x8, #0x2c]
000881a0: d86a68f8 ldr        x24, [x22, x8]
000881a4: 280300b0 adrp       x8, #0xed000
000881a8: 083180b9 ldrsw      x8, [x8, #0x30]
000881ac: f6d709a9 stp        x22, x21, [sp, #0x98]
000881b0: c86a68f8 ldr        x8, [x22, x8]
000881b4: e8270ea9 stp        x8, x9, [sp, #0xe0]
000881b8: 980400b4 cbz        x24, #0x88248
000881bc: 135341a9 ldp        x19, x20, [x24, #0x10]
000881c0: 1c1340f9 ldr        x28, [x24, #0x20]
000881c4: 080340b9 ldr        w8, [x24]
000881c8: c9888852 mov        w9, #0x4446
000881cc: e988a972 movk       w9, #0x4c47, lsl #16
000881d0: 1f01096b cmp        w8, w9
000881d4: a1020054 b.ne       #0x88228
000881d8: 080740b9 ldr        w8, [x24, #4]
000881dc: 1f090071 cmp        w8, #2
000881e0: 640a40fa ccmp       x19, #0, #4, eq
000881e4: 841a40fa ccmp       x20, #0, #4, ne
000881e8: 00020054 b.eq       #0x88228
000881ec: 082b40b9 ldr        w8, [x24, #0x28]
000881f0: c8010034 cbz        w8, #0x88228
000881f4: 17008052 mov        w23, #0
000881f8: 1f011071 cmp        w8, #0x400
000881fc: 88010054 b.hi       #0x8822c
00088200: 082f40b9 ldr        w8, [x24, #0x2c]
00088204: 08050051 sub        w8, w8, #1
00088208: 1ffd0f71 cmp        w8, #0x3ff
0008820c: 08010054 b.hi       #0x8822c
00088210: 003340bd ldr        s0, [x24, #0x30]
00088214: 0800261e fmov       w8, s0
00088218: 09790012 and        w9, w8, #0x7fffffff
0008821c: 0810b012 mov        w8, #0x7f7fffff
00088220: 3f01086b cmp        w9, w8
00088224: cd520054 b.le       #0x88c7c
00088228: 17008052 mov        w23, #0
0008822c: 19234529 ldp        w25, w8, [x24, #0x28]
00088230: e86700f9 str        x8, [sp, #0xc8]
00088234: 0007462d ldp        s0, s1, [x24, #0x30]
00088238: 0ac0221e fcvt       d10, s0
0008823c: 29c0221e fcvt       d9, s1
00088240: 163b40b9 ldr        w22, [x24, #0x38]
00088244: 0a000014 b          #0x8826c ; 
00088248: ff6700f9 str        xzr, [sp, #0xc8]
0008824c: 17008052 mov        w23, #0
00088250: 140080d2 mov        x20, #0
00088254: 130080d2 mov        x19, #0
00088258: 1c0080d2 mov        x28, #0
0008825c: 19008052 mov        w25, #0
00088260: 16008052 mov        w22, #0
00088264: 09e4002f movi       d9, #0000000000000000
00088268: 0ae4002f movi       d10, #0000000000000000
0008826c: 280300b0 adrp       x8, #0xed000
00088270: 1a1d80b9 ldrsw      x26, [x8, #0x1c]
00088274: fb4f40f9 ldr        x27, [sp, #0x98]
00088278: 606b7af8 ldr        x0, [x27, x26]
0008827c: 81840094 bl         #0xa9480 ; 
00088280: fd031daa mov        x29, x29
00088284: 2c710094 bl         #0xa4734 ; 
00088288: f50300aa mov        x21, x0
0008828c: fa7f00f9 str        x26, [sp, #0xf8]
00088290: 606b7af8 ldr        x0, [x27, x26]
00088294: 73840094 bl         #0xa9460 ; 
00088298: f50308a9 stp        x21, x0, [sp, #0x80]
0008829c: f63f00f9 str        x22, [sp, #0x78]
000882a0: eaa7066d stp        d10, d9, [sp, #0x68]
000882a4: e86740f9 ldr        x8, [sp, #0xc8]
000882a8: f9a305a9 stp        x25, x8, [sp, #0x58]
000882ac: fcdf04a9 stp        x28, x23, [sp, #0x48]
000882b0: f3d303a9 stp        x19, x20, [sp, #0x38]
000882b4: e92b4ea9 ldp        x9, x10, [sp, #0xe0]
000882b8: f8a702a9 stp        x24, x9, [sp, #0x28]
000882bc: e87b40f9 ldr        x8, [sp, #0xf0]
000882c0: e8ab01a9 stp        x8, x10, [sp, #0x18]
000882c4: a0020090 adrp       x0, #0xdc000
000882c8: 00403a91 add        x0, x0, #0xe90
000882cc: f36b40f9 ldr        x19, [sp, #0xd0]
000882d0: f3ef00a9 stp        x19, x27, [sp, #8]
000882d4: e85340f9 ldr        x8, [sp, #0xa0]
000882d8: e80300f9 str        x8, [sp]
000882dc: 37680094 bl         #0xa23b8 ; _LGLog
000882e0: e00315aa mov        x0, x21
000882e4: 04710094 bl         #0xa46f4 ; 
000882e8: e00313aa mov        x0, x19
000882ec: 02710094 bl         #0xa46f4 ; 
000882f0: e06f40f9 ldr        x0, [sp, #0xd8]
000882f4: 00710094 bl         #0xa46f4 ; 
000882f8: 28030090 adrp       x8, #0xec000
000882fc: 08c942f9 ldr        x8, [x8, #0x590]
00088300: e87700f9 str        x8, [sp, #0xe8]
00088304: 28030090 adrp       x8, #0xec000
00088308: 00cd42f9 ldr        x0, [x8, #0x598]
0008830c: ed790094 bl         #0xa6ac0 ; 
00088310: fd031daa mov        x29, x29
00088314: 08710094 bl         #0xa4734 ; 
00088318: e07b00f9 str        x0, [sp, #0xf0]
0008831c: 91a10094 bl         #0xb0960 ; 
00088320: fd031daa mov        x29, x29
00088324: 04710094 bl         #0xa4734 ; 
00088328: f40300aa mov        x20, x0
0008832c: e0031baa mov        x0, x27
00088330: 84a60094 bl         #0xb1d40 ; 
00088334: fd031daa mov        x29, x29
00088338: ff700094 bl         #0xa4734 ; 
0008833c: f60300aa mov        x22, x0
00088340: e0031baa mov        x0, x27
00088344: ef7d0094 bl         #0xa7b00 ; 
00088348: 5f6f0094 bl         #0xa40c4 ; 
0008834c: fd031daa mov        x29, x29
00088350: f9700094 bl         #0xa4734 ; 
00088354: f70300aa mov        x23, x0
00088358: e0031baa mov        x0, x27
0008835c: 19760094 bl         #0xa5bc0 ; 
00088360: 596f0094 bl         #0xa40c4 ; 
00088364: fd031daa mov        x29, x29
00088368: f3700094 bl         #0xa4734 ; 
0008836c: f80300aa mov        x24, x0
00088370: e8030491 add        x8, sp, #0x100
00088374: e0031baa mov        x0, x27
00088378: 42a30094 bl         #0xb1080 ; 
0008837c: e0030491 add        x0, sp, #0x100
00088380: 496f0094 bl         #0xa40a4 ; 
00088384: fd031daa mov        x29, x29
00088388: eb700094 bl         #0xa4734 ; 
0008838c: f90300aa mov        x25, x0
00088390: 280300b0 adrp       x8, #0xed000
00088394: 150980b9 ldrsw      x21, [x8, #8]
00088398: 606b75f8 ldr        x0, [x27, x21]
0008839c: f1880094 bl         #0xaa760 ; 
000883a0: a00000b4 cbz        x0, #0x883b4
000883a4: 606b75f8 ldr        x0, [x27, x21]
000883a8: ee880094 bl         #0xaa760 ; 
000883ac: 926e0094 bl         #0xa3df4 ; 
000883b0: 05000014 b          #0x883c4 ; 
000883b4: 68020090 adrp       x8, #0xd4000
000883b8: 088d44f9 ldr        x8, [x8, #0x918]
000883bc: 0005406d ldp        d0, d1, [x8]
000883c0: 020d416d ldp        d2, d3, [x8, #0x10]
000883c4: 406f0094 bl         #0xa40c4 ; 
000883c8: fd031daa mov        x29, x29
000883cc: da700094 bl         #0xa4734 ; 
000883d0: fa0300aa mov        x26, x0
000883d4: 280300b0 adrp       x8, #0xed000
000883d8: 1c2580b9 ldrsw      x28, [x8, #0x24]
000883dc: 606b7cf8 ldr        x0, [x27, x28]
000883e0: e0880094 bl         #0xaa760 ; 
000883e4: a00000b4 cbz        x0, #0x883f8
000883e8: 606b7cf8 ldr        x0, [x27, x28]
000883ec: dd880094 bl         #0xaa760 ; 
000883f0: 816e0094 bl         #0xa3df4 ; 
000883f4: 05000014 b          #0x88408 ; 
000883f8: 68020090 adrp       x8, #0xd4000
000883fc: 088d44f9 ldr        x8, [x8, #0x918]
00088400: 0005406d ldp        d0, d1, [x8]
00088404: 020d416d ldp        d2, d3, [x8, #0x10]
00088408: 2f6f0094 bl         #0xa40c4 ; 
0008840c: fd031daa mov        x29, x29
00088410: c9700094 bl         #0xa4734 ; 
00088414: f30300aa mov        x19, x0
00088418: fa0304a9 stp        x26, x0, [sp, #0x40]
0008841c: f86703a9 stp        x24, x25, [sp, #0x30]
00088420: f65f02a9 stp        x22, x23, [sp, #0x20]
00088424: a2020090 adrp       x2, #0xdc000
00088428: 42c03a91 add        x2, x2, #0xeb0
0008842c: fb5301a9 stp        x27, x20, [sp, #0x10]
00088430: e85340f9 ldr        x8, [sp, #0xa0]
00088434: e80700f9 str        x8, [sp, #8]
00088438: e80300fd str        d8, [sp]
0008843c: e07740f9 ldr        x0, [sp, #0xe8]
00088440: 58a00094 bl         #0xb05a0 ; 
00088444: fd031daa mov        x29, x29
00088448: bb700094 bl         #0xa4734 ; 
0008844c: e05b00f9 str        x0, [sp, #0xb0]
00088450: e00313aa mov        x0, x19
00088454: a8700094 bl         #0xa46f4 ; 
00088458: e0031aaa mov        x0, x26
0008845c: a6700094 bl         #0xa46f4 ; 
00088460: e00319aa mov        x0, x25
00088464: a4700094 bl         #0xa46f4 ; 
00088468: e00318aa mov        x0, x24
0008846c: a2700094 bl         #0xa46f4 ; 
00088470: e00317aa mov        x0, x23
00088474: a0700094 bl         #0xa46f4 ; 
00088478: e00316aa mov        x0, x22
0008847c: 9e700094 bl         #0xa46f4 ; 
00088480: e00314aa mov        x0, x20
00088484: 9c700094 bl         #0xa46f4 ; 
00088488: e07b40f9 ldr        x0, [sp, #0xf0]
0008848c: 9a700094 bl         #0xa46f4 ; 
00088490: e0031baa mov        x0, x27
00088494: 53830094 bl         #0xa91e0 ; 
00088498: fd031daa mov        x29, x29
0008849c: a6700094 bl         #0xa4734 ; 
000884a0: f30300aa mov        x19, x0
000884a4: a00314f8 stur       x0, [x29, #-0xc0]
000884a8: 280300b0 adrp       x8, #0xed000
000884ac: 080580b9 ldrsw      x8, [x8, #4]
000884b0: 606b68f8 ldr        x0, [x27, x8]
000884b4: 4b830094 bl         #0xa91e0 ; 
000884b8: fd031daa mov        x29, x29
000884bc: 9e700094 bl         #0xa4734 ; 
000884c0: f40300aa mov        x20, x0
000884c4: 686b75f8 ldr        x8, [x27, x21]
000884c8: a0a334a9 stp        x0, x8, [x29, #-0xb8]
000884cc: 280300b0 adrp       x8, #0xed000
000884d0: 080d80b9 ldrsw      x8, [x8, #0xc]
000884d4: 606b68f8 ldr        x0, [x27, x8]
000884d8: 42830094 bl         #0xa91e0 ; 
000884dc: fd031daa mov        x29, x29
000884e0: 95700094 bl         #0xa4734 ; 
000884e4: f50300aa mov        x21, x0
000884e8: a08315f8 stur       x0, [x29, #-0xa8]
000884ec: e87f40f9 ldr        x8, [sp, #0xf8]
000884f0: 606b68f8 ldr        x0, [x27, x8]
000884f4: 3b830094 bl         #0xa91e0 ; 
000884f8: fd031daa mov        x29, x29
000884fc: 8e700094 bl         #0xa4734 ; 
00088500: f60300aa mov        x22, x0
00088504: a00316f8 stur       x0, [x29, #-0xa0]
00088508: 280300b0 adrp       x8, #0xed000
0008850c: 081180b9 ldrsw      x8, [x8, #0x10]
00088510: 606b68f8 ldr        x0, [x27, x8]
00088514: 33830094 bl         #0xa91e0 ; 
00088518: fd031daa mov        x29, x29
0008851c: 86700094 bl         #0xa4734 ; 
00088520: f70300aa mov        x23, x0
00088524: 686b7cf8 ldr        x8, [x27, x28]
00088528: a0a336a9 stp        x0, x8, [x29, #-0x98]
0008852c: 280300b0 adrp       x8, #0xed000
00088530: 082980b9 ldrsw      x8, [x8, #0x28]
00088534: 606b68f8 ldr        x0, [x27, x8]
00088538: 2a830094 bl         #0xa91e0 ; 
0008853c: fd031daa mov        x29, x29
00088540: 7d700094 bl         #0xa4734 ; 
00088544: f80300aa mov        x24, x0
00088548: a08317f8 stur       x0, [x29, #-0x88]
0008854c: 28030090 adrp       x8, #0xec000
00088550: 00e542f9 ldr        x0, [x8, #0x5c8]
00088554: a20303d1 sub        x2, x29, #0xc0
00088558: 03018052 mov        w3, #8
0008855c: 11740094 bl         #0xa55a0 ; 
00088560: fd031daa mov        x29, x29
00088564: 74700094 bl         #0xa4734 ; 
00088568: f90300aa mov        x25, x0
0008856c: e00318aa mov        x0, x24
00088570: 61700094 bl         #0xa46f4 ; 
00088574: e00317aa mov        x0, x23
00088578: 5f700094 bl         #0xa46f4 ; 
0008857c: e00316aa mov        x0, x22
00088580: 5d700094 bl         #0xa46f4 ; 
00088584: e00315aa mov        x0, x21
00088588: 5b700094 bl         #0xa46f4 ; 
0008858c: e00314aa mov        x0, x20
00088590: 59700094 bl         #0xa46f4 ; 
00088594: e00313aa mov        x0, x19
00088598: 57700094 bl         #0xa46f4 ; 
0008859c: e00319aa mov        x0, x25
000885a0: 18790094 bl         #0xa6a00 ; 
000885a4: f95700f9 str        x25, [sp, #0xa8]
000885a8: 401700b4 cbz        x0, #0x88890
000885ac: 130080d2 mov        x19, #0
000885b0: e00319aa mov        x0, x25
000885b4: e20313aa mov        x2, x19
000885b8: 1a870094 bl         #0xaa220 ; 
000885bc: fd031daa mov        x29, x29
000885c0: 5d700094 bl         #0xa4734 ; 
000885c4: fa0300aa mov        x26, x0
000885c8: 76890094 bl         #0xaaba0 ; 
000885cc: fd031daa mov        x29, x29
000885d0: 59700094 bl         #0xa4734 ; 
000885d4: fb0300aa mov        x27, x0
000885d8: a00200f0 adrp       x0, #0xdf000
000885dc: 00200191 add        x0, x0, #0x48
000885e0: f36b00f9 str        x19, [sp, #0xd0]
000885e4: e20313aa mov        x2, x19
000885e8: 0e870094 bl         #0xaa220 ; 
000885ec: fd031daa mov        x29, x29
000885f0: 51700094 bl         #0xa4734 ; 
000885f4: e07700f9 str        x0, [sp, #0xe8]
000885f8: e0031aaa mov        x0, x26
000885fc: 51a00094 bl         #0xb0740 ; 
00088600: fd031daa mov        x29, x29
00088604: 4c700094 bl         #0xa4734 ; 
00088608: e07f00f9 str        x0, [sp, #0xf8]
0008860c: e0031aaa mov        x0, x26
00088610: 3c7d0094 bl         #0xa7b00 ; 
00088614: ac6e0094 bl         #0xa40c4 ; 
00088618: fd031daa mov        x29, x29
0008861c: 46700094 bl         #0xa4734 ; 
00088620: e07b00f9 str        x0, [sp, #0xf0]
00088624: e0031aaa mov        x0, x26
00088628: 66750094 bl         #0xa5bc0 ; 
0008862c: a66e0094 bl         #0xa40c4 ; 
00088630: fd031daa mov        x29, x29
00088634: 40700094 bl         #0xa4734 ; 
00088638: e07300f9 str        x0, [sp, #0xe0]
0008863c: e0031aaa mov        x0, x26
00088640: e8880094 bl         #0xaa9e0 ; 
00088644: 9c6e0094 bl         #0xa40b4 ; 
00088648: fd031daa mov        x29, x29
0008864c: 3a700094 bl         #0xa4734 ; 
00088650: e06f00f9 str        x0, [sp, #0xd8]
00088654: e0031aaa mov        x0, x26
00088658: d2720094 bl         #0xa51a0 ; 
0008865c: 966e0094 bl         #0xa40b4 ; 
00088660: fd031daa mov        x29, x29
00088664: 34700094 bl         #0xa4734 ; 
00088668: f90300aa mov        x25, x0
0008866c: 28030090 adrp       x8, #0xec000
00088670: 13fd42f9 ldr        x19, [x8, #0x5f8]
00088674: ba0000b4 cbz        x26, #0x88688
00088678: e8030491 add        x8, sp, #0x100
0008867c: e0031aaa mov        x0, x26
00088680: 80a20094 bl         #0xb1080 ; 
00088684: 06000014 b          #0x8869c ; 
00088688: 00e4006f movi       v0.2d, #0000000000000000
0008868c: e0030bad stp        q0, q0, [sp, #0x160]
00088690: e0030aad stp        q0, q0, [sp, #0x140]
00088694: e00309ad stp        q0, q0, [sp, #0x120]
00088698: e00308ad stp        q0, q0, [sp, #0x100]
0008869c: e2030491 add        x2, sp, #0x100
000886a0: e00313aa mov        x0, x19
000886a4: 27a40094 bl         #0xb1740 ; 
000886a8: fd031daa mov        x29, x29
000886ac: 22700094 bl         #0xa4734 ; 
000886b0: f30300aa mov        x19, x0
000886b4: e0031aaa mov        x0, x26
000886b8: 0a870094 bl         #0xaa2e0 ; 
000886bc: 0940201e fmov       s9, s0
000886c0: e0031aaa mov        x0, x26
000886c4: bf810094 bl         #0xa8dc0 ; 
000886c8: e05f00f9 str        x0, [sp, #0xb8]
000886cc: e0031aaa mov        x0, x26
000886d0: e4840094 bl         #0xa9a60 ; 
000886d4: e06700f9 str        x0, [sp, #0xc8]
000886d8: e0031aaa mov        x0, x26
000886dc: c9840094 bl         #0xa9a00 ; 
000886e0: fd031daa mov        x29, x29
000886e4: 14700094 bl         #0xa4734 ; 
000886e8: f60300aa mov        x22, x0
000886ec: e0031aaa mov        x0, x26
000886f0: f4770094 bl         #0xa66c0 ; 
000886f4: 0840601e fmov       d8, d0
000886f8: e0031aaa mov        x0, x26
000886fc: e9770094 bl         #0xa66a0 ; 
00088700: 716e0094 bl         #0xa40c4 ; 
00088704: fd031daa mov        x29, x29
00088708: 0b700094 bl         #0xa4734 ; 
0008870c: f70300aa mov        x23, x0
00088710: e0031baa mov        x0, x27
00088714: fb7c0094 bl         #0xa7b00 ; 
00088718: 6b6e0094 bl         #0xa40c4 ; 
0008871c: fd031daa mov        x29, x29
00088720: 05700094 bl         #0xa4734 ; 
00088724: f50300aa mov        x21, x0
00088728: e0031baa mov        x0, x27
0008872c: 25750094 bl         #0xa5bc0 ; 
00088730: 656e0094 bl         #0xa40c4 ; 
00088734: fd031daa mov        x29, x29
00088738: ff6f0094 bl         #0xa4734 ; 
0008873c: f80300aa mov        x24, x0
00088740: e0031baa mov        x0, x27
00088744: a7880094 bl         #0xaa9e0 ; 
00088748: 5b6e0094 bl         #0xa40b4 ; 
0008874c: fd031daa mov        x29, x29
00088750: f96f0094 bl         #0xa4734 ; 
00088754: fc0300aa mov        x28, x0
00088758: 28030090 adrp       x8, #0xec000
0008875c: 14fd42f9 ldr        x20, [x8, #0x5f8]
00088760: fb6300f9 str        x27, [sp, #0xc0]
00088764: bb0000b4 cbz        x27, #0x88778
00088768: e8030491 add        x8, sp, #0x100
0008876c: e0031baa mov        x0, x27
00088770: 44a20094 bl         #0xb1080 ; 
00088774: 06000014 b          #0x8878c ; 
00088778: 00e4006f movi       v0.2d, #0000000000000000
0008877c: e0030bad stp        q0, q0, [sp, #0x160]
00088780: e0030aad stp        q0, q0, [sp, #0x140]
00088784: e00309ad stp        q0, q0, [sp, #0x120]
00088788: e00308ad stp        q0, q0, [sp, #0x100]
0008878c: 29c1221e fcvt       d9, s9
00088790: e2030491 add        x2, sp, #0x100
00088794: e00314aa mov        x0, x20
00088798: eaa30094 bl         #0xb1740 ; 
0008879c: fd031daa mov        x29, x29
000887a0: e56f0094 bl         #0xa4734 ; 
000887a4: f40300aa mov        x20, x0
000887a8: fc0308a9 stp        x28, x0, [sp, #0x80]
000887ac: f56307a9 stp        x21, x24, [sp, #0x70]
000887b0: f73700f9 str        x23, [sp, #0x68]
000887b4: e83300fd str        d8, [sp, #0x60]
000887b8: e86740f9 ldr        x8, [sp, #0xc8]
000887bc: e85b05a9 stp        x8, x22, [sp, #0x50]
000887c0: e0234ba9 ldp        x0, x8, [sp, #0xb0]
000887c4: e82700f9 str        x8, [sp, #0x48]
000887c8: e92300fd str        d9, [sp, #0x40]
000887cc: f94f03a9 stp        x25, x19, [sp, #0x30]
000887d0: f96700f9 str        x25, [sp, #0xc8]
000887d4: f9ef4da9 ldp        x25, x27, [sp, #0xd8]
000887d8: fb6702a9 stp        x27, x25, [sp, #0x20]
000887dc: e9234fa9 ldp        x9, x8, [sp, #0xf0]
000887e0: e82701a9 stp        x8, x9, [sp, #0x10]
000887e4: f35f00f9 str        x19, [sp, #0xb8]
000887e8: f37740f9 ldr        x19, [sp, #0xe8]
000887ec: f36b00a9 stp        x19, x26, [sp]
000887f0: a2020090 adrp       x2, #0xdc000
000887f4: 42403e91 add        x2, x2, #0xf90
000887f8: da720094 bl         #0xa5360 ; 
000887fc: e00314aa mov        x0, x20
00088800: bd6f0094 bl         #0xa46f4 ; 
00088804: e0031caa mov        x0, x28
00088808: bb6f0094 bl         #0xa46f4 ; 
0008880c: e00318aa mov        x0, x24
00088810: b96f0094 bl         #0xa46f4 ; 
00088814: e00315aa mov        x0, x21
00088818: b76f0094 bl         #0xa46f4 ; 
0008881c: e00317aa mov        x0, x23
00088820: b56f0094 bl         #0xa46f4 ; 
00088824: e00316aa mov        x0, x22
00088828: b36f0094 bl         #0xa46f4 ; 
0008882c: e05f40f9 ldr        x0, [sp, #0xb8]
00088830: b16f0094 bl         #0xa46f4 ; 
00088834: e06740f9 ldr        x0, [sp, #0xc8]
00088838: af6f0094 bl         #0xa46f4 ; 
0008883c: e00319aa mov        x0, x25
00088840: ad6f0094 bl         #0xa46f4 ; 
00088844: e0031baa mov        x0, x27
00088848: ab6f0094 bl         #0xa46f4 ; 
0008884c: e07b40f9 ldr        x0, [sp, #0xf0]
00088850: a96f0094 bl         #0xa46f4 ; 
00088854: e07f40f9 ldr        x0, [sp, #0xf8]
00088858: a76f0094 bl         #0xa46f4 ; 
0008885c: e00313aa mov        x0, x19
00088860: a56f0094 bl         #0xa46f4 ; 
00088864: e06340f9 ldr        x0, [sp, #0xc0]
00088868: a36f0094 bl         #0xa46f4 ; 
0008886c: e0031aaa mov        x0, x26
00088870: a16f0094 bl         #0xa46f4 ; 
00088874: f36b40f9 ldr        x19, [sp, #0xd0]
00088878: 73060091 add        x19, x19, #1
0008887c: f95740f9 ldr        x25, [sp, #0xa8]
00088880: e00319aa mov        x0, x25
00088884: 5f780094 bl         #0xa6a00 ; 
00088888: 7f0200eb cmp        x19, x0
0008888c: 23e9ff54 b.lo       #0x885b0
00088890: 28030090 adrp       x8, #0xec000
00088894: 139142f9 ldr        x19, [x8, #0x520]
00088898: e04f40f9 ldr        x0, [sp, #0x98]
0008889c: 51820094 bl         #0xa91e0 ; 
000888a0: fd031daa mov        x29, x29
000888a4: a46f0094 bl         #0xa4734 ; 
000888a8: f40300aa mov        x20, x0
000888ac: 7d9f0094 bl         #0xb06a0 ; 
000888b0: fd031daa mov        x29, x29
000888b4: a06f0094 bl         #0xa4734 ; 
000888b8: f50300aa mov        x21, x0
000888bc: 68020090 adrp       x8, #0xd4000
000888c0: 08f943f9 ldr        x8, [x8, #0x7f0]
000888c4: 1f0000f1 cmp        x0, #0
000888c8: 0201809a csel       x2, x8, x0, eq
000888cc: e00313aa mov        x0, x19
000888d0: 14730094 bl         #0xa5520 ; 
000888d4: fd031daa mov        x29, x29
000888d8: 976f0094 bl         #0xa4734 ; 
000888dc: fa0300aa mov        x26, x0
000888e0: e00315aa mov        x0, x21
000888e4: 846f0094 bl         #0xa46f4 ; 
000888e8: e00314aa mov        x0, x20
000888ec: 826f0094 bl         #0xa46f4 ; 
000888f0: e0031aaa mov        x0, x26
000888f4: 43780094 bl         #0xa6a00 ; 
000888f8: 001100b4 cbz        x0, #0x88b18
000888fc: 38058052 mov        w24, #0x29
00088900: fa7300f9 str        x26, [sp, #0xe0]
00088904: 180700f1 subs       x24, x24, #1
00088908: 80100054 b.eq       #0x88b18
0008890c: e0031aaa mov        x0, x26
00088910: fc810094 bl         #0xa9100 ; 
00088914: fd031daa mov        x29, x29
00088918: 876f0094 bl         #0xa4734 ; 
0008891c: f40300aa mov        x20, x0
00088920: e0031aaa mov        x0, x26
00088924: 478a0094 bl         #0xab240 ; 
00088928: e00314aa mov        x0, x20
0008892c: 9d880094 bl         #0xaaba0 ; 
00088930: fd031daa mov        x29, x29
00088934: 806f0094 bl         #0xa4734 ; 
00088938: f50300aa mov        x21, x0
0008893c: e00314aa mov        x0, x20
00088940: 5d6f0094 bl         #0xa46b4 ; 
00088944: e86d0094 bl         #0xa40e4 ; 
00088948: fd031daa mov        x29, x29
0008894c: 7a6f0094 bl         #0xa4734 ; 
00088950: f30300aa mov        x19, x0
00088954: e00314aa mov        x0, x20
00088958: 7a9f0094 bl         #0xb0740 ; 
0008895c: fd031daa mov        x29, x29
00088960: 756f0094 bl         #0xa4734 ; 
00088964: fa0300aa mov        x26, x0
00088968: e00314aa mov        x0, x20
0008896c: 657c0094 bl         #0xa7b00 ; 
00088970: d56d0094 bl         #0xa40c4 ; 
00088974: fd031daa mov        x29, x29
00088978: 6f6f0094 bl         #0xa4734 ; 
0008897c: f90300aa mov        x25, x0
00088980: e00314aa mov        x0, x20
00088984: 8f740094 bl         #0xa5bc0 ; 
00088988: cf6d0094 bl         #0xa40c4 ; 
0008898c: fd031daa mov        x29, x29
00088990: 696f0094 bl         #0xa4734 ; 
00088994: e07f00f9 str        x0, [sp, #0xf8]
00088998: e00314aa mov        x0, x20
0008899c: 11880094 bl         #0xaa9e0 ; 
000889a0: c56d0094 bl         #0xa40b4 ; 
000889a4: fd031daa mov        x29, x29
000889a8: 636f0094 bl         #0xa4734 ; 
000889ac: fb0300aa mov        x27, x0
000889b0: 28030090 adrp       x8, #0xec000
000889b4: 1cfd42f9 ldr        x28, [x8, #0x5f8]
000889b8: f87b00f9 str        x24, [sp, #0xf0]
000889bc: f60313aa mov        x22, x19
000889c0: b40000b4 cbz        x20, #0x889d4
000889c4: e8030491 add        x8, sp, #0x100
000889c8: e00314aa mov        x0, x20
000889cc: ada10094 bl         #0xb1080 ; 
000889d0: 06000014 b          #0x889e8 ; 
000889d4: 00e4006f movi       v0.2d, #0000000000000000
000889d8: e0030bad stp        q0, q0, [sp, #0x160]
000889dc: e0030aad stp        q0, q0, [sp, #0x140]
000889e0: e00309ad stp        q0, q0, [sp, #0x120]
000889e4: e00308ad stp        q0, q0, [sp, #0x100]
000889e8: e2030491 add        x2, sp, #0x100
000889ec: e0031caa mov        x0, x28
000889f0: 54a30094 bl         #0xb1740 ; 
000889f4: fd031daa mov        x29, x29
000889f8: 4f6f0094 bl         #0xa4734 ; 
000889fc: fc0300aa mov        x28, x0
00088a00: e00315aa mov        x0, x21
00088a04: 3f7c0094 bl         #0xa7b00 ; 
00088a08: af6d0094 bl         #0xa40c4 ; 
00088a0c: fd031daa mov        x29, x29
00088a10: 496f0094 bl         #0xa4734 ; 
00088a14: f30300aa mov        x19, x0
00088a18: e00315aa mov        x0, x21
00088a1c: 69740094 bl         #0xa5bc0 ; 
00088a20: a96d0094 bl         #0xa40c4 ; 
00088a24: fd031daa mov        x29, x29
00088a28: 436f0094 bl         #0xa4734 ; 
00088a2c: f70300aa mov        x23, x0
00088a30: e00314aa mov        x0, x20
00088a34: 737b0094 bl         #0xa7800 ; 
00088a38: fd031daa mov        x29, x29
00088a3c: 3e6f0094 bl         #0xa4734 ; 
00088a40: f57700f9 str        x21, [sp, #0xe8]
00088a44: f50300aa mov        x21, x0
00088a48: f70304a9 stp        x23, x0, [sp, #0x40]
00088a4c: fc4f03a9 stp        x28, x19, [sp, #0x30]
00088a50: fb1700f9 str        x27, [sp, #0x28]
00088a54: f8031baa mov        x24, x27
00088a58: fb7f40f9 ldr        x27, [sp, #0xf8]
00088a5c: f9ef01a9 stp        x25, x27, [sp, #0x18]
00088a60: f6eb00a9 stp        x22, x26, [sp, #8]
00088a64: f40300f9 str        x20, [sp]
00088a68: e05b40f9 ldr        x0, [sp, #0xb0]
00088a6c: a2020090 adrp       x2, #0xdc000
00088a70: 42c03e91 add        x2, x2, #0xfb0
00088a74: 3b720094 bl         #0xa5360 ; 
00088a78: e00315aa mov        x0, x21
00088a7c: 1e6f0094 bl         #0xa46f4 ; 
00088a80: e00317aa mov        x0, x23
00088a84: 1c6f0094 bl         #0xa46f4 ; 
00088a88: e00313aa mov        x0, x19
00088a8c: 1a6f0094 bl         #0xa46f4 ; 
00088a90: e0031caa mov        x0, x28
00088a94: 186f0094 bl         #0xa46f4 ; 
00088a98: e00318aa mov        x0, x24
00088a9c: 166f0094 bl         #0xa46f4 ; 
00088aa0: e0031baa mov        x0, x27
00088aa4: 146f0094 bl         #0xa46f4 ; 
00088aa8: e00319aa mov        x0, x25
00088aac: 126f0094 bl         #0xa46f4 ; 
00088ab0: e0031aaa mov        x0, x26
00088ab4: 106f0094 bl         #0xa46f4 ; 
00088ab8: e00316aa mov        x0, x22
00088abc: 0e6f0094 bl         #0xa46f4 ; 
00088ac0: e00314aa mov        x0, x20
00088ac4: f79e0094 bl         #0xb06a0 ; 
00088ac8: fd031daa mov        x29, x29
00088acc: 1a6f0094 bl         #0xa4734 ; 
00088ad0: f30300aa mov        x19, x0
00088ad4: 1f0000f1 cmp        x0, #0
00088ad8: 68020090 adrp       x8, #0xd4000
00088adc: 08f943f9 ldr        x8, [x8, #0x7f0]
00088ae0: 0201809a csel       x2, x8, x0, eq
00088ae4: fa7340f9 ldr        x26, [sp, #0xe0]
00088ae8: e0031aaa mov        x0, x26
00088aec: 05710094 bl         #0xa4f00 ; 
00088af0: e00313aa mov        x0, x19
00088af4: 006f0094 bl         #0xa46f4 ; 
00088af8: e07740f9 ldr        x0, [sp, #0xe8]
00088afc: fe6e0094 bl         #0xa46f4 ; 
00088b00: e00314aa mov        x0, x20
00088b04: fc6e0094 bl         #0xa46f4 ; 
00088b08: e0031aaa mov        x0, x26
00088b0c: bd770094 bl         #0xa6a00 ; 
00088b10: f87b40f9 ldr        x24, [sp, #0xf0]
00088b14: 80efffb5 cbnz       x0, #0x88904
00088b18: e04f40f9 ldr        x0, [sp, #0x98]
00088b1c: 119f0094 bl         #0xb0760 ; 
00088b20: fd031daa mov        x29, x29
00088b24: 046f0094 bl         #0xa4734 ; 
00088b28: f95b40f9 ldr        x25, [sp, #0xb0]
00088b2c: e00600b4 cbz        x0, #0x88c08
00088b30: f30300aa mov        x19, x0
00088b34: b4020090 adrp       x20, #0xdc000
00088b38: 94423f91 add        x20, x20, #0xfd0
00088b3c: e00313aa mov        x0, x19
00088b40: dd6e0094 bl         #0xa46b4 ; 
00088b44: 686d0094 bl         #0xa40e4 ; 
00088b48: fd031daa mov        x29, x29
00088b4c: fa6e0094 bl         #0xa4734 ; 
00088b50: f50300aa mov        x21, x0
00088b54: e00313aa mov        x0, x19
00088b58: ea7b0094 bl         #0xa7b00 ; 
00088b5c: 5a6d0094 bl         #0xa40c4 ; 
00088b60: fd031daa mov        x29, x29
00088b64: f46e0094 bl         #0xa4734 ; 
00088b68: f60300aa mov        x22, x0
00088b6c: e00313aa mov        x0, x19
00088b70: 14740094 bl         #0xa5bc0 ; 
00088b74: 546d0094 bl         #0xa40c4 ; 
00088b78: fd031daa mov        x29, x29
00088b7c: ee6e0094 bl         #0xa4734 ; 
00088b80: f70300aa mov        x23, x0
00088b84: e8030491 add        x8, sp, #0x100
00088b88: e00313aa mov        x0, x19
00088b8c: 3da10094 bl         #0xb1080 ; 
00088b90: e0030491 add        x0, sp, #0x100
00088b94: 446d0094 bl         #0xa40a4 ; 
00088b98: fd031daa mov        x29, x29
00088b9c: e66e0094 bl         #0xa4734 ; 
00088ba0: f80300aa mov        x24, x0
00088ba4: e00313aa mov        x0, x19
00088ba8: f6740094 bl         #0xa5f80 ; 
00088bac: f80302a9 stp        x24, x0, [sp, #0x20]
00088bb0: f65f01a9 stp        x22, x23, [sp, #0x10]
00088bb4: f35700a9 stp        x19, x21, [sp]
00088bb8: e00319aa mov        x0, x25
00088bbc: e20314aa mov        x2, x20
00088bc0: e8710094 bl         #0xa5360 ; 
00088bc4: e00318aa mov        x0, x24
00088bc8: cb6e0094 bl         #0xa46f4 ; 
00088bcc: e00317aa mov        x0, x23
00088bd0: c96e0094 bl         #0xa46f4 ; 
00088bd4: e00316aa mov        x0, x22
00088bd8: c76e0094 bl         #0xa46f4 ; 
00088bdc: e00315aa mov        x0, x21
00088be0: c56e0094 bl         #0xa46f4 ; 
00088be4: e00313aa mov        x0, x19
00088be8: de9e0094 bl         #0xb0760 ; 
00088bec: fd031daa mov        x29, x29
00088bf0: d16e0094 bl         #0xa4734 ; 
00088bf4: f50300aa mov        x21, x0
00088bf8: e00313aa mov        x0, x19
00088bfc: be6e0094 bl         #0xa46f4 ; 
00088c00: f30315aa mov        x19, x21
00088c04: d5f9ffb5 cbnz       x21, #0x88b3c
00088c08: f90300f9 str        x25, [sp]
00088c0c: 80020090 adrp       x0, #0xd8000
00088c10: 00400891 add        x0, x0, #0x210
00088c14: e9650094 bl         #0xa23b8 ; _LGLog
00088c18: e0031aaa mov        x0, x26
00088c1c: b66e0094 bl         #0xa46f4 ; 
00088c20: e05740f9 ldr        x0, [sp, #0xa8]
00088c24: b46e0094 bl         #0xa46f4 ; 
00088c28: e00319aa mov        x0, x25
00088c2c: b26e0094 bl         #0xa46f4 ; 
00088c30: f55340f9 ldr        x21, [sp, #0xa0]
00088c34: e00315aa mov        x0, x21
00088c38: af6e0094 bl         #0xa46f4 ; 
00088c3c: a80358f8 ldur       x8, [x29, #-0x80]
00088c40: 69020090 adrp       x9, #0xd4000
00088c44: 299d44f9 ldr        x9, [x9, #0x938]
00088c48: 290140f9 ldr        x9, [x9]
00088c4c: 3f0108eb cmp        x9, x8
00088c50: e1030054 b.ne       #0x88ccc
00088c54: ff430791 add        sp, sp, #0x1d0
00088c58: fd7b47a9 ldp        x29, x30, [sp, #0x70]
00088c5c: f44f46a9 ldp        x20, x19, [sp, #0x60]
00088c60: f65745a9 ldp        x22, x21, [sp, #0x50]
00088c64: f85f44a9 ldp        x24, x23, [sp, #0x40]
00088c68: fa6743a9 ldp        x26, x25, [sp, #0x30]
00088c6c: fc6f42a9 ldp        x28, x27, [sp, #0x20]
00088c70: e923416d ldp        d9, d8, [sp, #0x10]
00088c74: eb2bc86c ldp        d11, d10, [sp], #0x80
00088c78: ff0f5fd6 retab      
00088c7c: 17008052 mov        w23, #0
00088c80: 013740bd ldr        s1, [x24, #0x34]
00088c84: 2900261e fmov       w9, s1
00088c88: 29790012 and        w9, w9, #0x7fffffff
00088c8c: 3f01086b cmp        w9, w8
00088c90: ecacff54 b.gt       #0x8822c
00088c94: 0820201e fcmp       s0, #0.0
00088c98: adacff54 b.le       #0x8822c
00088c9c: 2820201e fcmp       s1, #0.0
00088ca0: 6dacff54 b.le       #0x8822c
00088ca4: 083b40b9 ldr        w8, [x24, #0x38]
00088ca8: 08050051 sub        w8, w8, #1
00088cac: 1f110071 cmp        w8, #4
00088cb0: e8279f1a cset       w8, lo
00088cb4: a264020f movi       v2.2s, #0x45, lsl #24
00088cb8: 2020221e fcmp       s1, s2
00088cbc: 0294221e fccmp      s0, s2, #2, ls
00088cc0: e9879f1a cset       w9, ls
00088cc4: 3701080a and        w23, w9, w8
00088cc8: 59fdff17 b          #0x8822c ; 
00088ccc: 426d0094 bl         #0xa41d4 ; 
