0000acc0 7f2303d5 pacibsp                                                  ; __ZL4CR13PvS_S_S_fS_fbS_S_S_Pf||__ZL4CR13PvS_S_S_fS_fbS_S_S_Pf|
0000acc4 fc6fbea9 stp        x28, x27, [sp, #-0x20]!                      
0000acc8 fd7b01a9 stp        x29, x30, [sp, #0x10]                        
0000accc fd430091 add        x29, sp, #0x10                               
0000acd0 ff0331d1 sub        sp, sp, #0xc40                               
0000acd4 e9c31891 add        x9, sp, #0x630                               
0000acd8 e9d302f9 str        x9, [sp, #0x5a0]                             
0000acdc 480100d0 adrp       x8, #0x34000                                 
0000ace0 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000ace4 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
0000ace8 a8831ef8 stur       x8, [x29, #-0x18]                            
0000acec 20c501f9 str        x0, [x9, #0x388]                             
0000acf0 21c101f9 str        x1, [x9, #0x380]                             
0000acf4 22bd01f9 str        x2, [x9, #0x378]                             
0000acf8 23b901f9 str        x3, [x9, #0x370]                             
0000acfc 206d03bd str        s0, [x9, #0x36c]                             
0000ad00 24b101f9 str        x4, [x9, #0x360]                             
0000ad04 215d03bd str        s1, [x9, #0x35c]                             
0000ad08 e52f2639 strb       w5, [sp, #0x98b]                             
0000ad0c 26a901f9 str        x6, [x9, #0x350]                             
0000ad10 27a501f9 str        x7, [x9, #0x348]                             
0000ad14 28b941f9 ldr        x8, [x9, #0x370]                             
0000ad18 28a101f9 str        x8, [x9, #0x340]                             
0000ad1c 28b141f9 ldr        x8, [x9, #0x360]                             
0000ad20 289d01f9 str        x8, [x9, #0x338]                             
0000ad24 680100d0 adrp       x8, #0x38000                                 
0000ad28 083141f9 ldr        x8, [x8, #0x260]                              ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
0000ad2c c800f8b6 tbz        x8, #0x3f, #0xad44                           
0000ad30 01000014 b          #0xad34                                      
0000ad34 00010090 adrp       x0, #0x2a000                                 
0000ad38 00083591 add        x0, x0, #0xd42                                ; 'CR13: command-buffer offset unresolved, skipping'
0000ad3c 2df5ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ad40 880f0014 b          #0xeb60                                      
0000ad44 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000ad48 28a141f9 ldr        x8, [x9, #0x340]                             
0000ad4c 6a0100d0 adrp       x10, #0x38000                                
0000ad50 4a3141f9 ldr        x10, [x10, #0x260]                            ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
0000ad54 08696af8 ldr        x8, [x8, x10]                                
0000ad58 289901f9 str        x8, [x9, #0x330]                             
0000ad5c 680100d0 adrp       x8, #0x38000                                 
0000ad60 082541f9 ldr        x8, [x8, #0x248]                              ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
0000ad64 2801f8b7 tbnz       x8, #0x3f, #0xad88                           
0000ad68 01000014 b          #0xad6c                                      
0000ad6c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ad70 089d41f9 ldr        x8, [x8, #0x338]                             
0000ad74 690100d0 adrp       x9, #0x38000                                 
0000ad78 292541f9 ldr        x9, [x9, #0x248]                              ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
0000ad7c 086969f8 ldr        x8, [x8, x9]                                 
0000ad80 e8cf02f9 str        x8, [sp, #0x598]                             
0000ad84 04000014 b          #0xad94                                      
0000ad88 080080d2 mov        x8, #0                                       
0000ad8c e8cf02f9 str        x8, [sp, #0x598]                             
0000ad90 01000014 b          #0xad94                                      
0000ad94 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ad98 e9cf42f9 ldr        x9, [sp, #0x598]                             
0000ad9c 099501f9 str        x9, [x8, #0x328]                             
0000ada0 089941f9 ldr        x8, [x8, #0x330]                             
0000ada4 c80000b4 cbz        x8, #0xadbc                                  
0000ada8 01000014 b          #0xadac                                      
0000adac e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000adb0 089541f9 ldr        x8, [x8, #0x328]                             
0000adb4 880100b5 cbnz       x8, #0xade4                                  
0000adb8 01000014 b          #0xadbc                                      
0000adbc e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000adc0 289941f9 ldr        x8, [x9, #0x330]                             
0000adc4 2a9541f9 ldr        x10, [x9, #0x328]                            
0000adc8 e9030091 mov        x9, sp                                       
0000adcc 2a0500f9 str        x10, [x9, #8]                                
0000add0 280100f9 str        x8, [x9]                                     
0000add4 00010090 adrp       x0, #0x2a000                                 
0000add8 00cc3591 add        x0, x0, #0xd73                                ; 'CR13: early exit, cmdBuf=%p origTex=%p'
0000addc 05f5ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ade0 600f0014 b          #0xeb60                                      
0000ade4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ade8 099941f9 ldr        x9, [x8, #0x330]                             
0000adec 099101f9 str        x9, [x8, #0x320]                             
0000adf0 099541f9 ldr        x9, [x8, #0x328]                             
0000adf4 098d01f9 str        x9, [x8, #0x318]                             
0000adf8 008d41f9 ldr        x0, [x8, #0x318]                             
0000adfc 59770094 bl         #0x28b60                                      ; _objc_msgSend$device
0000ae00 fd031daa mov        x29, x29                                     
0000ae04 02750094 bl         #0x2820c                                      ; _objc_unsafeClaimAutoreleasedReturnValue
0000ae08 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ae0c 008901f9 str        x0, [x8, #0x310]                             
0000ae10 088941f9 ldr        x8, [x8, #0x310]                             
0000ae14 c80000b5 cbnz       x8, #0xae2c                                  
0000ae18 01000014 b          #0xae1c                                      
0000ae1c 00010090 adrp       x0, #0x2a000                                 
0000ae20 00683691 add        x0, x0, #0xd9a                                ; 'CR13: origTex has no device, skip'
0000ae24 f3f4ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ae28 4e0f0014 b          #0xeb60                                      
0000ae2c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ae30 008d41f9 ldr        x0, [x8, #0x318]                             
0000ae34 b3780094 bl         #0x29100                                      ; _objc_msgSend$width
0000ae38 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ae3c 008501f9 str        x0, [x8, #0x308]                             
0000ae40 008d41f9 ldr        x0, [x8, #0x318]                             
0000ae44 7f770094 bl         #0x28c40                                      ; _objc_msgSend$height
0000ae48 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ae4c 008101f9 str        x0, [x8, #0x300]                             
0000ae50 088541f9 ldr        x8, [x8, #0x308]                             
0000ae54 c80000b4 cbz        x8, #0xae6c                                  
0000ae58 01000014 b          #0xae5c                                      
0000ae5c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ae60 088141f9 ldr        x8, [x8, #0x300]                             
0000ae64 c80000b5 cbnz       x8, #0xae7c                                  
0000ae68 01000014 b          #0xae6c                                      
0000ae6c 00010090 adrp       x0, #0x2a000                                 
0000ae70 00f03691 add        x0, x0, #0xdbc                                ; 'CR13: zero dims, skip'
0000ae74 dff4ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ae78 3a0f0014 b          #0xeb60                                      
0000ae7c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ae80 008941f9 ldr        x0, [x8, #0x310]                             
0000ae84 33180094 bl         #0x10f50                                      ; __ZL14ensurePipelinePU19objcproto9MTLDevice11objc_object||__ZL14ensurePipelinePU19objcproto9MTLDevice11objc_object|
0000ae88 680100d0 adrp       x8, #0x38000                                 
0000ae8c 083542f9 ldr        x8, [x8, #0x468]                              ; __ZL15g_shaderLibrary|__ZL15g_shaderLibrary
0000ae90 c80000b5 cbnz       x8, #0xaea8                                  
0000ae94 01000014 b          #0xae98                                      
0000ae98 00010090 adrp       x0, #0x2a000                                 
0000ae9c 00483791 add        x0, x0, #0xdd2                                ; 'CR13: no shader library'
0000aea0 d4f4ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000aea4 2f0f0014 b          #0xeb60                                      
0000aea8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000aeac 008941f9 ldr        x0, [x8, #0x310]                             
0000aeb0 018541f9 ldr        x1, [x8, #0x308]                             
0000aeb4 028141f9 ldr        x2, [x8, #0x300]                             
0000aeb8 8d180094 bl         #0x110ec                                      ; __ZL14ensureUniformsPU19objcproto9MTLDevice11objc_objectyy||__ZL14ensureUniformsPU19objcproto9MTLDevice11objc_objectyy|
0000aebc 680100d0 adrp       x8, #0x38000                                 
0000aec0 083942f9 ldr        x8, [x8, #0x470]                              ; __ZL13g_uniformsBuf|__ZL13g_uniformsBuf
0000aec4 c80000b5 cbnz       x8, #0xaedc                                  
0000aec8 01000014 b          #0xaecc                                      
0000aecc 00010090 adrp       x0, #0x2a000                                 
0000aed0 00a83791 add        x0, x0, #0xdea                                ; 'CR13: no uniforms buf'
0000aed4 c7f4ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000aed8 220f0014 b          #0xeb60                                      
0000aedc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000aee0 008541f9 ldr        x0, [x8, #0x308]                             
0000aee4 018141f9 ldr        x1, [x8, #0x300]                             
0000aee8 54190094 bl         #0x11438                                      ; __ZL22updateUniformsForFrameyy||__ZL22updateUniformsForFrameyy|
0000aeec 680100d0 adrp       x8, #0x38000                                 
0000aef0 003942f9 ldr        x0, [x8, #0x470]                              ; __ZL13g_uniformsBuf|__ZL13g_uniformsBuf
0000aef4 03770094 bl         #0x28b00                                      ; _objc_msgSend$contents
0000aef8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000aefc e0cb02f9 str        x0, [sp, #0x590]                             
0000af00 0000c03d ldr        q0, [x0]                                      ; 'CR13: no uniforms buf'
0000af04 0104c03d ldr        q1, [x0, #0x10]                               ; 's buf'
0000af08 0208c03d ldr        q2, [x0, #0x20]                               ; 'eyboard-geometry[%d] atom=0x%x tex=%llux%llu dark=%d route=%d routeHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af0c 030cc03d ldr        q3, [x0, #0x30]                               ; '[%d] atom=0x%x tex=%llux%llu dark=%d route=%d routeHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af10 039d803d str        q3, [x8, #0x270]                              ; __ZL30g_coverSheetCornerRadiusPoints|__ZL30g_coverSheetCornerRadiusPoints
0000af14 0299803d str        q2, [x8, #0x260]                              ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
0000af18 0195803d str        q1, [x8, #0x250]                              ; __ZL26g_destinationTextureOffset|__ZL26g_destinationTextureOffset
0000af1c 0091803d str        q0, [x8, #0x240]                              ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset
0000af20 0010c03d ldr        q0, [x0, #0x40]                               ; 'ex=%llux%llu dark=%d route=%d routeHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af24 0114c03d ldr        q1, [x0, #0x50]                               ; 'k=%d route=%d routeHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af28 0218c03d ldr        q2, [x0, #0x60]                               ; 'uteHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af2c 031cc03d ldr        q3, [x0, #0x70]                               ; 'atio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af30 03ad803d str        q3, [x8, #0x2b0]                              ; __ZZL19lgHostParamsForAtomjPbE6routed|__ZZL19lgHostParamsForAtomjPbE6routed
0000af34 02a9803d str        q2, [x8, #0x2a0]                             
0000af38 01a5803d str        q1, [x8, #0x290]                             
0000af3c 00a1803d str        q0, [x8, #0x280]                              ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000af40 0020c03d ldr        q0, [x0, #0x80]                               ; 'edRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af44 0124c03d ldr        q1, [x0, #0x90]                               ; 'ius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000af48 0228c03d ldr        q2, [x0, #0xa0]                               ; 'dth=%.3fpt bezel=%.3f'
0000af4c 032cc03d ldr        q3, [x0, #0xb0]                               ; '=%.3f'
0000af50 03bd803d str        q3, [x8, #0x2f0]                              ; __ZZL19lgHostParamsForAtomjPbE6routed$tlv$init|__ZZL19lgHostParamsForAtomjPbE6routed$tlv$init
0000af54 02b9803d str        q2, [x8, #0x2e0]                              ; __ZL16g_inLegacyRender$tlv$init|__ZL16g_inLegacyRender$tlv$init
0000af58 01b5803d str        q1, [x8, #0x2d0]                             
0000af5c 00b1803d str        q0, [x8, #0x2c0]                             
0000af60 09f0a752 mov        w9, #0x3f800000                              
0000af64 09ed02b9 str        w9, [x8, #0x2ec]                             
0000af68 09008052 mov        w9, #0                                       
0000af6c 09f102b9 str        w9, [x8, #0x2f0]                              ; __ZZL19lgHostParamsForAtomjPbE6routed$tlv$init|__ZZL19lgHostParamsForAtomjPbE6routed$tlv$init
0000af70 08c141f9 ldr        x8, [x8, #0x380]                             
0000af74 280100b4 cbz        x8, #0xaf98                                  
0000af78 01000014 b          #0xaf7c                                      
0000af7c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000af80 08c141f9 ldr        x8, [x8, #0x380]                             
0000af84 690100d0 adrp       x9, #0x38000                                 
0000af88 292141f9 ldr        x9, [x9, #0x240]                              ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset ; ->||||||||||||||||||||||||||||||
0000af8c 086969b8 ldr        w8, [x8, x9]                                 
0000af90 e88f05b9 str        w8, [sp, #0x58c]                             
0000af94 04000014 b          #0xafa4                                      
0000af98 08008052 mov        w8, #0                                       
0000af9c e88f05b9 str        w8, [sp, #0x58c]                             
0000afa0 01000014 b          #0xafa4                                      
0000afa4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000afa8 e98f45b9 ldr        w9, [sp, #0x58c]                             
0000afac 093d02b9 str        w9, [x8, #0x23c]                             
0000afb0 09008052 mov        w9, #0                                       
0000afb4 e9af2139 strb       w9, [sp, #0x86b]                             
0000afb8 003d42b9 ldr        w0, [x8, #0x23c]                             
0000afbc e1af2191 add        x1, sp, #0x86b                               
0000afc0 97190094 bl         #0x1161c                                      ; __ZL19lgHostParamsForAtomjPb||__ZL19lgHostParamsForAtomjPb|
0000afc4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000afc8 001901f9 str        x0, [x8, #0x230]                             
0000afcc 098541f9 ldr        x9, [x8, #0x308]                             
0000afd0 2001239e ucvtf      s0, x9                                       
0000afd4 098141f9 ldr        x9, [x8, #0x300]                             
0000afd8 2101239e ucvtf      s1, x9                                       
0000afdc 0078211e fminnm     s0, s0, s1                                   
0000afe0 002d02bd str        s0, [x8, #0x22c]                             
0000afe4 600100d0 adrp       x0, #0x38000                                 
0000afe8 00e01a91 add        x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000afec e0c302f9 str        x0, [sp, #0x580]                             
0000aff0 e1b32191 add        x1, sp, #0x86c                               
0000aff4 7e1a0094 bl         #0x119ec                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE4findB6v15006ERS8_||__ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE4findB6v15006ERS8_|
0000aff8 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000affc e80300aa mov        x8, x0                                       
0000b000 e0c342f9 ldr        x0, [sp, #0x580]                             
0000b004 281101f9 str        x8, [x9, #0x220]                             
0000b008 961a0094 bl         #0x11a60                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE3endB6v15006Ev||__ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE3endB6v15006Ev|
0000b00c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b010 000901f9 str        x0, [x8, #0x210]                             
0000b014 e0432191 add        x0, sp, #0x850                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000b018 e1032191 add        x1, sp, #0x840                               
0000b01c 851a0094 bl         #0x11a30                                      ; __ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEESC_||__ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEESC_|
0000b020 e0000034 cbz        w0, #0xb03c                                  
0000b024 01000014 b          #0xb028                                      
0000b028 e0432191 add        x0, sp, #0x850                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000b02c 9c1a0094 bl         #0x11a9c                                      ; __ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEptB6v15006Ev||__ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEptB6v15006Ev|
0000b030 000840bd ldr        s0, [x0, #8]                                 
0000b034 e07f05bd str        s0, [sp, #0x57c]                             
0000b038 06000014 b          #0xb050                                      
0000b03c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b040 081941f9 ldr        x8, [x8, #0x230]                             
0000b044 001540bd ldr        s0, [x8, #0x14]                              
0000b048 e07f05bd str        s0, [sp, #0x57c]                             
0000b04c 01000014 b          #0xb050                                      
0000b050 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b054 e07f45bd ldr        s0, [sp, #0x57c]                             
0000b058 001d02bd str        s0, [x8, #0x21c]                             
0000b05c 001d42bd ldr        s0, [x8, #0x21c]                             
0000b060 012d42bd ldr        s1, [x8, #0x22c]                             
0000b064 0008211e fmul       s0, s0, s1                                   
0000b068 007102bd str        s0, [x8, #0x270]                              ; __ZL30g_coverSheetCornerRadiusPoints|__ZL30g_coverSheetCornerRadiusPoints
0000b06c 005d43bd ldr        s0, [x8, #0x35c]                             
0000b070 0028201e fadd       s0, s0, s0                                   
0000b074 a9999952 mov        w9, #0xcccd                                  
0000b078 89b9a772 movk       w9, #0x3dcc, lsl #16                         
0000b07c 2101271e fmov       s1, w9                                       
0000b080 0068211e fmaxnm     s0, s0, s1                                   
0000b084 000d02bd str        s0, [x8, #0x20c]                             
0000b088 000d42bd ldr        s0, [x8, #0x20c]                             
0000b08c 000902bd str        s0, [x8, #0x208]                             
0000b090 091941f9 ldr        x9, [x8, #0x230]                             
0000b094 201940bd ldr        s0, [x9, #0x18]                              
0000b098 010d42bd ldr        s1, [x8, #0x20c]                             
0000b09c 0008211e fmul       s0, s0, s1                                   
0000b0a0 012d42bd ldr        s1, [x8, #0x22c]                             
0000b0a4 02102c1e fmov       s2, #0.50000000                              
0000b0a8 2108221e fmul       s1, s1, s2                                   
0000b0ac 0078211e fminnm     s0, s0, s1                                   
0000b0b0 007502bd str        s0, [x8, #0x274]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation
0000b0b4 091941f9 ldr        x9, [x8, #0x230]                             
0000b0b8 201d40bd ldr        s0, [x9, #0x1c]                              
0000b0bc 007902bd str        s0, [x8, #0x278]                              ; __ZL10kShaderSrc|__ZL10kShaderSrc
0000b0c0 091941f9 ldr        x9, [x8, #0x230]                             
0000b0c4 202140bd ldr        s0, [x9, #0x20]                              
0000b0c8 007d02bd str        s0, [x8, #0x27c]                             
0000b0cc 091941f9 ldr        x9, [x8, #0x230]                             
0000b0d0 202540bd ldr        s0, [x9, #0x24]                              
0000b0d4 008102bd str        s0, [x8, #0x280]                              ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000b0d8 091941f9 ldr        x9, [x8, #0x230]                             
0000b0dc 202940bd ldr        s0, [x9, #0x28]                              
0000b0e0 00cd02bd str        s0, [x8, #0x2cc]                             
0000b0e4 e8af6139 ldrb       w8, [sp, #0x86b]                             
0000b0e8 e8020036 tbz        w8, #0, #0xb144                              
0000b0ec 01000014 b          #0xb0f0                                      
0000b0f0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b0f4 091941f9 ldr        x9, [x8, #0x230]                             
0000b0f8 233d40bd ldr        s3, [x9, #0x3c]                              
0000b0fc 224140bd ldr        s2, [x9, #0x40]                              
0000b100 214540bd ldr        s1, [x9, #0x44]                              
0000b104 204940bd ldr        s0, [x9, #0x48]                              
0000b108 03fd04bd str        s3, [x8, #0x4fc]                             
0000b10c 02f904bd str        s2, [x8, #0x4f8]                             
0000b110 01f504bd str        s1, [x8, #0x4f4]                             
0000b114 00f104bd str        s0, [x8, #0x4f0]                             
0000b118 00fd44bd ldr        s0, [x8, #0x4fc]                             
0000b11c 00e104bd str        s0, [x8, #0x4e0]                             
0000b120 00f944bd ldr        s0, [x8, #0x4f8]                             
0000b124 00e504bd str        s0, [x8, #0x4e4]                             
0000b128 00f544bd ldr        s0, [x8, #0x4f4]                             
0000b12c 00e904bd str        s0, [x8, #0x4e8]                             
0000b130 00f144bd ldr        s0, [x8, #0x4f0]                             
0000b134 00ed04bd str        s0, [x8, #0x4ec]                             
0000b138 0039c13d ldr        q0, [x8, #0x4e0]                             
0000b13c e05b813d str        q0, [sp, #0x560]                             
0000b140 16000014 b          #0xb198                                      
0000b144 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b148 091941f9 ldr        x9, [x8, #0x230]                             
0000b14c 232d40bd ldr        s3, [x9, #0x2c]                              
0000b150 223140bd ldr        s2, [x9, #0x30]                              
0000b154 213540bd ldr        s1, [x9, #0x34]                              
0000b158 203940bd ldr        s0, [x9, #0x38]                              
0000b15c 03dd04bd str        s3, [x8, #0x4dc]                             
0000b160 02d904bd str        s2, [x8, #0x4d8]                             
0000b164 01d504bd str        s1, [x8, #0x4d4]                             
0000b168 00d104bd str        s0, [x8, #0x4d0]                             
0000b16c 00dd44bd ldr        s0, [x8, #0x4dc]                             
0000b170 00c104bd str        s0, [x8, #0x4c0]                             
0000b174 00d944bd ldr        s0, [x8, #0x4d8]                             
0000b178 00c504bd str        s0, [x8, #0x4c4]                             
0000b17c 00d544bd ldr        s0, [x8, #0x4d4]                             
0000b180 00c904bd str        s0, [x8, #0x4c8]                             
0000b184 00d144bd ldr        s0, [x8, #0x4d0]                             
0000b188 00cd04bd str        s0, [x8, #0x4cc]                             
0000b18c 0031c13d ldr        q0, [x8, #0x4c0]                             
0000b190 e05b813d str        q0, [sp, #0x560]                             
0000b194 01000014 b          #0xb198                                      
0000b198 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b19c e05bc13d ldr        q0, [sp, #0x560]                             
0000b1a0 00b5803d str        q0, [x8, #0x2d0]                             
0000b1a4 081941f9 ldr        x8, [x8, #0x230]                             
0000b1a8 000540f9 ldr        x0, [x8, #8]                                 
0000b1ac e10000f0 adrp       x1, #0x2a000                                 
0000b1b0 21003891 add        x1, x1, #0xe00                                ; 'Keyboard'
0000b1b4 9a730094 bl         #0x2801c                                      ; _strcmp
0000b1b8 200b0035 cbnz       w0, #0xb31c                                  
0000b1bc 01000014 b          #0xb1c0                                      
0000b1c0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b1c4 6a0100d0 adrp       x10, #0x39000                                
0000b1c8 4a311b91 add        x10, x10, #0x6cc                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20keyboardGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20keyboardGeometryLogs
0000b1cc 29008052 mov        w9, #1                                       
0000b1d0 4901e9b8 ldaddal    w9, w9, [x10]                                
0000b1d4 090502b9 str        w9, [x8, #0x204]                             
0000b1d8 080542b9 ldr        w8, [x8, #0x204]                             
0000b1dc 083d0171 subs       w8, w8, #0x4f                                
0000b1e0 cc090054 b.gt       #0xb318                                      
0000b1e4 01000014 b          #0xb1e8                                      
0000b1e8 600100b0 adrp       x0, #0x38000                                 
0000b1ec 00e01a91 add        x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000b1f0 1c1a0094 bl         #0x11a60                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE3endB6v15006Ev||__ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE3endB6v15006Ev|
0000b1f4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b1f8 00fd00f9 str        x0, [x8, #0x1f8]                             
0000b1fc e0432191 add        x0, sp, #0x850                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000b200 e1a32091 add        x1, sp, #0x828                                ; 'Keyboard'
0000b204 0b1a0094 bl         #0x11a30                                      ; __ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEESC_||__ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEESC_|
0000b208 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b20c e0cf2039 strb       w0, [sp, #0x833]                             
0000b210 000542b9 ldr        w0, [x8, #0x204]                             
0000b214 e04305b9 str        w0, [sp, #0x540]                             
0000b218 003d42b9 ldr        w0, [x8, #0x23c]                             
0000b21c e04705b9 str        w0, [sp, #0x544]                             
0000b220 098541f9 ldr        x9, [x8, #0x308]                             
0000b224 e9a702f9 str        x9, [sp, #0x548]                             
0000b228 088141f9 ldr        x8, [x8, #0x300]                             
0000b22c e8ab02f9 str        x8, [sp, #0x550]                             
0000b230 e8af6139 ldrb       w8, [sp, #0x86b]                             
0000b234 00010012 and        w0, w8, #1                                   
0000b238 e05b05b9 str        w0, [sp, #0x558]                             
0000b23c e8cf6039 ldrb       w8, [sp, #0x833]                             
0000b240 00010012 and        w0, w8, #1                                   
0000b244 e05f05b9 str        w0, [sp, #0x55c]                             
0000b248 e8000036 tbz        w8, #0, #0xb264                              
0000b24c 01000014 b          #0xb250                                      
0000b250 e0432191 add        x0, sp, #0x850                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000b254 121a0094 bl         #0x11a9c                                      ; __ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEptB6v15006Ev||__ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEptB6v15006Ev|
0000b258 000440b9 ldr        w0, [x0, #4]                                 
0000b25c e03f05b9 str        w0, [sp, #0x53c]                             
0000b260 04000014 b          #0xb270                                      
0000b264 00008012 mov        w0, #-1                                      
0000b268 e03f05b9 str        w0, [sp, #0x53c]                             
0000b26c 01000014 b          #0xb270                                      
0000b270 e04345b9 ldr        w0, [sp, #0x540]                             
0000b274 e14745b9 ldr        w1, [sp, #0x544]                             
0000b278 e8a742f9 ldr        x8, [sp, #0x548]                             
0000b27c eaab42f9 ldr        x10, [sp, #0x550]                            
0000b280 e25b45b9 ldr        w2, [sp, #0x558]                             
0000b284 e35f45b9 ldr        w3, [sp, #0x55c]                             
0000b288 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b28c e43f45b9 ldr        w4, [sp, #0x53c]                             
0000b290 2b1941f9 ldr        x11, [x9, #0x230]                            
0000b294 601540bd ldr        s0, [x11, #0x14]                             
0000b298 00c0221e fcvt       d0, s0                                       
0000b29c 211d42bd ldr        s1, [x9, #0x21c]                             
0000b2a0 21c0221e fcvt       d1, s1                                       
0000b2a4 227142bd ldr        s2, [x9, #0x270]                              ; __ZL30g_coverSheetCornerRadiusPoints|__ZL30g_coverSheetCornerRadiusPoints
0000b2a8 42c0221e fcvt       d2, s2                                       
0000b2ac 631940bd ldr        s3, [x11, #0x18]                             
0000b2b0 63c0221e fcvt       d3, s3                                       
0000b2b4 247542bd ldr        s4, [x9, #0x274]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation
0000b2b8 84c0221e fcvt       d4, s4                                       
0000b2bc e9030091 mov        x9, sp                                       
0000b2c0 e99b02f9 str        x9, [sp, #0x530]                             
0000b2c4 242d00fd str        d4, [x9, #0x58]                              
0000b2c8 232900fd str        d3, [x9, #0x50]                              
0000b2cc 222500fd str        d2, [x9, #0x48]                              
0000b2d0 212100fd str        d1, [x9, #0x40]                              
0000b2d4 201d00fd str        d0, [x9, #0x38]                              
0000b2d8 eb0304aa mov        x11, x4                                      
0000b2dc 2b1900f9 str        x11, [x9, #0x30]                             
0000b2e0 eb0303aa mov        x11, x3                                      
0000b2e4 2b1500f9 str        x11, [x9, #0x28]                             
0000b2e8 eb0302aa mov        x11, x2                                      
0000b2ec 2b1100f9 str        x11, [x9, #0x20]                             
0000b2f0 2a0d00f9 str        x10, [x9, #0x18]                             
0000b2f4 280900f9 str        x8, [x9, #0x10]                              
0000b2f8 e80301aa mov        x8, x1                                       
0000b2fc 280500f9 str        x8, [x9, #8]                                 
0000b300 e80300aa mov        x8, x0                                       
0000b304 280100f9 str        x8, [x9]                                     
0000b308 e00000f0 adrp       x0, #0x2a000                                 
0000b30c 00243891 add        x0, x0, #0xe09                                ; 'keyboard-geometry[%d] atom=0x%x tex=%llux%llu dark=%d route=%d routeHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000b310 b8f3ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000b314 01000014 b          #0xb318                                      
0000b318 01000014 b          #0xb31c                                      
0000b31c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b320 081941f9 ldr        x8, [x8, #0x230]                             
0000b324 000540f9 ldr        x0, [x8, #8]                                 
0000b328 e10000f0 adrp       x1, #0x2a000                                 
0000b32c 21803a91 add        x1, x1, #0xea0                                ; 'PrefsSlider'
0000b330 3b730094 bl         #0x2801c                                      ; _strcmp
0000b334 28008052 mov        w8, #1                                       
0000b338 e82f05b9 str        w8, [sp, #0x52c]                             
0000b33c 80010034 cbz        w0, #0xb36c                                  
0000b340 01000014 b          #0xb344                                      
0000b344 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b348 081941f9 ldr        x8, [x8, #0x230]                             
0000b34c 000540f9 ldr        x0, [x8, #8]                                 
0000b350 e10000f0 adrp       x1, #0x2a000                                 
0000b354 21b03a91 add        x1, x1, #0xeac                                ; 'PrefsSwitch'
0000b358 31730094 bl         #0x2801c                                      ; _strcmp
0000b35c 08000071 subs       w8, w0, #0                                   
0000b360 e8179f1a cset       w8, eq                                       
0000b364 e82f05b9 str        w8, [sp, #0x52c]                             
0000b368 01000014 b          #0xb36c                                      
0000b36c e82f45b9 ldr        w8, [sp, #0x52c]                             
0000b370 08010012 and        w8, w8, #1                                   
0000b374 e89f2039 strb       w8, [sp, #0x827]                             
0000b378 e89f6039 ldrb       w8, [sp, #0x827]                             
0000b37c 09008052 mov        w9, #0                                       
0000b380 e92b05b9 str        w9, [sp, #0x528]                             
0000b384 28010036 tbz        w8, #0, #0xb3a8                              
0000b388 01000014 b          #0xb38c                                      
0000b38c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b390 081941f9 ldr        x8, [x8, #0x230]                             
0000b394 002140bd ldr        s0, [x8, #0x20]                              
0000b398 0820201e fcmp       s0, #0.0                                     
0000b39c e8579f1a cset       w8, mi                                       
0000b3a0 e82b05b9 str        w8, [sp, #0x528]                             
0000b3a4 01000014 b          #0xb3a8                                      
0000b3a8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b3ac e92b45b9 ldr        w9, [sp, #0x528]                             
0000b3b0 29010012 and        w9, w9, #1                                   
0000b3b4 e99b2039 strb       w9, [sp, #0x826]                             
0000b3b8 e99b6039 ldrb       w9, [sp, #0x826]                             
0000b3bc 29010072 ands       w9, w9, #1                                   
0000b3c0 01102e1e fmov       s1, #1.00000000                              
0000b3c4 00102d1e fmov       s0, #0.75000000                              
0000b3c8 001c211e fcsel      s0, s0, s1, ne                               
0000b3cc 00ad02bd str        s0, [x8, #0x2ac]                             
0000b3d0 e89b6039 ldrb       w8, [sp, #0x826]                             
0000b3d4 08010036 tbz        w8, #0, #0xb3f4                              
0000b3d8 01000014 b          #0xb3dc                                      
0000b3dc e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b3e0 0808b852 mov        w8, #-0x3fc00000                             
0000b3e4 287d02b9 str        w8, [x9, #0x27c]                             
0000b3e8 08008052 mov        w8, #0                                       
0000b3ec 28cd02b9 str        w8, [x9, #0x2cc]                             
0000b3f0 01000014 b          #0xb3f4                                      
0000b3f4 e89b6039 ldrb       w8, [sp, #0x826]                             
0000b3f8 28080036 tbz        w8, #0, #0xb4fc                              
0000b3fc 01000014 b          #0xb400                                      
0000b400 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b404 081941f9 ldr        x8, [x8, #0x230]                             
0000b408 000540f9 ldr        x0, [x8, #8]                                 
0000b40c e10000f0 adrp       x1, #0x2a000                                 
0000b410 21b03a91 add        x1, x1, #0xeac                                ; 'PrefsSwitch'
0000b414 02730094 bl         #0x2801c                                      ; _strcmp
0000b418 20070035 cbnz       w0, #0xb4fc                                  
0000b41c 01000014 b          #0xb420                                      
0000b420 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b424 08008052 mov        w8, #0                                       
0000b428 28f101b9 str        w8, [x9, #0x1f0]                             
0000b42c 080080d2 mov        x8, #0                                       
0000b430 28f500f9 str        x8, [x9, #0x1e8]                             
0000b434 28f100f9 str        x8, [x9, #0x1e0]                             
0000b438 80008052 mov        w0, #4                                       
0000b43c e1432091 add        x1, sp, #0x810                                ; 'PrefsSwitch'
0000b440 a3190094 bl         #0x11acc                                      ; __ZL14LGLensRectReadjP14LGLensRectSlot||__ZL14LGLensRectReadjP14LGLensRectSlot|
0000b444 e03f2039 strb       w0, [sp, #0x80f]                             
0000b448 e83f6039 ldrb       w8, [sp, #0x80f]                             
0000b44c 88010036 tbz        w8, #0, #0xb47c                              
0000b450 01000014 b          #0xb454                                      
0000b454 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b458 00ed41bd ldr        s0, [x8, #0x1ec]                             
0000b45c 48e19a52 mov        w8, #0xd70a                                  
0000b460 6884a772 movk       w8, #0x3c23, lsl #16                         
0000b464 0101271e fmov       s1, w8                                       
0000b468 0068211e fmaxnm     s0, s0, s1                                   
0000b46c 01102e1e fmov       s1, #1.00000000                              
0000b470 0078211e fminnm     s0, s0, s1                                   
0000b474 e02705bd str        s0, [sp, #0x524]                             
0000b478 06000014 b          #0xb490                                      
0000b47c 48339352 mov        w8, #0x999a                                  
0000b480 28eba772 movk       w8, #0x3f59, lsl #16                         
0000b484 0001271e fmov       s0, w8                                       
0000b488 e02705bd str        s0, [sp, #0x524]                             
0000b48c 01000014 b          #0xb490                                      
0000b490 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b494 e02745bd ldr        s0, [sp, #0x524]                             
0000b498 00ad02bd str        s0, [x8, #0x2ac]                             
0000b49c e83f6039 ldrb       w8, [sp, #0x80f]                             
0000b4a0 08020036 tbz        w8, #0, #0xb4e0                              
0000b4a4 01000014 b          #0xb4a8                                      
0000b4a8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b4ac 00f141bd ldr        s0, [x8, #0x1f0]                             
0000b4b0 49e19a52 mov        w9, #0xd70a                                  
0000b4b4 6984b772 movk       w9, #0xbc23, lsl #16                         
0000b4b8 2101271e fmov       s1, w9                                       
0000b4bc 0028211e fadd       s0, s0, s1                                   
0000b4c0 01e4002f movi       d1, #0000000000000000                        
0000b4c4 0068211e fmaxnm     s0, s0, s1                                   
0000b4c8 0190261e fmov       s1, #20.00000000                             
0000b4cc 0008211e fmul       s0, s0, s1                                   
0000b4d0 010d42bd ldr        s1, [x8, #0x20c]                             
0000b4d4 0008211e fmul       s0, s0, s1                                   
0000b4d8 e02305bd str        s0, [sp, #0x520]                             
0000b4dc 04000014 b          #0xb4ec                                      
0000b4e0 00e4002f movi       d0, #0000000000000000                        
0000b4e4 e02305bd str        s0, [sp, #0x520]                             
0000b4e8 01000014 b          #0xb4ec                                      
0000b4ec e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b4f0 e02345bd ldr        s0, [sp, #0x520]                             
0000b4f4 00cd02bd str        s0, [x8, #0x2cc]                             
0000b4f8 01000014 b          #0xb4fc                                      
0000b4fc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b500 09f0a752 mov        w9, #0x3f800000                              
0000b504 09b102b9 str        w9, [x8, #0x2b0]                              ; __ZZL19lgHostParamsForAtomjPbE6routed|__ZZL19lgHostParamsForAtomjPbE6routed
0000b508 081941f9 ldr        x8, [x8, #0x230]                             
0000b50c 000540f9 ldr        x0, [x8, #8]                                 
0000b510 e10000f0 adrp       x1, #0x2a000                                 
0000b514 21e03a91 add        x1, x1, #0xeb8                                ; 'TabBarSelection'
0000b518 c1720094 bl         #0x2801c                                      ; _strcmp
0000b51c 40010034 cbz        w0, #0xb544                                  
0000b520 01000014 b          #0xb524                                      
0000b524 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b528 081941f9 ldr        x8, [x8, #0x230]                             
0000b52c 000540f9 ldr        x0, [x8, #8]                                 
0000b530 e10000f0 adrp       x1, #0x2a000                                 
0000b534 21203b91 add        x1, x1, #0xec8                                ; 'PrefsSegment'
0000b538 b9720094 bl         #0x2801c                                      ; _strcmp
0000b53c c0150035 cbnz       w0, #0xb7f4                                  
0000b540 01000014 b          #0xb544                                      
0000b544 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b548 081941f9 ldr        x8, [x8, #0x230]                             
0000b54c 002140bd ldr        s0, [x8, #0x20]                              
0000b550 0820201e fcmp       s0, #0.0                                     
0000b554 e8579f1a cset       w8, mi                                       
0000b558 e83b2039 strb       w8, [sp, #0x80e]                             
0000b55c e83b6039 ldrb       w8, [sp, #0x80e]                             
0000b560 e8010036 tbz        w8, #0, #0xb59c                              
0000b564 01000014 b          #0xb568                                      
0000b568 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b56c 081941f9 ldr        x8, [x8, #0x230]                             
0000b570 000540f9 ldr        x0, [x8, #8]                                 
0000b574 e10000f0 adrp       x1, #0x2a000                                 
0000b578 21203b91 add        x1, x1, #0xec8                                ; 'PrefsSegment'
0000b57c a8720094 bl         #0x2801c                                      ; _strcmp
0000b580 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b584 09000071 subs       w9, w0, #0                                   
0000b588 0110301e fmov       s1, #-2.00000000                             
0000b58c 00103e1e fmov       s0, #-1.00000000                             
0000b590 001c211e fcsel      s0, s0, s1, ne                               
0000b594 007d02bd str        s0, [x8, #0x27c]                             
0000b598 01000014 b          #0xb59c                                      
0000b59c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b5a0 09008052 mov        w9, #0                                       
0000b5a4 09d901b9 str        w9, [x8, #0x1d8]                             
0000b5a8 090080d2 mov        x9, #0                                       
0000b5ac 09e900f9 str        x9, [x8, #0x1d0]                             
0000b5b0 09e500f9 str        x9, [x8, #0x1c8]                             
0000b5b4 081941f9 ldr        x8, [x8, #0x230]                             
0000b5b8 000540f9 ldr        x0, [x8, #8]                                 
0000b5bc e10000f0 adrp       x1, #0x2a000                                 
0000b5c0 21203b91 add        x1, x1, #0xec8                                ; 'PrefsSegment'
0000b5c4 96720094 bl         #0x2801c                                      ; _strcmp
0000b5c8 08000071 subs       w8, w0, #0                                   
0000b5cc e0079f1a cset       w0, ne                                       
0000b5d0 e1e31f91 add        x1, sp, #0x7f8                                ; 'PrefsSegment'
0000b5d4 3e190094 bl         #0x11acc                                      ; __ZL14LGLensRectReadjP14LGLensRectSlot||__ZL14LGLensRectReadjP14LGLensRectSlot|
0000b5d8 c0100034 cbz        w0, #0xb7f0                                  
0000b5dc 01000014 b          #0xb5e0                                      
0000b5e0 e83b6039 ldrb       w8, [sp, #0x80e]                             
0000b5e4 08020036 tbz        w8, #0, #0xb624                              
0000b5e8 01000014 b          #0xb5ec                                      
0000b5ec e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b5f0 081941f9 ldr        x8, [x8, #0x230]                             
0000b5f4 000540f9 ldr        x0, [x8, #8]                                 
0000b5f8 e10000f0 adrp       x1, #0x2a000                                 
0000b5fc 21203b91 add        x1, x1, #0xec8                                ; 'PrefsSegment'
0000b600 87720094 bl         #0x2801c                                      ; _strcmp
0000b604 08000071 subs       w8, w0, #0                                   
0000b608 48339352 mov        w8, #0x999a                                  
0000b60c 28d3a772 movk       w8, #0x3e99, lsl #16                         
0000b610 0101271e fmov       s1, w8                                       
0000b614 00102d1e fmov       s0, #0.75000000                              
0000b618 001c211e fcsel      s0, s0, s1, ne                               
0000b61c e01f05bd str        s0, [sp, #0x51c]                             
0000b620 04000014 b          #0xb630                                      
0000b624 00102e1e fmov       s0, #1.00000000                              
0000b628 e01f05bd str        s0, [sp, #0x51c]                             
0000b62c 01000014 b          #0xb630                                      
0000b630 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b634 e01f45bd ldr        s0, [sp, #0x51c]                             
0000b638 00ad02bd str        s0, [x8, #0x2ac]                             
0000b63c e83b6039 ldrb       w8, [sp, #0x80e]                             
0000b640 a8060036 tbz        w8, #0, #0xb714                              
0000b644 01000014 b          #0xb648                                      
0000b648 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b64c 081941f9 ldr        x8, [x8, #0x230]                             
0000b650 000540f9 ldr        x0, [x8, #8]                                 
0000b654 e10000f0 adrp       x1, #0x2a000                                 
0000b658 21203b91 add        x1, x1, #0xec8                                ; 'PrefsSegment'
0000b65c 70720094 bl         #0x2801c                                      ; _strcmp
0000b660 a0050035 cbnz       w0, #0xb714                                  
0000b664 01000014 b          #0xb668                                      
0000b668 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b66c 08008052 mov        w8, #0                                       
0000b670 28c101b9 str        w8, [x9, #0x1c0]                             
0000b674 080080d2 mov        x8, #0                                       
0000b678 28dd00f9 str        x8, [x9, #0x1b8]                             
0000b67c 28d900f9 str        x8, [x9, #0x1b0]                             
0000b680 60008052 mov        w0, #3                                       
0000b684 e1831f91 add        x1, sp, #0x7e0                                ; 'PrefsSegment'
0000b688 11190094 bl         #0x11acc                                      ; __ZL14LGLensRectReadjP14LGLensRectSlot||__ZL14LGLensRectReadjP14LGLensRectSlot|
0000b68c 20040034 cbz        w0, #0xb710                                  
0000b690 01000014 b          #0xb694                                      
0000b694 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b698 00bd41bd ldr        s0, [x8, #0x1bc]                             
0000b69c a9999952 mov        w9, #0xcccd                                  
0000b6a0 89b9a772 movk       w9, #0x3dcc, lsl #16                         
0000b6a4 2101271e fmov       s1, w9                                       
0000b6a8 0068211e fmaxnm     s0, s0, s1                                   
0000b6ac 01102e1e fmov       s1, #1.00000000                              
0000b6b0 0078211e fminnm     s0, s0, s1                                   
0000b6b4 00ad01bd str        s0, [x8, #0x1ac]                             
0000b6b8 02ad41bd ldr        s2, [x8, #0x1ac]                             
0000b6bc 00ad42bd ldr        s0, [x8, #0x2ac]                             
0000b6c0 0008221e fmul       s0, s0, s2                                   
0000b6c4 00ad02bd str        s0, [x8, #0x2ac]                             
0000b6c8 00ad41bd ldr        s0, [x8, #0x1ac]                             
0000b6cc 2038201e fsub       s0, s1, s0                                   
0000b6d0 69668652 mov        w9, #0x3333                                  
0000b6d4 69d6a772 movk       w9, #0x3eb3, lsl #16                         
0000b6d8 2201271e fmov       s2, w9                                       
0000b6dc 0018221e fdiv       s0, s0, s2                                   
0000b6e0 0078211e fminnm     s0, s0, s1                                   
0000b6e4 00a901bd str        s0, [x8, #0x1a8]                             
0000b6e8 00a941bd ldr        s0, [x8, #0x1a8]                             
0000b6ec 69668652 mov        w9, #0x3333                                  
0000b6f0 6902a872 movk       w9, #0x4013, lsl #16                         
0000b6f4 2201271e fmov       s2, w9                                       
0000b6f8 49339352 mov        w9, #0x999a                                  
0000b6fc 29c3a772 movk       w9, #0x3e19, lsl #16                         
0000b700 2101271e fmov       s1, w9                                       
0000b704 0008211f fnmadd     s0, s0, s1, s2                               
0000b708 007d02bd str        s0, [x8, #0x27c]                             
0000b70c 01000014 b          #0xb710                                      
0000b710 01000014 b          #0xb714                                      
0000b714 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b718 09f0a752 mov        w9, #0x3f800000                              
0000b71c 09b102b9 str        w9, [x8, #0x2b0]                              ; __ZZL19lgHostParamsForAtomjPbE6routed|__ZZL19lgHostParamsForAtomjPbE6routed
0000b720 00cd41bd ldr        s0, [x8, #0x1cc]                             
0000b724 098541f9 ldr        x9, [x8, #0x308]                             
0000b728 2101239e ucvtf      s1, x9                                       
0000b72c 0108211e fmul       s1, s0, s1                                   
0000b730 00d141bd ldr        s0, [x8, #0x1d0]                             
0000b734 098141f9 ldr        x9, [x8, #0x300]                             
0000b738 2201239e ucvtf      s2, x9                                       
0000b73c 0008221e fmul       s0, s0, s2                                   
0000b740 01bd04bd str        s1, [x8, #0x4bc]                             
0000b744 00b904bd str        s0, [x8, #0x4b8]                             
0000b748 00bd44bd ldr        s0, [x8, #0x4bc]                             
0000b74c 00b104bd str        s0, [x8, #0x4b0]                             
0000b750 00b944bd ldr        s0, [x8, #0x4b8]                             
0000b754 00b504bd str        s0, [x8, #0x4b4]                             
0000b758 005942fd ldr        d0, [x8, #0x4b0]                             
0000b75c 005d01fd str        d0, [x8, #0x2b8]                             
0000b760 00d541bd ldr        s0, [x8, #0x1d4]                             
0000b764 098541f9 ldr        x9, [x8, #0x308]                             
0000b768 2101239e ucvtf      s1, x9                                       
0000b76c 0108211e fmul       s1, s0, s1                                   
0000b770 00d941bd ldr        s0, [x8, #0x1d8]                             
0000b774 098141f9 ldr        x9, [x8, #0x300]                             
0000b778 2201239e ucvtf      s2, x9                                       
0000b77c 0008221e fmul       s0, s0, s2                                   
0000b780 01ad04bd str        s1, [x8, #0x4ac]                             
0000b784 00a904bd str        s0, [x8, #0x4a8]                             
0000b788 00ad44bd ldr        s0, [x8, #0x4ac]                             
0000b78c 00a104bd str        s0, [x8, #0x4a0]                             
0000b790 00a944bd ldr        s0, [x8, #0x4a8]                             
0000b794 00a504bd str        s0, [x8, #0x4a4]                             
0000b798 005142fd ldr        d0, [x8, #0x4a0]                             
0000b79c 006101fd str        d0, [x8, #0x2c0]                             
0000b7a0 006141fd ldr        d0, [x8, #0x2c0]                              ; ->|||||||||||||||||||
0000b7a4 0140601e fmov       d1, d0                                       
0000b7a8 2040201e fmov       s0, s1                                       
0000b7ac 21040c5e mov        s1, v1.s[1]                                  
0000b7b0 0078211e fminnm     s0, s0, s1                                   
0000b7b4 00a501bd str        s0, [x8, #0x1a4]                             
0000b7b8 001d42bd ldr        s0, [x8, #0x21c]                             
0000b7bc 01a541bd ldr        s1, [x8, #0x1a4]                             
0000b7c0 0008211e fmul       s0, s0, s1                                   
0000b7c4 007102bd str        s0, [x8, #0x270]                              ; __ZL30g_coverSheetCornerRadiusPoints|__ZL30g_coverSheetCornerRadiusPoints
0000b7c8 091941f9 ldr        x9, [x8, #0x230]                             
0000b7cc 201940bd ldr        s0, [x9, #0x18]                              
0000b7d0 010d42bd ldr        s1, [x8, #0x20c]                             
0000b7d4 0008211e fmul       s0, s0, s1                                   
0000b7d8 01a541bd ldr        s1, [x8, #0x1a4]                             
0000b7dc 02102c1e fmov       s2, #0.50000000                              
0000b7e0 2108221e fmul       s1, s1, s2                                   
0000b7e4 0078211e fminnm     s0, s0, s1                                   
0000b7e8 007502bd str        s0, [x8, #0x274]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation
0000b7ec 01000014 b          #0xb7f0                                      
0000b7f0 01000014 b          #0xb7f4                                      
0000b7f4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b7f8 081941f9 ldr        x8, [x8, #0x230]                             
0000b7fc 000540f9 ldr        x0, [x8, #8]                                 
0000b800 e10000f0 adrp       x1, #0x2a000                                 
0000b804 21003891 add        x1, x1, #0xe00                                ; 'Keyboard'
0000b808 05720094 bl         #0x2801c                                      ; _strcmp
0000b80c c0000035 cbnz       w0, #0xb824                                  
0000b810 01000014 b          #0xb814                                      
0000b814 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b818 08d0a752 mov        w8, #0x3e800000                              
0000b81c 28c902b9 str        w8, [x9, #0x2c8]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0|__ZZL19lgHostParamsForAtomjPbE6routed_0
0000b820 ed000014 b          #0xbbd4                                      
0000b824 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b828 081941f9 ldr        x8, [x8, #0x230]                             
0000b82c 000540f9 ldr        x0, [x8, #8]                                 
0000b830 e10000f0 adrp       x1, #0x2a000                                 
0000b834 21543b91 add        x1, x1, #0xed5                                ; 'CoverSheet'
0000b838 f9710094 bl         #0x2801c                                      ; _strcmp
0000b83c a01c0035 cbnz       w0, #0xbbd0                                  
0000b840 01000014 b          #0xb844                                      
0000b844 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b848 09f0b752 mov        w9, #-0x40800000                             
0000b84c 09c902b9 str        w9, [x8, #0x2c8]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0|__ZZL19lgHostParamsForAtomjPbE6routed_0
0000b850 690100b0 adrp       x9, #0x38000                                 
0000b854 207142bd ldr        s0, [x9, #0x270]                              ; __ZL30g_coverSheetCornerRadiusPoints|__ZL30g_coverSheetCornerRadiusPoints
0000b858 00a101bd str        s0, [x8, #0x1a0]                             
0000b85c 680100d0 adrp       x8, #0x39000                                 
0000b860 08415b39 ldrb       w8, [x8, #0x6d0]                             
0000b864 e8000037 tbnz       w8, #0, #0xb880                              
0000b868 01000014 b          #0xb86c                                      
0000b86c f0180094 bl         #0x11c2c                                      ; __ZL28LGDefaultDisplayCornerRadiusv||__ZL28LGDefaultDisplayCornerRadiusv|
0000b870 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b874 0040621e fcvt       s0, d0                                       
0000b878 00a101bd str        s0, [x8, #0x1a0]                             
0000b87c 01000014 b          #0xb880                                      
0000b880 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b884 20a141bd ldr        s0, [x9, #0x1a0]                             
0000b888 210d42bd ldr        s1, [x9, #0x20c]                             
0000b88c 0008211e fmul       s0, s0, s1                                   
0000b890 207102bd str        s0, [x9, #0x270]                              ; __ZL30g_coverSheetCornerRadiusPoints|__ZL30g_coverSheetCornerRadiusPoints
0000b894 08008052 mov        w8, #0                                       
0000b898 e81705b9 str        w8, [sp, #0x514]                             
0000b89c 289901b9 str        w8, [x9, #0x198]                             
0000b8a0 080080d2 mov        x8, #0                                       
0000b8a4 28c900f9 str        x8, [x9, #0x190]                             
0000b8a8 28c500f9 str        x8, [x9, #0x188]                             
0000b8ac 28c100f9 str        x8, [x9, #0x180]                             
0000b8b0 e0c31e91 add        x0, sp, #0x7b0                                ; 'keyboard-geometry[%d] atom=0x%x tex=%llux%llu dark=%d route=%d routeHost=%d hostRatio=%.6f selectedRatio=%.6f radius=%.3f bezelWidth=%.3fpt bezel=%.3f'
0000b8b4 17190094 bl         #0x11d10                                      ; __ZL27LGCoverSheetReadSharedStateP23LGCoverSheetSharedState||__ZL27LGCoverSheetReadSharedStateP23LGCoverSheetSharedState|
0000b8b8 e81745b9 ldr        w8, [sp, #0x514]                             
0000b8bc e81b05b9 str        w8, [sp, #0x518]                             
0000b8c0 00010034 cbz        w0, #0xb8e0                                  
0000b8c4 01000014 b          #0xb8c8                                      
0000b8c8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b8cc 088941b9 ldr        w8, [x8, #0x188]                             
0000b8d0 08010071 subs       w8, w8, #0                                   
0000b8d4 e8079f1a cset       w8, ne                                       
0000b8d8 e81b05b9 str        w8, [sp, #0x518]                             
0000b8dc 01000014 b          #0xb8e0                                      
0000b8e0 e81b45b9 ldr        w8, [sp, #0x518]                             
0000b8e4 08010012 and        w8, w8, #1                                   
0000b8e8 e8bf1e39 strb       w8, [sp, #0x7af]                             
0000b8ec e8bf5e39 ldrb       w8, [sp, #0x7af]                             
0000b8f0 c80d0036 tbz        w8, #0, #0xbaa8                              
0000b8f4 01000014 b          #0xb8f8                                      
0000b8f8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b8fc 009541bd ldr        s0, [x8, #0x194]                             
0000b900 00c0201e fabs       s0, s0                                       
0000b904 01102e1e fmov       s1, #1.00000000                              
0000b908 2038201e fsub       s0, s1, s0                                   
0000b90c 02e4002f movi       d2, #0000000000000000                        
0000b910 0068221e fmaxnm     s0, s0, s2                                   
0000b914 0078211e fminnm     s0, s0, s1                                   
0000b918 007901bd str        s0, [x8, #0x178]                             
0000b91c 007941bd ldr        s0, [x8, #0x178]                             
0000b920 2238201e fsub       s2, s1, s0                                   
0000b924 0078221e fminnm     s0, s0, s2                                   
0000b928 49339352 mov        w9, #0x999a                                  
0000b92c 29d3a772 movk       w9, #0x3e99, lsl #16                         
0000b930 2201271e fmov       s2, w9                                       
0000b934 0018221e fdiv       s0, s0, s2                                   
0000b938 0078211e fminnm     s0, s0, s1                                   
0000b93c 007501bd str        s0, [x8, #0x174]                             
0000b940 017541bd ldr        s1, [x8, #0x174]                             
0000b944 2008211e fmul       s0, s1, s1                                   
0000b948 0310211e fmov       s3, #3.00000000                              
0000b94c 0210301e fmov       s2, #-2.00000000                             
0000b950 210c021f fmadd      s1, s1, s2, s3                               
0000b954 0008211e fmul       s0, s0, s1                                   
0000b958 007501bd str        s0, [x8, #0x174]                             
0000b95c 007541bd ldr        s0, [x8, #0x174]                             
0000b960 00ed02bd str        s0, [x8, #0x2ec]                             
0000b964 088d41b9 ldr        w8, [x8, #0x18c]                             
0000b968 08090071 subs       w8, w8, #2                                   
0000b96c e1010054 b.ne       #0xb9a8                                      
0000b970 01000014 b          #0xb974                                      
0000b974 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b978 08008052 mov        w8, #0                                       
0000b97c 289d04b9 str        w8, [x9, #0x49c]                             
0000b980 289904b9 str        w8, [x9, #0x498]                             
0000b984 209d44bd ldr        s0, [x9, #0x49c]                             
0000b988 209104bd str        s0, [x9, #0x490]                             
0000b98c 209944bd ldr        s0, [x9, #0x498]                             
0000b990 209504bd str        s0, [x9, #0x494]                             
0000b994 204942fd ldr        d0, [x9, #0x490]                             
0000b998 203501fd str        d0, [x9, #0x268]                              ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
0000b99c 0800b852 mov        w8, #-0x40000000                             
0000b9a0 28c902b9 str        w8, [x9, #0x2c8]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0|__ZZL19lgHostParamsForAtomjPbE6routed_0
0000b9a4 40000014 b          #0xbaa4                                      
0000b9a8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b9ac 088d41b9 ldr        w8, [x8, #0x18c]                             
0000b9b0 080d0071 subs       w8, w8, #3                                   
0000b9b4 e1010054 b.ne       #0xb9f0                                      
0000b9b8 01000014 b          #0xb9bc                                      
0000b9bc e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000b9c0 08008052 mov        w8, #0                                       
0000b9c4 288d04b9 str        w8, [x9, #0x48c]                             
0000b9c8 288904b9 str        w8, [x9, #0x488]                             
0000b9cc 208d44bd ldr        s0, [x9, #0x48c]                             
0000b9d0 208104bd str        s0, [x9, #0x480]                             
0000b9d4 208944bd ldr        s0, [x9, #0x488]                             
0000b9d8 208504bd str        s0, [x9, #0x484]                             
0000b9dc 204142fd ldr        d0, [x9, #0x480]                             
0000b9e0 203501fd str        d0, [x9, #0x268]                              ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
0000b9e4 0808b852 mov        w8, #-0x3fc00000                             
0000b9e8 28c902b9 str        w8, [x9, #0x2c8]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0|__ZZL19lgHostParamsForAtomjPbE6routed_0
0000b9ec 2d000014 b          #0xbaa0                                      
0000b9f0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000b9f4 088d41b9 ldr        w8, [x8, #0x18c]                             
0000b9f8 08110071 subs       w8, w8, #4                                   
0000b9fc c1020054 b.ne       #0xba54                                      
0000ba00 01000014 b          #0xba04                                      
0000ba04 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000ba08 209141bd ldr        s0, [x9, #0x190]                             
0000ba0c 288141f9 ldr        x8, [x9, #0x300]                             
0000ba10 0101239e ucvtf      s1, x8                                       
0000ba14 0108211e fmul       s1, s0, s1                                   
0000ba18 209541bd ldr        s0, [x9, #0x194]                             
0000ba1c 288541f9 ldr        x8, [x9, #0x308]                             
0000ba20 0201239e ucvtf      s2, x8                                       
0000ba24 0008221e fmul       s0, s0, s2                                   
0000ba28 217d04bd str        s1, [x9, #0x47c]                             
0000ba2c 207904bd str        s0, [x9, #0x478]                              ; __ZL13g_clockFields|__ZL13g_clockFields
0000ba30 207d44bd ldr        s0, [x9, #0x47c]                             
0000ba34 207104bd str        s0, [x9, #0x470]                              ; __ZL13g_uniformsBuf|__ZL13g_uniformsBuf
0000ba38 207944bd ldr        s0, [x9, #0x478]                              ; __ZL13g_clockFields|__ZL13g_clockFields
0000ba3c 207504bd str        s0, [x9, #0x474]                             
0000ba40 203942fd ldr        d0, [x9, #0x470]                              ; __ZL13g_uniformsBuf|__ZL13g_uniformsBuf
0000ba44 203501fd str        d0, [x9, #0x268]                              ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
0000ba48 0810b852 mov        w8, #-0x3f800000                             
0000ba4c 28c902b9 str        w8, [x9, #0x2c8]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0|__ZZL19lgHostParamsForAtomjPbE6routed_0
0000ba50 13000014 b          #0xba9c                                      
0000ba54 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ba58 009141bd ldr        s0, [x8, #0x190]                             
0000ba5c 098541f9 ldr        x9, [x8, #0x308]                             
0000ba60 2101239e ucvtf      s1, x9                                       
0000ba64 0108211e fmul       s1, s0, s1                                   
0000ba68 009541bd ldr        s0, [x8, #0x194]                             
0000ba6c 098141f9 ldr        x9, [x8, #0x300]                             
0000ba70 2201239e ucvtf      s2, x9                                       
0000ba74 0008221e fmul       s0, s0, s2                                   
0000ba78 016d04bd str        s1, [x8, #0x46c]                             
0000ba7c 006904bd str        s0, [x8, #0x468]                             
0000ba80 006d44bd ldr        s0, [x8, #0x46c]                             
0000ba84 006104bd str        s0, [x8, #0x460]                             
0000ba88 006944bd ldr        s0, [x8, #0x468]                             
0000ba8c 006504bd str        s0, [x8, #0x464]                             
0000ba90 003142fd ldr        d0, [x8, #0x460]                             
0000ba94 003501fd str        d0, [x8, #0x268]                              ; __ZL14g_hookFunction|__ZL14g_hookFunction
0000ba98 01000014 b          #0xba9c                                      
0000ba9c 01000014 b          #0xbaa0                                      
0000baa0 01000014 b          #0xbaa4                                      
0000baa4 01000014 b          #0xbaa8                                      
0000baa8 e8bf5e39 ldrb       w8, [sp, #0x7af]                             
0000baac c8000036 tbz        w8, #0, #0xbac4                              
0000bab0 01000014 b          #0xbab4                                      
0000bab4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bab8 088d41b9 ldr        w8, [x8, #0x18c]                             
0000babc e81305b9 str        w8, [sp, #0x510]                             
0000bac0 04000014 b          #0xbad0                                      
0000bac4 08008012 mov        w8, #-1                                      
0000bac8 e81305b9 str        w8, [sp, #0x510]                             
0000bacc 01000014 b          #0xbad0                                      
0000bad0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bad4 ea1345b9 ldr        w10, [sp, #0x510]                            
0000bad8 690100b0 adrp       x9, #0x38000                                 
0000badc 29d10991 add        x9, x9, #0x274                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation
0000bae0 2a81eab8 swpal      w10, w10, [x9]                               
0000bae4 0a7101b9 str        w10, [x8, #0x170]                            
0000bae8 6b0100d0 adrp       x11, #0x39000                                
0000baec 6b511b91 add        x11, x11, #0x6d4                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE22sInitialCoverStateLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE22sInitialCoverStateLogs
0000baf0 2a008052 mov        w10, #1                                      
0000baf4 6a01eab8 ldaddal    w10, w10, [x11]                              
0000baf8 0a6d01b9 str        w10, [x8, #0x16c]                            
0000bafc 087141b9 ldr        w8, [x8, #0x170]                             
0000bb00 290140b9 ldr        w9, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation
0000bb04 0801096b subs       w8, w8, w9                                   
0000bb08 e1000054 b.ne       #0xbb24                                      
0000bb0c 01000014 b          #0xbb10                                      
0000bb10 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bb14 086d41b9 ldr        w8, [x8, #0x16c]                             
0000bb18 082d0071 subs       w8, w8, #0xb                                 
0000bb1c 8c050054 b.gt       #0xbbcc                                      
0000bb20 01000014 b          #0xbb24                                      
0000bb24 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000bb28 209141bd ldr        s0, [x9, #0x190]                             
0000bb2c 00c0221e fcvt       d0, s0                                       
0000bb30 219541bd ldr        s1, [x9, #0x194]                             
0000bb34 21c0221e fcvt       d1, s1                                       
0000bb38 229941bd ldr        s2, [x9, #0x198]                             
0000bb3c 42c0221e fcvt       d2, s2                                       
0000bb40 2c8541f9 ldr        x12, [x9, #0x308]                            
0000bb44 2d8141f9 ldr        x13, [x9, #0x300]                            
0000bb48 23c942bd ldr        s3, [x9, #0x2c8]                             
0000bb4c 63c0221e fcvt       d3, s3                                       
0000bb50 243541fd ldr        d4, [x9, #0x268]                             
0000bb54 8540601e fmov       d5, d4                                       
0000bb58 a440201e fmov       s4, s5                                       
0000bb5c 84c0221e fcvt       d4, s4                                       
0000bb60 a5040c5e mov        s5, v5.s[1]                                  
0000bb64 a5c0221e fcvt       d5, s5                                       
0000bb68 267142bd ldr        s6, [x9, #0x270]                             
0000bb6c c6c0221e fcvt       d6, s6                                       
0000bb70 e8bf5e39 ldrb       w8, [sp, #0x7af]                             
0000bb74 2a8941b9 ldr        w10, [x9, #0x188]                            
0000bb78 298d41b9 ldr        w9, [x9, #0x18c]                             
0000bb7c eb0309aa mov        x11, x9                                      
0000bb80 e9030091 mov        x9, sp                                       
0000bb84 e98702f9 str        x9, [sp, #0x508]                             
0000bb88 262d00fd str        d6, [x9, #0x58]                              
0000bb8c 252900fd str        d5, [x9, #0x50]                              
0000bb90 242500fd str        d4, [x9, #0x48]                              
0000bb94 232100fd str        d3, [x9, #0x40]                              
0000bb98 2d1d00f9 str        x13, [x9, #0x38]                             
0000bb9c 2c1900f9 str        x12, [x9, #0x30]                             
0000bba0 221500fd str        d2, [x9, #0x28]                              
0000bba4 211100fd str        d1, [x9, #0x20]                              
0000bba8 200d00fd str        d0, [x9, #0x18]                              
0000bbac 2b0900f9 str        x11, [x9, #0x10]                             
0000bbb0 2a0500f9 str        x10, [x9, #8]                                
0000bbb4 08014092 and        x8, x8, #1                                   
0000bbb8 280100f9 str        x8, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21sLastCoverOrientation
0000bbbc e00000f0 adrp       x0, #0x2a000                                 
0000bbc0 00803b91 add        x0, x0, #0xee0                                ; 'coversheet-state-read valid=%d active=%u orientation=%u ratio={%.4f,%.4f} ppp=%.2f tex=%llux%llu aux=%.1f lens={%.2f,%.2f} radius=%.2f'
0000bbc4 8bf1ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000bbc8 01000014 b          #0xbbcc                                      
0000bbcc 01000014 b          #0xbbd0                                      
0000bbd0 01000014 b          #0xbbd4                                      
0000bbd4 600100b0 adrp       x0, #0x38000                                 
0000bbd8 00e01a91 add        x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000bbdc e08302f9 str        x0, [sp, #0x500]                             
0000bbe0 e1b32191 add        x1, sp, #0x86c                                ; 'CoverSheet'
0000bbe4 82170094 bl         #0x119ec                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE4findB6v15006ERS8_||__ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE4findB6v15006ERS8_|
0000bbe8 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000bbec e80300aa mov        x8, x0                                       
0000bbf0 e08342f9 ldr        x0, [sp, #0x500]                             
0000bbf4 28b100f9 str        x8, [x9, #0x160]                             
0000bbf8 9a170094 bl         #0x11a60                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE3endB6v15006Ev||__ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEE3endB6v15006Ev|
0000bbfc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bc00 00ad00f9 str        x0, [x8, #0x158]                             
0000bc04 e0431e91 add        x0, sp, #0x790                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
0000bc08 e1231e91 add        x1, sp, #0x788                                ; 'CoverSheet'
0000bc0c 89170094 bl         #0x11a30                                      ; __ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEESC_||__ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj13LGRadiusRouteEEPvEEEEEESC_|
0000bc10 e0030034 cbz        w0, #0xbc8c                                  
0000bc14 01000014 b          #0xbc18                                      
0000bc18 690100d0 adrp       x9, #0x39000                                 
0000bc1c 29611b91 add        x9, x9, #0x6d8                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18sPrefsGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18sPrefsGeometryLogs
0000bc20 28008052 mov        w8, #1                                       
0000bc24 2801e8b8 ldaddal    w8, w8, [x9]                                 
0000bc28 084d0071 subs       w8, w8, #0x13                                
0000bc2c ec020054 b.gt       #0xbc88                                      
0000bc30 01000014 b          #0xbc34                                      
0000bc34 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bc38 0a8541f9 ldr        x10, [x8, #0x308]                            
0000bc3c 0b8141f9 ldr        x11, [x8, #0x300]                            
0000bc40 001d42bd ldr        s0, [x8, #0x21c]                             
0000bc44 00c0221e fcvt       d0, s0                                       
0000bc48 017142bd ldr        s1, [x8, #0x270]                              ; __ZL19g_origGaussIdentity|__ZL19g_origGaussIdentity
0000bc4c 21c0221e fcvt       d1, s1                                       
0000bc50 027542bd ldr        s2, [x8, #0x274]                             
0000bc54 42c0221e fcvt       d2, s2                                       
0000bc58 083d42b9 ldr        w8, [x8, #0x23c]                             
0000bc5c e9030091 mov        x9, sp                                       
0000bc60 221500fd str        d2, [x9, #0x28]                              
0000bc64 211100fd str        d1, [x9, #0x20]                              
0000bc68 200d00fd str        d0, [x9, #0x18]                              
0000bc6c 2b0900f9 str        x11, [x9, #0x10]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000bc70 2a0500f9 str        x10, [x9, #8]                                 ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE14clockScaleLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE14clockScaleLock
0000bc74 280100f9 str        x8, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18sPrefsGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18sPrefsGeometryLogs
0000bc78 e00000f0 adrp       x0, #0x2a000                                 
0000bc7c 009c3d91 add        x0, x0, #0xf67                                ; 'prefs render atom=0x%x tex=%llux%llu ratio=%.4f radius=%.2f bezel=%.2f'
0000bc80 5cf1ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000bc84 01000014 b          #0xbc88                                      
0000bc88 01000014 b          #0xbc8c                                      
0000bc8c 600100b0 adrp       x0, #0x38000                                 
0000bc90 00000a91 add        x0, x0, #0x280                                ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000bc94 080040f9 ldr        x8, [x0]                                      ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000bc98 1f093fd6 blraaz     x8                                           
0000bc9c 08004039 ldrb       w8, [x0]                                     
0000bca0 08040036 tbz        w8, #0, #0xbd20                              
0000bca4 01000014 b          #0xbca8                                      
0000bca8 680100d0 adrp       x8, #0x39000                                 
0000bcac 083d41f9 ldr        x8, [x8, #0x278]                              ; __ZL20g_origGaussR13Legacy|__ZL20g_origGaussR13Legacy
0000bcb0 880300b4 cbz        x8, #0xbd20                                  
0000bcb4 01000014 b          #0xbcb8                                      
0000bcb8 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000bcbc 680100d0 adrp       x8, #0x39000                                 
0000bcc0 083d41f9 ldr        x8, [x8, #0x278]                              ; __ZL20g_origGaussR13Legacy|__ZL20g_origGaussR13Legacy
0000bcc4 2ac541f9 ldr        x10, [x9, #0x388]                            
0000bcc8 ea7f02f9 str        x10, [sp, #0x4f8]                            
0000bccc 21c141f9 ldr        x1, [x9, #0x380]                             
0000bcd0 22bd41f9 ldr        x2, [x9, #0x378]                             
0000bcd4 23b941f9 ldr        x3, [x9, #0x370]                             
0000bcd8 206d43bd ldr        s0, [x9, #0x36c]                             
0000bcdc 24b141f9 ldr        x4, [x9, #0x360]                             
0000bce0 600100b0 adrp       x0, #0x38000                                 
0000bce4 00600a91 add        x0, x0, #0x298                                ; __ZL20g_legacyRenderOffset|__ZL20g_legacyRenderOffset
0000bce8 0a0040f9 ldr        x10, [x0]                                     ; __ZL20g_legacyRenderOffset|__ZL20g_legacyRenderOffset
0000bcec 5f093fd6 blraaz     x10                                          
0000bcf0 ea0300aa mov        x10, x0                                      
0000bcf4 e07f42f9 ldr        x0, [sp, #0x4f8]                             
0000bcf8 420140fd ldr        d2, [x10]                                     ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20keyboardGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20keyboardGeometryLogs
0000bcfc 4140601e fmov       d1, d2                                       
0000bd00 2240201e fmov       s2, s1                                       
0000bd04 23040c5e mov        s3, v1.s[1]                                  
0000bd08 25a941f9 ldr        x5, [x9, #0x350]                             
0000bd0c 26a541f9 ldr        x6, [x9, #0x348]                             
0000bd10 a70f40f9 ldr        x7, [x29, #0x18]                             
0000bd14 01e4002f movi       d1, #0000000000000000                        
0000bd18 1f093fd6 blraaz     x8                                           
0000bd1c 56000014 b          #0xbe74                                      
0000bd20 600100b0 adrp       x0, #0x38000                                 
0000bd24 00000a91 add        x0, x0, #0x280                                ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000bd28 080040f9 ldr        x8, [x0]                                      ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000bd2c 1f093fd6 blraaz     x8                                           
0000bd30 08004039 ldrb       w8, [x0]                                     
0000bd34 a8030036 tbz        w8, #0, #0xbda8                              
0000bd38 01000014 b          #0xbd3c                                      
0000bd3c 680100d0 adrp       x8, #0x39000                                 
0000bd40 084141f9 ldr        x8, [x8, #0x280]                              ; __ZL14g_origGaussR14|__ZL14g_origGaussR14
0000bd44 280300b4 cbz        x8, #0xbda8                                  
0000bd48 01000014 b          #0xbd4c                                      
0000bd4c e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000bd50 680100d0 adrp       x8, #0x39000                                 
0000bd54 084141f9 ldr        x8, [x8, #0x280]                              ; __ZL14g_origGaussR14|__ZL14g_origGaussR14
0000bd58 2ac541f9 ldr        x10, [x9, #0x388]                            
0000bd5c ea7b02f9 str        x10, [sp, #0x4f0]                            
0000bd60 21c141f9 ldr        x1, [x9, #0x380]                             
0000bd64 22bd41f9 ldr        x2, [x9, #0x378]                             
0000bd68 23b941f9 ldr        x3, [x9, #0x370]                             
0000bd6c 206d43bd ldr        s0, [x9, #0x36c]                             
0000bd70 24b141f9 ldr        x4, [x9, #0x360]                             
0000bd74 600100b0 adrp       x0, #0x38000                                 
0000bd78 00600a91 add        x0, x0, #0x298                                ; __ZL20g_legacyRenderOffset|__ZL20g_legacyRenderOffset
0000bd7c 0a0040f9 ldr        x10, [x0]                                     ; __ZL20g_legacyRenderOffset|__ZL20g_legacyRenderOffset
0000bd80 5f093fd6 blraaz     x10                                          
0000bd84 ea0300aa mov        x10, x0                                      
0000bd88 e07b42f9 ldr        x0, [sp, #0x4f0]                             
0000bd8c 420140fd ldr        d2, [x10]                                     ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20keyboardGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20keyboardGeometryLogs
0000bd90 25a941f9 ldr        x5, [x9, #0x350]                             
0000bd94 26a541f9 ldr        x6, [x9, #0x348]                             
0000bd98 a70f40f9 ldr        x7, [x29, #0x18]                             
0000bd9c 01e4002f movi       d1, #0000000000000000                        
0000bda0 1f093fd6 blraaz     x8                                           
0000bda4 33000014 b          #0xbe70                                      
0000bda8 680100b0 adrp       x8, #0x38000                                 
0000bdac 08e143f9 ldr        x8, [x8, #0x7c0]                              ; __ZL19g_origGaussTwoShape|__ZL19g_origGaussTwoShape
0000bdb0 e80200b4 cbz        x8, #0xbe0c                                  
0000bdb4 01000014 b          #0xbdb8                                      
0000bdb8 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000bdbc 680100b0 adrp       x8, #0x38000                                 
0000bdc0 08e143f9 ldr        x8, [x8, #0x7c0]                              ; __ZL19g_origGaussTwoShape|__ZL19g_origGaussTwoShape
0000bdc4 20c541f9 ldr        x0, [x9, #0x388]                             
0000bdc8 21c141f9 ldr        x1, [x9, #0x380]                             
0000bdcc 22bd41f9 ldr        x2, [x9, #0x378]                             
0000bdd0 23b941f9 ldr        x3, [x9, #0x370]                             
0000bdd4 206d43bd ldr        s0, [x9, #0x36c]                             
0000bdd8 24b141f9 ldr        x4, [x9, #0x360]                             
0000bddc 26a941f9 ldr        x6, [x9, #0x350]                             
0000bde0 27a541f9 ldr        x7, [x9, #0x348]                             
0000bde4 aa0b40f9 ldr        x10, [x29, #0x10]                            
0000bde8 ac0f40f9 ldr        x12, [x29, #0x18]                            
0000bdec e92f6639 ldrb       w9, [sp, #0x98b]                             
0000bdf0 eb030091 mov        x11, sp                                      
0000bdf4 6c0500f9 str        x12, [x11, #8]                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs
0000bdf8 6a0100f9 str        x10, [x11]                                    ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE22sInitialCoverStateLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE22sInitialCoverStateLogs
0000bdfc 25010012 and        w5, w9, #1                                   
0000be00 01e4002f movi       d1, #0000000000000000                        
0000be04 1f093fd6 blraaz     x8                                           
0000be08 19000014 b          #0xbe6c                                      
0000be0c 680100b0 adrp       x8, #0x38000                                 
0000be10 08dd43f9 ldr        x8, [x8, #0x7b8]                              ; __ZL14g_origGaussR13|__ZL14g_origGaussR13
0000be14 a80200b4 cbz        x8, #0xbe68                                  
0000be18 01000014 b          #0xbe1c                                      
0000be1c e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000be20 680100b0 adrp       x8, #0x38000                                 
0000be24 08dd43f9 ldr        x8, [x8, #0x7b8]                              ; __ZL14g_origGaussR13|__ZL14g_origGaussR13
0000be28 20c541f9 ldr        x0, [x9, #0x388]                             
0000be2c 21c141f9 ldr        x1, [x9, #0x380]                             
0000be30 22bd41f9 ldr        x2, [x9, #0x378]                             
0000be34 23b941f9 ldr        x3, [x9, #0x370]                             
0000be38 206d43bd ldr        s0, [x9, #0x36c]                             
0000be3c 24b141f9 ldr        x4, [x9, #0x360]                             
0000be40 26a941f9 ldr        x6, [x9, #0x350]                             
0000be44 27a541f9 ldr        x7, [x9, #0x348]                             
0000be48 aa0f40f9 ldr        x10, [x29, #0x18]                            
0000be4c e92f6639 ldrb       w9, [sp, #0x98b]                             
0000be50 eb030091 mov        x11, sp                                      
0000be54 6a0100f9 str        x10, [x11]                                    ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE22sInitialCoverStateLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE22sInitialCoverStateLogs
0000be58 25010012 and        w5, w9, #1                                   
0000be5c 01e4002f movi       d1, #0000000000000000                        
0000be60 1f093fd6 blraaz     x8                                           
0000be64 01000014 b          #0xbe68                                      
0000be68 01000014 b          #0xbe6c                                      
0000be6c 01000014 b          #0xbe70                                      
0000be70 01000014 b          #0xbe74                                      
0000be74 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000be78 09a141f9 ldr        x9, [x8, #0x340]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0$tlv$init|__ZZL19lgHostParamsForAtomjPbE6routed_0$tlv$init
0000be7c 6a0100b0 adrp       x10, #0x38000                                
0000be80 4a3141f9 ldr        x10, [x10, #0x260]                            ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
0000be84 29696af8 ldr        x9, [x9, x10]                                 ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18sPrefsGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18sPrefsGeometryLogs
0000be88 099901f9 str        x9, [x8, #0x330]                             
0000be8c 089941f9 ldr        x8, [x8, #0x330]                             
0000be90 c80000b4 cbz        x8, #0xbea8                                  
0000be94 01000014 b          #0xbe98                                      
0000be98 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000be9c 089941f9 ldr        x8, [x8, #0x330]                             
0000bea0 e87702f9 str        x8, [sp, #0x4e8]                             
0000bea4 04000014 b          #0xbeb4                                      
0000bea8 080080d2 mov        x8, #0                                       
0000beac e87702f9 str        x8, [sp, #0x4e8]                             
0000beb0 01000014 b          #0xbeb4                                      
0000beb4 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000beb8 e87742f9 ldr        x8, [sp, #0x4e8]                             
0000bebc 289101f9 str        x8, [x9, #0x320]                             
0000bec0 680100b0 adrp       x8, #0x38000                                 
0000bec4 082d41f9 ldr        x8, [x8, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
0000bec8 2801f8b7 tbnz       x8, #0x3f, #0xbeec                           
0000becc 01000014 b          #0xbed0                                      
0000bed0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bed4 08a141f9 ldr        x8, [x8, #0x340]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0$tlv$init|__ZZL19lgHostParamsForAtomjPbE6routed_0$tlv$init
0000bed8 690100b0 adrp       x9, #0x38000                                 
0000bedc 292d41f9 ldr        x9, [x9, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
0000bee0 086969f8 ldr        x8, [x8, x9]                                 
0000bee4 e87302f9 str        x8, [sp, #0x4e0]                             
0000bee8 04000014 b          #0xbef8                                      
0000beec 080080d2 mov        x8, #0                                       
0000bef0 e87302f9 str        x8, [sp, #0x4e0]                             
0000bef4 01000014 b          #0xbef8                                      
0000bef8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000befc e97342f9 ldr        x9, [sp, #0x4e0]                             
0000bf00 09a900f9 str        x9, [x8, #0x150]                             
0000bf04 08a940f9 ldr        x8, [x8, #0x150]                             
0000bf08 08bd70f2 ands       x8, x8, #-0x10000                            
0000bf0c e8079f1a cset       w8, ne                                       
0000bf10 e8ff1d39 strb       w8, [sp, #0x77f]                             
0000bf14 e8ff5d39 ldrb       w8, [sp, #0x77f]                             
0000bf18 a8010036 tbz        w8, #0, #0xbf4c                              
0000bf1c 01000014 b          #0xbf20                                      
0000bf20 680100b0 adrp       x8, #0x38000                                 
0000bf24 082941f9 ldr        x8, [x8, #0x250]                              ; __ZL26g_destinationTextureOffset|__ZL26g_destinationTextureOffset
0000bf28 2801f8b7 tbnz       x8, #0x3f, #0xbf4c                           
0000bf2c 01000014 b          #0xbf30                                      
0000bf30 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bf34 08a940f9 ldr        x8, [x8, #0x150]                             
0000bf38 690100b0 adrp       x9, #0x38000                                 
0000bf3c 292941f9 ldr        x9, [x9, #0x250]                              ; __ZL26g_destinationTextureOffset|__ZL26g_destinationTextureOffset
0000bf40 086969f8 ldr        x8, [x8, x9]                                 
0000bf44 e86f02f9 str        x8, [sp, #0x4d8]                             
0000bf48 04000014 b          #0xbf58                                      
0000bf4c 080080d2 mov        x8, #0                                       
0000bf50 e86f02f9 str        x8, [sp, #0x4d8]                             
0000bf54 01000014 b          #0xbf58                                      
0000bf58 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bf5c e96f42f9 ldr        x9, [sp, #0x4d8]                             
0000bf60 09a100f9 str        x9, [x8, #0x140]                             
0000bf64 08a140f9 ldr        x8, [x8, #0x140]                             
0000bf68 c80000b4 cbz        x8, #0xbf80                                  
0000bf6c 01000014 b          #0xbf70                                      
0000bf70 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bf74 08a140f9 ldr        x8, [x8, #0x140]                             
0000bf78 e86b02f9 str        x8, [sp, #0x4d0]                             
0000bf7c 04000014 b          #0xbf8c                                      
0000bf80 080080d2 mov        x8, #0                                       
0000bf84 e86b02f9 str        x8, [sp, #0x4d0]                             
0000bf88 01000014 b          #0xbf8c                                      
0000bf8c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bf90 e96b42f9 ldr        x9, [sp, #0x4d0]                             
0000bf94 099d00f9 str        x9, [x8, #0x138]                             
0000bf98 089141f9 ldr        x8, [x8, #0x320]                             
0000bf9c 09008052 mov        w9, #0                                       
0000bfa0 e97f1d39 strb       w9, [sp, #0x75f]                             
0000bfa4 29008052 mov        w9, #1                                       
0000bfa8 e9cf04b9 str        w9, [sp, #0x4cc]                             
0000bfac 680500b4 cbz        x8, #0xc058                                  
0000bfb0 01000014 b          #0xbfb4                                      
0000bfb4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bfb8 089d40f9 ldr        x8, [x8, #0x138]                             
0000bfbc 29008052 mov        w9, #1                                       
0000bfc0 e9cf04b9 str        w9, [sp, #0x4cc]                             
0000bfc4 a80400b4 cbz        x8, #0xc058                                  
0000bfc8 01000014 b          #0xbfcc                                      
0000bfcc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000bfd0 009d40f9 ldr        x0, [x8, #0x138]                             
0000bfd4 e3720094 bl         #0x28b60                                      ; _objc_msgSend$device
0000bfd8 fd031daa mov        x29, x29                                     
0000bfdc bc6f0094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000bfe0 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000bfe4 209900f9 str        x0, [x9, #0x130]                             
0000bfe8 28008052 mov        w8, #1                                       
0000bfec e87f1d39 strb       w8, [sp, #0x75f]                             
0000bff0 298941f9 ldr        x9, [x9, #0x310]                             
0000bff4 090009eb subs       x9, x0, x9                                   
0000bff8 e8cf04b9 str        w8, [sp, #0x4cc]                             
0000bffc e1020054 b.ne       #0xc058                                      
0000c000 01000014 b          #0xc004                                      
0000c004 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c008 009d40f9 ldr        x0, [x8, #0x138]                             
0000c00c 3d740094 bl         #0x29100                                      ; _objc_msgSend$width
0000c010 28008052 mov        w8, #1                                       
0000c014 e8cf04b9 str        w8, [sp, #0x4cc]                             
0000c018 000200b4 cbz        x0, #0xc058                                  
0000c01c 01000014 b          #0xc020                                      
0000c020 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c024 009d40f9 ldr        x0, [x8, #0x138]                             
0000c028 06730094 bl         #0x28c40                                      ; _objc_msgSend$height
0000c02c 28008052 mov        w8, #1                                       
0000c030 e8cf04b9 str        w8, [sp, #0x4cc]                             
0000c034 200100b4 cbz        x0, #0xc058                                  
0000c038 01000014 b          #0xc03c                                      
0000c03c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c040 009d40f9 ldr        x0, [x8, #0x138]                             
0000c044 27740094 bl         #0x290e0                                      ; _objc_msgSend$usage
0000c048 08007ef2 ands       x8, x0, #4                                   
0000c04c e8179f1a cset       w8, eq                                       
0000c050 e8cf04b9 str        w8, [sp, #0x4cc]                             
0000c054 01000014 b          #0xc058                                      
0000c058 e8cf44b9 ldr        w8, [sp, #0x4cc]                             
0000c05c e8cb04b9 str        w8, [sp, #0x4c8]                             
0000c060 e87f5d39 ldrb       w8, [sp, #0x75f]                             
0000c064 08050071 subs       w8, w8, #1                                   
0000c068 c1000054 b.ne       #0xc080                                      
0000c06c 01000014 b          #0xc070                                      
0000c070 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c074 009940f9 ldr        x0, [x8, #0x130]                             
0000c078 69700094 bl         #0x2821c                                      ; _objc_release
0000c07c 01000014 b          #0xc080                                      
0000c080 e8cb44b9 ldr        w8, [sp, #0x4c8]                             
0000c084 a8060036 tbz        w8, #0, #0xc158                              
0000c088 01000014 b          #0xc08c                                      
0000c08c 690100b0 adrp       x9, #0x39000                                 
0000c090 29711b91 add        x9, x9, #0x6dc                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs
0000c094 28008052 mov        w8, #1                                       
0000c098 2801e8b8 ldaddal    w8, w8, [x9]                                 
0000c09c 084d0071 subs       w8, w8, #0x13                                
0000c0a0 ac050054 b.gt       #0xc154                                      
0000c0a4 01000014 b          #0xc0a8                                      
0000c0a8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c0ac 09a940f9 ldr        x9, [x8, #0x150]                             
0000c0b0 e95702f9 str        x9, [sp, #0x4a8]                             
0000c0b4 09a140f9 ldr        x9, [x8, #0x140]                             
0000c0b8 e95302f9 str        x9, [sp, #0x4a0]                             
0000c0bc 098541f9 ldr        x9, [x8, #0x308]                             
0000c0c0 e94f02f9 str        x9, [sp, #0x498]                             
0000c0c4 098141f9 ldr        x9, [x8, #0x300]                             
0000c0c8 e94b02f9 str        x9, [sp, #0x490]                             
0000c0cc 009d40f9 ldr        x0, [x8, #0x138]                             
0000c0d0 083d42b9 ldr        w8, [x8, #0x23c]                             
0000c0d4 e85b02f9 str        x8, [sp, #0x4b0]                             
0000c0d8 0a740094 bl         #0x29100                                      ; _objc_msgSend$width
0000c0dc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c0e0 e05f02f9 str        x0, [sp, #0x4b8]                             
0000c0e4 009d40f9 ldr        x0, [x8, #0x138]                             
0000c0e8 d6720094 bl         #0x28c40                                      ; _objc_msgSend$height
0000c0ec e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c0f0 e04702f9 str        x0, [sp, #0x488]                             
0000c0f4 009d40f9 ldr        x0, [x8, #0x138]                             
0000c0f8 fa730094 bl         #0x290e0                                      ; _objc_msgSend$usage
0000c0fc ee4742f9 ldr        x14, [sp, #0x488]                            
0000c100 ed4b42f9 ldr        x13, [sp, #0x490]                            
0000c104 ec4f42f9 ldr        x12, [sp, #0x498]                            
0000c108 eb5342f9 ldr        x11, [sp, #0x4a0]                            
0000c10c ea5742f9 ldr        x10, [sp, #0x4a8]                            
0000c110 e85b42f9 ldr        x8, [sp, #0x4b0]                             
0000c114 ef0300aa mov        x15, x0                                      
0000c118 e05f42f9 ldr        x0, [sp, #0x4b8]                             
0000c11c e9030091 mov        x9, sp                                       
0000c120 e96302f9 str        x9, [sp, #0x4c0]                             
0000c124 2f1d00f9 str        x15, [x9, #0x38]                             
0000c128 2e1900f9 str        x14, [x9, #0x30]                             
0000c12c 201500f9 str        x0, [x9, #0x28]                              
0000c130 2d1100f9 str        x13, [x9, #0x20]                             
0000c134 2c0d00f9 str        x12, [x9, #0x18]                             
0000c138 2b0900f9 str        x11, [x9, #0x10]                             
0000c13c 2a0500f9 str        x10, [x9, #8]                                
0000c140 280100f9 str        x8, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs
0000c144 e00000d0 adrp       x0, #0x2a000                                 
0000c148 00b83e91 add        x0, x0, #0xfae                                ; 'CR13: unusable CA destination atom=0x%x surf=%p tex=%p src=%llux%llu dst=%lux%lu usage=%lu; kept stock pass'
0000c14c 29f0ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000c150 01000014 b          #0xc154                                      
0000c154 830a0014 b          #0xeb60                                      
0000c158 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c15c 009d40f9 ldr        x0, [x8, #0x138]                             
0000c160 e8730094 bl         #0x29100                                      ; _objc_msgSend$width
0000c164 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c168 0000239e ucvtf      s0, x0                                       
0000c16c e08704bd str        s0, [sp, #0x484]                             
0000c170 009d40f9 ldr        x0, [x8, #0x138]                             
0000c174 b3720094 bl         #0x28c40                                      ; _objc_msgSend$height
0000c178 e18744bd ldr        s1, [sp, #0x484]                             
0000c17c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c180 0000239e ucvtf      s0, x0                                       
0000c184 015d04bd str        s1, [x8, #0x45c]                             
0000c188 005904bd str        s0, [x8, #0x458]                             
0000c18c 005d44bd ldr        s0, [x8, #0x45c]                             
0000c190 005104bd str        s0, [x8, #0x450]                             
0000c194 005944bd ldr        s0, [x8, #0x458]                             
0000c198 005504bd str        s0, [x8, #0x454]                             
0000c19c 002942fd ldr        d0, [x8, #0x450]                             
0000c1a0 002501fd str        d0, [x8, #0x248]                              ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
0000c1a4 081941f9 ldr        x8, [x8, #0x230]                             
0000c1a8 000540f9 ldr        x0, [x8, #8]                                 
0000c1ac e10000f0 adrp       x1, #0x2b000                                 
0000c1b0 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000c1b4 9a6f0094 bl         #0x2801c                                      ; _strcmp
0000c1b8 c0020035 cbnz       w0, #0xc210                                  
0000c1bc 01000014 b          #0xc1c0                                      
0000c1c0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c1c4 002541fd ldr        d0, [x8, #0x248]                              ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
0000c1c8 012141fd ldr        d1, [x8, #0x240]                              ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset ; ->||||||||||||||||||||||||||||||
0000c1cc 00fc212e fdiv       v0.2s, v0.2s, v1.2s                          
0000c1d0 009100fd str        d0, [x8, #0x120]                             
0000c1d4 019140fd ldr        d1, [x8, #0x120]                             
0000c1d8 005d41fd ldr        d0, [x8, #0x2b8]                             
0000c1dc 00dc212e fmul       v0.2s, v0.2s, v1.2s                          
0000c1e0 005d01fd str        d0, [x8, #0x2b8]                             
0000c1e4 019140fd ldr        d1, [x8, #0x120]                             
0000c1e8 006141fd ldr        d0, [x8, #0x2c0]                              ; ->|||||||||||||||||||
0000c1ec 00dc212e fmul       v0.2s, v0.2s, v1.2s                          
0000c1f0 006101fd str        d0, [x8, #0x2c0]                             
0000c1f4 019140fd ldr        d1, [x8, #0x120]                             
0000c1f8 003541fd ldr        d0, [x8, #0x268]                              ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
0000c1fc 00dc212e fmul       v0.2s, v0.2s, v1.2s                          
0000c200 003501fd str        d0, [x8, #0x268]                              ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
0000c204 002541fd ldr        d0, [x8, #0x248]                              ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
0000c208 002101fd str        d0, [x8, #0x240]                              ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset
0000c20c 01000014 b          #0xc210                                      
0000c210 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c214 090080d2 mov        x9, #0                                       
0000c218 098d00f9 str        x9, [x8, #0x118]                             
0000c21c 081941f9 ldr        x8, [x8, #0x230]                             
0000c220 000140f9 ldr        x0, [x8]                                     
0000c224 480100b0 adrp       x8, #0x35000                                 
0000c228 010143f9 ldr        x1, [x8, #0x600]                             
0000c22c 7c6f0094 bl         #0x2801c                                      ; _strcmp
0000c230 08000071 subs       w8, w0, #0                                   
0000c234 e8179f1a cset       w8, eq                                       
0000c238 e81f1d39 strb       w8, [sp, #0x747]                             
0000c23c 60010090 adrp       x0, #0x38000                                 
0000c240 00801b91 add        x0, x0, #0x6e0                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
0000c244 e03f02f9 str        x0, [sp, #0x478]                             
0000c248 e1b32191 add        x1, sp, #0x86c                                ; 'Clock'
0000c24c 10170094 bl         #0x11e8c                                      ; __ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE4findB6v15006ERS7_||__ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE4findB6v15006ERS7_|
0000c250 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000c254 e80300aa mov        x8, x0                                       
0000c258 e03f42f9 ldr        x0, [sp, #0x478]                             
0000c25c 288500f9 str        x8, [x9, #0x108]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE11lastOpacity|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE11lastOpacity
0000c260 28170094 bl         #0x11f00                                      ; __ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE3endB6v15006Ev||__ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE3endB6v15006Ev|
0000c264 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c268 007d00f9 str        x0, [x8, #0xf8]                              
0000c26c e0e31c91 add        x0, sp, #0x738                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
0000c270 e1a31c91 add        x1, sp, #0x728                                ; 'Clock'
0000c274 17170094 bl         #0x11ed0                                      ; __ZNSt3__1eqB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIjiEEPvEEEEEESB_||__ZNSt3__1eqB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIjiEEPvEEEEEESB_|
0000c278 a0000034 cbz        w0, #0xc28c                                  
0000c27c 01000014 b          #0xc280                                      
0000c280 08008012 mov        w8, #-1                                      
0000c284 e87704b9 str        w8, [sp, #0x474]                             
0000c288 06000014 b          #0xc2a0                                      
0000c28c e0e31c91 add        x0, sp, #0x738                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
0000c290 2b170094 bl         #0x11f3c                                      ; __ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIjiEEPvEEEEEptB6v15006Ev||__ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIjiEEPvEEEEEptB6v15006Ev|
0000c294 080440b9 ldr        w8, [x0, #4]                                 
0000c298 e87704b9 str        w8, [sp, #0x474]                             
0000c29c 01000014 b          #0xc2a0                                      
0000c2a0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c2a4 e97744b9 ldr        w9, [sp, #0x474]                             
0000c2a8 090501b9 str        w9, [x8, #0x104]                             
0000c2ac 090080d2 mov        x9, #0                                       
0000c2b0 097900f9 str        x9, [x8, #0xf0]                              
0000c2b4 097500f9 str        x9, [x8, #0xe8]                              
0000c2b8 081941f9 ldr        x8, [x8, #0x230]                             
0000c2bc 000540f9 ldr        x0, [x8, #8]                                 
0000c2c0 e10000f0 adrp       x1, #0x2b000                                 
0000c2c4 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000c2c8 556f0094 bl         #0x2801c                                      ; _strcmp
0000c2cc 40040035 cbnz       w0, #0xc354                                  
0000c2d0 01000014 b          #0xc2d4                                      
0000c2d4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c2d8 29008052 mov        w9, #1                                       
0000c2dc 09dd00b9 str        w9, [x8, #0xdc]                              
0000c2e0 008941f9 ldr        x0, [x8, #0x310]                             
0000c2e4 060541b9 ldr        w6, [x8, #0x104]                             
0000c2e8 e81f5d39 ldrb       w8, [sp, #0x747]                             
0000c2ec 05010012 and        w5, w8, #1                                   
0000c2f0 e1831c91 add        x1, sp, #0x720                                ; 'Clock'
0000c2f4 e2631c91 add        x2, sp, #0x718                               
0000c2f8 e3431c91 add        x3, sp, #0x710                               
0000c2fc e4331c91 add        x4, sp, #0x70c                               
0000c300 1b170094 bl         #0x11f6c                                      ; __ZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbi||__ZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbi|
0000c304 fd031daa mov        x29, x29                                     
0000c308 f16e0094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000c30c e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000c310 e80300aa mov        x8, x0                                       
0000c314 208d40f9 ldr        x0, [x9, #0x118]                              ; __ZL14g_pipelineLock|__ZL14g_pipelineLock
0000c318 288d00f9 str        x8, [x9, #0x118]                              ; __ZL14g_pipelineLock|__ZL14g_pipelineLock
0000c31c c06f0094 bl         #0x2821c                                      ; _objc_release
0000c320 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c324 00dd40bd ldr        s0, [x8, #0xdc]                              
0000c328 00d8217e ucvtf      s0, s0                                       
0000c32c 00e902bd str        s0, [x8, #0x2e8]                             
0000c330 098d40f9 ldr        x9, [x8, #0x118]                             
0000c334 290100f1 subs       x9, x9, #0                                   
0000c338 0110211e fmov       s1, #3.00000000                              
0000c33c 0010201e fmov       s0, #2.00000000                              
0000c340 001c211e fcsel      s0, s0, s1, ne                               
0000c344 00c902bd str        s0, [x8, #0x2c8]                             
0000c348 007140fd ldr        d0, [x8, #0xe0]                              
0000c34c 003501fd str        d0, [x8, #0x268]                             
0000c350 01000014 b          #0xc354                                      
0000c354 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c358 09f0a752 mov        w9, #0x3f800000                              
0000c35c 094d04b9 str        w9, [x8, #0x44c]                             
0000c360 094904b9 str        w9, [x8, #0x448]                             
0000c364 004d44bd ldr        s0, [x8, #0x44c]                             
0000c368 004104bd str        s0, [x8, #0x440]                             
0000c36c 004944bd ldr        s0, [x8, #0x448]                             
0000c370 004504bd str        s0, [x8, #0x444]                             
0000c374 002142fd ldr        d0, [x8, #0x440]                             
0000c378 007101fd str        d0, [x8, #0x2e0]                             
0000c37c 08bd41f9 ldr        x8, [x8, #0x378]                             
0000c380 08c900b4 cbz        x8, #0xdca0                                  
0000c384 01000014 b          #0xc388                                      
0000c388 e89b6039 ldrb       w8, [sp, #0x826]                             
0000c38c a8c80037 tbnz       w8, #0, #0xdca0                              
0000c390 01000014 b          #0xc394                                      
0000c394 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c398 090080d2 mov        x9, #0                                       
0000c39c 096900f9 str        x9, [x8, #0xd0]                              
0000c3a0 089d41f9 ldr        x8, [x8, #0x338]                             
0000c3a4 00810091 add        x0, x8, #0x20                                
0000c3a8 08028052 mov        w8, #0x10                                    
0000c3ac e20308aa mov        x2, x8                                       
0000c3b0 a1a300d1 sub        x1, x29, #0x28                               
0000c3b4 e5180094 bl         #0x12748                                      ; __ZL10lgSafeReadPKvPvm||__ZL10lgSafeReadPKvPvm|
0000c3b8 20c70034 cbz        w0, #0xdc9c                                  
0000c3bc 01000014 b          #0xc3c0                                      
0000c3c0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c3c4 08bd41f9 ldr        x8, [x8, #0x378]                             
0000c3c8 00610091 add        x0, x8, #0x18                                
0000c3cc 08018052 mov        w8, #8                                       
0000c3d0 e20308aa mov        x2, x8                                       
0000c3d4 e1031c91 add        x1, sp, #0x700                                ; 'Clock'
0000c3d8 dc180094 bl         #0x12748                                      ; __ZL10lgSafeReadPKvPvm||__ZL10lgSafeReadPKvPvm|
0000c3dc 00c60034 cbz        w0, #0xdc9c                                  
0000c3e0 01000014 b          #0xc3e4                                      
0000c3e4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c3e8 086940f9 ldr        x8, [x8, #0xd0]                              
0000c3ec 00010191 add        x0, x8, #0x40                                
0000c3f0 08048052 mov        w8, #0x20                                    
0000c3f4 e20308aa mov        x2, x8                                       
0000c3f8 a12301d1 sub        x1, x29, #0x48                               
0000c3fc d3180094 bl         #0x12748                                      ; __ZL10lgSafeReadPKvPvm||__ZL10lgSafeReadPKvPvm|
0000c400 e0c40034 cbz        w0, #0xdc9c                                  
0000c404 01000014 b          #0xc408                                      
0000c408 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c40c 00f542fd ldr        d0, [x8, #0x5e8]                             
0000c410 0820601e fcmp       d0, #0.0                                     
0000c414 4dc40054 b.le       #0xdc9c                                      
0000c418 01000014 b          #0xc41c                                      
0000c41c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c420 00f942fd ldr        d0, [x8, #0x5f0]                             
0000c424 0820601e fcmp       d0, #0.0                                     
0000c428 adc30054 b.le       #0xdc9c                                      
0000c42c 01000014 b          #0xc430                                      
0000c430 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c434 080146b9 ldr        w8, [x8, #0x600]                             
0000c438 08050071 subs       w8, w8, #1                                   
0000c43c 0bc30054 b.lt       #0xdc9c                                      
0000c440 01000014 b          #0xc444                                      
0000c444 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c448 080546b9 ldr        w8, [x8, #0x604]                             
0000c44c 08050071 subs       w8, w8, #1                                   
0000c450 6bc20054 b.lt       #0xdc9c                                      
0000c454 01000014 b          #0xc458                                      
0000c458 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c45c 00f542fd ldr        d0, [x8, #0x5e8]                             
0000c460 010d42bd ldr        s1, [x8, #0x20c]                             
0000c464 21c0221e fcvt       d1, s1                                       
0000c468 0008611e fmul       d0, d0, d1                                   
0000c46c 0040621e fcvt       s0, d0                                       
0000c470 00cd00bd str        s0, [x8, #0xcc]                              
0000c474 00f942fd ldr        d0, [x8, #0x5f0]                             
0000c478 010d42bd ldr        s1, [x8, #0x20c]                             
0000c47c 21c0221e fcvt       d1, s1                                       
0000c480 0008611e fmul       d0, d0, d1                                   
0000c484 0040621e fcvt       s0, d0                                       
0000c488 00c900bd str        s0, [x8, #0xc8]                              
0000c48c 60010090 adrp       x0, #0x38000                                 
0000c490 00801b91 add        x0, x0, #0x6e0                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
0000c494 e03702f9 str        x0, [sp, #0x468]                             
0000c498 e1b32191 add        x1, sp, #0x86c                                ; 'Clock'
0000c49c 7c160094 bl         #0x11e8c                                      ; __ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE4findB6v15006ERS7_||__ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE4findB6v15006ERS7_|
0000c4a0 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000c4a4 e80300aa mov        x8, x0                                       
0000c4a8 e03742f9 ldr        x0, [sp, #0x468]                             
0000c4ac 286100f9 str        x8, [x9, #0xc0]                              
0000c4b0 94160094 bl         #0x11f00                                      ; __ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE3endB6v15006Ev||__ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEE3endB6v15006Ev|
0000c4b4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c4b8 005d00f9 str        x0, [x8, #0xb8]                              
0000c4bc e0c31b91 add        x0, sp, #0x6f0                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
0000c4c0 e1a31b91 add        x1, sp, #0x6e8                                ; 'Clock'
0000c4c4 d0180094 bl         #0x12804                                      ; __ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIjiEEPvEEEEEESB_||__ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIjiEEPvEEEEEESB_|
0000c4c8 c0040034 cbz        w0, #0xc560                                  
0000c4cc 01000014 b          #0xc4d0                                      
0000c4d0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c4d4 00e942bd ldr        s0, [x8, #0x2e8]                             
0000c4d8 0110211e fmov       s1, #3.00000000                              
0000c4dc 0020211e fcmp       s0, s1                                       
0000c4e0 4b010054 b.lt       #0xc508                                      
0000c4e4 01000014 b          #0xc4e8                                      
0000c4e8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c4ec 000146bd ldr        s0, [x8, #0x600]                             
0000c4f0 00d8215e scvtf      s0, s0                                       
0000c4f4 01f942fd ldr        d1, [x8, #0x5f0]                             
0000c4f8 2140621e fcvt       s1, d1                                       
0000c4fc 0018211e fdiv       s0, s0, s1                                   
0000c500 e06704bd str        s0, [sp, #0x464]                             
0000c504 09000014 b          #0xc528                                      
0000c508 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c50c 000546bd ldr        s0, [x8, #0x604]                             
0000c510 00d8215e scvtf      s0, s0                                       
0000c514 01f942fd ldr        d1, [x8, #0x5f0]                             
0000c518 2140621e fcvt       s1, d1                                       
0000c51c 0018211e fdiv       s0, s0, s1                                   
0000c520 e06704bd str        s0, [sp, #0x464]                             
0000c524 01000014 b          #0xc528                                      
0000c528 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c52c e06744bd ldr        s0, [sp, #0x464]                             
0000c530 00b500bd str        s0, [x8, #0xb4]                              
0000c534 00f542fd ldr        d0, [x8, #0x5e8]                             
0000c538 0040621e fcvt       s0, d0                                       
0000c53c 01b540bd ldr        s1, [x8, #0xb4]                              
0000c540 0008211e fmul       s0, s0, s1                                   
0000c544 00cd00bd str        s0, [x8, #0xcc]                              
0000c548 00f942fd ldr        d0, [x8, #0x5f0]                             
0000c54c 0040621e fcvt       s0, d0                                       
0000c550 01b540bd ldr        s1, [x8, #0xb4]                              
0000c554 0008211e fmul       s0, s0, s1                                   
0000c558 00c900bd str        s0, [x8, #0xc8]                              
0000c55c 01000014 b          #0xc560                                      
0000c560 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c564 081941f9 ldr        x8, [x8, #0x230]                             
0000c568 000540f9 ldr        x0, [x8, #8]                                 
0000c56c e10000f0 adrp       x1, #0x2b000                                 
0000c570 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000c574 aa6e0094 bl         #0x2801c                                      ; _strcmp
0000c578 80010035 cbnz       w0, #0xc5a8                                  
0000c57c 01000014 b          #0xc580                                      
0000c580 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c584 00e942bd ldr        s0, [x8, #0x2e8]                             
0000c588 0110211e fmov       s1, #3.00000000                              
0000c58c 0020211e fcmp       s0, s1                                       
0000c590 cb000054 b.lt       #0xc5a8                                      
0000c594 01000014 b          #0xc598                                      
0000c598 e0f31b91 add        x0, sp, #0x6fc                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
0000c59c e1e31b91 add        x1, sp, #0x6f8                                ; 'Clock'
0000c5a0 a5180094 bl         #0x12834                                      ; __ZNSt3__14swapB6v15006IfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_||__ZNSt3__14swapB6v15006IfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_|
0000c5a4 01000014 b          #0xc5a8                                      
0000c5a8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c5ac 09008052 mov        w9, #0                                       
0000c5b0 e95f1b39 strb       w9, [sp, #0x6d7]                             
0000c5b4 081941f9 ldr        x8, [x8, #0x230]                             
0000c5b8 000540f9 ldr        x0, [x8, #8]                                 
0000c5bc e10000d0 adrp       x1, #0x2a000                                 
0000c5c0 21e03a91 add        x1, x1, #0xeb8                                ; 'TabBarSelection'
0000c5c4 966e0094 bl         #0x2801c                                      ; _strcmp
0000c5c8 28008052 mov        w8, #1                                       
0000c5cc e86304b9 str        w8, [sp, #0x460]                             
0000c5d0 80010034 cbz        w0, #0xc600                                  
0000c5d4 01000014 b          #0xc5d8                                      
0000c5d8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c5dc 081941f9 ldr        x8, [x8, #0x230]                             
0000c5e0 000540f9 ldr        x0, [x8, #8]                                 
0000c5e4 e10000d0 adrp       x1, #0x2a000                                 
0000c5e8 21203b91 add        x1, x1, #0xec8                                ; 'PrefsSegment'
0000c5ec 8c6e0094 bl         #0x2801c                                      ; _strcmp
0000c5f0 08000071 subs       w8, w0, #0                                   
0000c5f4 e8179f1a cset       w8, eq                                       
0000c5f8 e86304b9 str        w8, [sp, #0x460]                             
0000c5fc 01000014 b          #0xc600                                      
0000c600 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c604 e96344b9 ldr        w9, [sp, #0x460]                             
0000c608 29010012 and        w9, w9, #1                                   
0000c60c e95b1b39 strb       w9, [sp, #0x6d6]                             
0000c610 081941f9 ldr        x8, [x8, #0x230]                             
0000c614 000540f9 ldr        x0, [x8, #8]                                 
0000c618 e10000f0 adrp       x1, #0x2b000                                 
0000c61c 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000c620 7f6e0094 bl         #0x2801c                                      ; _strcmp
0000c624 08008052 mov        w8, #0                                       
0000c628 e85f04b9 str        w8, [sp, #0x45c]                             
0000c62c e0050034 cbz        w0, #0xc6e8                                  
0000c630 01000014 b          #0xc634                                      
0000c634 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c638 081941f9 ldr        x8, [x8, #0x230]                             
0000c63c 000540f9 ldr        x0, [x8, #8]                                 
0000c640 e10000d0 adrp       x1, #0x2a000                                 
0000c644 21543b91 add        x1, x1, #0xed5                                ; 'CoverSheet'
0000c648 756e0094 bl         #0x2801c                                      ; _strcmp
0000c64c 08008052 mov        w8, #0                                       
0000c650 e85f04b9 str        w8, [sp, #0x45c]                             
0000c654 a0040034 cbz        w0, #0xc6e8                                  
0000c658 01000014 b          #0xc65c                                      
0000c65c e85b5b39 ldrb       w8, [sp, #0x6d6]                             
0000c660 09008052 mov        w9, #0                                       
0000c664 e95f04b9 str        w9, [sp, #0x45c]                             
0000c668 08040037 tbnz       w8, #0, #0xc6e8                              
0000c66c 01000014 b          #0xc670                                      
0000c670 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c674 081941f9 ldr        x8, [x8, #0x230]                             
0000c678 000540f9 ldr        x0, [x8, #8]                                 
0000c67c e10000f0 adrp       x1, #0x2b000                                 
0000c680 21800091 add        x1, x1, #0x20                                 ; 'TabBar'
0000c684 666e0094 bl         #0x2801c                                      ; _strcmp
0000c688 08008052 mov        w8, #0                                       
0000c68c e85f04b9 str        w8, [sp, #0x45c]                             
0000c690 c0020034 cbz        w0, #0xc6e8                                  
0000c694 01000014 b          #0xc698                                      
0000c698 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c69c 081941f9 ldr        x8, [x8, #0x230]                             
0000c6a0 000540f9 ldr        x0, [x8, #8]                                 
0000c6a4 e10000d0 adrp       x1, #0x2a000                                 
0000c6a8 21803a91 add        x1, x1, #0xea0                                ; 'PrefsSlider'
0000c6ac 5c6e0094 bl         #0x2801c                                      ; _strcmp
0000c6b0 08008052 mov        w8, #0                                       
0000c6b4 e85f04b9 str        w8, [sp, #0x45c]                             
0000c6b8 80010034 cbz        w0, #0xc6e8                                  
0000c6bc 01000014 b          #0xc6c0                                      
0000c6c0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c6c4 081941f9 ldr        x8, [x8, #0x230]                             
0000c6c8 000540f9 ldr        x0, [x8, #8]                                 
0000c6cc e10000d0 adrp       x1, #0x2a000                                 
0000c6d0 21b03a91 add        x1, x1, #0xeac                                ; 'PrefsSwitch'
0000c6d4 526e0094 bl         #0x2801c                                      ; _strcmp
0000c6d8 08000071 subs       w8, w0, #0                                   
0000c6dc e8079f1a cset       w8, ne                                       
0000c6e0 e85f04b9 str        w8, [sp, #0x45c]                             
0000c6e4 01000014 b          #0xc6e8                                      
0000c6e8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c6ec e95f44b9 ldr        w9, [sp, #0x45c]                             
0000c6f0 29010012 and        w9, w9, #1                                   
0000c6f4 e9571b39 strb       w9, [sp, #0x6d5]                             
0000c6f8 081941f9 ldr        x8, [x8, #0x230]                             
0000c6fc 000540f9 ldr        x0, [x8, #8]                                 
0000c700 e10000f0 adrp       x1, #0x2b000                                 
0000c704 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000c708 456e0094 bl         #0x2801c                                      ; _strcmp
0000c70c 00010034 cbz        w0, #0xc72c                                  
0000c710 01000014 b          #0xc714                                      
0000c714 e85b5b39 ldrb       w8, [sp, #0x6d6]                             
0000c718 a8000037 tbnz       w8, #0, #0xc72c                              
0000c71c 01000014 b          #0xc720                                      
0000c720 e8575b39 ldrb       w8, [sp, #0x6d5]                             
0000c724 c8240036 tbz        w8, #0, #0xcbbc                              
0000c728 01000014 b          #0xc72c                                      
0000c72c 68010090 adrp       x8, #0x38000                                 
0000c730 08b143f9 ldr        x8, [x8, #0x760]                              ; __ZL16g_osMajorVersion|__ZL16g_osMajorVersion
0000c734 084100f1 subs       x8, x8, #0x10                                
0000c738 21240054 b.ne       #0xcbbc                                      
0000c73c 01000014 b          #0xc740                                      
0000c740 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c744 00ed42fd ldr        d0, [x8, #0x5d8]                             
0000c748 4a180094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000c74c 08008052 mov        w8, #0                                       
0000c750 e85b04b9 str        w8, [sp, #0x458]                             
0000c754 00040034 cbz        w0, #0xc7d4                                  
0000c758 01000014 b          #0xc75c                                      
0000c75c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c760 00f142fd ldr        d0, [x8, #0x5e0]                             
0000c764 43180094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000c768 08008052 mov        w8, #0                                       
0000c76c e85b04b9 str        w8, [sp, #0x458]                             
0000c770 20030034 cbz        w0, #0xc7d4                                  
0000c774 01000014 b          #0xc778                                      
0000c778 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c77c 00f542fd ldr        d0, [x8, #0x5e8]                             
0000c780 3c180094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000c784 08008052 mov        w8, #0                                       
0000c788 e85b04b9 str        w8, [sp, #0x458]                             
0000c78c 40020034 cbz        w0, #0xc7d4                                  
0000c790 01000014 b          #0xc794                                      
0000c794 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c798 00f942fd ldr        d0, [x8, #0x5f0]                             
0000c79c 35180094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000c7a0 08008052 mov        w8, #0                                       
0000c7a4 e85b04b9 str        w8, [sp, #0x458]                             
0000c7a8 60010034 cbz        w0, #0xc7d4                                  
0000c7ac 01000014 b          #0xc7b0                                      
0000c7b0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c7b4 08bd41f9 ldr        x8, [x8, #0x378]                             
0000c7b8 00210291 add        x0, x8, #0x88                                
0000c7bc 08108052 mov        w8, #0x80                                    
0000c7c0 e20308aa mov        x2, x8                                       
0000c7c4 a12303d1 sub        x1, x29, #0xc8                               
0000c7c8 e0170094 bl         #0x12748                                      ; __ZL10lgSafeReadPKvPvm||__ZL10lgSafeReadPKvPvm|
0000c7cc e05b04b9 str        w0, [sp, #0x458]                             
0000c7d0 01000014 b          #0xc7d4                                      
0000c7d4 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000c7d8 e85b44b9 ldr        w8, [sp, #0x458]                             
0000c7dc 08010012 and        w8, w8, #1                                   
0000c7e0 e8531b39 strb       w8, [sp, #0x6d4]                             
0000c7e4 08008052 mov        w8, #0                                       
0000c7e8 28a100b9 str        w8, [x9, #0xa0]                              
0000c7ec 01000014 b          #0xc7f0                                      
0000c7f0 e8535b39 ldrb       w8, [sp, #0x6d4]                             
0000c7f4 09008052 mov        w9, #0                                       
0000c7f8 e95704b9 str        w9, [sp, #0x454]                             
0000c7fc 08010036 tbz        w8, #0, #0xc81c                              
0000c800 01000014 b          #0xc804                                      
0000c804 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c808 08a140b9 ldr        w8, [x8, #0xa0]                              
0000c80c 08410071 subs       w8, w8, #0x10                                
0000c810 e8279f1a cset       w8, lo                                       
0000c814 e85704b9 str        w8, [sp, #0x454]                             
0000c818 01000014 b          #0xc81c                                      
0000c81c e85744b9 ldr        w8, [sp, #0x454]                             
0000c820 e8010036 tbz        w8, #0, #0xc85c                              
0000c824 01000014 b          #0xc828                                      
0000c828 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c82c 08a140b9 ldr        w8, [x8, #0xa0]                              
0000c830 e90308aa mov        x9, x8                                       
0000c834 a82303d1 sub        x8, x29, #0xc8                               
0000c838 007969fc ldr        d0, [x8, x9, lsl #3]                         
0000c83c 0d180094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000c840 e0531b39 strb       w0, [sp, #0x6d4]                             
0000c844 01000014 b          #0xc848                                      
0000c848 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000c84c 28a140b9 ldr        w8, [x9, #0xa0]                              
0000c850 08050011 add        w8, w8, #1                                   
0000c854 28a100b9 str        w8, [x9, #0xa0]                              
0000c858 e6ffff17 b          #0xc7f0                                      
0000c85c e8535b39 ldrb       w8, [sp, #0x6d4]                             
0000c860 c81a0036 tbz        w8, #0, #0xcbb8                              
0000c864 01000014 b          #0xc868                                      
0000c868 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c86c 00b942fd ldr        d0, [x8, #0x570]                             
0000c870 00c0601e fabs       d0, d0                                       
0000c874 280100b0 adrp       x8, #0x31000                                 
0000c878 012142fd ldr        d1, [x8, #0x440]                             
0000c87c 0020611e fcmp       d0, d1                                       
0000c880 c5190054 b.pl       #0xcbb8                                      
0000c884 01000014 b          #0xc888                                      
0000c888 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c88c 00c942fd ldr        d0, [x8, #0x590]                             
0000c890 00c0601e fabs       d0, d0                                       
0000c894 280100b0 adrp       x8, #0x31000                                 
0000c898 012142fd ldr        d1, [x8, #0x440]                             
0000c89c 0020611e fcmp       d0, d1                                       
0000c8a0 c5180054 b.pl       #0xcbb8                                      
0000c8a4 01000014 b          #0xc8a8                                      
0000c8a8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c8ac 00e942fd ldr        d0, [x8, #0x5d0]                             
0000c8b0 01107e1e fmov       d1, #-1.00000000                             
0000c8b4 0028611e fadd       d0, d0, d1                                   
0000c8b8 00c0601e fabs       d0, d0                                       
0000c8bc 280100b0 adrp       x8, #0x31000                                 
0000c8c0 012142fd ldr        d1, [x8, #0x440]                             
0000c8c4 0020611e fcmp       d0, d1                                       
0000c8c8 85170054 b.pl       #0xcbb8                                      
0000c8cc 01000014 b          #0xc8d0                                      
0000c8d0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c8d4 00b142fd ldr        d0, [x8, #0x560]                             
0000c8d8 00c0601e fabs       d0, d0                                       
0000c8dc 280100b0 adrp       x8, #0x31000                                 
0000c8e0 012142fd ldr        d1, [x8, #0x440]                             
0000c8e4 0020611e fcmp       d0, d1                                       
0000c8e8 45010054 b.pl       #0xc910                                      
0000c8ec 01000014 b          #0xc8f0                                      
0000c8f0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c8f4 00bd42fd ldr        d0, [x8, #0x578]                             
0000c8f8 00c0601e fabs       d0, d0                                       
0000c8fc 280100b0 adrp       x8, #0x31000                                 
0000c900 012142fd ldr        d1, [x8, #0x440]                             
0000c904 0020611e fcmp       d0, d1                                       
0000c908 44020054 b.mi       #0xc950                                      
0000c90c 01000014 b          #0xc910                                      
0000c910 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c914 00ad42fd ldr        d0, [x8, #0x558]                             
0000c918 00c0601e fabs       d0, d0                                       
0000c91c 280100b0 adrp       x8, #0x31000                                 
0000c920 012142fd ldr        d1, [x8, #0x440]                             
0000c924 0020611e fcmp       d0, d1                                       
0000c928 85140054 b.pl       #0xcbb8                                      
0000c92c 01000014 b          #0xc930                                      
0000c930 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c934 00c142fd ldr        d0, [x8, #0x580]                             
0000c938 00c0601e fabs       d0, d0                                       
0000c93c 280100b0 adrp       x8, #0x31000                                 
0000c940 012142fd ldr        d1, [x8, #0x440]                             
0000c944 0020611e fcmp       d0, d1                                       
0000c948 85130054 b.pl       #0xcbb8                                      
0000c94c 01000014 b          #0xc950                                      
0000c950 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c954 00ad42fd ldr        d0, [x8, #0x558]                             
0000c958 00c0601e fabs       d0, d0                                       
0000c95c 01f542fd ldr        d1, [x8, #0x5e8]                             
0000c960 02bd42fd ldr        d2, [x8, #0x578]                             
0000c964 42c0601e fabs       d2, d2                                       
0000c968 03f942fd ldr        d3, [x8, #0x5f0]                             
0000c96c 4208631e fmul       d2, d2, d3                                   
0000c970 0008411f fmadd      d0, d0, d1, d2                               
0000c974 004d00fd str        d0, [x8, #0x98]                               ; 'nStrength'
0000c978 00b142fd ldr        d0, [x8, #0x560]                             
0000c97c 00c0601e fabs       d0, d0                                       
0000c980 01f542fd ldr        d1, [x8, #0x5e8]                             
0000c984 02c142fd ldr        d2, [x8, #0x580]                             
0000c988 42c0601e fabs       d2, d2                                       
0000c98c 03f942fd ldr        d3, [x8, #0x5f0]                             
0000c990 4208631e fmul       d2, d2, d3                                   
0000c994 0008411f fmadd      d0, d0, d1, d2                               
0000c998 004900fd str        d0, [x8, #0x90]                               ; 'ispersionStrength'
0000c99c 004d40fd ldr        d0, [x8, #0x98]                               ; 'nStrength'
0000c9a0 01106c1e fmov       d1, #0.50000000                              
0000c9a4 0020611e fcmp       d0, d1                                       
0000c9a8 6d100054 b.le       #0xcbb4                                      
0000c9ac 01000014 b          #0xc9b0                                      
0000c9b0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c9b4 004940fd ldr        d0, [x8, #0x90]                               ; 'ispersionStrength'
0000c9b8 01106c1e fmov       d1, #0.50000000                              
0000c9bc 0020611e fcmp       d0, d1                                       
0000c9c0 ad0f0054 b.le       #0xcbb4                                      
0000c9c4 01000014 b          #0xc9c8                                      
0000c9c8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c9cc 004d40fd ldr        d0, [x8, #0x98]                               ; 'nStrength'
0000c9d0 081ce8d2 mov        x8, #0x40e0000000000000                      
0000c9d4 0101679e fmov       d1, x8                                       
0000c9d8 0020611e fcmp       d0, d1                                       
0000c9dc c80e0054 b.hi       #0xcbb4                                      
0000c9e0 01000014 b          #0xc9e4                                      
0000c9e4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000c9e8 004940fd ldr        d0, [x8, #0x90]                               ; 'ispersionStrength'
0000c9ec 081ce8d2 mov        x8, #0x40e0000000000000                      
0000c9f0 0101679e fmov       d1, x8                                       
0000c9f4 0020611e fcmp       d0, d1                                       
0000c9f8 e80d0054 b.hi       #0xcbb4                                      
0000c9fc 01000014 b          #0xca00                                      
0000ca00 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ca04 004d40fd ldr        d0, [x8, #0x98]                               ; 'nStrength'
0000ca08 0040621e fcvt       s0, d0                                       
0000ca0c 00cd00bd str        s0, [x8, #0xcc]                               ; 'sionEnabled'
0000ca10 004940fd ldr        d0, [x8, #0x90]                               ; 'ispersionStrength'
0000ca14 0040621e fcvt       s0, d0                                       
0000ca18 00c900bd str        s0, [x8, #0xc8]                               ; 'spersionEnabled'
0000ca1c 02ad42fd ldr        d2, [x8, #0x558]                             
0000ca20 00ed42fd ldr        d0, [x8, #0x5d8]                             
0000ca24 01bd42fd ldr        d1, [x8, #0x578]                             
0000ca28 03f142fd ldr        d3, [x8, #0x5e0]                             
0000ca2c 2308631e fmul       d3, d1, d3                                   
0000ca30 400c401f fmadd      d0, d2, d0, d3                               
0000ca34 03dd42fd ldr        d3, [x8, #0x5b8]                             
0000ca38 0028631e fadd       d0, d0, d3                                   
0000ca3c 03f542fd ldr        d3, [x8, #0x5e8]                             
0000ca40 4308631e fmul       d3, d2, d3                                   
0000ca44 02e4002f movi       d2, #0000000000000000                        
0000ca48 6378621e fminnm     d3, d3, d2                                   
0000ca4c 0028631e fadd       d0, d0, d3                                   
0000ca50 03f942fd ldr        d3, [x8, #0x5f0]                             
0000ca54 2108631e fmul       d1, d1, d3                                   
0000ca58 2178621e fminnm     d1, d1, d2                                   
0000ca5c 0028611e fadd       d0, d0, d1                                   
0000ca60 004500fd str        d0, [x8, #0x88]                               ; 'Index'
0000ca64 03b142fd ldr        d3, [x8, #0x560]                             
0000ca68 00ed42fd ldr        d0, [x8, #0x5d8]                             
0000ca6c 01c142fd ldr        d1, [x8, #0x580]                             
0000ca70 04f142fd ldr        d4, [x8, #0x5e0]                             
0000ca74 2408641e fmul       d4, d1, d4                                   
0000ca78 6010401f fmadd      d0, d3, d0, d4                               
0000ca7c 04e142fd ldr        d4, [x8, #0x5c0]                             
0000ca80 0028641e fadd       d0, d0, d4                                   
0000ca84 04f542fd ldr        d4, [x8, #0x5e8]                             
0000ca88 6308641e fmul       d3, d3, d4                                   
0000ca8c 6378621e fminnm     d3, d3, d2                                   
0000ca90 0028631e fadd       d0, d0, d3                                   
0000ca94 03f942fd ldr        d3, [x8, #0x5f0]                             
0000ca98 2108631e fmul       d1, d1, d3                                   
0000ca9c 2178621e fminnm     d1, d1, d2                                   
0000caa0 0028611e fadd       d0, d0, d1                                   
0000caa4 004100fd str        d0, [x8, #0x80]                               ; 'fractiveIndex'
0000caa8 081941f9 ldr        x8, [x8, #0x230]                              ; '3456789_-'
0000caac 000540f9 ldr        x0, [x8, #8]                                  ; 'om=0x%x self=%p filter=%p'
0000cab0 e10000f0 adrp       x1, #0x2b000                                 
0000cab4 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000cab8 596d0094 bl         #0x2801c                                      ; _strcmp
0000cabc a0000034 cbz        w0, #0xcad0                                  
0000cac0 01000014 b          #0xcac4                                      
0000cac4 e8575b39 ldrb       w8, [sp, #0x6d5]                             
0000cac8 28020036 tbz        w8, #0, #0xcb0c                              
0000cacc 01000014 b          #0xcad0                                      
0000cad0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cad4 005d43bd ldr        s0, [x8, #0x35c]                              ; 'd: %d'
0000cad8 70170094 bl         #0x12898                                      ; __Z8isfiniteB6v15006IfENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IfENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000cadc 80010034 cbz        w0, #0xcb0c                                  
0000cae0 01000014 b          #0xcae4                                      
0000cae4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cae8 005d43bd ldr        s0, [x8, #0x35c]                              ; 'd: %d'
0000caec 0820201e fcmp       s0, #0.0                                     
0000caf0 ed000054 b.le       #0xcb0c                                      
0000caf4 01000014 b          #0xcaf8                                      
0000caf8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cafc 005d43bd ldr        s0, [x8, #0x35c]                              ; 'd: %d'
0000cb00 00c0221e fcvt       d0, s0                                       
0000cb04 e02702fd str        d0, [sp, #0x448]                             
0000cb08 04000014 b          #0xcb18                                      
0000cb0c 00106e1e fmov       d0, #1.00000000                              
0000cb10 e02702fd str        d0, [sp, #0x448]                             
0000cb14 01000014 b          #0xcb18                                      
0000cb18 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cb1c e02742fd ldr        d0, [sp, #0x448]                             
0000cb20 003d00fd str        d0, [x8, #0x78]                               ; 'cale'
0000cb24 004d40fd ldr        d0, [x8, #0x98]                               ; 'nStrength'
0000cb28 013d40fd ldr        d1, [x8, #0x78]                               ; 'cale'
0000cb2c 0008611e fmul       d0, d0, d1                                   
0000cb30 0040621e fcvt       s0, d0                                       
0000cb34 00cd00bd str        s0, [x8, #0xcc]                               ; 'sionEnabled'
0000cb38 004940fd ldr        d0, [x8, #0x90]                               ; 'ispersionStrength'
0000cb3c 013d40fd ldr        d1, [x8, #0x78]                               ; 'cale'
0000cb40 0008611e fmul       d0, d0, d1                                   
0000cb44 0040621e fcvt       s0, d0                                       
0000cb48 00c900bd str        s0, [x8, #0xc8]                               ; 'spersionEnabled'
0000cb4c 004540fd ldr        d0, [x8, #0x88]                               ; 'Index'
0000cb50 023d40fd ldr        d2, [x8, #0x78]                               ; 'cale'
0000cb54 03f945bd ldr        s3, [x8, #0x5f8]                             
0000cb58 6140201e fmov       s1, s3                                       
0000cb5c 21a4200f sshll      v1.2d, v1.2s, #0                             
0000cb60 21d8615e scvtf      d1, d1                                       
0000cb64 0084621f fnmsub     d0, d0, d2, d1                               
0000cb68 0140621e fcvt       s1, d0                                       
0000cb6c 004140fd ldr        d0, [x8, #0x80]                               ; 'fractiveIndex'
0000cb70 04fd45bd ldr        s4, [x8, #0x5fc]                             
0000cb74 8340201e fmov       s3, s4                                       
0000cb78 63a4200f sshll      v3.2d, v3.2s, #0                             
0000cb7c 63d8615e scvtf      d3, d3                                       
0000cb80 008c621f fnmsub     d0, d0, d2, d3                               
0000cb84 0040621e fcvt       s0, d0                                       
0000cb88 013d04bd str        s1, [x8, #0x43c]                             
0000cb8c 003904bd str        s0, [x8, #0x438]                              ; '%d'
0000cb90 003d44bd ldr        s0, [x8, #0x43c]                             
0000cb94 003104bd str        s0, [x8, #0x430]                              ; 'failed: %d'
0000cb98 003944bd ldr        s0, [x8, #0x438]                              ; '%d'
0000cb9c 003504bd str        s0, [x8, #0x434]                              ; 'ed: %d'
0000cba0 001942fd ldr        d0, [x8, #0x430]                              ; 'failed: %d'
0000cba4 005500fd str        d0, [x8, #0xa8]                               ; ''
0000cba8 28008052 mov        w8, #1                                       
0000cbac e85f1b39 strb       w8, [sp, #0x6d7]                             
0000cbb0 01000014 b          #0xcbb4                                      
0000cbb4 01000014 b          #0xcbb8                                      
0000cbb8 01000014 b          #0xcbbc                                      
0000cbbc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cbc0 081941f9 ldr        x8, [x8, #0x230]                              ; '3456789_-'
0000cbc4 000540f9 ldr        x0, [x8, #8]                                  ; 'om=0x%x self=%p filter=%p'
0000cbc8 e10000f0 adrp       x1, #0x2b000                                 
0000cbcc 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000cbd0 136d0094 bl         #0x2801c                                      ; _strcmp
0000cbd4 00210035 cbnz       w0, #0xcff4                                  
0000cbd8 01000014 b          #0xcbdc                                      
0000cbdc e85f5b39 ldrb       w8, [sp, #0x6d7]                             
0000cbe0 a8200037 tbnz       w8, #0, #0xcff4                              
0000cbe4 01000014 b          #0xcbe8                                      
0000cbe8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cbec 00e942bd ldr        s0, [x8, #0x2e8]                              ; 'sReloaded'
0000cbf0 0110211e fmov       s1, #3.00000000                              
0000cbf4 0020211e fcmp       s0, s1                                       
0000cbf8 cb000054 b.lt       #0xcc10                                      
0000cbfc 01000014 b          #0xcc00                                      
0000cc00 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cc04 00f942fd ldr        d0, [x8, #0x5f0]                             
0000cc08 e02302fd str        d0, [sp, #0x440]                             
0000cc0c 05000014 b          #0xcc20                                      
0000cc10 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cc14 00f542fd ldr        d0, [x8, #0x5e8]                             
0000cc18 e02302fd str        d0, [sp, #0x440]                             
0000cc1c 01000014 b          #0xcc20                                      
0000cc20 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cc24 e02342fd ldr        d0, [sp, #0x440]                             
0000cc28 003900fd str        d0, [x8, #0x70]                               ; 'ractionScale'
0000cc2c 00e942bd ldr        s0, [x8, #0x2e8]                              ; 'sReloaded'
0000cc30 0110211e fmov       s1, #3.00000000                              
0000cc34 0020211e fcmp       s0, s1                                       
0000cc38 cb000054 b.lt       #0xcc50                                      
0000cc3c 01000014 b          #0xcc40                                      
0000cc40 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cc44 00f542fd ldr        d0, [x8, #0x5e8]                             
0000cc48 e01f02fd str        d0, [sp, #0x438]                             
0000cc4c 05000014 b          #0xcc60                                      
0000cc50 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cc54 00f942fd ldr        d0, [x8, #0x5f0]                             
0000cc58 e01f02fd str        d0, [sp, #0x438]                             
0000cc5c 01000014 b          #0xcc60                                      
0000cc60 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cc64 e01f42fd ldr        d0, [sp, #0x438]                             
0000cc68 003500fd str        d0, [x8, #0x68]                               ; 'ess'
0000cc6c 010146bd ldr        s1, [x8, #0x600]                             
0000cc70 2040201e fmov       s0, s1                                       
0000cc74 00a4200f sshll      v0.2d, v0.2s, #0                             
0000cc78 00d8615e scvtf      d0, d0                                       
0000cc7c 013940fd ldr        d1, [x8, #0x70]                               ; 'ractionScale'
0000cc80 0018611e fdiv       d0, d0, d1                                   
0000cc84 003100fd str        d0, [x8, #0x60]                               ; 'ssThickness'
0000cc88 010546bd ldr        s1, [x8, #0x604]                              ; GCC_except_table630
0000cc8c 2040201e fmov       s0, s1                                       
0000cc90 00a4200f sshll      v0.2d, v0.2s, #0                             
0000cc94 00d8615e scvtf      d0, d0                                       
0000cc98 013540fd ldr        d1, [x8, #0x68]                               ; 'ess'
0000cc9c 0018611e fdiv       d0, d0, d1                                   
0000cca0 002d00fd str        d0, [x8, #0x58]                               ; 'dth'
0000cca4 003140fd ldr        d0, [x8, #0x60]                               ; 'ssThickness'
0000cca8 012d40fd ldr        d1, [x8, #0x58]                               ; 'dth'
0000ccac 0028611e fadd       d0, d0, d1                                   
0000ccb0 01106c1e fmov       d1, #0.50000000                              
0000ccb4 0008611e fmul       d0, d0, d1                                   
0000ccb8 002900fd str        d0, [x8, #0x50]                               ; '.BezelWidth'
0000ccbc 680100b0 adrp       x8, #0x39000                                 
0000ccc0 08411c91 add        x8, x8, #0x710                                ; __ZGVZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZGVZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ccc4 08c1bf38 ldaprb     w8, [x8]                                     
0000ccc8 e8020037 tbnz       w8, #0, #0xcd24                              
0000cccc 01000014 b          #0xccd0                                      
0000ccd0 600100b0 adrp       x0, #0x39000                                 
0000ccd4 00401c91 add        x0, x0, #0x710                                ; __ZGVZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZGVZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ccd8 556d0094 bl         #0x2822c                                      ; ___cxa_guard_acquire
0000ccdc 40020034 cbz        w0, #0xcd24                                  
0000cce0 01000014 b          #0xcce4                                      
0000cce4 600100b0 adrp       x0, #0x39000                                 
0000cce8 00a01b91 add        x0, x0, #0x6e8                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ccec e01b02f9 str        x0, [sp, #0x430]                             
0000ccf0 f4160094 bl         #0x128c0                                      ; __ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEEC1B6v15006Ev||__ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEEC1B6v15006Ev|
0000ccf4 e11b42f9 ldr        x1, [sp, #0x430]                             
0000ccf8 a2ffff90 adrp       x2, #0                                       
0000ccfc 42000091 add        x2, x2, #0                                   
0000cd00 300000d0 adrp       x16, #0x12000                                
0000cd04 10c22391 add        x16, x16, #0x8f0                              ; __ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEED1B6v15006Ev||__ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEED1B6v15006Ev|
0000cd08 f023c1da paciza     x16                                          
0000cd0c e00310aa mov        x0, x16                                      
0000cd10 4b6d0094 bl         #0x2823c                                      ; ___cxa_atexit
0000cd14 600100b0 adrp       x0, #0x39000                                 
0000cd18 00401c91 add        x0, x0, #0x710                                ; __ZGVZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZGVZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000cd1c 4c6d0094 bl         #0x2824c                                      ; ___cxa_guard_release
0000cd20 01000014 b          #0xcd24                                      
0000cd24 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cd28 002940fd ldr        d0, [x8, #0x50]                              
0000cd2c d1160094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000cd30 08008052 mov        w8, #0                                       
0000cd34 e82f04b9 str        w8, [sp, #0x42c]                             
0000cd38 c0040034 cbz        w0, #0xcdd0                                  
0000cd3c 01000014 b          #0xcd40                                      
0000cd40 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cd44 002940fd ldr        d0, [x8, #0x50]                              
0000cd48 08008052 mov        w8, #0                                       
0000cd4c 0820601e fcmp       d0, #0.0                                     
0000cd50 e82f04b9 str        w8, [sp, #0x42c]                             
0000cd54 ed030054 b.le       #0xcdd0                                      
0000cd58 01000014 b          #0xcd5c                                      
0000cd5c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cd60 010146bd ldr        s1, [x8, #0x600]                             
0000cd64 2040201e fmov       s0, s1                                       
0000cd68 00a4200f sshll      v0.2d, v0.2s, #0                             
0000cd6c 02d8615e scvtf      d2, d0                                       
0000cd70 003940fd ldr        d0, [x8, #0x70]                              
0000cd74 012940fd ldr        d1, [x8, #0x50]                              
0000cd78 0088411f fmsub      d0, d0, d1, d2                               
0000cd7c 00c0601e fabs       d0, d0                                       
0000cd80 08008052 mov        w8, #0                                       
0000cd84 0110601e fmov       d1, #2.00000000                              
0000cd88 0020611e fcmp       d0, d1                                       
0000cd8c e82f04b9 str        w8, [sp, #0x42c]                             
0000cd90 08020054 b.hi       #0xcdd0                                      
0000cd94 01000014 b          #0xcd98                                      
0000cd98 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cd9c 010546bd ldr        s1, [x8, #0x604]                             
0000cda0 2040201e fmov       s0, s1                                       
0000cda4 00a4200f sshll      v0.2d, v0.2s, #0                             
0000cda8 02d8615e scvtf      d2, d0                                       
0000cdac 003540fd ldr        d0, [x8, #0x68]                              
0000cdb0 012940fd ldr        d1, [x8, #0x50]                              
0000cdb4 0088411f fmsub      d0, d0, d1, d2                               
0000cdb8 00c0601e fabs       d0, d0                                       
0000cdbc 0110601e fmov       d1, #2.00000000                              
0000cdc0 0020611e fcmp       d0, d1                                       
0000cdc4 e8879f1a cset       w8, ls                                       
0000cdc8 e82f04b9 str        w8, [sp, #0x42c]                             
0000cdcc 01000014 b          #0xcdd0                                      
0000cdd0 e82f44b9 ldr        w8, [sp, #0x42c]                             
0000cdd4 08010012 and        w8, w8, #1                                   
0000cdd8 e8ff1939 strb       w8, [sp, #0x67f]                             
0000cddc 600100b0 adrp       x0, #0x39000                                 
0000cde0 00801b91 add        x0, x0, #0x6e0                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE14clockScaleLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE14clockScaleLock
0000cde4 1e6d0094 bl         #0x2825c                                      ; _os_unfair_lock_lock
0000cde8 e8ff5939 ldrb       w8, [sp, #0x67f]                             
0000cdec 48030036 tbz        w8, #0, #0xce54                              
0000cdf0 01000014 b          #0xcdf4                                      
0000cdf4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cdf8 087540f9 ldr        x8, [x8, #0xe8]                               ; __ZL14g_pipelineInit|__ZL14g_pipelineInit
0000cdfc c80200b4 cbz        x8, #0xce54                                  
0000ce00 01000014 b          #0xce04                                      
0000ce04 600100b0 adrp       x0, #0x39000                                 
0000ce08 00a01b91 add        x0, x0, #0x6e8                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce0c c5160094 bl         #0x12920                                      ; __ZNKSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE4sizeB6v15006Ev||__ZNKSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE4sizeB6v15006Ev|
0000ce10 088400f1 subs       x8, x0, #0x21                                
0000ce14 c3000054 b.lo       #0xce2c                                      
0000ce18 01000014 b          #0xce1c                                      
0000ce1c 600100b0 adrp       x0, #0x39000                                 
0000ce20 00a01b91 add        x0, x0, #0x6e8                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce24 c9160094 bl         #0x12948                                      ; __ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE5clearB6v15006Ev||__ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE5clearB6v15006Ev|
0000ce28 01000014 b          #0xce2c                                      
0000ce2c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ce30 002940fd ldr        d0, [x8, #0x50]                              
0000ce34 e01302fd str        d0, [sp, #0x420]                             
0000ce38 600100b0 adrp       x0, #0x39000                                 
0000ce3c 00a01b91 add        x0, x0, #0x6e8                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce40 e1631c91 add        x1, sp, #0x718                                ; 'Clock'
0000ce44 0a6d0094 bl         #0x2826c                                      ; __ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEEixERS7_
0000ce48 e01342fd ldr        d0, [sp, #0x420]                             
0000ce4c 000000fd str        d0, [x0]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce50 21000014 b          #0xced4                                      
0000ce54 600100b0 adrp       x0, #0x39000                                 
0000ce58 00a01b91 add        x0, x0, #0x6e8                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce5c e00f02f9 str        x0, [sp, #0x418]                             
0000ce60 e1631c91 add        x1, sp, #0x718                                ; 'Clock'
0000ce64 f5160094 bl         #0x12a38                                      ; __ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE4findB6v15006ERS7_||__ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE4findB6v15006ERS7_|
0000ce68 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000ce6c e80300aa mov        x8, x0                                       
0000ce70 e00f42f9 ldr        x0, [sp, #0x418]                             
0000ce74 282100f9 str        x8, [x9, #0x40]                              
0000ce78 0d170094 bl         #0x12aac                                      ; __ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE3endB6v15006Ev||__ZNSt3__113unordered_mapIydNS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKydEEEEE3endB6v15006Ev|
0000ce7c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ce80 001d00f9 str        x0, [x8, #0x38]                              
0000ce84 e0c31991 add        x0, sp, #0x670                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce88 e1a31991 add        x1, sp, #0x668                                ; 'Clock'
0000ce8c fc160094 bl         #0x12a7c                                      ; __ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIydEEPvEEEEEESB_||__ZNSt3__1neB6v15006ERKNS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIydEEPvEEEEEESB_|
0000ce90 e0000034 cbz        w0, #0xceac                                  
0000ce94 01000014 b          #0xce98                                      
0000ce98 e0c31991 add        x0, sp, #0x670                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18clockCaptureScales
0000ce9c 13170094 bl         #0x12ae8                                      ; __ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIydEEPvEEEEEptB6v15006Ev||__ZNKSt3__119__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIydEEPvEEEEEptB6v15006Ev|
0000cea0 000440fd ldr        d0, [x0, #8]                                 
0000cea4 e00b02fd str        d0, [sp, #0x410]                             
0000cea8 07000014 b          #0xcec4                                      
0000ceac e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ceb0 003140fd ldr        d0, [x8, #0x60]                              
0000ceb4 012d40fd ldr        d1, [x8, #0x58]                              
0000ceb8 0068611e fmaxnm     d0, d0, d1                                   
0000cebc e00b02fd str        d0, [sp, #0x410]                             
0000cec0 01000014 b          #0xcec4                                      
0000cec4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cec8 e00b42fd ldr        d0, [sp, #0x410]                             
0000cecc 002900fd str        d0, [x8, #0x50]                              
0000ced0 01000014 b          #0xced4                                      
0000ced4 600100b0 adrp       x0, #0x39000                                 
0000ced8 00801b91 add        x0, x0, #0x6e0                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE14clockScaleLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE14clockScaleLock
0000cedc e86c0094 bl         #0x2827c                                      ; _os_unfair_lock_unlock
0000cee0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cee4 002940fd ldr        d0, [x8, #0x50]                              
0000cee8 62160094 bl         #0x12870                                      ; __Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_||__Z8isfiniteB6v15006IdENSt3__19enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std14numeric_limitsIS2_EE12has_infinityEbE4typeES2_|
0000ceec 20080034 cbz        w0, #0xcff0                                  
0000cef0 01000014 b          #0xcef4                                      
0000cef4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cef8 002940fd ldr        d0, [x8, #0x50]                              
0000cefc 0820601e fcmp       d0, #0.0                                     
0000cf00 8d070054 b.le       #0xcff0                                      
0000cf04 01000014 b          #0xcf08                                      
0000cf08 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cf0c 003940fd ldr        d0, [x8, #0x70]                              
0000cf10 012940fd ldr        d1, [x8, #0x50]                              
0000cf14 0008611e fmul       d0, d0, d1                                   
0000cf18 0040621e fcvt       s0, d0                                       
0000cf1c 00cd00bd str        s0, [x8, #0xcc]                              
0000cf20 003540fd ldr        d0, [x8, #0x68]                              
0000cf24 012940fd ldr        d1, [x8, #0x50]                              
0000cf28 0008611e fmul       d0, d0, d1                                   
0000cf2c 0040621e fcvt       s0, d0                                       
0000cf30 00c900bd str        s0, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000cf34 08f945b9 ldr        w8, [x8, #0x5f8]                             
0000cf38 68010035 cbnz       w8, #0xcf64                                  
0000cf3c 01000014 b          #0xcf40                                      
0000cf40 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cf44 000146bd ldr        s0, [x8, #0x600]                             
0000cf48 00d8215e scvtf      s0, s0                                       
0000cf4c 01cd40bd ldr        s1, [x8, #0xcc]                              
0000cf50 0038211e fsub       s0, s0, s1                                   
0000cf54 01e4002f movi       d1, #0000000000000000                        
0000cf58 0078211e fminnm     s0, s0, s1                                   
0000cf5c e00f04bd str        s0, [sp, #0x40c]                             
0000cf60 04000014 b          #0xcf70                                      
0000cf64 00e4002f movi       d0, #0000000000000000                        
0000cf68 e00f04bd str        s0, [sp, #0x40c]                             
0000cf6c 01000014 b          #0xcf70                                      
0000cf70 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cf74 e00f44bd ldr        s0, [sp, #0x40c]                             
0000cf78 e00b04bd str        s0, [sp, #0x408]                             
0000cf7c 08fd45b9 ldr        w8, [x8, #0x5fc]                             
0000cf80 68010035 cbnz       w8, #0xcfac                                  
0000cf84 01000014 b          #0xcf88                                      
0000cf88 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cf8c 000546bd ldr        s0, [x8, #0x604]                             
0000cf90 00d8215e scvtf      s0, s0                                       
0000cf94 01c940bd ldr        s1, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000cf98 0038211e fsub       s0, s0, s1                                   
0000cf9c 01e4002f movi       d1, #0000000000000000                        
0000cfa0 0078211e fminnm     s0, s0, s1                                   
0000cfa4 e00704bd str        s0, [sp, #0x404]                             
0000cfa8 04000014 b          #0xcfb8                                      
0000cfac 00e4002f movi       d0, #0000000000000000                        
0000cfb0 e00704bd str        s0, [sp, #0x404]                             
0000cfb4 01000014 b          #0xcfb8                                      
0000cfb8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cfbc e10b44bd ldr        s1, [sp, #0x408]                             
0000cfc0 e00744bd ldr        s0, [sp, #0x404]                             
0000cfc4 012d04bd str        s1, [x8, #0x42c]                             
0000cfc8 002904bd str        s0, [x8, #0x428]                             
0000cfcc 002d44bd ldr        s0, [x8, #0x42c]                             
0000cfd0 002104bd str        s0, [x8, #0x420]                             
0000cfd4 002944bd ldr        s0, [x8, #0x428]                             
0000cfd8 002504bd str        s0, [x8, #0x424]                             
0000cfdc 001142fd ldr        d0, [x8, #0x420]                             
0000cfe0 005500fd str        d0, [x8, #0xa8]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000cfe4 28008052 mov        w8, #1                                       
0000cfe8 e85f1b39 strb       w8, [sp, #0x6d7]                             
0000cfec 01000014 b          #0xcff0                                      
0000cff0 01000014 b          #0xcff4                                      
0000cff4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000cff8 0900a852 mov        w9, #0x40000000                              
0000cffc 093500b9 str        w9, [x8, #0x34]                              
0000d000 000146bd ldr        s0, [x8, #0x600]                             
0000d004 00d8215e scvtf      s0, s0                                       
0000d008 01cd40bd ldr        s1, [x8, #0xcc]                              
0000d00c 0210201e fmov       s2, #2.00000000                              
0000d010 2138221e fsub       s1, s1, s2                                   
0000d014 0020211e fcmp       s0, s1                                       
0000d018 e9579f1a cset       w9, mi                                       
0000d01c e98f1939 strb       w9, [sp, #0x663]                             
0000d020 000546bd ldr        s0, [x8, #0x604]                             
0000d024 00d8215e scvtf      s0, s0                                       
0000d028 01c940bd ldr        s1, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000d02c 2138221e fsub       s1, s1, s2                                   
0000d030 0020211e fcmp       s0, s1                                       
0000d034 e9579f1a cset       w9, mi                                       
0000d038 e98b1939 strb       w9, [sp, #0x662]                             
0000d03c 081941f9 ldr        x8, [x8, #0x230]                             
0000d040 000540f9 ldr        x0, [x8, #8]                                  ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock
0000d044 e10000d0 adrp       x1, #0x2b000                                 
0000d048 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000d04c f46b0094 bl         #0x2801c                                      ; _strcmp
0000d050 08008052 mov        w8, #0                                       
0000d054 e80304b9 str        w8, [sp, #0x400]                             
0000d058 00020034 cbz        w0, #0xd098                                  
0000d05c 01000014 b          #0xd060                                      
0000d060 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d064 081941f9 ldr        x8, [x8, #0x230]                             
0000d068 000540f9 ldr        x0, [x8, #8]                                  ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock
0000d06c e10000b0 adrp       x1, #0x2a000                                 
0000d070 21543b91 add        x1, x1, #0xed5                                ; 'CoverSheet'
0000d074 ea6b0094 bl         #0x2801c                                      ; _strcmp
0000d078 08008052 mov        w8, #0                                       
0000d07c e80304b9 str        w8, [sp, #0x400]                             
0000d080 c0000034 cbz        w0, #0xd098                                  
0000d084 01000014 b          #0xd088                                      
0000d088 e85b5b39 ldrb       w8, [sp, #0x6d6]                             
0000d08c 08010052 eor        w8, w8, #1                                   
0000d090 e80304b9 str        w8, [sp, #0x400]                             
0000d094 01000014 b          #0xd098                                      
0000d098 e80344b9 ldr        w8, [sp, #0x400]                             
0000d09c 08010012 and        w8, w8, #1                                   
0000d0a0 e8871939 strb       w8, [sp, #0x661]                             
0000d0a4 e8875939 ldrb       w8, [sp, #0x661]                             
0000d0a8 480b0036 tbz        w8, #0, #0xd210                              
0000d0ac 01000014 b          #0xd0b0                                      
0000d0b0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d0b4 09f0a752 mov        w9, #0x3f800000                              
0000d0b8 09f102b9 str        w9, [x8, #0x2f0]                             
0000d0bc 000146bd ldr        s0, [x8, #0x600]                             
0000d0c0 01d8215e scvtf      s1, s0                                       
0000d0c4 000546bd ldr        s0, [x8, #0x604]                             
0000d0c8 00d8215e scvtf      s0, s0                                       
0000d0cc 011d04bd str        s1, [x8, #0x41c]                             
0000d0d0 001904bd str        s0, [x8, #0x418]                             
0000d0d4 001d44bd ldr        s0, [x8, #0x41c]                             
0000d0d8 001104bd str        s0, [x8, #0x410]                             
0000d0dc 001944bd ldr        s0, [x8, #0x418]                             
0000d0e0 001504bd str        s0, [x8, #0x414]                             
0000d0e4 000942fd ldr        d0, [x8, #0x410]                             
0000d0e8 001500fd str        d0, [x8, #0x28]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000d0ec 09008052 mov        w9, #0                                       
0000d0f0 090d04b9 str        w9, [x8, #0x40c]                             
0000d0f4 090904b9 str        w9, [x8, #0x408]                             
0000d0f8 000d44bd ldr        s0, [x8, #0x40c]                             
0000d0fc 000104bd str        s0, [x8, #0x400]                             
0000d100 000944bd ldr        s0, [x8, #0x408]                             
0000d104 000504bd str        s0, [x8, #0x404]                             
0000d108 000142fd ldr        d0, [x8, #0x400]                             
0000d10c 005d01fd str        d0, [x8, #0x2b8]                             
0000d110 001540fd ldr        d0, [x8, #0x28]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000d114 006101fd str        d0, [x8, #0x2c0]                             
0000d118 e8575b39 ldrb       w8, [sp, #0x6d5]                             
0000d11c c8030036 tbz        w8, #0, #0xd194                              
0000d120 01000014 b          #0xd124                                      
0000d124 e85f5b39 ldrb       w8, [sp, #0x6d7]                             
0000d128 68030036 tbz        w8, #0, #0xd194                              
0000d12c 01000014 b          #0xd130                                      
0000d130 e88f5939 ldrb       w8, [sp, #0x663]                             
0000d134 68010036 tbz        w8, #0, #0xd160                              
0000d138 01000014 b          #0xd13c                                      
0000d13c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d140 015540fd ldr        d1, [x8, #0xa8]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000d144 2040601e fmov       d0, d1                                       
0000d148 0000261e fmov       w0, s0                                       
0000d14c 0000271e fmov       s0, w0                                       
0000d150 00b902bd str        s0, [x8, #0x2b8]                             
0000d154 00cd40bd ldr        s0, [x8, #0xcc]                              
0000d158 00c102bd str        s0, [x8, #0x2c0]                             
0000d15c 01000014 b          #0xd160                                      
0000d160 e88b5939 ldrb       w8, [sp, #0x662]                             
0000d164 68010036 tbz        w8, #0, #0xd190                              
0000d168 01000014 b          #0xd16c                                      
0000d16c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d170 015540fd ldr        d1, [x8, #0xa8]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000d174 2040601e fmov       d0, d1                                       
0000d178 e9c32191 add        x9, sp, #0x870                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE19sBadDestinationLogs
0000d17c 29f10191 add        x9, x9, #0x7c                                
0000d180 2091000d st1        {v0.s}[1], [x9]                              
0000d184 00c940bd ldr        s0, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000d188 00c502bd str        s0, [x8, #0x2c4]                             
0000d18c 01000014 b          #0xd190                                      
0000d190 01000014 b          #0xd194                                      
0000d194 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d198 09f0a752 mov        w9, #0x3f800000                              
0000d19c 09fd03b9 str        w9, [x8, #0x3fc]                             
0000d1a0 09f903b9 str        w9, [x8, #0x3f8]                             
0000d1a4 00fd43bd ldr        s0, [x8, #0x3fc]                             
0000d1a8 00f103bd str        s0, [x8, #0x3f0]                             
0000d1ac 00f943bd ldr        s0, [x8, #0x3f8]                             
0000d1b0 00f503bd str        s0, [x8, #0x3f4]                             
0000d1b4 01f941fd ldr        d1, [x8, #0x3f0]                             
0000d1b8 001540fd ldr        d0, [x8, #0x28]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000d1bc e267050f movi       v2.2s, #0xbf, lsl #24                        
0000d1c0 00d4220e fadd       v0.2s, v0.2s, v2.2s                          
0000d1c4 022141fd ldr        d2, [x8, #0x240]                             
0000d1c8 00fc222e fdiv       v0.2s, v0.2s, v2.2s                          
0000d1cc 018502fd str        d1, [x8, #0x508]                             
0000d1d0 008102fd str        d0, [x8, #0x500]                             
0000d1d4 018542fd ldr        d1, [x8, #0x508]                             
0000d1d8 008142fd ldr        d0, [x8, #0x500]                             
0000d1dc 018d02fd str        d1, [x8, #0x518]                             
0000d1e0 008902fd str        d0, [x8, #0x510]                             
0000d1e4 018d42fd ldr        d1, [x8, #0x518]                             
0000d1e8 008942fd ldr        d0, [x8, #0x510]                             
0000d1ec 019902fd str        d1, [x8, #0x530]                             
0000d1f0 009502fd str        d0, [x8, #0x528]                             
0000d1f4 009942fd ldr        d0, [x8, #0x530]                             
0000d1f8 019542fd ldr        d1, [x8, #0x528]                             
0000d1fc 00c4a10e fminnm     v0.2s, v0.2s, v1.2s                          
0000d200 009102fd str        d0, [x8, #0x520]                             
0000d204 009142fd ldr        d0, [x8, #0x520]                             
0000d208 007101fd str        d0, [x8, #0x2e0]                             
0000d20c 01000014 b          #0xd210                                      
0000d210 e85b5b39 ldrb       w8, [sp, #0x6d6]                             
0000d214 68060036 tbz        w8, #0, #0xd2e0                              
0000d218 01000014 b          #0xd21c                                      
0000d21c e85f5b39 ldrb       w8, [sp, #0x6d7]                             
0000d220 08060036 tbz        w8, #0, #0xd2e0                              
0000d224 01000014 b          #0xd228                                      
0000d228 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d22c 01cd40bd ldr        s1, [x8, #0xcc]                              
0000d230 00c940bd ldr        s0, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000d234 01ed03bd str        s1, [x8, #0x3ec]                             
0000d238 00e903bd str        s0, [x8, #0x3e8]                             
0000d23c 00ed43bd ldr        s0, [x8, #0x3ec]                             
0000d240 00e103bd str        s0, [x8, #0x3e0]                             
0000d244 00e943bd ldr        s0, [x8, #0x3e8]                             
0000d248 00e503bd str        s0, [x8, #0x3e4]                             
0000d24c 00f141fd ldr        d0, [x8, #0x3e0]                             
0000d250 001100fd str        d0, [x8, #0x20]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000d254 005540fd ldr        d0, [x8, #0xa8]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000d258 015d41fd ldr        d1, [x8, #0x2b8]                             
0000d25c 022141fd ldr        d2, [x8, #0x240]                             
0000d260 22fc222e fdiv       v2.2s, v1.2s, v2.2s                          
0000d264 011140fd ldr        d1, [x8, #0x20]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000d268 20cc220e fmla       v0.2s, v1.2s, v2.2s                          
0000d26c 005d01fd str        d0, [x8, #0x2b8]                             
0000d270 006141fd ldr        d0, [x8, #0x2c0]                             
0000d274 012141fd ldr        d1, [x8, #0x240]                             
0000d278 00fc212e fdiv       v0.2s, v0.2s, v1.2s                          
0000d27c 011140fd ldr        d1, [x8, #0x20]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000d280 00dc212e fmul       v0.2s, v0.2s, v1.2s                          
0000d284 006101fd str        d0, [x8, #0x2c0]                             
0000d288 001d42bd ldr        s0, [x8, #0x21c]                             
0000d28c 016141fd ldr        d1, [x8, #0x2c0]                             
0000d290 2240601e fmov       d2, d1                                       
0000d294 4140201e fmov       s1, s2                                       
0000d298 42040c5e mov        s2, v2.s[1]                                  
0000d29c 2178221e fminnm     s1, s1, s2                                   
0000d2a0 0008211e fmul       s0, s0, s1                                   
0000d2a4 007102bd str        s0, [x8, #0x270]                             
0000d2a8 091941f9 ldr        x9, [x8, #0x230]                             
0000d2ac 201940bd ldr        s0, [x9, #0x18]                              
0000d2b0 010d42bd ldr        s1, [x8, #0x20c]                             
0000d2b4 0008211e fmul       s0, s0, s1                                   
0000d2b8 016141fd ldr        d1, [x8, #0x2c0]                             
0000d2bc 2240601e fmov       d2, d1                                       
0000d2c0 4140201e fmov       s1, s2                                       
0000d2c4 42040c5e mov        s2, v2.s[1]                                  
0000d2c8 2178221e fminnm     s1, s1, s2                                   
0000d2cc 02102c1e fmov       s2, #0.50000000                              
0000d2d0 2108221e fmul       s1, s1, s2                                   
0000d2d4 0078211e fminnm     s0, s0, s1                                   
0000d2d8 007502bd str        s0, [x8, #0x274]                             
0000d2dc 01000014 b          #0xd2e0                                      
0000d2e0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d2e4 081941f9 ldr        x8, [x8, #0x230]                             
0000d2e8 000540f9 ldr        x0, [x8, #8]                                  ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock
0000d2ec e10000d0 adrp       x1, #0x2b000                                 
0000d2f0 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000d2f4 4a6b0094 bl         #0x2801c                                      ; _strcmp
0000d2f8 e0080035 cbnz       w0, #0xd414                                  
0000d2fc 01000014 b          #0xd300                                      
0000d300 e85f5b39 ldrb       w8, [sp, #0x6d7]                             
0000d304 c8000036 tbz        w8, #0, #0xd31c                              
0000d308 01000014 b          #0xd30c                                      
0000d30c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d310 005540fd ldr        d0, [x8, #0xa8]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000d314 e0ff01fd str        d0, [sp, #0x3f8]                             
0000d318 31000014 b          #0xd3dc                                      
0000d31c e88f5939 ldrb       w8, [sp, #0x663]                             
0000d320 a8010036 tbz        w8, #0, #0xd354                              
0000d324 01000014 b          #0xd328                                      
0000d328 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d32c 08f945b9 ldr        w8, [x8, #0x5f8]                             
0000d330 28010035 cbnz       w8, #0xd354                                  
0000d334 01000014 b          #0xd338                                      
0000d338 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d33c 000146bd ldr        s0, [x8, #0x600]                             
0000d340 00d8215e scvtf      s0, s0                                       
0000d344 01cd40bd ldr        s1, [x8, #0xcc]                              
0000d348 0038211e fsub       s0, s0, s1                                   
0000d34c e0f703bd str        s0, [sp, #0x3f4]                             
0000d350 04000014 b          #0xd360                                      
0000d354 00e4002f movi       d0, #0000000000000000                        
0000d358 e0f703bd str        s0, [sp, #0x3f4]                             
0000d35c 01000014 b          #0xd360                                      
0000d360 e0f743bd ldr        s0, [sp, #0x3f4]                             
0000d364 e0f303bd str        s0, [sp, #0x3f0]                             
0000d368 e88b5939 ldrb       w8, [sp, #0x662]                             
0000d36c a8010036 tbz        w8, #0, #0xd3a0                              
0000d370 01000014 b          #0xd374                                      
0000d374 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d378 08fd45b9 ldr        w8, [x8, #0x5fc]                             
0000d37c 28010035 cbnz       w8, #0xd3a0                                  
0000d380 01000014 b          #0xd384                                      
0000d384 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d388 000546bd ldr        s0, [x8, #0x604]                             
0000d38c 00d8215e scvtf      s0, s0                                       
0000d390 01c940bd ldr        s1, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000d394 0038211e fsub       s0, s0, s1                                   
0000d398 e0ef03bd str        s0, [sp, #0x3ec]                             
0000d39c 04000014 b          #0xd3ac                                      
0000d3a0 00e4002f movi       d0, #0000000000000000                        
0000d3a4 e0ef03bd str        s0, [sp, #0x3ec]                             
0000d3a8 01000014 b          #0xd3ac                                      
0000d3ac e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d3b0 e1f343bd ldr        s1, [sp, #0x3f0]                             
0000d3b4 e0ef43bd ldr        s0, [sp, #0x3ec]                             
0000d3b8 01dd03bd str        s1, [x8, #0x3dc]                             
0000d3bc 00d903bd str        s0, [x8, #0x3d8]                             
0000d3c0 00dd43bd ldr        s0, [x8, #0x3dc]                             
0000d3c4 00d103bd str        s0, [x8, #0x3d0]                             
0000d3c8 00d943bd ldr        s0, [x8, #0x3d8]                             
0000d3cc 00d503bd str        s0, [x8, #0x3d4]                             
0000d3d0 00e941fd ldr        d0, [x8, #0x3d0]                             
0000d3d4 e0ff01fd str        d0, [sp, #0x3f8]                             
0000d3d8 01000014 b          #0xd3dc                                      
0000d3dc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d3e0 e0ff41fd ldr        d0, [sp, #0x3f8]                             
0000d3e4 005d01fd str        d0, [x8, #0x2b8]                             
0000d3e8 01cd40bd ldr        s1, [x8, #0xcc]                              
0000d3ec 00c940bd ldr        s0, [x8, #0xc8]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000d3f0 01cd03bd str        s1, [x8, #0x3cc]                             
0000d3f4 00c903bd str        s0, [x8, #0x3c8]                             
0000d3f8 00cd43bd ldr        s0, [x8, #0x3cc]                             
0000d3fc 00c103bd str        s0, [x8, #0x3c0]                             
0000d400 00c943bd ldr        s0, [x8, #0x3c8]                             
0000d404 00c503bd str        s0, [x8, #0x3c4]                             
0000d408 00e141fd ldr        d0, [x8, #0x3c0]                             
0000d40c 006101fd str        d0, [x8, #0x2c0]                             
0000d410 01000014 b          #0xd414                                      
0000d414 e88f5939 ldrb       w8, [sp, #0x663]                             
0000d418 c8010036 tbz        w8, #0, #0xd450                              
0000d41c 01000014 b          #0xd420                                      
0000d420 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d424 000146bd ldr        s0, [x8, #0x600]                             
0000d428 00d8215e scvtf      s0, s0                                       
0000d42c 01103c1e fmov       s1, #-0.50000000                             
0000d430 0028211e fadd       s0, s0, s1                                   
0000d434 022141fd ldr        d2, [x8, #0x240]                             
0000d438 4140601e fmov       d1, d2                                       
0000d43c 0018211e fdiv       s0, s0, s1                                   
0000d440 01102e1e fmov       s1, #1.00000000                              
0000d444 0078211e fminnm     s0, s0, s1                                   
0000d448 00e102bd str        s0, [x8, #0x2e0]                             
0000d44c 01000014 b          #0xd450                                      
0000d450 e88b5939 ldrb       w8, [sp, #0x662]                             
0000d454 e8010036 tbz        w8, #0, #0xd490                              
0000d458 01000014 b          #0xd45c                                      
0000d45c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d460 000546bd ldr        s0, [x8, #0x604]                             
0000d464 00d8215e scvtf      s0, s0                                       
0000d468 01103c1e fmov       s1, #-0.50000000                             
0000d46c 0028211e fadd       s0, s0, s1                                   
0000d470 022141fd ldr        d2, [x8, #0x240]                             
0000d474 4140601e fmov       d1, d2                                       
0000d478 21040c5e mov        s1, v1.s[1]                                  
0000d47c 0018211e fdiv       s0, s0, s1                                   
0000d480 01102e1e fmov       s1, #1.00000000                              
0000d484 0078211e fminnm     s0, s0, s1                                   
0000d488 00e502bd str        s0, [x8, #0x2e4]                             
0000d48c 01000014 b          #0xd490                                      
0000d490 680100b0 adrp       x8, #0x3a000                                 
0000d494 08215639 ldrb       w8, [x8, #0x588]                             
0000d498 48270036 tbz        w8, #0, #0xd980                              
0000d49c 01000014 b          #0xd4a0                                      
0000d4a0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d4a4 081941f9 ldr        x8, [x8, #0x230]                             
0000d4a8 000540f9 ldr        x0, [x8, #8]                                 
0000d4ac e10000d0 adrp       x1, #0x2b000                                 
0000d4b0 219c0091 add        x1, x1, #0x27                                 ; 'ContextMenu'
0000d4b4 da6a0094 bl         #0x2801c                                      ; _strcmp
0000d4b8 40260035 cbnz       w0, #0xd980                                  
0000d4bc 01000014 b          #0xd4c0                                      
0000d4c0 736b0094 bl         #0x2828c                                      ; _CFAbsoluteTimeGetCurrent
0000d4c4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d4c8 000d00fd str        d0, [x8, #0x18]                              
0000d4cc 60010090 adrp       x0, #0x39000                                 
0000d4d0 00601c91 add        x0, x0, #0x718                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock
0000d4d4 626b0094 bl         #0x2825c                                      ; _os_unfair_lock_lock
0000d4d8 68010090 adrp       x8, #0x39000                                 
0000d4dc 092947b9 ldr        w9, [x8, #0x728]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount
0000d4e0 08008052 mov        w8, #0                                       
0000d4e4 29bd0371 subs       w9, w9, #0xef                                
0000d4e8 e8eb03b9 str        w8, [sp, #0x3e8]                             
0000d4ec a8010054 b.hi       #0xd520                                      
0000d4f0 01000014 b          #0xd4f4                                      
0000d4f4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d4f8 000d40fd ldr        d0, [x8, #0x18]                              
0000d4fc 68010090 adrp       x8, #0x39000                                 
0000d500 019143fd ldr        d1, [x8, #0x720]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastTrace|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastTrace
0000d504 0038611e fsub       d0, d0, d1                                   
0000d508 28010090 adrp       x8, #0x31000                                 
0000d50c 012542fd ldr        d1, [x8, #0x448]                             
0000d510 0020611e fcmp       d0, d1                                       
0000d514 e8b79f1a cset       w8, ge                                       
0000d518 e8eb03b9 str        w8, [sp, #0x3e8]                             
0000d51c 01000014 b          #0xd520                                      
0000d520 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000d524 e8eb43b9 ldr        w8, [sp, #0x3e8]                             
0000d528 08010012 and        w8, w8, #1                                   
0000d52c e81f1939 strb       w8, [sp, #0x647]                             
0000d530 68010090 adrp       x8, #0x39000                                 
0000d534 082947b9 ldr        w8, [x8, #0x728]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount
0000d538 281100b9 str        w8, [x9, #0x10]                              
0000d53c e81f5939 ldrb       w8, [sp, #0x647]                             
0000d540 88010036 tbz        w8, #0, #0xd570                              
0000d544 01000014 b          #0xd548                                      
0000d548 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d54c 6a010090 adrp       x10, #0x39000                                
0000d550 492947b9 ldr        w9, [x10, #0x728]                             ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount
0000d554 29050011 add        w9, w9, #1                                   
0000d558 492907b9 str        w9, [x10, #0x728]                             ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10traceCount
0000d55c 091100b9 str        w9, [x8, #0x10]                              
0000d560 000d40fd ldr        d0, [x8, #0x18]                              
0000d564 68010090 adrp       x8, #0x39000                                 
0000d568 009103fd str        d0, [x8, #0x720]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastTrace|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastTrace
0000d56c 01000014 b          #0xd570                                      
0000d570 60010090 adrp       x0, #0x39000                                 
0000d574 00601c91 add        x0, x0, #0x718                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9traceLock
0000d578 416b0094 bl         #0x2827c                                      ; _os_unfair_lock_unlock
0000d57c e81f5939 ldrb       w8, [sp, #0x647]                             
0000d580 e81f0036 tbz        w8, #0, #0xd97c                              
0000d584 01000014 b          #0xd588                                      
0000d588 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d58c 001140b9 ldr        w0, [x8, #0x10]                              
0000d590 e05f03b9 str        w0, [sp, #0x35c]                             
0000d594 000d40fd ldr        d0, [x8, #0x18]                              
0000d598 e0b301fd str        d0, [sp, #0x360]                             
0000d59c 003d42b9 ldr        w0, [x8, #0x23c]                             
0000d5a0 e06f03b9 str        w0, [sp, #0x36c]                             
0000d5a4 09bd41f9 ldr        x9, [x8, #0x378]                             
0000d5a8 e9bb01f9 str        x9, [sp, #0x370]                             
0000d5ac 098541f9 ldr        x9, [x8, #0x308]                             
0000d5b0 e9bf01f9 str        x9, [sp, #0x378]                             
0000d5b4 098141f9 ldr        x9, [x8, #0x300]                             
0000d5b8 e9c301f9 str        x9, [sp, #0x380]                             
0000d5bc 009d40f9 ldr        x0, [x8, #0x138]                             
0000d5c0 d06e0094 bl         #0x29100                                      ; _objc_msgSend$width
0000d5c4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d5c8 e0c701f9 str        x0, [sp, #0x388]                             
0000d5cc 009d40f9 ldr        x0, [x8, #0x138]                             
0000d5d0 9c6d0094 bl         #0x28c40                                      ; _objc_msgSend$height
0000d5d4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d5d8 e0cb01f9 str        x0, [sp, #0x390]                             
0000d5dc 005d43bd ldr        s0, [x8, #0x35c]                             
0000d5e0 00c0221e fcvt       d0, s0                                       
0000d5e4 e0cf01fd str        d0, [sp, #0x398]                             
0000d5e8 006d43bd ldr        s0, [x8, #0x36c]                             
0000d5ec 00c0221e fcvt       d0, s0                                       
0000d5f0 e0d301fd str        d0, [sp, #0x3a0]                             
0000d5f4 e92f6639 ldrb       w9, [sp, #0x98b]                             
0000d5f8 20010012 and        w0, w9, #1                                   
0000d5fc e0af03b9 str        w0, [sp, #0x3ac]                             
0000d600 00ed42fd ldr        d0, [x8, #0x5d8]                             
0000d604 e0db01fd str        d0, [sp, #0x3b0]                             
0000d608 00f142fd ldr        d0, [x8, #0x5e0]                             
0000d60c e0df01fd str        d0, [sp, #0x3b8]                             
0000d610 00f542fd ldr        d0, [x8, #0x5e8]                             
0000d614 e0e301fd str        d0, [sp, #0x3c0]                             
0000d618 00f942fd ldr        d0, [x8, #0x5f0]                             
0000d61c e0e701fd str        d0, [sp, #0x3c8]                             
0000d620 00f945b9 ldr        w0, [x8, #0x5f8]                             
0000d624 e0d703b9 str        w0, [sp, #0x3d4]                             
0000d628 00fd45b9 ldr        w0, [x8, #0x5fc]                             
0000d62c e0db03b9 str        w0, [sp, #0x3d8]                             
0000d630 000146b9 ldr        w0, [x8, #0x600]                             
0000d634 e0df03b9 str        w0, [sp, #0x3dc]                             
0000d638 000546b9 ldr        w0, [x8, #0x604]                             
0000d63c e0e303b9 str        w0, [sp, #0x3e0]                             
0000d640 e85f5b39 ldrb       w8, [sp, #0x6d7]                             
0000d644 00010012 and        w0, w8, #1                                   
0000d648 e0e703b9 str        w0, [sp, #0x3e4]                             
0000d64c e8000036 tbz        w8, #0, #0xd668                              
0000d650 01000014 b          #0xd654                                      
0000d654 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d658 015540fd ldr        d1, [x8, #0xa8]                              
0000d65c 2040601e fmov       d0, d1                                       
0000d660 e05b03bd str        s0, [sp, #0x358]                             
0000d664 04000014 b          #0xd674                                      
0000d668 00e4002f movi       d0, #0000000000000000                        
0000d66c e05b03bd str        s0, [sp, #0x358]                             
0000d670 01000014 b          #0xd674                                      
0000d674 e05b43bd ldr        s0, [sp, #0x358]                             
0000d678 00c0221e fcvt       d0, s0                                       
0000d67c e0ab01fd str        d0, [sp, #0x350]                             
0000d680 e85f5b39 ldrb       w8, [sp, #0x6d7]                             
0000d684 08010036 tbz        w8, #0, #0xd6a4                              
0000d688 01000014 b          #0xd68c                                      
0000d68c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d690 015540fd ldr        d1, [x8, #0xa8]                              
0000d694 2040601e fmov       d0, d1                                       
0000d698 00040c5e mov        s0, v0.s[1]                                  
0000d69c e04f03bd str        s0, [sp, #0x34c]                             
0000d6a0 04000014 b          #0xd6b0                                      
0000d6a4 00e4002f movi       d0, #0000000000000000                        
0000d6a8 e04f03bd str        s0, [sp, #0x34c]                             
0000d6ac 01000014 b          #0xd6b0                                      
0000d6b0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d6b4 e04f43bd ldr        s0, [sp, #0x34c]                             
0000d6b8 00c0221e fcvt       d0, s0                                       
0000d6bc e07701fd str        d0, [sp, #0x2e8]                             
0000d6c0 00cd40bd ldr        s0, [x8, #0xcc]                              
0000d6c4 00c0221e fcvt       d0, s0                                       
0000d6c8 e07b01fd str        d0, [sp, #0x2f0]                             
0000d6cc 00c940bd ldr        s0, [x8, #0xc8]                              
0000d6d0 00c0221e fcvt       d0, s0                                       
0000d6d4 e07f01fd str        d0, [sp, #0x2f8]                             
0000d6d8 e98f5939 ldrb       w9, [sp, #0x663]                             
0000d6dc 20010012 and        w0, w9, #1                                   
0000d6e0 e00303b9 str        w0, [sp, #0x300]                             
0000d6e4 e98b5939 ldrb       w9, [sp, #0x662]                             
0000d6e8 20010012 and        w0, w9, #1                                   
0000d6ec e00703b9 str        w0, [sp, #0x304]                             
0000d6f0 015d41fd ldr        d1, [x8, #0x2b8]                              ; __ZZL6jbrootPKcE7outPath|__ZZL6jbrootPKcE7outPath
0000d6f4 2040601e fmov       d0, d1                                       
0000d6f8 0140201e fmov       s1, s0                                       
0000d6fc 21c0221e fcvt       d1, s1                                       
0000d700 e18701fd str        d1, [sp, #0x308]                             
0000d704 00040c5e mov        s0, v0.s[1]                                  
0000d708 00c0221e fcvt       d0, s0                                       
0000d70c e08b01fd str        d0, [sp, #0x310]                             
0000d710 016141fd ldr        d1, [x8, #0x2c0]                             
0000d714 2040601e fmov       d0, d1                                       
0000d718 0140201e fmov       s1, s0                                       
0000d71c 21c0221e fcvt       d1, s1                                       
0000d720 e18f01fd str        d1, [sp, #0x318]                             
0000d724 00040c5e mov        s0, v0.s[1]                                  
0000d728 00c0221e fcvt       d0, s0                                       
0000d72c e09301fd str        d0, [sp, #0x320]                             
0000d730 012141fd ldr        d1, [x8, #0x240]                             
0000d734 2040601e fmov       d0, d1                                       
0000d738 0140201e fmov       s1, s0                                       
0000d73c 21c0221e fcvt       d1, s1                                       
0000d740 e19701fd str        d1, [sp, #0x328]                             
0000d744 00040c5e mov        s0, v0.s[1]                                  
0000d748 00c0221e fcvt       d0, s0                                       
0000d74c e09b01fd str        d0, [sp, #0x330]                             
0000d750 017141fd ldr        d1, [x8, #0x2e0]                             
0000d754 2040601e fmov       d0, d1                                       
0000d758 0140201e fmov       s1, s0                                       
0000d75c 21c0221e fcvt       d1, s1                                       
0000d760 e19f01fd str        d1, [sp, #0x338]                             
0000d764 00040c5e mov        s0, v0.s[1]                                  
0000d768 00c0221e fcvt       d0, s0                                       
0000d76c e0a301fd str        d0, [sp, #0x340]                             
0000d770 00f142bd ldr        s0, [x8, #0x2f0]                             
0000d774 01102c1e fmov       s1, #0.50000000                              
0000d778 0020211e fcmp       s0, s1                                       
0000d77c ad000054 b.le       #0xd790                                      
0000d780 01000014 b          #0xd784                                      
0000d784 00e4002f movi       d0, #0000000000000000                        
0000d788 e0e702bd str        s0, [sp, #0x2e4]                             
0000d78c 0b000014 b          #0xd7b8                                      
0000d790 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d794 012541fd ldr        d1, [x8, #0x248]                             
0000d798 2040601e fmov       d0, d1                                       
0000d79c 022141fd ldr        d2, [x8, #0x240]                             
0000d7a0 4140601e fmov       d1, d2                                       
0000d7a4 0038211e fsub       s0, s0, s1                                   
0000d7a8 01102c1e fmov       s1, #0.50000000                              
0000d7ac 0008211e fmul       s0, s0, s1                                   
0000d7b0 e0e702bd str        s0, [sp, #0x2e4]                             
0000d7b4 01000014 b          #0xd7b8                                      
0000d7b8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d7bc e0e742bd ldr        s0, [sp, #0x2e4]                             
0000d7c0 00c0221e fcvt       d0, s0                                       
0000d7c4 e06f01fd str        d0, [sp, #0x2d8]                             
0000d7c8 00f142bd ldr        s0, [x8, #0x2f0]                             
0000d7cc 01102c1e fmov       s1, #0.50000000                              
0000d7d0 0020211e fcmp       s0, s1                                       
0000d7d4 ad000054 b.le       #0xd7e8                                      
0000d7d8 01000014 b          #0xd7dc                                      
0000d7dc 00e4002f movi       d0, #0000000000000000                        
0000d7e0 e0d702bd str        s0, [sp, #0x2d4]                             
0000d7e4 0d000014 b          #0xd818                                      
0000d7e8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d7ec 012541fd ldr        d1, [x8, #0x248]                             
0000d7f0 2040601e fmov       d0, d1                                       
0000d7f4 00040c5e mov        s0, v0.s[1]                                  
0000d7f8 022141fd ldr        d2, [x8, #0x240]                             
0000d7fc 4140601e fmov       d1, d2                                       
0000d800 21040c5e mov        s1, v1.s[1]                                  
0000d804 0038211e fsub       s0, s0, s1                                   
0000d808 01102c1e fmov       s1, #0.50000000                              
0000d80c 0008211e fmul       s0, s0, s1                                   
0000d810 e0d702bd str        s0, [sp, #0x2d4]                             
0000d814 01000014 b          #0xd818                                      
0000d818 e05f43b9 ldr        w0, [sp, #0x35c]                             
0000d81c e0b341fd ldr        d0, [sp, #0x360]                             
0000d820 e16f43b9 ldr        w1, [sp, #0x36c]                             
0000d824 e8bb41f9 ldr        x8, [sp, #0x370]                             
0000d828 eabf41f9 ldr        x10, [sp, #0x378]                            
0000d82c ebc341f9 ldr        x11, [sp, #0x380]                            
0000d830 ecc741f9 ldr        x12, [sp, #0x388]                            
0000d834 edcb41f9 ldr        x13, [sp, #0x390]                            
0000d838 e1cf41fd ldr        d1, [sp, #0x398]                             
0000d83c e2d341fd ldr        d2, [sp, #0x3a0]                             
0000d840 e2af43b9 ldr        w2, [sp, #0x3ac]                             
0000d844 e3db41fd ldr        d3, [sp, #0x3b0]                             
0000d848 e4df41fd ldr        d4, [sp, #0x3b8]                             
0000d84c e5e341fd ldr        d5, [sp, #0x3c0]                             
0000d850 e6e741fd ldr        d6, [sp, #0x3c8]                             
0000d854 e3d743b9 ldr        w3, [sp, #0x3d4]                             
0000d858 e4db43b9 ldr        w4, [sp, #0x3d8]                             
0000d85c e5df43b9 ldr        w5, [sp, #0x3dc]                             
0000d860 e6e343b9 ldr        w6, [sp, #0x3e0]                             
0000d864 e7e743b9 ldr        w7, [sp, #0x3e4]                             
0000d868 e7ab41fd ldr        d7, [sp, #0x350]                             
0000d86c f07741fd ldr        d16, [sp, #0x2e8]                            
0000d870 f17b41fd ldr        d17, [sp, #0x2f0]                            
0000d874 f27f41fd ldr        d18, [sp, #0x2f8]                            
0000d878 ef0343b9 ldr        w15, [sp, #0x300]                            
0000d87c f00743b9 ldr        w16, [sp, #0x304]                            
0000d880 f38741fd ldr        d19, [sp, #0x308]                            
0000d884 f48b41fd ldr        d20, [sp, #0x310]                            
0000d888 f58f41fd ldr        d21, [sp, #0x318]                            
0000d88c f69341fd ldr        d22, [sp, #0x320]                            
0000d890 f79741fd ldr        d23, [sp, #0x328]                            
0000d894 f89b41fd ldr        d24, [sp, #0x330]                            
0000d898 f99f41fd ldr        d25, [sp, #0x338]                            
0000d89c faa341fd ldr        d26, [sp, #0x340]                            
0000d8a0 fb6f41fd ldr        d27, [sp, #0x2d8]                            
0000d8a4 fcd742bd ldr        s28, [sp, #0x2d4]                            
0000d8a8 9cc3221e fcvt       d28, s28                                     
0000d8ac e9030091 mov        x9, sp                                       
0000d8b0 e96701f9 str        x9, [sp, #0x2c8]                             
0000d8b4 3c8d00fd str        d28, [x9, #0x118]                            
0000d8b8 3b8900fd str        d27, [x9, #0x110]                            
0000d8bc 3a8500fd str        d26, [x9, #0x108]                            
0000d8c0 398100fd str        d25, [x9, #0x100]                            
0000d8c4 387d00fd str        d24, [x9, #0xf8]                             
0000d8c8 377900fd str        d23, [x9, #0xf0]                              ; __ZZL17lgLogEdgeGeometryPKcjPvPhyyyyfE4last|__ZZL17lgLogEdgeGeometryPKcjPvPhyyyyfE4last
0000d8cc 367500fd str        d22, [x9, #0xe8]                              ; __ZZL17lgLogEdgeGeometryPKcjPvPhyyyyfE4lock|__ZZL17lgLogEdgeGeometryPKcjPvPhyyyyfE4lock
0000d8d0 357100fd str        d21, [x9, #0xe0]                              ; __ZL16g_clockFieldLock|__ZL16g_clockFieldLock
0000d8d4 346d00fd str        d20, [x9, #0xd8]                              ; __ZZL26LGCoverSheetMapSharedStatebE13writableState|__ZZL26LGCoverSheetMapSharedStatebE13writableState
0000d8d8 336900fd str        d19, [x9, #0xd0]                              ; __ZZL26LGCoverSheetMapSharedStatebE13readOnlyState|__ZZL26LGCoverSheetMapSharedStatebE13readOnlyState
0000d8dc ee0310aa mov        x14, x16                                     
0000d8e0 2e6500f9 str        x14, [x9, #0xc8]                              ; __ZZL28LGDefaultDisplayCornerRadiusvE4once|__ZZL28LGDefaultDisplayCornerRadiusvE4once
0000d8e4 ee030faa mov        x14, x15                                     
0000d8e8 2e6100f9 str        x14, [x9, #0xc0]                             
0000d8ec 325d00fd str        d18, [x9, #0xb8]                             
0000d8f0 315900fd str        d17, [x9, #0xb0]                             
0000d8f4 305500fd str        d16, [x9, #0xa8]                              ; __ZZL15LGLensRectTokenjE7sTokens|__ZZL15LGLensRectTokenjE7sTokens
0000d8f8 275100fd str        d7, [x9, #0xa0]                               ; __ZL14g_pipelineInit|__ZL14g_pipelineInit
0000d8fc ee0307aa mov        x14, x7                                      
0000d900 2e4d00f9 str        x14, [x9, #0x98]                              ; __ZL23g_loggedRenderAtomsLock|__ZL23g_loggedRenderAtomsLock
0000d904 ee0306aa mov        x14, x6                                      
0000d908 2e4900f9 str        x14, [x9, #0x90]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE8lastFlag|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE8lastFlag
0000d90c ee0305aa mov        x14, x5                                      
0000d910 2e4500f9 str        x14, [x9, #0x88]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale
0000d914 ee0304aa mov        x14, x4                                      
0000d918 2e4100f9 str        x14, [x9, #0x80]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000d91c ee0303aa mov        x14, x3                                      
0000d920 2e3d00f9 str        x14, [x9, #0x78]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth
0000d924 263900fd str        d6, [x9, #0x70]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight
0000d928 253500fd str        d5, [x9, #0x68]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth
0000d92c 243100fd str        d4, [x9, #0x60]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000d930 232d00fd str        d3, [x9, #0x58]                              
0000d934 ee0302aa mov        x14, x2                                      
0000d938 2e2900f9 str        x14, [x9, #0x50]                             
0000d93c 222500fd str        d2, [x9, #0x48]                              
0000d940 212100fd str        d1, [x9, #0x40]                              
0000d944 2d1d00f9 str        x13, [x9, #0x38]                             
0000d948 2c1900f9 str        x12, [x9, #0x30]                             
0000d94c 2b1500f9 str        x11, [x9, #0x28]                             
0000d950 2a1100f9 str        x10, [x9, #0x20]                             
0000d954 280d00f9 str        x8, [x9, #0x18]                              
0000d958 e80301aa mov        x8, x1                                       
0000d95c 280900f9 str        x8, [x9, #0x10]                              
0000d960 200500fd str        d0, [x9, #8]                                 
0000d964 e80300aa mov        x8, x0                                       
0000d968 280100f9 str        x8, [x9]                                     
0000d96c e00000d0 adrp       x0, #0x2b000                                 
0000d970 00cc0091 add        x0, x0, #0x33                                 ; 'CTX-GEOMETRY frame=%u time=%.6f atom=0x%x layer=%p src=%llux%llu dst=%lux%lu scale=%.6f opacity=%.4f flag=%d bounds=[%.4f,%.4f %.4fx%.4f] capture=[%d,%d %dx%d] projected=%d origin=%.4f,%.4f extent=%.4fx%.4f clipped=%d,%d shape=[%.4f,%.4f %.4fx%.4f] resolution=%.4fx%.4f maxUV=%.6f,%.6f outputInset=%.4f,%.4f'
0000d974 1feaff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000d978 01000014 b          #0xd97c                                      
0000d97c 01000014 b          #0xd980                                      
0000d980 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d984 016141fd ldr        d1, [x8, #0x2c0]                             
0000d988 2040601e fmov       d0, d1                                       
0000d98c 01102c1e fmov       s1, #0.50000000                              
0000d990 0020211e fcmp       s0, s1                                       
0000d994 e8110054 b.hi       #0xdbd0                                      
0000d998 01000014 b          #0xd99c                                      
0000d99c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d9a0 016141fd ldr        d1, [x8, #0x2c0]                             
0000d9a4 2040601e fmov       d0, d1                                       
0000d9a8 00040c5e mov        s0, v0.s[1]                                  
0000d9ac 01102c1e fmov       s1, #0.50000000                              
0000d9b0 0020211e fcmp       s0, s1                                       
0000d9b4 e8100054 b.hi       #0xdbd0                                      
0000d9b8 01000014 b          #0xd9bc                                      
0000d9bc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d9c0 00c942bd ldr        s0, [x8, #0x2c8]                             
0000d9c4 0820201e fcmp       s0, #0.0                                     
0000d9c8 41100054 b.ne       #0xdbd0                                      
0000d9cc 01000014 b          #0xd9d0                                      
0000d9d0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d9d4 00b142bd ldr        s0, [x8, #0x2b0]                              ; __ZGVZL21lgResolveHookFunctionvE10candidates|__ZGVZL21lgResolveHookFunctionvE10candidates
0000d9d8 e8ce9752 mov        w8, #0xbe77                                  
0000d9dc e8efa772 movk       w8, #0x3f7f, lsl #16                         
0000d9e0 0101271e fmov       s1, w8                                       
0000d9e4 0020211e fcmp       s0, s1                                       
0000d9e8 4b0f0054 b.lt       #0xdbd0                                      
0000d9ec 01000014 b          #0xd9f0                                      
0000d9f0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000d9f4 00ad42bd ldr        s0, [x8, #0x2ac]                             
0000d9f8 01102e1e fmov       s1, #1.00000000                              
0000d9fc 0020211e fcmp       s0, s1                                       
0000da00 810e0054 b.ne       #0xdbd0                                      
0000da04 01000014 b          #0xda08                                      
0000da08 e88f5939 ldrb       w8, [sp, #0x663]                             
0000da0c a8010036 tbz        w8, #0, #0xda40                              
0000da10 01000014 b          #0xda14                                      
0000da14 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000da18 08f945b9 ldr        w8, [x8, #0x5f8]                             
0000da1c 28010035 cbnz       w8, #0xda40                                  
0000da20 01000014 b          #0xda24                                      
0000da24 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000da28 000146bd ldr        s0, [x8, #0x600]                             
0000da2c 00d8215e scvtf      s0, s0                                       
0000da30 01cd40bd ldr        s1, [x8, #0xcc]                              
0000da34 0038211e fsub       s0, s0, s1                                   
0000da38 e0c702bd str        s0, [sp, #0x2c4]                             
0000da3c 04000014 b          #0xda4c                                      
0000da40 00e4002f movi       d0, #0000000000000000                        
0000da44 e0c702bd str        s0, [sp, #0x2c4]                             
0000da48 01000014 b          #0xda4c                                      
0000da4c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000da50 e0c742bd ldr        s0, [sp, #0x2c4]                             
0000da54 000d00bd str        s0, [x8, #0xc]                               
0000da58 e88b5939 ldrb       w8, [sp, #0x662]                             
0000da5c a8010036 tbz        w8, #0, #0xda90                              
0000da60 01000014 b          #0xda64                                      
0000da64 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000da68 08fd45b9 ldr        w8, [x8, #0x5fc]                             
0000da6c 28010035 cbnz       w8, #0xda90                                  
0000da70 01000014 b          #0xda74                                      
0000da74 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000da78 000546bd ldr        s0, [x8, #0x604]                             
0000da7c 00d8215e scvtf      s0, s0                                       
0000da80 01c940bd ldr        s1, [x8, #0xc8]                              
0000da84 0038211e fsub       s0, s0, s1                                   
0000da88 e0c302bd str        s0, [sp, #0x2c0]                             
0000da8c 04000014 b          #0xda9c                                      
0000da90 00e4002f movi       d0, #0000000000000000                        
0000da94 e0c302bd str        s0, [sp, #0x2c0]                             
0000da98 01000014 b          #0xda9c                                      
0000da9c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000daa0 e0c342bd ldr        s0, [sp, #0x2c0]                             
0000daa4 000900bd str        s0, [x8, #8]                                 
0000daa8 000d40bd ldr        s0, [x8, #0xc]                               
0000daac 0820201e fcmp       s0, #0.0                                     
0000dab0 e4000054 b.mi       #0xdacc                                      
0000dab4 01000014 b          #0xdab8                                      
0000dab8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dabc 000940bd ldr        s0, [x8, #8]                                 
0000dac0 0820201e fcmp       s0, #0.0                                     
0000dac4 45080054 b.pl       #0xdbcc                                      
0000dac8 01000014 b          #0xdacc                                      
0000dacc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dad0 010d40bd ldr        s1, [x8, #0xc]                               
0000dad4 000940bd ldr        s0, [x8, #8]                                 
0000dad8 01bd03bd str        s1, [x8, #0x3bc]                             
0000dadc 00b903bd str        s0, [x8, #0x3b8]                             
0000dae0 00bd43bd ldr        s0, [x8, #0x3bc]                             
0000dae4 00b103bd str        s0, [x8, #0x3b0]                             
0000dae8 00b943bd ldr        s0, [x8, #0x3b8]                             
0000daec 00b503bd str        s0, [x8, #0x3b4]                             
0000daf0 00d941fd ldr        d0, [x8, #0x3b0]                             
0000daf4 005d01fd str        d0, [x8, #0x2b8]                              ; __ZZL6jbrootPKcE7outPath|__ZZL6jbrootPKcE7outPath
0000daf8 01cd40bd ldr        s1, [x8, #0xcc]                              
0000dafc 00c940bd ldr        s0, [x8, #0xc8]                              
0000db00 01ad03bd str        s1, [x8, #0x3ac]                             
0000db04 00a903bd str        s0, [x8, #0x3a8]                             
0000db08 00ad43bd ldr        s0, [x8, #0x3ac]                             
0000db0c 00a103bd str        s0, [x8, #0x3a0]                             
0000db10 00a943bd ldr        s0, [x8, #0x3a8]                             
0000db14 00a503bd str        s0, [x8, #0x3a4]                             
0000db18 00d141fd ldr        d0, [x8, #0x3a0]                             
0000db1c 006101fd str        d0, [x8, #0x2c0]                             
0000db20 68010090 adrp       x8, #0x39000                                 
0000db24 082d47b9 ldr        w8, [x8, #0x72c]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9sClipLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9sClipLogs
0000db28 089d0071 subs       w8, w8, #0x27                                
0000db2c e8040054 b.hi       #0xdbc8                                      
0000db30 01000014 b          #0xdb34                                      
0000db34 69010090 adrp       x9, #0x39000                                 
0000db38 29b11c91 add        x9, x9, #0x72c                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9sClipLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9sClipLogs
0000db3c 28008052 mov        w8, #1                                       
0000db40 2801e8b8 ldaddal    w8, w8, [x9]                                 
0000db44 089d0071 subs       w8, w8, #0x27                                
0000db48 08040054 b.hi       #0xdbc8                                      
0000db4c 01000014 b          #0xdb50                                      
0000db50 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000db54 20cd40bd ldr        s0, [x9, #0xcc]                               ; __ZL14g_pipelineInit|__ZL14g_pipelineInit
0000db58 00c0221e fcvt       d0, s0                                       
0000db5c 21c940bd ldr        s1, [x9, #0xc8]                               ; __ZL14g_pipelineLock|__ZL14g_pipelineLock
0000db60 21c0221e fcvt       d1, s1                                       
0000db64 220d40bd ldr        s2, [x9, #0xc]                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000db68 42c0221e fcvt       d2, s2                                       
0000db6c 230940bd ldr        s3, [x9, #8]                                 
0000db70 63c0221e fcvt       d3, s3                                       
0000db74 283d42b9 ldr        w8, [x9, #0x23c]                             
0000db78 2af945b9 ldr        w10, [x9, #0x5f8]                            
0000db7c 2bfd45b9 ldr        w11, [x9, #0x5fc]                            
0000db80 2c0146b9 ldr        w12, [x9, #0x600]                            
0000db84 290546b9 ldr        w9, [x9, #0x604]                             
0000db88 ed0309aa mov        x13, x9                                      
0000db8c e9030091 mov        x9, sp                                       
0000db90 e95f01f9 str        x9, [sp, #0x2b8]                             
0000db94 232100fd str        d3, [x9, #0x40]                              
0000db98 221d00fd str        d2, [x9, #0x38]                              
0000db9c 211900fd str        d1, [x9, #0x30]                              
0000dba0 201500fd str        d0, [x9, #0x28]                              
0000dba4 2d1100f9 str        x13, [x9, #0x20]                             
0000dba8 2c0d00f9 str        x12, [x9, #0x18]                             
0000dbac 2b0900f9 str        x11, [x9, #0x10]                             
0000dbb0 2a0500f9 str        x10, [x9, #8]                                
0000dbb4 280100f9 str        x8, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9sClipLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9sClipLogs
0000dbb8 e00000d0 adrp       x0, #0x2b000                                 
0000dbbc 009c0591 add        x0, x0, #0x167                                ; 'EDGE-FIX atom=0x%x rect=[%d,%d %dx%d] expected=%.1fx%.1f origin=%.1f,%.1f'
0000dbc0 8ce9ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000dbc4 01000014 b          #0xdbc8                                      
0000dbc8 01000014 b          #0xdbcc                                      
0000dbcc 01000014 b          #0xdbd0                                      
0000dbd0 e88f5939 ldrb       w8, [sp, #0x663]                             
0000dbd4 a8000037 tbnz       w8, #0, #0xdbe8                              
0000dbd8 01000014 b          #0xdbdc                                      
0000dbdc e88b5939 ldrb       w8, [sp, #0x662]                             
0000dbe0 c8050036 tbz        w8, #0, #0xdc98                              
0000dbe4 01000014 b          #0xdbe8                                      
0000dbe8 68010090 adrp       x8, #0x39000                                 
0000dbec 083147b9 ldr        w8, [x8, #0x730]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000dbf0 089d0071 subs       w8, w8, #0x27                                
0000dbf4 28050054 b.hi       #0xdc98                                      
0000dbf8 01000014 b          #0xdbfc                                      
0000dbfc 69010090 adrp       x9, #0x39000                                 
0000dc00 29c11c91 add        x9, x9, #0x730                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000dc04 28008052 mov        w8, #1                                       
0000dc08 2801e8b8 ldaddal    w8, w8, [x9]                                 
0000dc0c 089d0071 subs       w8, w8, #0x27                                
0000dc10 48040054 b.hi       #0xdc98                                      
0000dc14 01000014 b          #0xdc18                                      
0000dc18 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000dc1c 20cd40bd ldr        s0, [x9, #0xcc]                               ; __ZL19g_dynamicRoutesLock|__ZL19g_dynamicRoutesLock
0000dc20 00c0221e fcvt       d0, s0                                       
0000dc24 21c940bd ldr        s1, [x9, #0xc8]                               ; __ZL14g_pipelineInit|__ZL14g_pipelineInit
0000dc28 21c0221e fcvt       d1, s1                                       
0000dc2c 227141fd ldr        d2, [x9, #0x2e0]                             
0000dc30 4340601e fmov       d3, d2                                       
0000dc34 6240201e fmov       s2, s3                                       
0000dc38 42c0221e fcvt       d2, s2                                       
0000dc3c 63040c5e mov        s3, v3.s[1]                                  
0000dc40 63c0221e fcvt       d3, s3                                       
0000dc44 283d42b9 ldr        w8, [x9, #0x23c]                             
0000dc48 2af945b9 ldr        w10, [x9, #0x5f8]                            
0000dc4c 2bfd45b9 ldr        w11, [x9, #0x5fc]                            
0000dc50 2c0146b9 ldr        w12, [x9, #0x600]                            
0000dc54 290546b9 ldr        w9, [x9, #0x604]                             
0000dc58 ed0309aa mov        x13, x9                                      
0000dc5c e9030091 mov        x9, sp                                       
0000dc60 e95b01f9 str        x9, [sp, #0x2b0]                             
0000dc64 232100fd str        d3, [x9, #0x40]                              
0000dc68 221d00fd str        d2, [x9, #0x38]                              
0000dc6c 211900fd str        d1, [x9, #0x30]                              
0000dc70 201500fd str        d0, [x9, #0x28]                              
0000dc74 2d1100f9 str        x13, [x9, #0x20]                             
0000dc78 2c0d00f9 str        x12, [x9, #0x18]                             
0000dc7c 2b0900f9 str        x11, [x9, #0x10]                             
0000dc80 2a0500f9 str        x10, [x9, #8]                                 ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000dc84 280100f9 str        x8, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000dc88 e00000d0 adrp       x0, #0x2b000                                 
0000dc8c 00c40691 add        x0, x0, #0x1b1                                ; 'EDGE-CLAMP atom=0x%x rect=[%d,%d %dx%d] expected=%.1fx%.1f maxUV=%.3f,%.3f'
0000dc90 58e9ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000dc94 01000014 b          #0xdc98                                      
0000dc98 01000014 b          #0xdc9c                                      
0000dc9c 01000014 b          #0xdca0                                      
0000dca0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dca4 081941f9 ldr        x8, [x8, #0x230]                             
0000dca8 000540f9 ldr        x0, [x8, #8]                                 
0000dcac e10000d0 adrp       x1, #0x2b000                                 
0000dcb0 21680091 add        x1, x1, #0x1a                                 ; 'Clock'
0000dcb4 da680094 bl         #0x2801c                                      ; _strcmp
0000dcb8 c0090035 cbnz       w0, #0xddf0                                  
0000dcbc 01000014 b          #0xdcc0                                      
0000dcc0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dcc4 016141fd ldr        d1, [x8, #0x2c0]                             
0000dcc8 2040601e fmov       d0, d1                                       
0000dccc 01102c1e fmov       s1, #0.50000000                              
0000dcd0 0020211e fcmp       s0, s1                                       
0000dcd4 cd010054 b.le       #0xdd0c                                      
0000dcd8 01000014 b          #0xdcdc                                      
0000dcdc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dce0 016141fd ldr        d1, [x8, #0x2c0]                             
0000dce4 2040601e fmov       d0, d1                                       
0000dce8 00040c5e mov        s0, v0.s[1]                                  
0000dcec 01102c1e fmov       s1, #0.50000000                              
0000dcf0 0020211e fcmp       s0, s1                                       
0000dcf4 cd000054 b.le       #0xdd0c                                      
0000dcf8 01000014 b          #0xdcfc                                      
0000dcfc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dd00 006141fd ldr        d0, [x8, #0x2c0]                             
0000dd04 e05701fd str        d0, [sp, #0x2a8]                             
0000dd08 05000014 b          #0xdd1c                                      
0000dd0c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dd10 002141fd ldr        d0, [x8, #0x240]                             
0000dd14 e05701fd str        d0, [sp, #0x2a8]                             
0000dd18 01000014 b          #0xdd1c                                      
0000dd1c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dd20 e05741fd ldr        d0, [sp, #0x2a8]                             
0000dd24 000100fd str        d0, [x8]                                     
0000dd28 00e942bd ldr        s0, [x8, #0x2e8]                             
0000dd2c 0110211e fmov       s1, #3.00000000                              
0000dd30 0020211e fcmp       s0, s1                                       
0000dd34 2b020054 b.lt       #0xdd78                                      
0000dd38 01000014 b          #0xdd3c                                      
0000dd3c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dd40 010140fd ldr        d1, [x8]                                     
0000dd44 2040601e fmov       d0, d1                                       
0000dd48 e9332791 add        x9, sp, #0x9cc                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE10sClampLogs
0000dd4c 2091000d st1        {v0.s}[1], [x9]                              
0000dd50 0000261e fmov       w0, s0                                       
0000dd54 0000271e fmov       s0, w0                                       
0000dd58 009903bd str        s0, [x8, #0x398]                             
0000dd5c 009d43bd ldr        s0, [x8, #0x39c]                             
0000dd60 009103bd str        s0, [x8, #0x390]                             
0000dd64 009943bd ldr        s0, [x8, #0x398]                             
0000dd68 009503bd str        s0, [x8, #0x394]                             
0000dd6c 00c941fd ldr        d0, [x8, #0x390]                             
0000dd70 000100fd str        d0, [x8]                                     
0000dd74 01000014 b          #0xdd78                                      
0000dd78 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dd7c 088d40f9 ldr        x8, [x8, #0x118]                             
0000dd80 080200b4 cbz        x8, #0xddc0                                  
0000dd84 01000014 b          #0xdd88                                      
0000dd88 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dd8c 000140fd ldr        d0, [x8]                                     
0000dd90 0140601e fmov       d1, d0                                       
0000dd94 2040201e fmov       s0, s1                                       
0000dd98 033541fd ldr        d3, [x8, #0x268]                              ; __ZL14g_hookFunction|__ZL14g_hookFunction
0000dd9c 6240601e fmov       d2, d3                                       
0000dda0 4340201e fmov       s3, s2                                       
0000dda4 0018231e fdiv       s0, s0, s3                                   
0000dda8 21040c5e mov        s1, v1.s[1]                                  
0000ddac 42040c5e mov        s2, v2.s[1]                                  
0000ddb0 2118221e fdiv       s1, s1, s2                                   
0000ddb4 0078211e fminnm     s0, s0, s1                                   
0000ddb8 e0a702bd str        s0, [sp, #0x2a4]                             
0000ddbc 04000014 b          #0xddcc                                      
0000ddc0 00102e1e fmov       s0, #1.00000000                              
0000ddc4 e0a702bd str        s0, [sp, #0x2a4]                             
0000ddc8 01000014 b          #0xddcc                                      
0000ddcc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ddd0 e0a742bd ldr        s0, [sp, #0x2a4]                             
0000ddd4 e02f06bd str        s0, [sp, #0x62c]                             
0000ddd8 091941f9 ldr        x9, [x8, #0x230]                             
0000dddc 201d40bd ldr        s0, [x9, #0x1c]                              
0000dde0 007902bd str        s0, [x8, #0x278]                              ; __ZL20g_origGaussR13Legacy|__ZL20g_origGaussR13Legacy
0000dde4 e02f46bd ldr        s0, [sp, #0x62c]                             
0000dde8 000902bd str        s0, [x8, #0x208]                             
0000ddec 01000014 b          #0xddf0                                      
0000ddf0 680100b0 adrp       x8, #0x3a000                                 
0000ddf4 08215639 ldrb       w8, [x8, #0x588]                             
0000ddf8 880e0036 tbz        w8, #0, #0xdfc8                              
0000ddfc 01000014 b          #0xde00                                      
0000de00 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000de04 080541b9 ldr        w8, [x8, #0x104]                             
0000de08 080ef837 tbnz       w8, #0x1f, #0xdfc8                           
0000de0c 01000014 b          #0xde10                                      
0000de10 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000de14 080541b9 ldr        w8, [x8, #0x104]                             
0000de18 083d0071 subs       w8, w8, #0xf                                 
0000de1c 6c0d0054 b.gt       #0xdfc8                                      
0000de20 01000014 b          #0xde24                                      
0000de24 1a690094 bl         #0x2828c                                      ; _CFAbsoluteTimeGetCurrent
0000de28 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000de2c e01303fd str        d0, [sp, #0x620]                             
0000de30 e01343fd ldr        d0, [sp, #0x620]                             
0000de34 090581b9 ldrsw      x9, [x8, #0x104]                             
0000de38 68010090 adrp       x8, #0x39000                                 
0000de3c 08e11c91 add        x8, x8, #0x738                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000de40 017969fc ldr        d1, [x8, x9, lsl #3]                          ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000de44 0038611e fsub       d0, d0, d1                                   
0000de48 01106c1e fmov       d1, #0.50000000                              
0000de4c 0020611e fcmp       d0, d1                                       
0000de50 ad0b0054 b.le       #0xdfc4                                      
0000de54 01000014 b          #0xde58                                      
0000de58 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000de5c e01343fd ldr        d0, [sp, #0x620]                             
0000de60 0a0581b9 ldrsw      x10, [x8, #0x104]                             ; __ZZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbiE4logs|__ZZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbiE4logs
0000de64 69010090 adrp       x9, #0x39000                                 
0000de68 29e11c91 add        x9, x9, #0x738                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000de6c 20792afc str        d0, [x9, x10, lsl #3]                         ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000de70 090080d2 mov        x9, #0                                       
0000de74 09a902f9 str        x9, [x8, #0x550]                             
0000de78 09a502f9 str        x9, [x8, #0x548]                             
0000de7c 089d41f9 ldr        x8, [x8, #0x338]                             
0000de80 00810091 add        x0, x8, #0x20                                
0000de84 08028052 mov        w8, #0x10                                    
0000de88 e20308aa mov        x2, x8                                       
0000de8c a16303d1 sub        x1, x29, #0xd8                               
0000de90 2e120094 bl         #0x12748                                      ; __ZL10lgSafeReadPKvPvm||__ZL10lgSafeReadPKvPvm|
0000de94 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000de98 2bbd41f9 ldr        x11, [x9, #0x378]                            
0000de9c 2c8d40f9 ldr        x12, [x9, #0x118]                            
0000dea0 2d7540f9 ldr        x13, [x9, #0xe8]                              ; __ZZL28LGDefaultDisplayCornerRadiusvE4once|__ZZL28LGDefaultDisplayCornerRadiusvE4once
0000dea4 2e7940f9 ldr        x14, [x9, #0xf0]                              ; __ZZL26LGCoverSheetMapSharedStatebE13readOnlyState|__ZZL26LGCoverSheetMapSharedStatebE13readOnlyState
0000dea8 2f8541f9 ldr        x15, [x9, #0x308]                            
0000deac 308141f9 ldr        x16, [x9, #0x300]                            
0000deb0 202541fd ldr        d0, [x9, #0x248]                             
0000deb4 0140601e fmov       d1, d0                                       
0000deb8 2040201e fmov       s0, s1                                       
0000debc 00c0221e fcvt       d0, s0                                       
0000dec0 21040c5e mov        s1, v1.s[1]                                  
0000dec4 21c0221e fcvt       d1, s1                                       
0000dec8 225d41fd ldr        d2, [x9, #0x2b8]                             
0000decc 4340601e fmov       d3, d2                                       
0000ded0 6240201e fmov       s2, s3                                       
0000ded4 42c0221e fcvt       d2, s2                                       
0000ded8 63040c5e mov        s3, v3.s[1]                                  
0000dedc 63c0221e fcvt       d3, s3                                       
0000dee0 246141fd ldr        d4, [x9, #0x2c0]                             
0000dee4 8540601e fmov       d5, d4                                       
0000dee8 a440201e fmov       s4, s5                                       
0000deec 84c0221e fcvt       d4, s4                                       
0000def0 a5040c5e mov        s5, v5.s[1]                                  
0000def4 a5c0221e fcvt       d5, s5                                       
0000def8 263541fd ldr        d6, [x9, #0x268]                             
0000defc c740601e fmov       d7, d6                                       
0000df00 e640201e fmov       s6, s7                                       
0000df04 c6c0221e fcvt       d6, s6                                       
0000df08 e7040c5e mov        s7, v7.s[1]                                  
0000df0c e7c0221e fcvt       d7, s7                                       
0000df10 30e942bd ldr        s16, [x9, #0x2e8]                            
0000df14 10c2221e fcvt       d16, s16                                     
0000df18 310942bd ldr        s17, [x9, #0x208]                            
0000df1c 31c2221e fcvt       d17, s17                                     
0000df20 325d43bd ldr        s18, [x9, #0x35c]                            
0000df24 52c2221e fcvt       d18, s18                                     
0000df28 33c942bd ldr        s19, [x9, #0x2c8]                            
0000df2c 73c2221e fcvt       d19, s19                                     
0000df30 280541b9 ldr        w8, [x9, #0x104]                              ; __ZZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbiE4logs|__ZZL19lgClockFieldTexturePU19objcproto9MTLDevice11objc_objectPyS1_PDv2_fPjbiE4logs
0000df34 2a3d42b9 ldr        w10, [x9, #0x23c]                            
0000df38 314945b9 ldr        w17, [x9, #0x548]                            
0000df3c 204d45b9 ldr        w0, [x9, #0x54c]                             
0000df40 215145b9 ldr        w1, [x9, #0x550]                             
0000df44 295545b9 ldr        w9, [x9, #0x554]                             
0000df48 e20309aa mov        x2, x9                                       
0000df4c e9030091 mov        x9, sp                                       
0000df50 e94f01f9 str        x9, [sp, #0x298]                             
0000df54 335d00fd str        d19, [x9, #0xb8]                              ; __ZL23g_loggedRenderAtomsLock|__ZL23g_loggedRenderAtomsLock
0000df58 325900fd str        d18, [x9, #0xb0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE8lastFlag|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE8lastFlag
0000df5c 315500fd str        d17, [x9, #0xa8]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale
0000df60 305100fd str        d16, [x9, #0xa0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000df64 274d00fd str        d7, [x9, #0x98]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth
0000df68 264900fd str        d6, [x9, #0x90]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight
0000df6c 254500fd str        d5, [x9, #0x88]                               ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth
0000df70 244100fd str        d4, [x9, #0x80]                               ; __ZL30g_coverSheetExplicitBezelWidth|__ZL30g_coverSheetExplicitBezelWidth
0000df74 233d00fd str        d3, [x9, #0x78]                              
0000df78 223900fd str        d2, [x9, #0x70]                              
0000df7c 223500f9 str        x2, [x9, #0x68]                              
0000df80 213100f9 str        x1, [x9, #0x60]                              
0000df84 202d00f9 str        x0, [x9, #0x58]                              
0000df88 312900f9 str        x17, [x9, #0x50]                             
0000df8c 212500fd str        d1, [x9, #0x48]                              
0000df90 202100fd str        d0, [x9, #0x40]                              
0000df94 301d00f9 str        x16, [x9, #0x38]                             
0000df98 2f1900f9 str        x15, [x9, #0x30]                             
0000df9c 2e1500f9 str        x14, [x9, #0x28]                             
0000dfa0 2d1100f9 str        x13, [x9, #0x20]                             
0000dfa4 2c0d00f9 str        x12, [x9, #0x18]                             
0000dfa8 2b0900f9 str        x11, [x9, #0x10]                             
0000dfac 2a0500f9 str        x10, [x9, #8]                                
0000dfb0 280100f9 str        x8, [x9]                                      ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE18lastPosterGeometry
0000dfb4 e00000d0 adrp       x0, #0x2b000                                 
0000dfb8 00f00791 add        x0, x0, #0x1fc                                ; 'CLOCK-POSTER slot=%d atom=%#x layer=%p field=%p producer=%llu generation=%llu src=%llux%llu dst=%.0fx%.0f capture=[%d,%d %dx%d] shape=[%.3f,%.3f %.3fx%.3f] points=%.3fx%.3f orientation=%.0f ppp=%.4f scale=%.4f mask=%.1f'
0000dfbc 8de8ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000dfc0 01000014 b          #0xdfc4                                      
0000dfc4 01000014 b          #0xdfc8                                      
0000dfc8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dfcc 081941f9 ldr        x8, [x8, #0x230]                             
0000dfd0 000540f9 ldr        x0, [x8, #8]                                 
0000dfd4 e10000b0 adrp       x1, #0x2a000                                 
0000dfd8 21543b91 add        x1, x1, #0xed5                                ; 'CoverSheet'
0000dfdc 10680094 bl         #0x2801c                                      ; _strcmp
0000dfe0 60010035 cbnz       w0, #0xe00c                                  
0000dfe4 01000014 b          #0xdfe8                                      
0000dfe8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000dfec 007142bd ldr        s0, [x8, #0x270]                             
0000dff0 0820201e fcmp       s0, #0.0                                     
0000dff4 c8000054 b.hi       #0xe00c                                      
0000dff8 01000014 b          #0xdffc                                      
0000dffc e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000e000 08008052 mov        w8, #0                                       
0000e004 28ed02b9 str        w8, [x9, #0x2ec]                             
0000e008 01000014 b          #0xe00c                                      
0000e00c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e010 002141fd ldr        d0, [x8, #0x240]                             
0000e014 0140601e fmov       d1, d0                                       
0000e018 2040201e fmov       s0, s1                                       
0000e01c 21040c5e mov        s1, v1.s[1]                                  
0000e020 0078211e fminnm     s0, s0, s1                                   
0000e024 e01f06bd str        s0, [sp, #0x61c]                             
0000e028 016141fd ldr        d1, [x8, #0x2c0]                             
0000e02c 2040601e fmov       d0, d1                                       
0000e030 01102c1e fmov       s1, #0.50000000                              
0000e034 0020211e fcmp       s0, s1                                       
0000e038 4d020054 b.le       #0xe080                                      
0000e03c 01000014 b          #0xe040                                      
0000e040 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e044 016141fd ldr        d1, [x8, #0x2c0]                             
0000e048 2040601e fmov       d0, d1                                       
0000e04c 00040c5e mov        s0, v0.s[1]                                  
0000e050 01102c1e fmov       s1, #0.50000000                              
0000e054 0020211e fcmp       s0, s1                                       
0000e058 4d010054 b.le       #0xe080                                      
0000e05c 01000014 b          #0xe060                                      
0000e060 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e064 006141fd ldr        d0, [x8, #0x2c0]                             
0000e068 0140601e fmov       d1, d0                                       
0000e06c 2040201e fmov       s0, s1                                       
0000e070 21040c5e mov        s1, v1.s[1]                                  
0000e074 0078211e fminnm     s0, s0, s1                                   
0000e078 e09702bd str        s0, [sp, #0x294]                             
0000e07c 07000014 b          #0xe098                                      
0000e080 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e084 e01f46bd ldr        s0, [sp, #0x61c]                             
0000e088 01b142bd ldr        s1, [x8, #0x2b0]                             
0000e08c 0008211e fmul       s0, s0, s1                                   
0000e090 e09702bd str        s0, [sp, #0x294]                             
0000e094 01000014 b          #0xe098                                      
0000e098 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e09c e09742bd ldr        s0, [sp, #0x294]                             
0000e0a0 e01b06bd str        s0, [sp, #0x618]                             
0000e0a4 00c942bd ldr        s0, [x8, #0x2c8]                             
0000e0a8 0820201e fcmp       s0, #0.0                                     
0000e0ac 0b010054 b.lt       #0xe0cc                                      
0000e0b0 01000014 b          #0xe0b4                                      
0000e0b4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e0b8 001d42bd ldr        s0, [x8, #0x21c]                             
0000e0bc e11b46bd ldr        s1, [sp, #0x618]                             
0000e0c0 0008211e fmul       s0, s0, s1                                   
0000e0c4 007102bd str        s0, [x8, #0x270]                             
0000e0c8 01000014 b          #0xe0cc                                      
0000e0cc e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e0d0 081941f9 ldr        x8, [x8, #0x230]                             
0000e0d4 000540f9 ldr        x0, [x8, #8]                                 
0000e0d8 e1000090 adrp       x1, #0x2a000                                 
0000e0dc 21543b91 add        x1, x1, #0xed5                                ; 'CoverSheet'
0000e0e0 cf670094 bl         #0x2801c                                      ; _strcmp
0000e0e4 20010035 cbnz       w0, #0xe108                                  
0000e0e8 01000014 b          #0xe0ec                                      
0000e0ec 480100f0 adrp       x8, #0x39000                                 
0000e0f0 08e15e39 ldrb       w8, [x8, #0x7b8]                             
0000e0f4 a8000037 tbnz       w8, #0, #0xe108                              
0000e0f8 01000014 b          #0xe0fc                                      
0000e0fc 87120094 bl         #0x12b18                                      ; __ZL26LGDefaultDisplayBezelWidthv||__ZL26LGDefaultDisplayBezelWidthv|
0000e100 e04701fd str        d0, [sp, #0x288]                             
0000e104 07000014 b          #0xe120                                      
0000e108 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e10c 081941f9 ldr        x8, [x8, #0x230]                             
0000e110 001940bd ldr        s0, [x8, #0x18]                              
0000e114 00c0221e fcvt       d0, s0                                       
0000e118 e04701fd str        d0, [sp, #0x288]                             
0000e11c 01000014 b          #0xe120                                      
0000e120 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e124 e04741fd ldr        d0, [sp, #0x288]                             
0000e128 0040621e fcvt       s0, d0                                       
0000e12c e01706bd str        s0, [sp, #0x614]                             
0000e130 e01746bd ldr        s0, [sp, #0x614]                             
0000e134 010942bd ldr        s1, [x8, #0x208]                             
0000e138 0008211e fmul       s0, s0, s1                                   
0000e13c e11b46bd ldr        s1, [sp, #0x618]                             
0000e140 02102c1e fmov       s2, #0.50000000                              
0000e144 2108221e fmul       s1, s1, s2                                   
0000e148 0078211e fminnm     s0, s0, s1                                   
0000e14c 007502bd str        s0, [x8, #0x274]                             
0000e150 68010090 adrp       x8, #0x3a000                                 
0000e154 08215639 ldrb       w8, [x8, #0x588]                             
0000e158 681c0036 tbz        w8, #0, #0xe4e4                              
0000e15c 01000014 b          #0xe160                                      
0000e160 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e164 081941f9 ldr        x8, [x8, #0x230]                             
0000e168 000540f9 ldr        x0, [x8, #8]                                 
0000e16c e10000b0 adrp       x1, #0x2b000                                 
0000e170 21600b91 add        x1, x1, #0x2d8                                ; 'Alerts'
0000e174 aa670094 bl         #0x2801c                                      ; _strcmp
0000e178 601b0035 cbnz       w0, #0xe4e4                                  
0000e17c 01000014 b          #0xe180                                      
0000e180 400100f0 adrp       x0, #0x39000                                 
0000e184 00f01e91 add        x0, x0, #0x7bc                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLock
0000e188 35680094 bl         #0x2825c                                      ; _os_unfair_lock_lock
0000e18c 480100f0 adrp       x8, #0x39000                                 
0000e190 08ed47b9 ldr        w8, [x8, #0x7ec]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs
0000e194 29008052 mov        w9, #1                                       
0000e198 e98702b9 str        w9, [sp, #0x284]                             
0000e19c e8090034 cbz        w8, #0xe2d8                                  
0000e1a0 01000014 b          #0xe1a4                                      
0000e1a4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e1a8 490100f0 adrp       x9, #0x39000                                 
0000e1ac 29e143f9 ldr        x9, [x9, #0x7c0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth
0000e1b0 0a8541f9 ldr        x10, [x8, #0x308]                            
0000e1b4 28008052 mov        w8, #1                                       
0000e1b8 29010aeb subs       x9, x9, x10                                  
0000e1bc e88702b9 str        w8, [sp, #0x284]                             
0000e1c0 c1080054 b.ne       #0xe2d8                                      
0000e1c4 01000014 b          #0xe1c8                                      
0000e1c8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e1cc 490100f0 adrp       x9, #0x39000                                 
0000e1d0 29e543f9 ldr        x9, [x9, #0x7c8]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight
0000e1d4 0a8141f9 ldr        x10, [x8, #0x300]                            
0000e1d8 28008052 mov        w8, #1                                       
0000e1dc 29010aeb subs       x9, x9, x10                                  
0000e1e0 e88702b9 str        w8, [sp, #0x284]                             
0000e1e4 a1070054 b.ne       #0xe2d8                                      
0000e1e8 01000014 b          #0xe1ec                                      
0000e1ec e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e1f0 490100f0 adrp       x9, #0x39000                                 
0000e1f4 29e943f9 ldr        x9, [x9, #0x7d0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth
0000e1f8 e93f01f9 str        x9, [sp, #0x278]                             
0000e1fc 009d40f9 ldr        x0, [x8, #0x138]                             
0000e200 c06b0094 bl         #0x29100                                      ; _objc_msgSend$width
0000e204 e93f41f9 ldr        x9, [sp, #0x278]                             
0000e208 28008052 mov        w8, #1                                       
0000e20c 290100eb subs       x9, x9, x0                                   
0000e210 e88702b9 str        w8, [sp, #0x284]                             
0000e214 21060054 b.ne       #0xe2d8                                      
0000e218 01000014 b          #0xe21c                                      
0000e21c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e220 490100f0 adrp       x9, #0x39000                                 
0000e224 29ed43f9 ldr        x9, [x9, #0x7d8]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000e228 e93b01f9 str        x9, [sp, #0x270]                             
0000e22c 009d40f9 ldr        x0, [x8, #0x138]                             
0000e230 846a0094 bl         #0x28c40                                      ; _objc_msgSend$height
0000e234 e93b41f9 ldr        x9, [sp, #0x270]                             
0000e238 28008052 mov        w8, #1                                       
0000e23c 290100eb subs       x9, x9, x0                                   
0000e240 e88702b9 str        w8, [sp, #0x284]                             
0000e244 a1040054 b.ne       #0xe2d8                                      
0000e248 01000014 b          #0xe24c                                      
0000e24c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e250 490100f0 adrp       x9, #0x39000                                 
0000e254 20e147bd ldr        s0, [x9, #0x7e0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale
0000e258 015d43bd ldr        s1, [x8, #0x35c]                             
0000e25c 00d4a17e fabd       s0, s0, s1                                   
0000e260 28008052 mov        w8, #1                                       
0000e264 e94d8252 mov        w9, #0x126f                                  
0000e268 6950a772 movk       w9, #0x3a83, lsl #16                         
0000e26c 2101271e fmov       s1, w9                                       
0000e270 0020211e fcmp       s0, s1                                       
0000e274 e88702b9 str        w8, [sp, #0x284]                             
0000e278 0c030054 b.gt       #0xe2d8                                      
0000e27c 01000014 b          #0xe280                                      
0000e280 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e284 490100f0 adrp       x9, #0x39000                                 
0000e288 20e547bd ldr        s0, [x9, #0x7e4]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE11lastOpacity|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE11lastOpacity
0000e28c 016d43bd ldr        s1, [x8, #0x36c]                             
0000e290 00d4a17e fabd       s0, s0, s1                                   
0000e294 28008052 mov        w8, #1                                       
0000e298 49e19a52 mov        w9, #0xd70a                                  
0000e29c 6984a772 movk       w9, #0x3c23, lsl #16                         
0000e2a0 2101271e fmov       s1, w9                                       
0000e2a4 0020211e fcmp       s0, s1                                       
0000e2a8 e88702b9 str        w8, [sp, #0x284]                             
0000e2ac 6c010054 b.gt       #0xe2d8                                      
0000e2b0 01000014 b          #0xe2b4                                      
0000e2b4 480100f0 adrp       x8, #0x39000                                 
0000e2b8 08a15f39 ldrb       w8, [x8, #0x7e8]                             
0000e2bc 08010012 and        w8, w8, #1                                   
0000e2c0 e92f6639 ldrb       w9, [sp, #0x98b]                             
0000e2c4 29010012 and        w9, w9, #1                                   
0000e2c8 0801096b subs       w8, w8, w9                                   
0000e2cc e8079f1a cset       w8, ne                                       
0000e2d0 e88702b9 str        w8, [sp, #0x284]                             
0000e2d4 01000014 b          #0xe2d8                                      
0000e2d8 e88742b9 ldr        w8, [sp, #0x284]                             
0000e2dc 08010012 and        w8, w8, #1                                   
0000e2e0 e84f1839 strb       w8, [sp, #0x613]                             
0000e2e4 e84f5839 ldrb       w8, [sp, #0x613]                             
0000e2e8 09008052 mov        w9, #0                                       
0000e2ec e96f02b9 str        w9, [sp, #0x26c]                             
0000e2f0 08010036 tbz        w8, #0, #0xe310                              
0000e2f4 01000014 b          #0xe2f8                                      
0000e2f8 480100f0 adrp       x8, #0x39000                                 
0000e2fc 08ed47b9 ldr        w8, [x8, #0x7ec]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs
0000e300 08610071 subs       w8, w8, #0x18                                
0000e304 e8279f1a cset       w8, lo                                       
0000e308 e86f02b9 str        w8, [sp, #0x26c]                             
0000e30c 01000014 b          #0xe310                                      
0000e310 e86f42b9 ldr        w8, [sp, #0x26c]                             
0000e314 08010012 and        w8, w8, #1                                   
0000e318 e84b1839 strb       w8, [sp, #0x612]                             
0000e31c e84b5839 ldrb       w8, [sp, #0x612]                             
0000e320 48040036 tbz        w8, #0, #0xe3a8                              
0000e324 01000014 b          #0xe328                                      
0000e328 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e32c 4a0100f0 adrp       x10, #0x39000                                
0000e330 49ed47b9 ldr        w9, [x10, #0x7ec]                             ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs
0000e334 29050011 add        w9, w9, #1                                   
0000e338 49ed07b9 str        w9, [x10, #0x7ec]                             ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLogs
0000e33c 098541f9 ldr        x9, [x8, #0x308]                             
0000e340 4a0100f0 adrp       x10, #0x39000                                
0000e344 49e103f9 str        x9, [x10, #0x7c0]                             ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE15lastSourceWidth
0000e348 098141f9 ldr        x9, [x8, #0x300]                             
0000e34c 4a0100f0 adrp       x10, #0x39000                                
0000e350 49e503f9 str        x9, [x10, #0x7c8]                             ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE16lastSourceHeight
0000e354 009d40f9 ldr        x0, [x8, #0x138]                             
0000e358 6a6b0094 bl         #0x29100                                      ; _objc_msgSend$width
0000e35c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e360 490100f0 adrp       x9, #0x39000                                 
0000e364 20e903f9 str        x0, [x9, #0x7d0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE20lastDestinationWidth
0000e368 009d40f9 ldr        x0, [x8, #0x138]                             
0000e36c 356a0094 bl         #0x28c40                                      ; _objc_msgSend$height
0000e370 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e374 490100f0 adrp       x9, #0x39000                                 
0000e378 20ed03f9 str        x0, [x9, #0x7d8]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE21lastDestinationHeight
0000e37c 005d43bd ldr        s0, [x8, #0x35c]                             
0000e380 490100f0 adrp       x9, #0x39000                                 
0000e384 20e107bd str        s0, [x9, #0x7e0]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE9lastScale
0000e388 006d43bd ldr        s0, [x8, #0x36c]                             
0000e38c 480100f0 adrp       x8, #0x39000                                 
0000e390 00e507bd str        s0, [x8, #0x7e4]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE11lastOpacity|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE11lastOpacity
0000e394 e82f6639 ldrb       w8, [sp, #0x98b]                             
0000e398 08010012 and        w8, w8, #1                                   
0000e39c 490100f0 adrp       x9, #0x39000                                 
0000e3a0 28a11f39 strb       w8, [x9, #0x7e8]                              ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE8lastFlag|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE8lastFlag
0000e3a4 01000014 b          #0xe3a8                                      
0000e3a8 400100f0 adrp       x0, #0x39000                                 
0000e3ac 00f01e91 add        x0, x0, #0x7bc                                ; __ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLock|__ZZL4CR13PvS_S_S_fS_fbS_S_S_PfE17alertGeometryLock
0000e3b0 b3670094 bl         #0x2827c                                      ; _os_unfair_lock_unlock
0000e3b4 e84b5839 ldrb       w8, [sp, #0x612]                             
0000e3b8 48090036 tbz        w8, #0, #0xe4e0                              
0000e3bc 01000014 b          #0xe3c0                                      
0000e3c0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e3c4 09bd41f9 ldr        x9, [x8, #0x378]                             
0000e3c8 e92701f9 str        x9, [sp, #0x248]                             
0000e3cc 098541f9 ldr        x9, [x8, #0x308]                             
0000e3d0 e92301f9 str        x9, [sp, #0x240]                             
0000e3d4 098141f9 ldr        x9, [x8, #0x300]                             
0000e3d8 e91f01f9 str        x9, [sp, #0x238]                             
0000e3dc 009d40f9 ldr        x0, [x8, #0x138]                             
0000e3e0 083d42b9 ldr        w8, [x8, #0x23c]                             
0000e3e4 e82b01f9 str        x8, [sp, #0x250]                             
0000e3e8 466b0094 bl         #0x29100                                      ; _objc_msgSend$width
0000e3ec e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e3f0 e02f01f9 str        x0, [sp, #0x258]                             
0000e3f4 009d40f9 ldr        x0, [x8, #0x138]                             
0000e3f8 126a0094 bl         #0x28c40                                      ; _objc_msgSend$height
0000e3fc e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000e400 ed1f41f9 ldr        x13, [sp, #0x238]                            
0000e404 ec2341f9 ldr        x12, [sp, #0x240]                            
0000e408 eb2741f9 ldr        x11, [sp, #0x248]                            
0000e40c ea2b41f9 ldr        x10, [sp, #0x250]                            
0000e410 ee0300aa mov        x14, x0                                      
0000e414 205d43bd ldr        s0, [x9, #0x35c]                             
0000e418 00c0221e fcvt       d0, s0                                       
0000e41c 216d43bd ldr        s1, [x9, #0x36c]                             
0000e420 21c0221e fcvt       d1, s1                                       
0000e424 288d41f9 ldr        x8, [x9, #0x318]                             
0000e428 299d40f9 ldr        x9, [x9, #0x138]                             
0000e42c 080109eb subs       x8, x8, x9                                   
0000e430 e8179f1a cset       w8, eq                                       
0000e434 400100d0 adrp       x0, #0x38000                                 
0000e438 00000a91 add        x0, x0, #0x280                                ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000e43c 090040f9 ldr        x9, [x0]                                      ; __ZL16g_inLegacyRender|__ZL16g_inLegacyRender
0000e440 3f093fd6 blraaz     x9                                           
0000e444 e90300aa mov        x9, x0                                       
0000e448 400100d0 adrp       x0, #0x38000                                 
0000e44c 00600a91 add        x0, x0, #0x298                                ; __ZL20g_legacyRenderOffset|__ZL20g_legacyRenderOffset
0000e450 0f0040f9 ldr        x15, [x0]                                     ; __ZL20g_legacyRenderOffset|__ZL20g_legacyRenderOffset
0000e454 ff093fd6 blraaz     x15                                          
0000e458 ef0300aa mov        x15, x0                                      
0000e45c e02f41f9 ldr        x0, [sp, #0x258]                             
0000e460 e20140fd ldr        d2, [x15]                                    
0000e464 4340601e fmov       d3, d2                                       
0000e468 6240201e fmov       s2, s3                                       
0000e46c 42c0221e fcvt       d2, s2                                       
0000e470 63040c5e mov        s3, v3.s[1]                                  
0000e474 63c0221e fcvt       d3, s3                                       
0000e478 29014039 ldrb       w9, [x9]                                     
0000e47c f00309aa mov        x16, x9                                      
0000e480 e92f6639 ldrb       w9, [sp, #0x98b]                             
0000e484 ef0309aa mov        x15, x9                                      
0000e488 e9030091 mov        x9, sp                                       
0000e48c e93301f9 str        x9, [sp, #0x260]                             
0000e490 233100fd str        d3, [x9, #0x60]                              
0000e494 222d00fd str        d2, [x9, #0x58]                              
0000e498 10024092 and        x16, x16, #1                                 
0000e49c 302900f9 str        x16, [x9, #0x50]                             
0000e4a0 ef014092 and        x15, x15, #1                                 
0000e4a4 2f2100f9 str        x15, [x9, #0x40]                             
0000e4a8 211d00fd str        d1, [x9, #0x38]                              
0000e4ac 201900fd str        d0, [x9, #0x30]                              
0000e4b0 2e1500f9 str        x14, [x9, #0x28]                             
0000e4b4 201100f9 str        x0, [x9, #0x20]                              
0000e4b8 2d0d00f9 str        x13, [x9, #0x18]                             
0000e4bc 2c0900f9 str        x12, [x9, #0x10]                             
0000e4c0 2b0500f9 str        x11, [x9, #8]                                
0000e4c4 2a0100f9 str        x10, [x9]                                    
0000e4c8 e803082a mov        w8, w8                                       
0000e4cc 282500f9 str        x8, [x9, #0x48]                              
0000e4d0 e00000b0 adrp       x0, #0x2b000                                 
0000e4d4 007c0b91 add        x0, x0, #0x2df                                ; 'alert-capture atom=0x%x layer=%p src=%llux%llu dst=%lux%lu scale=%.5f opacity=%.3f flag=%d sameTexture=%d legacy=%d offset=%.3f,%.3f'
0000e4d8 46e7ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000e4dc 01000014 b          #0xe4e0                                      
0000e4e0 01000014 b          #0xe4e4                                      
0000e4e4 400100f0 adrp       x0, #0x39000                                 
0000e4e8 00c01f91 add        x0, x0, #0x7f0                                ; __ZL23g_loggedRenderAtomsLock|__ZL23g_loggedRenderAtomsLock
0000e4ec e01b01f9 str        x0, [sp, #0x230]                             
0000e4f0 5b670094 bl         #0x2825c                                      ; _os_unfair_lock_lock
0000e4f4 400100d0 adrp       x0, #0x38000                                 
0000e4f8 00001191 add        x0, x0, #0x440                                ; __ZL19g_loggedRenderAtoms|__ZL19g_loggedRenderAtoms
0000e4fc e1b32191 add        x1, sp, #0x86c                                ; 'Alerts'
0000e500 9c110094 bl         #0x12b70                                      ; __ZNSt3__113unordered_setIjNS_4hashIjEENS_8equal_toIjEENS_9allocatorIjEEE6insertB6v15006ERKj||__ZNSt3__113unordered_setIjNS_4hashIjEENS_8equal_toIjEENS_9allocatorIjEEE6insertB6v15006ERKj|
0000e504 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e508 e90300aa mov        x9, x0                                       
0000e50c e01b41f9 ldr        x0, [sp, #0x230]                             
0000e510 01a102f9 str        x1, [x8, #0x540]                             
0000e514 099d02f9 str        x9, [x8, #0x538]                             
0000e518 089d42f9 ldr        x8, [x8, #0x538]                             
0000e51c a9035238 ldurb      w9, [x29, #-0xe0]                            
0000e520 e9231839 strb       w9, [sp, #0x608]                             
0000e524 e80303f9 str        x8, [sp, #0x600]                             
0000e528 e8235839 ldrb       w8, [sp, #0x608]                             
0000e52c 08010012 and        w8, w8, #1                                   
0000e530 e8471839 strb       w8, [sp, #0x611]                             
0000e534 52670094 bl         #0x2827c                                      ; _os_unfair_lock_unlock
0000e538 e8475839 ldrb       w8, [sp, #0x611]                             
0000e53c c8050036 tbz        w8, #0, #0xe5f4                              
0000e540 01000014 b          #0xe544                                      
0000e544 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e548 091941f9 ldr        x9, [x8, #0x230]                             
0000e54c 290540f9 ldr        x9, [x9, #8]                                 
0000e550 e90b01f9 str        x9, [sp, #0x210]                             
0000e554 098541f9 ldr        x9, [x8, #0x308]                             
0000e558 e90701f9 str        x9, [sp, #0x208]                             
0000e55c 098141f9 ldr        x9, [x8, #0x300]                             
0000e560 e90301f9 str        x9, [sp, #0x200]                             
0000e564 009d40f9 ldr        x0, [x8, #0x138]                             
0000e568 083d42b9 ldr        w8, [x8, #0x23c]                             
0000e56c e80f01f9 str        x8, [sp, #0x218]                             
0000e570 e46a0094 bl         #0x29100                                      ; _objc_msgSend$width
0000e574 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e578 e01301f9 str        x0, [sp, #0x220]                             
0000e57c 009d40f9 ldr        x0, [x8, #0x138]                             
0000e580 b0690094 bl         #0x28c40                                      ; _objc_msgSend$height
0000e584 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000e588 ec0341f9 ldr        x12, [sp, #0x200]                            
0000e58c eb0741f9 ldr        x11, [sp, #0x208]                            
0000e590 ea0b41f9 ldr        x10, [sp, #0x210]                            
0000e594 e80f41f9 ldr        x8, [sp, #0x218]                             
0000e598 ed0300aa mov        x13, x0                                      
0000e59c e01341f9 ldr        x0, [sp, #0x220]                             
0000e5a0 207142bd ldr        s0, [x9, #0x270]                              ; __ZL19g_origGaussIdentity|__ZL19g_origGaussIdentity
0000e5a4 00c0221e fcvt       d0, s0                                       
0000e5a8 217542bd ldr        s1, [x9, #0x274]                             
0000e5ac 21c0221e fcvt       d1, s1                                       
0000e5b0 22c942bd ldr        s2, [x9, #0x2c8]                             
0000e5b4 42c0221e fcvt       d2, s2                                       
0000e5b8 e9030091 mov        x9, sp                                       
0000e5bc e91701f9 str        x9, [sp, #0x228]                             
0000e5c0 222100fd str        d2, [x9, #0x40]                              
0000e5c4 211d00fd str        d1, [x9, #0x38]                              
0000e5c8 201900fd str        d0, [x9, #0x30]                              
0000e5cc 2d1500f9 str        x13, [x9, #0x28]                             
0000e5d0 201100f9 str        x0, [x9, #0x20]                              
0000e5d4 2c0d00f9 str        x12, [x9, #0x18]                             
0000e5d8 2b0900f9 str        x11, [x9, #0x10]                             
0000e5dc 2a0500f9 str        x10, [x9, #8]                                
0000e5e0 280100f9 str        x8, [x9]                                     
0000e5e4 e00000b0 adrp       x0, #0x2b000                                 
0000e5e8 00900d91 add        x0, x0, #0x364                                ; 'render destination ready atom=0x%x host=%s src=%llux%llu dst=%lux%lu radius=%.2f bezel=%.2f aux=%.1f'
0000e5ec 01e7ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000e5f0 01000014 b          #0xe5f4                                      
0000e5f4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e5f8 091941f9 ldr        x9, [x8, #0x230]                             
0000e5fc 290540f9 ldr        x9, [x9, #8]                                 
0000e600 e9ff00f9 str        x9, [sp, #0x1f8]                             
0000e604 093d42b9 ldr        w9, [x8, #0x23c]                             
0000e608 e9cf01b9 str        w9, [sp, #0x1cc]                             
0000e60c 09bd41f9 ldr        x9, [x8, #0x378]                             
0000e610 e9eb00f9 str        x9, [sp, #0x1d0]                             
0000e614 099d41f9 ldr        x9, [x8, #0x338]                             
0000e618 e9ef00f9 str        x9, [sp, #0x1d8]                             
0000e61c 098541f9 ldr        x9, [x8, #0x308]                             
0000e620 e9f300f9 str        x9, [sp, #0x1e0]                             
0000e624 098141f9 ldr        x9, [x8, #0x300]                             
0000e628 e9f700f9 str        x9, [sp, #0x1e8]                             
0000e62c 009d40f9 ldr        x0, [x8, #0x138]                             
0000e630 b46a0094 bl         #0x29100                                      ; _objc_msgSend$width
0000e634 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e638 e0fb00f9 str        x0, [sp, #0x1f0]                             
0000e63c 009d40f9 ldr        x0, [x8, #0x138]                             
0000e640 80690094 bl         #0x28c40                                      ; _objc_msgSend$height
0000e644 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e648 e1cf41b9 ldr        w1, [sp, #0x1cc]                             
0000e64c e2eb40f9 ldr        x2, [sp, #0x1d0]                             
0000e650 e3ef40f9 ldr        x3, [sp, #0x1d8]                             
0000e654 e4f340f9 ldr        x4, [sp, #0x1e0]                             
0000e658 e5f740f9 ldr        x5, [sp, #0x1e8]                             
0000e65c e6fb40f9 ldr        x6, [sp, #0x1f0]                             
0000e660 e70300aa mov        x7, x0                                       
0000e664 e0ff40f9 ldr        x0, [sp, #0x1f8]                             
0000e668 005d43bd ldr        s0, [x8, #0x35c]                             
0000e66c 68110094 bl         #0x12c0c                                      ; __ZL17lgLogEdgeGeometryPKcjPvPhyyyyf||__ZL17lgLogEdgeGeometryPKcjPvPhyyyyf|
0000e670 480100d0 adrp       x8, #0x38000                                 
0000e674 08b943f9 ldr        x8, [x8, #0x770]                              ; __ZL14g_stopEncoders|__ZL14g_stopEncoders
0000e678 080100b5 cbnz       x8, #0xe698                                  
0000e67c 01000014 b          #0xe680                                      
0000e680 e00000b0 adrp       x0, #0x2b000                                 
0000e684 00240f91 add        x0, x0, #0x3c9                                ; 'CR13: null stopEncoders'
0000e688 dae6ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000e68c 28008052 mov        w8, #1                                       
0000e690 e8ff05b9 str        w8, [sp, #0x5fc]                             
0000e694 30010014 b          #0xeb54                                      
0000e698 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000e69c 480100d0 adrp       x8, #0x38000                                 
0000e6a0 08b943f9 ldr        x8, [x8, #0x770]                              ; __ZL14g_stopEncoders|__ZL14g_stopEncoders
0000e6a4 20b941f9 ldr        x0, [x9, #0x370]                             
0000e6a8 1f093fd6 blraaz     x8                                           
0000e6ac e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e6b0 09a141f9 ldr        x9, [x8, #0x340]                              ; __ZZL19lgHostParamsForAtomjPbE6routed_0$tlv$init|__ZZL19lgHostParamsForAtomjPbE6routed_0$tlv$init
0000e6b4 4a0100d0 adrp       x10, #0x38000                                
0000e6b8 4a3141f9 ldr        x10, [x10, #0x260]                            ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
0000e6bc 29696af8 ldr        x9, [x9, x10]                                
0000e6c0 099901f9 str        x9, [x8, #0x330]                             
0000e6c4 089941f9 ldr        x8, [x8, #0x330]                             
0000e6c8 c80000b4 cbz        x8, #0xe6e0                                  
0000e6cc 01000014 b          #0xe6d0                                      
0000e6d0 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e6d4 089941f9 ldr        x8, [x8, #0x330]                             
0000e6d8 e8e300f9 str        x8, [sp, #0x1c0]                             
0000e6dc 04000014 b          #0xe6ec                                      
0000e6e0 080080d2 mov        x8, #0                                       
0000e6e4 e8e300f9 str        x8, [sp, #0x1c0]                             
0000e6e8 01000014 b          #0xe6ec                                      
0000e6ec e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e6f0 e9e340f9 ldr        x9, [sp, #0x1c0]                             
0000e6f4 099101f9 str        x9, [x8, #0x320]                             
0000e6f8 089141f9 ldr        x8, [x8, #0x320]                             
0000e6fc 080100b5 cbnz       x8, #0xe71c                                  
0000e700 01000014 b          #0xe704                                      
0000e704 e00000b0 adrp       x0, #0x2b000                                 
0000e708 00840f91 add        x0, x0, #0x3e1                                ; 'CR13: command buffer unavailable after stopEncoders'
0000e70c b9e6ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000e710 28008052 mov        w8, #1                                       
0000e714 e8ff05b9 str        w8, [sp, #0x5fc]                             
0000e718 0f010014 b          #0xeb54                                      
0000e71c e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e720 008d41f9 ldr        x0, [x8, #0x318]                             
0000e724 de660094 bl         #0x2829c                                      ; _objc_retain
0000e728 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e72c e0fb02f9 str        x0, [sp, #0x5f0]                             
0000e730 098941f9 ldr        x9, [x8, #0x310]                             
0000e734 e9df00f9 str        x9, [sp, #0x1b8]                             
0000e738 009d40f9 ldr        x0, [x8, #0x138]                             
0000e73c b1690094 bl         #0x28e00                                      ; _objc_msgSend$pixelFormat
0000e740 e10300aa mov        x1, x0                                       
0000e744 e0df40f9 ldr        x0, [sp, #0x1b8]                             
0000e748 82120094 bl         #0x13150                                      ; __ZL23renderPipelineForFormatPU19objcproto9MTLDevice11objc_object14MTLPixelFormat||__ZL23renderPipelineForFormatPU19objcproto9MTLDevice11objc_object14MTLPixelFormat|
0000e74c fd031daa mov        x29, x29                                     
0000e750 df650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e754 e0f702f9 str        x0, [sp, #0x5e8]                             
0000e758 e8f742f9 ldr        x8, [sp, #0x5e8]                             
0000e75c 080100b5 cbnz       x8, #0xe77c                                  
0000e760 01000014 b          #0xe764                                      
0000e764 e00000b0 adrp       x0, #0x2b000                                 
0000e768 00541091 add        x0, x0, #0x415                                ; 'CR13: no render pipeline, kept stock pass'
0000e76c a1e6ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000e770 28008052 mov        w8, #1                                       
0000e774 e8ff05b9 str        w8, [sp, #0x5fc]                             
0000e778 ef000014 b          #0xeb34                                      
0000e77c 480100d0 adrp       x8, #0x38000                                 
0000e780 000541f9 ldr        x0, [x8, #0x208]                             
0000e784 b7690094 bl         #0x28e60                                      ; _objc_msgSend$renderPassDescriptor
0000e788 fd031daa mov        x29, x29                                     
0000e78c d0650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e790 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e794 e0f302f9 str        x0, [sp, #0x5e0]                             
0000e798 089d40f9 ldr        x8, [x8, #0x138]                             
0000e79c e8bf00f9 str        x8, [sp, #0x178]                             
0000e7a0 e0f342f9 ldr        x0, [sp, #0x5e0]                             
0000e7a4 c7680094 bl         #0x28ac0                                      ; _objc_msgSend$colorAttachments
0000e7a8 fd031daa mov        x29, x29                                     
0000e7ac c8650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e7b0 e0c700f9 str        x0, [sp, #0x188]                             
0000e7b4 020080d2 mov        x2, #0                                       
0000e7b8 e2d300f9 str        x2, [sp, #0x1a0]                             
0000e7bc 79690094 bl         #0x28da0                                      ; _objc_msgSend$objectAtIndexedSubscript:
0000e7c0 fd031daa mov        x29, x29                                     
0000e7c4 c2650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e7c8 e2bf40f9 ldr        x2, [sp, #0x178]                             
0000e7cc e0c300f9 str        x0, [sp, #0x180]                             
0000e7d0 fc690094 bl         #0x28fc0                                      ; _objc_msgSend$setTexture:
0000e7d4 e0c340f9 ldr        x0, [sp, #0x180]                             
0000e7d8 91660094 bl         #0x2821c                                      ; _objc_release
0000e7dc e0c740f9 ldr        x0, [sp, #0x188]                             
0000e7e0 8f660094 bl         #0x2821c                                      ; _objc_release
0000e7e4 e0f342f9 ldr        x0, [sp, #0x5e0]                             
0000e7e8 b6680094 bl         #0x28ac0                                      ; _objc_msgSend$colorAttachments
0000e7ec fd031daa mov        x29, x29                                     
0000e7f0 b7650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e7f4 e2d340f9 ldr        x2, [sp, #0x1a0]                             
0000e7f8 e0cf00f9 str        x0, [sp, #0x198]                             
0000e7fc 69690094 bl         #0x28da0                                      ; _objc_msgSend$objectAtIndexedSubscript:
0000e800 fd031daa mov        x29, x29                                     
0000e804 b2650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e808 e2d340f9 ldr        x2, [sp, #0x1a0]                             
0000e80c e0cb00f9 str        x0, [sp, #0x190]                             
0000e810 c4690094 bl         #0x28f20                                      ; _objc_msgSend$setLoadAction:
0000e814 e0cb40f9 ldr        x0, [sp, #0x190]                             
0000e818 81660094 bl         #0x2821c                                      ; _objc_release
0000e81c e0cf40f9 ldr        x0, [sp, #0x198]                             
0000e820 7f660094 bl         #0x2821c                                      ; _objc_release
0000e824 e0f342f9 ldr        x0, [sp, #0x5e0]                             
0000e828 a6680094 bl         #0x28ac0                                      ; _objc_msgSend$colorAttachments
0000e82c fd031daa mov        x29, x29                                     
0000e830 a7650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e834 e2d340f9 ldr        x2, [sp, #0x1a0]                             
0000e838 e0db00f9 str        x0, [sp, #0x1b0]                             
0000e83c 59690094 bl         #0x28da0                                      ; _objc_msgSend$objectAtIndexedSubscript:
0000e840 fd031daa mov        x29, x29                                     
0000e844 a2650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e848 e0d700f9 str        x0, [sp, #0x1a8]                             
0000e84c 28008052 mov        w8, #1                                       
0000e850 e20308aa mov        x2, x8                                       
0000e854 d3690094 bl         #0x28fa0                                      ; _objc_msgSend$setStoreAction:
0000e858 e0d740f9 ldr        x0, [sp, #0x1a8]                             
0000e85c 70660094 bl         #0x2821c                                      ; _objc_release
0000e860 e0db40f9 ldr        x0, [sp, #0x1b0]                             
0000e864 6e660094 bl         #0x2821c                                      ; _objc_release
0000e868 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e86c 009141f9 ldr        x0, [x8, #0x320]                             
0000e870 e2f342f9 ldr        x2, [sp, #0x5e0]                             
0000e874 73690094 bl         #0x28e40                                      ; _objc_msgSend$renderCommandEncoderWithDescriptor:
0000e878 fd031daa mov        x29, x29                                     
0000e87c 94650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e880 e0ef02f9 str        x0, [sp, #0x5d8]                             
0000e884 e8ef42f9 ldr        x8, [sp, #0x5d8]                             
0000e888 080100b5 cbnz       x8, #0xe8a8                                  
0000e88c 01000014 b          #0xe890                                      
0000e890 e00000b0 adrp       x0, #0x2b000                                 
0000e894 00fc1091 add        x0, x0, #0x43f                                ; 'CR13: nil render encoder'
0000e898 56e6ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000e89c 28008052 mov        w8, #1                                       
0000e8a0 e8ff05b9 str        w8, [sp, #0x5fc]                             
0000e8a4 9c000014 b          #0xeb14                                      
0000e8a8 68010090 adrp       x8, #0x3a000                                 
0000e8ac 08215639 ldrb       w8, [x8, #0x588]                             
0000e8b0 a8020036 tbz        w8, #0, #0xe904                              
0000e8b4 01000014 b          #0xe8b8                                      
0000e8b8 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e8bc 490100d0 adrp       x9, #0x38000                                 
0000e8c0 200141f9 ldr        x0, [x9, #0x200]                             
0000e8c4 081941f9 ldr        x8, [x8, #0x230]                             
0000e8c8 080540f9 ldr        x8, [x8, #8]                                 
0000e8cc e9030091 mov        x9, sp                                       
0000e8d0 280100f9 str        x8, [x9]                                     
0000e8d4 220100f0 adrp       x2, #0x35000                                 
0000e8d8 42403591 add        x2, x2, #0xd50                               
0000e8dc e9690094 bl         #0x29080                                      ; _objc_msgSend$stringWithFormat:
0000e8e0 fd031daa mov        x29, x29                                     
0000e8e4 7a650094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000e8e8 e20300aa mov        x2, x0                                       
0000e8ec e2bb00f9 str        x2, [sp, #0x170]                             
0000e8f0 e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e8f4 83690094 bl         #0x28f00                                      ; _objc_msgSend$setLabel:
0000e8f8 e0bb40f9 ldr        x0, [sp, #0x170]                             
0000e8fc 48660094 bl         #0x2821c                                      ; _objc_release
0000e900 01000014 b          #0xe904                                      
0000e904 e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e908 e2f742f9 ldr        x2, [sp, #0x5e8]                             
0000e90c 95690094 bl         #0x28f60                                      ; _objc_msgSend$setRenderPipelineState:
0000e910 e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e914 e2fb42f9 ldr        x2, [sp, #0x5f0]                             
0000e918 030080d2 mov        x3, #0                                       
0000e91c 71690094 bl         #0x28ee0                                      ; _objc_msgSend$setFragmentTexture:atIndex:
0000e920 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e924 e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e928 e0b700f9 str        x0, [sp, #0x168]                             
0000e92c 088d40f9 ldr        x8, [x8, #0x118]                             
0000e930 c80000b4 cbz        x8, #0xe948                                  
0000e934 01000014 b          #0xe938                                      
0000e938 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e93c 008d40f9 ldr        x0, [x8, #0x118]                             
0000e940 e0b300f9 str        x0, [sp, #0x160]                             
0000e944 04000014 b          #0xe954                                      
0000e948 e0fb42f9 ldr        x0, [sp, #0x5f0]                             
0000e94c e0b300f9 str        x0, [sp, #0x160]                             
0000e950 01000014 b          #0xe954                                      
0000e954 e0b740f9 ldr        x0, [sp, #0x168]                             
0000e958 e2b340f9 ldr        x2, [sp, #0x160]                             
0000e95c 28008052 mov        w8, #1                                       
0000e960 e30308aa mov        x3, x8                                       
0000e964 5f690094 bl         #0x28ee0                                      ; _objc_msgSend$setFragmentTexture:atIndex:
0000e968 e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e96c 08188052 mov        w8, #0xc0                                    
0000e970 e30308aa mov        x3, x8                                       
0000e974 e2c32191 add        x2, sp, #0x870                               
0000e978 040080d2 mov        x4, #0                                       
0000e97c e4af00f9 str        x4, [sp, #0x158]                             
0000e980 48690094 bl         #0x28ea0                                      ; _objc_msgSend$setFragmentBytes:length:atIndex:
0000e984 e3af40f9 ldr        x3, [sp, #0x158]                             
0000e988 e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e98c 68008052 mov        w8, #3                                       
0000e990 e40308aa mov        x4, x8                                       
0000e994 e20304aa mov        x2, x4                                       
0000e998 8a680094 bl         #0x28bc0                                      ; _objc_msgSend$drawPrimitives:vertexStart:vertexCount:
0000e99c e0ef42f9 ldr        x0, [sp, #0x5d8]                             
0000e9a0 90680094 bl         #0x28be0                                      ; _objc_msgSend$endEncoding
0000e9a4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e9a8 088d40f9 ldr        x8, [x8, #0x118]                             
0000e9ac e80a00b4 cbz        x8, #0xeb08                                  
0000e9b0 01000014 b          #0xe9b4                                      
0000e9b4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e9b8 080541b9 ldr        w8, [x8, #0x104]                             
0000e9bc 0801f837 tbnz       w8, #0x1f, #0xe9dc                           
0000e9c0 01000014 b          #0xe9c4                                      
0000e9c4 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000e9c8 010541b9 ldr        w1, [x8, #0x104]                             
0000e9cc 00008052 mov        w0, #0                                       
0000e9d0 f9630094 bl         #0x279b4                                      ; |_LGClockPosterFieldMap||_LGClockPosterFieldMap
0000e9d4 e0ab00f9 str        x0, [sp, #0x150]                             
0000e9d8 0f000014 b          #0xea14                                      
0000e9dc e81f5d39 ldrb       w8, [sp, #0x747]                             
0000e9e0 c8000036 tbz        w8, #0, #0xe9f8                              
0000e9e4 01000014 b          #0xe9e8                                      
0000e9e8 00008052 mov        w0, #0                                       
0000e9ec 53630094 bl         #0x27738                                      ; |_LGClockEditorFieldMap||_LGClockEditorFieldMap
0000e9f0 e0a700f9 str        x0, [sp, #0x148]                             
0000e9f4 05000014 b          #0xea08                                      
0000e9f8 00008052 mov        w0, #0                                       
0000e9fc ab120094 bl         #0x134a8                                      ; __ZL15LGClockFieldMapb||__ZL15LGClockFieldMapb|
0000ea00 e0a700f9 str        x0, [sp, #0x148]                             
0000ea04 01000014 b          #0xea08                                      
0000ea08 e8a740f9 ldr        x8, [sp, #0x148]                             
0000ea0c e8ab00f9 str        x8, [sp, #0x150]                             
0000ea10 01000014 b          #0xea14                                      
0000ea14 e8ab40f9 ldr        x8, [sp, #0x150]                             
0000ea18 e8eb02f9 str        x8, [sp, #0x5d0]                             
0000ea1c e8eb42f9 ldr        x8, [sp, #0x5d0]                             
0000ea20 280700b4 cbz        x8, #0xeb04                                  
0000ea24 01000014 b          #0xea28                                      
0000ea28 e9d342f9 ldr        x9, [sp, #0x5a0]                             
0000ea2c e8eb42f9 ldr        x8, [sp, #0x5d0]                             
0000ea30 08410091 add        x8, x8, #0x10                                
0000ea34 08c1bff8 ldapr      x8, [x8]                                     
0000ea38 e8e702f9 str        x8, [sp, #0x5c8]                             
0000ea3c e8e742f9 ldr        x8, [sp, #0x5c8]                             
0000ea40 297540f9 ldr        x9, [x9, #0xe8]                              
0000ea44 080109eb subs       x8, x8, x9                                   
0000ea48 e1050054 b.ne       #0xeb04                                      
0000ea4c 01000014 b          #0xea50                                      
0000ea50 e8eb42f9 ldr        x8, [sp, #0x5d0]                             
0000ea54 081140f9 ldr        x8, [x8, #0x20]                              
0000ea58 e8df02f9 str        x8, [sp, #0x5b8]                             
0000ea5c e8df42f9 ldr        x8, [sp, #0x5b8]                             
0000ea60 e8e302f9 str        x8, [sp, #0x5c0]                             
0000ea64 01000014 b          #0xea68                                      
0000ea68 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ea6c e9e342f9 ldr        x9, [sp, #0x5c0]                             
0000ea70 0a7940f9 ldr        x10, [x8, #0xf0]                             
0000ea74 08008052 mov        w8, #0                                       
0000ea78 29010aeb subs       x9, x9, x10                                  
0000ea7c e84701b9 str        w8, [sp, #0x144]                             
0000ea80 82030054 b.hs       #0xeaf0                                      
0000ea84 01000014 b          #0xea88                                      
0000ea88 e8d342f9 ldr        x8, [sp, #0x5a0]                             
0000ea8c e9eb42f9 ldr        x9, [sp, #0x5d0]                             
0000ea90 2b810091 add        x11, x9, #0x20                               
0000ea94 087940f9 ldr        x8, [x8, #0xf0]                              
0000ea98 e8db02f9 str        x8, [sp, #0x5b0]                             
0000ea9c e8e342f9 ldr        x8, [sp, #0x5c0]                             
0000eaa0 eadb42f9 ldr        x10, [sp, #0x5b0]                            
0000eaa4 e90308aa mov        x9, x8                                       
0000eaa8 6afda9c8 casl       x9, x10, [x11]                               
0000eaac 280108eb subs       x8, x9, x8                                   
0000eab0 e8179f1a cset       w8, eq                                       
0000eab4 e99f00f9 str        x9, [sp, #0x138]                             
0000eab8 e90308aa mov        x9, x8                                       
0000eabc e94301b9 str        w9, [sp, #0x140]                             
0000eac0 a8000037 tbnz       w8, #0, #0xead4                              
0000eac4 01000014 b          #0xeac8                                      
0000eac8 e89f40f9 ldr        x8, [sp, #0x138]                             
0000eacc e8e302f9 str        x8, [sp, #0x5c0]                             
0000ead0 01000014 b          #0xead4                                      
0000ead4 e84341b9 ldr        w8, [sp, #0x140]                             
0000ead8 08010012 and        w8, w8, #1                                   
0000eadc e8bf1639 strb       w8, [sp, #0x5af]                             
0000eae0 e8bf5639 ldrb       w8, [sp, #0x5af]                             
0000eae4 08010052 eor        w8, w8, #1                                   
0000eae8 e84701b9 str        w8, [sp, #0x144]                             
0000eaec 01000014 b          #0xeaf0                                      
0000eaf0 e84741b9 ldr        w8, [sp, #0x144]                             
0000eaf4 68000036 tbz        w8, #0, #0xeb00                              
0000eaf8 01000014 b          #0xeafc                                      
0000eafc dbffff17 b          #0xea68                                      
0000eb00 01000014 b          #0xeb04                                      
0000eb04 01000014 b          #0xeb08                                      
0000eb08 08008052 mov        w8, #0                                       
0000eb0c e8ff05b9 str        w8, [sp, #0x5fc]                             
0000eb10 01000014 b          #0xeb14                                      
0000eb14 e0631791 add        x0, sp, #0x5d8                                ; 'CR13: nil render encoder'
0000eb18 010080d2 mov        x1, #0                                       
0000eb1c e19b00f9 str        x1, [sp, #0x130]                             
0000eb20 f3640094 bl         #0x27eec                                      ; _objc_storeStrong
0000eb24 e19b40f9 ldr        x1, [sp, #0x130]                             
0000eb28 e0831791 add        x0, sp, #0x5e0                                ; 'CR13: nil render encoder'
0000eb2c f0640094 bl         #0x27eec                                      ; _objc_storeStrong
0000eb30 01000014 b          #0xeb34                                      
0000eb34 e0a31791 add        x0, sp, #0x5e8                                ; 'CR13: nil render encoder'
0000eb38 010080d2 mov        x1, #0                                       
0000eb3c e19700f9 str        x1, [sp, #0x128]                             
0000eb40 eb640094 bl         #0x27eec                                      ; _objc_storeStrong
0000eb44 e19740f9 ldr        x1, [sp, #0x128]                             
0000eb48 e0c31791 add        x0, sp, #0x5f0                                ; 'CR13: nil render encoder'
0000eb4c e8640094 bl         #0x27eec                                      ; _objc_storeStrong
0000eb50 01000014 b          #0xeb54                                      
0000eb54 e0231d91 add        x0, sp, #0x748                                ; 'CR13: nil render encoder'
0000eb58 010080d2 mov        x1, #0                                       
0000eb5c e4640094 bl         #0x27eec                                      ; _objc_storeStrong
0000eb60 a9835ef8 ldur       x9, [x29, #-0x18]                            
0000eb64 280100d0 adrp       x8, #0x34000                                 
0000eb68 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000eb6c 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
0000eb70 080109eb subs       x8, x8, x9                                   
0000eb74 41000054 b.ne       #0xeb7c                                      
0000eb78 02000014 b          #0xeb80                                      
0000eb7c d0640094 bl         #0x27ebc                                      ; ___stack_chk_fail
0000eb80 ff033191 add        sp, sp, #0xc40                               
0000eb84 fd7b41a9 ldp        x29, x30, [sp, #0x10]                        
0000eb88 fc6fc2a8 ldp        x28, x27, [sp], #0x20                        
0000eb8c ff0f5fd6 retab                                                   
0000eb90 200020d4 brk        #1                                           
0000eb94 7f2303d5 pacibsp                                                  ; __ZL15gaussRenderHookPvS_S_S_fS_fbS_S_Pf||__ZL15gaussRenderHookPvS_S_S_fS_fbS_S_Pf|
0000eb98 ff0302d1 sub        sp, sp, #0x80                                
0000eb9c fd7b07a9 stp        x29, x30, [sp, #0x70]                        
0000eba0 fdc30191 add        x29, sp, #0x70                               
0000eba4 a80b40f9 ldr        x8, [x29, #0x10]                             
0000eba8 a0831ff8 stur       x0, [x29, #-8]                               
0000ebac a1031ff8 stur       x1, [x29, #-0x10]                            
0000ebb0 a2831ef8 stur       x2, [x29, #-0x18]                            
0000ebb4 a3031ef8 stur       x3, [x29, #-0x20]                            
0000ebb8 a0c31dbc stur       s0, [x29, #-0x24]                            
0000ebbc a4031df8 stur       x4, [x29, #-0x30]                            
0000ebc0 a1c31cbc stur       s1, [x29, #-0x34]                            
0000ebc4 a5b31c38 sturb      w5, [x29, #-0x35]                            
0000ebc8 e61b00f9 str        x6, [sp, #0x30]                              
0000ebcc e71700f9 str        x7, [sp, #0x28]                              
0000ebd0 e81300f9 str        x8, [sp, #0x20]                              
0000ebd4 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000ebd8 080100b4 cbz        x8, #0xebf8                                  
0000ebdc 01000014 b          #0xebe0                                      
0000ebe0 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000ebe4 490100d0 adrp       x9, #0x38000                                 
0000ebe8 292141f9 ldr        x9, [x9, #0x240]                              ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset ; ->||||||||||||||||||||||||||||||
0000ebec 086969b8 ldr        w8, [x8, x9]                                  ; _objc_msgSend
0000ebf0 e81b00b9 str        w8, [sp, #0x18]                              
0000ebf4 04000014 b          #0xec04                                      
0000ebf8 08008052 mov        w8, #0                                       
0000ebfc e81b00b9 str        w8, [sp, #0x18]                              
0000ec00 01000014 b          #0xec04                                      
0000ec04 e81b40b9 ldr        w8, [sp, #0x18]                              
0000ec08 e81f00b9 str        w8, [sp, #0x1c]                              
0000ec0c e01f40b9 ldr        w0, [sp, #0x1c]                              
0000ec10 f4060094 bl         #0x107e0                                      ; __ZL14lgIsCustomAtomj||__ZL14lgIsCustomAtomj|
0000ec14 00050036 tbz        w0, #0, #0xecb4                              
0000ec18 01000014 b          #0xec1c                                      
0000ec1c 6a010090 adrp       x10, #0x3a000                                
0000ec20 4a610591 add        x10, x10, #0x158                              ; __ZZL15gaussRenderHookPvS_S_S_fS_fbS_S_PfE20loggedCustomDispatch|__ZZL15gaussRenderHookPvS_S_S_fS_fbS_S_PfE20loggedCustomDispatch
0000ec24 29008052 mov        w9, #1                                       
0000ec28 08008052 mov        w8, #0                                       
0000ec2c 49fde888 casal      w8, w9, [x10]                                
0000ec30 08010071 subs       w8, w8, #0                                   
0000ec34 e8179f1a cset       w8, eq                                       
0000ec38 c8010036 tbz        w8, #0, #0xec70                              
0000ec3c 01000014 b          #0xec40                                      
0000ec40 e81f40b9 ldr        w8, [sp, #0x1c]                              
0000ec44 eb0308aa mov        x11, x8                                      
0000ec48 aa835ff8 ldur       x10, [x29, #-8]                              
0000ec4c a8035ff8 ldur       x8, [x29, #-0x10]                            
0000ec50 e9030091 mov        x9, sp                                       
0000ec54 2b0100f9 str        x11, [x9]                                    
0000ec58 2a0500f9 str        x10, [x9, #8]                                
0000ec5c 280900f9 str        x8, [x9, #0x10]                              
0000ec60 000100d0 adrp       x0, #0x30000                                 
0000ec64 00ac3e91 add        x0, x0, #0xfab                                ; 'hook: first custom render atom=0x%x self=%p filter=%p'
0000ec68 62e5ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ec6c 01000014 b          #0xec70                                      
0000ec70 a0835ff8 ldur       x0, [x29, #-8]                               
0000ec74 a1035ff8 ldur       x1, [x29, #-0x10]                            
0000ec78 a2835ef8 ldur       x2, [x29, #-0x18]                            
0000ec7c a3035ef8 ldur       x3, [x29, #-0x20]                            
0000ec80 a0c35dbc ldur       s0, [x29, #-0x24]                            
0000ec84 a4035df8 ldur       x4, [x29, #-0x30]                            
0000ec88 a1c35cbc ldur       s1, [x29, #-0x34]                            
0000ec8c a8b35c38 ldurb      w8, [x29, #-0x35]                            
0000ec90 e61b40f9 ldr        x6, [sp, #0x30]                              
0000ec94 e71740f9 ldr        x7, [sp, #0x28]                              
0000ec98 e91340f9 ldr        x9, [sp, #0x20]                              
0000ec9c ea030091 mov        x10, sp                                      
0000eca0 5f0100f9 str        xzr, [x10]                                    ; __ZZL15gaussRenderHookPvS_S_S_fS_fbS_S_PfE20loggedCustomDispatch|__ZZL15gaussRenderHookPvS_S_S_fS_fbS_S_PfE20loggedCustomDispatch
0000eca4 490500f9 str        x9, [x10, #8]                                 ; __ZL16g_hostParamsInit|__ZL16g_hostParamsInit
0000eca8 05010012 and        w5, w8, #1                                   
0000ecac 05f0ff97 bl         #0xacc0                                       ; __ZL4CR13PvS_S_S_fS_fbS_S_S_Pf||__ZL4CR13PvS_S_S_fS_fbS_S_S_Pf|
0000ecb0 2c000014 b          #0xed60                                      
0000ecb4 29008052 mov        w9, #1                                       
0000ecb8 08008052 mov        w8, #0                                       
0000ecbc 6a010090 adrp       x10, #0x3a000                                
0000ecc0 4a710591 add        x10, x10, #0x15c                              ; __ZZL15gaussRenderHookPvS_S_S_fS_fbS_S_PfE19loggedStockDispatch|__ZZL15gaussRenderHookPvS_S_S_fS_fbS_S_PfE19loggedStockDispatch
0000ecc4 49fde888 casal      w8, w9, [x10]                                
0000ecc8 08010071 subs       w8, w8, #0                                   
0000eccc e8179f1a cset       w8, eq                                       
0000ecd0 c8010036 tbz        w8, #0, #0xed08                              
0000ecd4 01000014 b          #0xecd8                                      
0000ecd8 e81f40b9 ldr        w8, [sp, #0x1c]                              
0000ecdc eb0308aa mov        x11, x8                                      
0000ece0 aa835ff8 ldur       x10, [x29, #-8]                              
0000ece4 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000ece8 e9030091 mov        x9, sp                                       
0000ecec 2b0100f9 str        x11, [x9]                                    
0000ecf0 2a0500f9 str        x10, [x9, #8]                                
0000ecf4 280900f9 str        x8, [x9, #0x10]                              
0000ecf8 000100d0 adrp       x0, #0x30000                                 
0000ecfc 00843f91 add        x0, x0, #0xfe1                                ; 'hook: first stock Gaussian forwarded atom=0x%x self=%p filter=%p'
0000ed00 3ce5ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ed04 01000014 b          #0xed08                                      
0000ed08 480100d0 adrp       x8, #0x38000                                 
0000ed0c 08dd43f9 ldr        x8, [x8, #0x7b8]                              ; __ZL14g_origGaussR13|__ZL14g_origGaussR13
0000ed10 880200b4 cbz        x8, #0xed60                                  
0000ed14 01000014 b          #0xed18                                      
0000ed18 480100d0 adrp       x8, #0x38000                                 
0000ed1c 08dd43f9 ldr        x8, [x8, #0x7b8]                              ; __ZL14g_origGaussR13|__ZL14g_origGaussR13
0000ed20 a0835ff8 ldur       x0, [x29, #-8]                               
0000ed24 a1035ff8 ldur       x1, [x29, #-0x10]                            
0000ed28 a2835ef8 ldur       x2, [x29, #-0x18]                            
0000ed2c a3035ef8 ldur       x3, [x29, #-0x20]                            
0000ed30 a0c35dbc ldur       s0, [x29, #-0x24]                            
0000ed34 a4035df8 ldur       x4, [x29, #-0x30]                            
0000ed38 a1c35cbc ldur       s1, [x29, #-0x34]                            
0000ed3c a9b35c38 ldurb      w9, [x29, #-0x35]                            
0000ed40 e61b40f9 ldr        x6, [sp, #0x30]                              
0000ed44 e71740f9 ldr        x7, [sp, #0x28]                              
0000ed48 ea1340f9 ldr        x10, [sp, #0x20]                             
0000ed4c eb030091 mov        x11, sp                                      
0000ed50 6a0100f9 str        x10, [x11]                                   
0000ed54 25010012 and        w5, w9, #1                                   
0000ed58 1f093fd6 blraaz     x8                                           
0000ed5c 01000014 b          #0xed60                                      
0000ed60 fd7b47a9 ldp        x29, x30, [sp, #0x70]                        
0000ed64 ff030291 add        sp, sp, #0x80                                
0000ed68 ff0f5fd6 retab                                                   
0000ed6c 7f2303d5 pacibsp                                                  ; __ZL20lgStartPrefsObserverv||__ZL20lgStartPrefsObserverv|
0000ed70 ff8300d1 sub        sp, sp, #0x20                                
0000ed74 fd7b01a9 stp        x29, x30, [sp, #0x10]                        
0000ed78 fd430091 add        x29, sp, #0x10                               
0000ed7c 080080d2 mov        x8, #0                                       
0000ed80 e80700f9 str        x8, [sp, #8]                                 
0000ed84 700000f0 adrp       x16, #0x1d000                                
0000ed88 10d20991 add        x16, x16, #0x274                              ; __ZL21lgPrefsReloadCallbackP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary||__ZL21lgPrefsReloadCallbackP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary|
0000ed8c f023c1da paciza     x16                                          
0000ed90 f00300f9 str        x16, [sp]                                    
0000ed94 2b350094 bl         #0x1c240                                      ; __ZL17lgReloadHostPrefsv||__ZL17lgReloadHostPrefsv|
0000ed98 69640094 bl         #0x27f3c                                      ; _CFNotificationCenterGetDarwinNotifyCenter
0000ed9c e20340f9 ldr        x2, [sp]                                     
0000eda0 e40740f9 ldr        x4, [sp, #8]                                 
0000eda4 e10304aa mov        x1, x4                                       
0000eda8 230100f0 adrp       x3, #0x35000                                 
0000edac 63402f91 add        x3, x3, #0xbd0                               
0000edb0 450080d2 mov        x5, #2                                       
0000edb4 66640094 bl         #0x27f4c                                      ; _CFNotificationCenterAddObserver
0000edb8 fd7b41a9 ldp        x29, x30, [sp, #0x10]                        
0000edbc ff830091 add        sp, sp, #0x20                                
0000edc0 ff0f5fd6 retab                                                   
