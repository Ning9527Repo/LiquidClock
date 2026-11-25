backboard arm64e VA 0x11f6c..0x12748; fat slice offset 0x94000
; __ZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbi |  | __ZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbi | 
00011f6c: 7f2303d5 pacibsp    
00011f70: fc6fbea9 stp        x28, x27, [sp, #-0x20]!
00011f74: fd7b01a9 stp        x29, x30, [sp, #0x10]
00011f78: fd430091 add        x29, sp, #0x10
00011f7c: ff4309d1 sub        sp, sp, #0x250
00011f80: a88303d1 sub        x8, x29, #0xe0
00011f84: e87700f9 str        x8, [sp, #0xe8]
00011f88: e06300f9 str        x0, [sp, #0xc0]
00011f8c: e00301aa mov        x0, x1
00011f90: e16340f9 ldr        x1, [sp, #0xc0]
00011f94: e06700f9 str        x0, [sp, #0xc8]
00011f98: e26b00f9 str        x2, [sp, #0xd0]
00011f9c: e36f00f9 str        x3, [sp, #0xd8]
00011fa0: e47300f9 str        x4, [sp, #0xe0]
00011fa4: e5f700b9 str        w5, [sp, #0xf4]
00011fa8: e6fb00b9 str        w6, [sp, #0xf8]
00011fac: a0a300d1 sub        x0, x29, #0x28
00011fb0: 1f5d00f9 str        xzr, [x8, #0xb8]
00011fb4: ce570094 bl         #0x27eec ; 
00011fb8: e16740f9 ldr        x1, [sp, #0xc8]
00011fbc: e26b40f9 ldr        x2, [sp, #0xd0]
00011fc0: e36f40f9 ldr        x3, [sp, #0xd8]
00011fc4: e47340f9 ldr        x4, [sp, #0xe0]
00011fc8: e87740f9 ldr        x8, [sp, #0xe8]
00011fcc: e5f740b9 ldr        w5, [sp, #0xf4]
00011fd0: e6fb40b9 ldr        w6, [sp, #0xf8]
00011fd4: 015900f9 str        x1, [x8, #0xb0]
00011fd8: 025500f9 str        x2, [x8, #0xa8]
00011fdc: 035100f9 str        x3, [x8, #0xa0]
00011fe0: 044d00f9 str        x4, [x8, #0x98]
00011fe4: a5731b38 sturb      w5, [x29, #-0x49]
00011fe8: a6031bb8 stur       w6, [x29, #-0x50]
00011fec: 40010090 adrp       x0, #0x39000
00011ff0: 00e02091 add        x0, x0, #0x838
00011ff4: 9a580094 bl         #0x2825c ; 
00011ff8: a8035bb8 ldur       w8, [x29, #-0x50]
00011ffc: c800f837 tbnz       w8, #0x1f, #0x12014
00012000: 01000014 b          #0x12004 ; 
00012004: a8035bb8 ldur       w8, [x29, #-0x50]
00012008: 08090011 add        w8, w8, #2
0001200c: e8bf00b9 str        w8, [sp, #0xbc]
00012010: 08000014 b          #0x12030 ; 
00012014: a9735b38 ldurb      w9, [x29, #-0x49]
00012018: 08008052 mov        w8, #0
0001201c: 29010012 and        w9, w9, #1
00012020: 29010072 ands       w9, w9, #1
00012024: 08059f1a csinc      w8, w8, wzr, eq
00012028: e8bf00b9 str        w8, [sp, #0xbc]
0001202c: 01000014 b          #0x12030 ; 
00012030: e97740f9 ldr        x9, [sp, #0xe8]
00012034: eabf40b9 ldr        w10, [sp, #0xbc]
00012038: e8030aaa mov        x8, x10
0001203c: 0a7d4093 sxtw       x10, w8
00012040: 280100d0 adrp       x8, #0x38000
00012044: 08e11191 add        x8, x8, #0x478
00012048: 08150a8b add        x8, x8, x10, lsl #5
0001204c: 284500f9 str        x8, [x9, #0x88]
00012050: a8035bb8 ldur       w8, [x29, #-0x50]
00012054: 0801f837 tbnz       w8, #0x1f, #0x12074
00012058: 01000014 b          #0x1205c ; 
0001205c: a1035bb8 ldur       w1, [x29, #-0x50]
00012060: 08008052 mov        w8, #0
00012064: 00010012 and        w0, w8, #1
00012068: 53560094 bl         #0x279b4 ;  | _LGClockPosterFieldMap |  | _LGClockPosterFieldMap
0001206c: e05b00f9 str        x0, [sp, #0xb0]
00012070: 11000014 b          #0x120b4 ; 
00012074: a8735b38 ldurb      w8, [x29, #-0x49]
00012078: e8000036 tbz        w8, #0, #0x12094
0001207c: 01000014 b          #0x12080 ; 
00012080: 08008052 mov        w8, #0
00012084: 00010012 and        w0, w8, #1
00012088: ac550094 bl         #0x27738 ;  | _LGClockEditorFieldMap |  | _LGClockEditorFieldMap
0001208c: e05700f9 str        x0, [sp, #0xa8]
00012090: 06000014 b          #0x120a8 ; 
00012094: 08008052 mov        w8, #0
00012098: 00010012 and        w0, w8, #1
0001209c: 03050094 bl         #0x134a8 ; __ZL15LGClockFieldMapb |  | __ZL15LGClockFieldMapb | 
000120a0: e05700f9 str        x0, [sp, #0xa8]
000120a4: 01000014 b          #0x120a8 ; 
000120a8: e85740f9 ldr        x8, [sp, #0xa8]
000120ac: e85b00f9 str        x8, [sp, #0xb0]
000120b0: 01000014 b          #0x120b4 ; 
000120b4: e87740f9 ldr        x8, [sp, #0xe8]
000120b8: e95b40f9 ldr        x9, [sp, #0xb0]
000120bc: 094100f9 str        x9, [x8, #0x80]
000120c0: 084140f9 ldr        x8, [x8, #0x80]
000120c4: 082800b4 cbz        x8, #0x125c4
000120c8: 01000014 b          #0x120cc ; 
000120cc: e87740f9 ldr        x8, [sp, #0xe8]
000120d0: 094140f9 ldr        x9, [x8, #0x80]
000120d4: 29210091 add        x9, x9, #8
000120d8: 29c1bff8 ldapr      x9, [x9]
000120dc: 093900f9 str        x9, [x8, #0x70]
000120e0: 093940f9 ldr        x9, [x8, #0x70]
000120e4: 093d00f9 str        x9, [x8, #0x78]
000120e8: 083d40f9 ldr        x8, [x8, #0x78]
000120ec: a8240037 tbnz       w8, #0, #0x12580
000120f0: 01000014 b          #0x120f4 ; 
000120f4: e87740f9 ldr        x8, [sp, #0xe8]
000120f8: 014140f9 ldr        x1, [x8, #0x80]
000120fc: a0c302d1 sub        x0, x29, #0xb0
00012100: e05300f9 str        x0, [sp, #0xa0]
00012104: 020880d2 mov        x2, #0x40
00012108: 01580094 bl         #0x2810c ; 
0001210c: e05340f9 ldr        x0, [sp, #0xa0]
00012110: d70d0094 bl         #0x1586c ; __ZL17LGClockFieldValidPK18LGClockFieldHeader |  | __ZL17LGClockFieldValidPK18LGClockFieldHeader | 
00012114: e0000037 tbnz       w0, #0, #0x12130
00012118: 01000014 b          #0x1211c ; 
0001211c: e87740f9 ldr        x8, [sp, #0xe8]
00012120: 004540f9 ldr        x0, [x8, #0x88]
00012124: 010080d2 mov        x1, #0
00012128: 71570094 bl         #0x27eec ; 
0001212c: 14010014 b          #0x1257c ; 
00012130: e87740f9 ldr        x8, [sp, #0xe8]
00012134: 092540f9 ldr        x9, [x8, #0x48]
00012138: 084540f9 ldr        x8, [x8, #0x88]
0001213c: 0a0540f9 ldr        x10, [x8, #8]
00012140: 08008052 mov        w8, #0
00012144: 08010012 and        w8, w8, #1
00012148: 08010012 and        w8, w8, #1
0001214c: a8731438 sturb      w8, [x29, #-0xb9]
00012150: 28008052 mov        w8, #1
00012154: 29010aeb subs       x9, x9, x10
00012158: e89f00b9 str        w8, [sp, #0x9c]
0001215c: a1030054 b.ne       #0x121d0
00012160: 01000014 b          #0x12164 ; 
00012164: e87740f9 ldr        x8, [sp, #0xe8]
00012168: 092140f9 ldr        x9, [x8, #0x40]
0001216c: 084540f9 ldr        x8, [x8, #0x88]
00012170: 0a0940f9 ldr        x10, [x8, #0x10]
00012174: 28008052 mov        w8, #1
00012178: 29010aeb subs       x9, x9, x10
0001217c: e89f00b9 str        w8, [sp, #0x9c]
00012180: 81020054 b.ne       #0x121d0
00012184: 01000014 b          #0x12188 ; 
00012188: e87740f9 ldr        x8, [sp, #0xe8]
0001218c: e14b40f9 ldr        x1, [sp, #0x90]
00012190: 084540f9 ldr        x8, [x8, #0x88]
00012194: 000140f9 ldr        x0, [x8]
00012198: 725a0094 bl         #0x28b60 ; _objc_msgSend$device
0001219c: fd031daa mov        x29, x29
000121a0: 4b570094 bl         #0x27ecc ; 
000121a4: e87740f9 ldr        x8, [sp, #0xe8]
000121a8: 001500f9 str        x0, [x8, #0x28]
000121ac: 29008052 mov        w9, #1
000121b0: 29010012 and        w9, w9, #1
000121b4: 29010012 and        w9, w9, #1
000121b8: a9731438 sturb      w9, [x29, #-0xb9]
000121bc: 085d40f9 ldr        x8, [x8, #0xb8]
000121c0: 080008eb subs       x8, x0, x8
000121c4: e8079f1a cset       w8, ne
000121c8: e89f00b9 str        w8, [sp, #0x9c]
000121cc: 01000014 b          #0x121d0 ; 
000121d0: e89f40b9 ldr        w8, [sp, #0x9c]
000121d4: e88f00b9 str        w8, [sp, #0x8c]
000121d8: a8735438 ldurb      w8, [x29, #-0xb9]
000121dc: 08010036 tbz        w8, #0, #0x121fc
000121e0: 01000014 b          #0x121e4 ; 
000121e4: e87740f9 ldr        x8, [sp, #0xe8]
000121e8: 001540f9 ldr        x0, [x8, #0x28]
000121ec: 080100d0 adrp       x8, #0x34000
000121f0: 081143f9 ldr        x8, [x8, #0x620]
000121f4: 00013fd6 blr        x8
000121f8: 01000014 b          #0x121fc ; 
000121fc: e88f40b9 ldr        w8, [sp, #0x8c]
00012200: c81b0036 tbz        w8, #0, #0x12578
00012204: 01000014 b          #0x12208 ; 
00012208: e87740f9 ldr        x8, [sp, #0xe8]
0001220c: e14b40f9 ldr        x1, [sp, #0x90]
00012210: a98357b8 ldur       w9, [x29, #-0x88]
00012214: aac357b8 ldur       w10, [x29, #-0x84]
00012218: 297d0a9b mul        x9, x9, x10
0001221c: 29f57ed3 lsl        x9, x9, #2
00012220: 090d00f9 str        x9, [x8, #0x18]
00012224: 290100d0 adrp       x9, #0x38000
00012228: 200941f9 ldr        x0, [x9, #0x210]
0001222c: 020d40f9 ldr        x2, [x8, #0x18]
00012230: 445a0094 bl         #0x28b40 ; _objc_msgSend$dataWithLength:
00012234: fd031daa mov        x29, x29
00012238: 25570094 bl         #0x27ecc ; 
0001223c: e87740f9 ldr        x8, [sp, #0xe8]
00012240: 000900f9 str        x0, [x8, #0x10]
00012244: 000940f9 ldr        x0, [x8, #0x10]
00012248: e04300f9 str        x0, [sp, #0x80]
0001224c: 24570094 bl         #0x27edc ; 
00012250: e04340f9 ldr        x0, [sp, #0x80]
00012254: e14b40f9 ldr        x1, [sp, #0x90]
00012258: 9a5a0094 bl         #0x28cc0 ; _objc_msgSend$mutableBytes
0001225c: e87740f9 ldr        x8, [sp, #0xe8]
00012260: 094140f9 ldr        x9, [x8, #0x80]
00012264: 21010191 add        x1, x9, #0x40
00012268: 020d40f9 ldr        x2, [x8, #0x18]
0001226c: a8570094 bl         #0x2810c ; 
00012270: e97740f9 ldr        x9, [sp, #0xe8]
00012274: 284140f9 ldr        x8, [x9, #0x80]
00012278: 08210091 add        x8, x8, #8
0001227c: 08c1bff8 ldapr      x8, [x8]
00012280: 280100f9 str        x8, [x9]
00012284: 280140f9 ldr        x8, [x9]
00012288: 280500f9 str        x8, [x9, #8]
0001228c: 283d40f9 ldr        x8, [x9, #0x78]
00012290: 290540f9 ldr        x9, [x9, #8]
00012294: 080109eb subs       x8, x8, x9
00012298: 81160054 b.ne       #0x12568
0001229c: 01000014 b          #0x122a0 ; 
000122a0: e87740f9 ldr        x8, [sp, #0xe8]
000122a4: 080540f9 ldr        x8, [x8, #8]
000122a8: 08160037 tbnz       w8, #0, #0x12568
000122ac: 01000014 b          #0x122b0 ; 
000122b0: e14b40f9 ldr        x1, [sp, #0x90]
000122b4: e87740f9 ldr        x8, [sp, #0xe8]
000122b8: 290100d0 adrp       x9, #0x38000
000122bc: 200941f9 ldr        x0, [x9, #0x210]
000122c0: 080d40f9 ldr        x8, [x8, #0x18]
000122c4: 490080d2 mov        x9, #2
000122c8: 0209c99a udiv       x2, x8, x9
000122cc: 1d5a0094 bl         #0x28b40 ; _objc_msgSend$dataWithLength:
000122d0: fd031daa mov        x29, x29
000122d4: fe560094 bl         #0x27ecc ; 
000122d8: e87740f9 ldr        x8, [sp, #0xe8]
000122dc: a08311f8 stur       x0, [x29, #-0xe8]
000122e0: 000940f9 ldr        x0, [x8, #0x10]
000122e4: e03b00f9 str        x0, [sp, #0x70]
000122e8: fd560094 bl         #0x27edc ; 
000122ec: e03b40f9 ldr        x0, [sp, #0x70]
000122f0: e14b40f9 ldr        x1, [sp, #0x90]
000122f4: d3590094 bl         #0x28a40 ; _objc_msgSend$bytes
000122f8: a00311f8 stur       x0, [x29, #-0xf0]
000122fc: a08351f8 ldur       x0, [x29, #-0xe8]
00012300: e03f00f9 str        x0, [sp, #0x78]
00012304: f6560094 bl         #0x27edc ; 
00012308: e03f40f9 ldr        x0, [sp, #0x78]
0001230c: e14b40f9 ldr        x1, [sp, #0x90]
00012310: 6c5a0094 bl         #0x28cc0 ; _objc_msgSend$mutableBytes
00012314: a08310f8 stur       x0, [x29, #-0xf8]
00012318: bf0310f8 stur       xzr, [x29, #-0x100]
0001231c: 01000014 b          #0x12320 ; 
00012320: e97740f9 ldr        x9, [sp, #0xe8]
00012324: a80350f8 ldur       x8, [x29, #-0x100]
00012328: 290d40f9 ldr        x9, [x9, #0x18]
0001232c: 8a0080d2 mov        x10, #4
00012330: 2909ca9a udiv       x9, x9, x10
00012334: 080109eb subs       x8, x8, x9
00012338: c2010054 b.hs       #0x12370
0001233c: 01000014 b          #0x12340 ; 
00012340: a80351f8 ldur       x8, [x29, #-0xf0]
00012344: a90350f8 ldur       x9, [x29, #-0x100]
00012348: 007969bc ldr        s0, [x8, x9, lsl #2]
0001234c: 00c0231e fcvt       h0, s0
00012350: a88350f8 ldur       x8, [x29, #-0xf8]
00012354: a90350f8 ldur       x9, [x29, #-0x100]
00012358: 0079297c str        h0, [x8, x9, lsl #1]
0001235c: 01000014 b          #0x12360 ; 
00012360: a80350f8 ldur       x8, [x29, #-0x100]
00012364: 08050091 add        x8, x8, #1
00012368: a80310f8 stur       x8, [x29, #-0x100]
0001236c: edffff17 b          #0x12320 ; 
00012370: e14b40f9 ldr        x1, [sp, #0x90]
00012374: 280100d0 adrp       x8, #0x38000
00012378: 000d41f9 ldr        x0, [x8, #0x218]
0001237c: a88357b8 ldur       w8, [x29, #-0x88]
00012380: e30308aa mov        x3, x8
00012384: a8c357b8 ldur       w8, [x29, #-0x84]
00012388: e40308aa mov        x4, x8
0001238c: 220380d2 mov        x2, #0x19
00012390: 08008052 mov        w8, #0
00012394: 05010012 and        w5, w8, #1
00012398: 4a5b0094 bl         #0x290c0 ; _objc_msgSend$texture2DDescriptorWithPixelFormat:width:height:mipmapped:
0001239c: fd031daa mov        x29, x29
000123a0: cb560094 bl         #0x27ecc ; 
000123a4: e14b40f9 ldr        x1, [sp, #0x90]
000123a8: e0af00f9 str        x0, [sp, #0x158]
000123ac: e0af40f9 ldr        x0, [sp, #0x158]
000123b0: 220080d2 mov        x2, #1
000123b4: 0b5b0094 bl         #0x28fe0 ; _objc_msgSend$setUsage:
000123b8: e14b40f9 ldr        x1, [sp, #0x90]
000123bc: e0af40f9 ldr        x0, [sp, #0x158]
000123c0: 020080d2 mov        x2, #0
000123c4: ef5a0094 bl         #0x28f80 ; _objc_msgSend$setStorageMode:
000123c8: e87740f9 ldr        x8, [sp, #0xe8]
000123cc: e14b40f9 ldr        x1, [sp, #0x90]
000123d0: 005d40f9 ldr        x0, [x8, #0xb8]
000123d4: e2af40f9 ldr        x2, [sp, #0x158]
000123d8: 625a0094 bl         #0x28d60 ; _objc_msgSend$newTextureWithDescriptor:
000123dc: e0ab00f9 str        x0, [sp, #0x150]
000123e0: e8ab40f9 ldr        x8, [sp, #0x150]
000123e4: c80a00b4 cbz        x8, #0x1253c
000123e8: 01000014 b          #0x123ec ; 
000123ec: e8ab40f9 ldr        x8, [sp, #0x150]
000123f0: e83700f9 str        x8, [sp, #0x68]
000123f4: a88357b8 ldur       w8, [x29, #-0x88]
000123f8: e20308aa mov        x2, x8
000123fc: a8c357b8 ldur       w8, [x29, #-0x84]
00012400: e30308aa mov        x3, x8
00012404: e8830491 add        x8, sp, #0x120
00012408: e82f00f9 str        x8, [sp, #0x58]
0001240c: 010080d2 mov        x1, #0
00012410: e13300f9 str        x1, [sp, #0x60]
00012414: e00301aa mov        x0, x1
00012418: 990d0094 bl         #0x15a7c ; __ZL15MTLRegionMake2Dmmmm |  | __ZL15MTLRegionMake2Dmmmm | 
0001241c: a08351f8 ldur       x0, [x29, #-0xe8]
00012420: e02b00f9 str        x0, [sp, #0x50]
00012424: ae560094 bl         #0x27edc ; 
00012428: e02b40f9 ldr        x0, [sp, #0x50]
0001242c: e14b40f9 ldr        x1, [sp, #0x90]
00012430: 84590094 bl         #0x28a40 ; _objc_msgSend$bytes
00012434: e14b40f9 ldr        x1, [sp, #0x90]
00012438: e22f40f9 ldr        x2, [sp, #0x58]
0001243c: e33340f9 ldr        x3, [sp, #0x60]
00012440: e40300aa mov        x4, x0
00012444: e03740f9 ldr        x0, [sp, #0x68]
00012448: a88357b8 ldur       w8, [x29, #-0x88]
0001244c: 05f97fd3 lsl        x5, x8, #1
00012450: 8c5a0094 bl         #0x28e80 ; _objc_msgSend$replaceRegion:mipmapLevel:withBytes:bytesPerRow:
00012454: e87740f9 ldr        x8, [sp, #0xe8]
00012458: e1ab40f9 ldr        x1, [sp, #0x150]
0001245c: 004540f9 ldr        x0, [x8, #0x88]
00012460: a3560094 bl         #0x27eec ; 
00012464: e87740f9 ldr        x8, [sp, #0xe8]
00012468: 092540f9 ldr        x9, [x8, #0x48]
0001246c: 0a4540f9 ldr        x10, [x8, #0x88]
00012470: 490500f9 str        x9, [x10, #8]
00012474: 092140f9 ldr        x9, [x8, #0x40]
00012478: 0a4540f9 ldr        x10, [x8, #0x88]
0001247c: 490900f9 str        x9, [x10, #0x10]
00012480: a10358bc ldur       s1, [x29, #-0x80]
00012484: a04358bc ldur       s0, [x29, #-0x7c]
00012488: a1c31ebc stur       s1, [x29, #-0x14]
0001248c: a0831ebc stur       s0, [x29, #-0x18]
00012490: a0c35ebc ldur       s0, [x29, #-0x14]
00012494: 026140fd ldr        d2, [x8, #0xc0]
00012498: 0140201e fmov       s1, s0
0001249c: 4040601e fmov       d0, d2
000124a0: 2004046e mov        v0.s[0], v1.s[0]
000124a4: 006100fd str        d0, [x8, #0xc0]
000124a8: a0835ebc ldur       s0, [x29, #-0x18]
000124ac: 026140fd ldr        d2, [x8, #0xc0]
000124b0: 0140201e fmov       s1, s0
000124b4: 4040601e fmov       d0, d2
000124b8: 20040c6e mov        v0.s[1], v1.s[0]
000124bc: 006100fd str        d0, [x8, #0xc0]
000124c0: 006140fd ldr        d0, [x8, #0xc0]
000124c4: 084540f9 ldr        x8, [x8, #0x88]
000124c8: 000d00fd str        d0, [x8, #0x18]
000124cc: 2a0100f0 adrp       x10, #0x39000
000124d0: 483d48b9 ldr        w8, [x10, #0x83c]
000124d4: 09050011 add        w9, w8, #1
000124d8: 493d08b9 str        w9, [x10, #0x83c]
000124dc: 080d0071 subs       w8, w8, #3
000124e0: c2020054 b.hs       #0x12538
000124e4: 01000014 b          #0x124e8 ; 
000124e8: e87740f9 ldr        x8, [sp, #0xe8]
000124ec: 0b2540f9 ldr        x11, [x8, #0x48]
000124f0: a88357b8 ldur       w8, [x29, #-0x88]
000124f4: ea0308aa mov        x10, x8
000124f8: a8c357b8 ldur       w8, [x29, #-0x84]
000124fc: e90308aa mov        x9, x8
00012500: a00358bc ldur       s0, [x29, #-0x80]
00012504: 01c0221e fcvt       d1, s0
00012508: a04358bc ldur       s0, [x29, #-0x7c]
0001250c: 00c0221e fcvt       d0, s0
00012510: e8030091 mov        x8, sp
00012514: 0b0100f9 str        x11, [x8]
00012518: 0a0500f9 str        x10, [x8, #8]
0001251c: 090900f9 str        x9, [x8, #0x10]
00012520: 010d00fd str        d1, [x8, #0x18]
00012524: 001100fd str        d0, [x8, #0x20]
00012528: e00000d0 adrp       x0, #0x30000
0001252c: 001c3891 add        x0, x0, #0xe07
00012530: 30d7ff97 bl         #0x81f0 ; __ZL5lglogPKcz |  | __ZL5lglogPKcz | 
00012534: 01000014 b          #0x12538 ; 
00012538: 01000014 b          #0x1253c ; 
0001253c: e0430591 add        x0, sp, #0x150
00012540: 010080d2 mov        x1, #0
00012544: e12700f9 str        x1, [sp, #0x48]
00012548: 69560094 bl         #0x27eec ; 
0001254c: e12740f9 ldr        x1, [sp, #0x48]
00012550: e0630591 add        x0, sp, #0x158
00012554: 66560094 bl         #0x27eec ; 
00012558: e12740f9 ldr        x1, [sp, #0x48]
0001255c: a0a303d1 sub        x0, x29, #0xe8
00012560: 63560094 bl         #0x27eec ; 
00012564: 01000014 b          #0x12568 ; 
00012568: a04303d1 sub        x0, x29, #0xd0
0001256c: 010080d2 mov        x1, #0
00012570: 5f560094 bl         #0x27eec ; 
00012574: 01000014 b          #0x12578 ; 
00012578: 01000014 b          #0x1257c ; 
0001257c: 01000014 b          #0x12580 ; 
00012580: e97740f9 ldr        x9, [sp, #0xe8]
00012584: 284140f9 ldr        x8, [x9, #0x80]
00012588: 08410091 add        x8, x8, #0x10
0001258c: 08c1bff8 ldapr      x8, [x8]
00012590: e88f00f9 str        x8, [sp, #0x118]
00012594: e88f40f9 ldr        x8, [sp, #0x118]
00012598: 294540f9 ldr        x9, [x9, #0x88]
0001259c: 290940f9 ldr        x9, [x9, #0x10]
000125a0: 080109eb subs       x8, x8, x9
000125a4: e0000054 b.eq       #0x125c0
000125a8: 01000014 b          #0x125ac ; 
000125ac: e87740f9 ldr        x8, [sp, #0xe8]
000125b0: 004540f9 ldr        x0, [x8, #0x88]
000125b4: 010080d2 mov        x1, #0
000125b8: 4d560094 bl         #0x27eec ; 
000125bc: 01000014 b          #0x125c0 ; 
000125c0: 01000014 b          #0x125c4 ; 
000125c4: e87740f9 ldr        x8, [sp, #0xe8]
000125c8: 084540f9 ldr        x8, [x8, #0x88]
000125cc: 000140f9 ldr        x0, [x8]
000125d0: 080100d0 adrp       x8, #0x34000
000125d4: 081543f9 ldr        x8, [x8, #0x628]
000125d8: 00013fd6 blr        x8
000125dc: e87740f9 ldr        x8, [sp, #0xe8]
000125e0: e08b00f9 str        x0, [sp, #0x110]
000125e4: 094540f9 ldr        x9, [x8, #0x88]
000125e8: 290540f9 ldr        x9, [x9, #8]
000125ec: 0a5940f9 ldr        x10, [x8, #0xb0]
000125f0: 490100f9 str        x9, [x10]
000125f4: 094540f9 ldr        x9, [x8, #0x88]
000125f8: 290940f9 ldr        x9, [x9, #0x10]
000125fc: 0a5540f9 ldr        x10, [x8, #0xa8]
00012600: 490100f9 str        x9, [x10]
00012604: 094540f9 ldr        x9, [x8, #0x88]
00012608: 200d40fd ldr        d0, [x9, #0x18]
0001260c: 095140f9 ldr        x9, [x8, #0xa0]
00012610: 200100fd str        d0, [x9]
00012614: 084140f9 ldr        x8, [x8, #0x80]
00012618: 480300b4 cbz        x8, #0x12680
0001261c: 01000014 b          #0x12620 ; 
00012620: e87740f9 ldr        x8, [sp, #0xe8]
00012624: 084540f9 ldr        x8, [x8, #0x88]
00012628: 080140f9 ldr        x8, [x8]
0001262c: a80200b4 cbz        x8, #0x12680
00012630: 01000014 b          #0x12634 ; 
00012634: e97740f9 ldr        x9, [sp, #0xe8]
00012638: 284140f9 ldr        x8, [x9, #0x80]
0001263c: 08410091 add        x8, x8, #0x10
00012640: 08c1bff8 ldapr      x8, [x8]
00012644: e88300f9 str        x8, [sp, #0x100]
00012648: e88340f9 ldr        x8, [sp, #0x100]
0001264c: 294540f9 ldr        x9, [x9, #0x88]
00012650: 290940f9 ldr        x9, [x9, #0x10]
00012654: 080109eb subs       x8, x8, x9
00012658: 41010054 b.ne       #0x12680
0001265c: 01000014 b          #0x12660 ; 
00012660: e87740f9 ldr        x8, [sp, #0xe8]
00012664: 084140f9 ldr        x8, [x8, #0x80]
00012668: 08e10091 add        x8, x8, #0x38
0001266c: 08c1bfb8 ldapr      w8, [x8]
00012670: e8ff00b9 str        w8, [sp, #0xfc]
00012674: e8ff40b9 ldr        w8, [sp, #0xfc]
00012678: e84700b9 str        w8, [sp, #0x44]
0001267c: 04000014 b          #0x1268c ; 
00012680: 28008052 mov        w8, #1
00012684: e84700b9 str        w8, [sp, #0x44]
00012688: 01000014 b          #0x1268c ; 
0001268c: e84740b9 ldr        w8, [sp, #0x44]
00012690: e80f01b9 str        w8, [sp, #0x10c]
00012694: e80f41b9 ldr        w8, [sp, #0x10c]
00012698: 08050071 subs       w8, w8, #1
0001269c: 23010054 b.lo       #0x126c0
000126a0: 01000014 b          #0x126a4 ; 
000126a4: e80f41b9 ldr        w8, [sp, #0x10c]
000126a8: 08110071 subs       w8, w8, #4
000126ac: a8000054 b.hi       #0x126c0
000126b0: 01000014 b          #0x126b4 ; 
000126b4: e80f41b9 ldr        w8, [sp, #0x10c]
000126b8: e84300b9 str        w8, [sp, #0x40]
000126bc: 04000014 b          #0x126cc ; 
000126c0: 28008052 mov        w8, #1
000126c4: e84300b9 str        w8, [sp, #0x40]
000126c8: 01000014 b          #0x126cc ; 
000126cc: e97740f9 ldr        x9, [sp, #0xe8]
000126d0: e84340b9 ldr        w8, [sp, #0x40]
000126d4: 294d40f9 ldr        x9, [x9, #0x98]
000126d8: 280100b9 str        w8, [x9]
000126dc: 200100f0 adrp       x0, #0x39000
000126e0: 00e02091 add        x0, x0, #0x838
000126e4: e6560094 bl         #0x2827c ; 
000126e8: e8430491 add        x8, sp, #0x110
000126ec: e81700f9 str        x8, [sp, #0x28]
000126f0: e08b40f9 ldr        x0, [sp, #0x110]
000126f4: 080100d0 adrp       x8, #0x34000
000126f8: 081543f9 ldr        x8, [x8, #0x628]
000126fc: 00013fd6 blr        x8
00012700: e10300aa mov        x1, x0
00012704: e01740f9 ldr        x0, [sp, #0x28]
00012708: e11f00f9 str        x1, [sp, #0x38]
0001270c: 010080d2 mov        x1, #0
00012710: e11b00f9 str        x1, [sp, #0x30]
00012714: f6550094 bl         #0x27eec ; 
00012718: e11b40f9 ldr        x1, [sp, #0x30]
0001271c: a0a300d1 sub        x0, x29, #0x28
00012720: f3550094 bl         #0x27eec ; 
00012724: e01f40f9 ldr        x0, [sp, #0x38]
00012728: ff430991 add        sp, sp, #0x250
0001272c: fd7b41a9 ldp        x29, x30, [sp, #0x10]
00012730: fc6fc2a8 ldp        x28, x27, [sp], #0x20
00012734: ff2303d5 autibsp    
00012738: d0071eca eor        x16, x30, x30, lsl #1
0001273c: 5000f0b6 tbz        x16, #0x3e, #0x12744
00012740: 208e38d4 brk        #0xc471
00012744: aa560014 b          #0x281ec ; 
