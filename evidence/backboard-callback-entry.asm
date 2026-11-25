0000abd0 7f2303d5 pacibsp                                                  ; __ZL12identityStubPvS_||__ZL12identityStubPvS_|
0000abd4 ffc300d1 sub        sp, sp, #0x30                                
0000abd8 fd7b02a9 stp        x29, x30, [sp, #0x20]                        
0000abdc fd830091 add        x29, sp, #0x20                               
0000abe0 a0831ff8 stur       x0, [x29, #-8]                               
0000abe4 e10b00f9 str        x1, [sp, #0x10]                              
0000abe8 680100f0 adrp       x8, #0x39000                                 
0000abec 08215b39 ldrb       w8, [x8, #0x6c8]                             
0000abf0 c8010037 tbnz       w8, #0, #0xac28                              
0000abf4 01000014 b          #0xabf8                                      
0000abf8 28008052 mov        w8, #1                                       
0000abfc 690100f0 adrp       x9, #0x39000                                 
0000ac00 28211b39 strb       w8, [x9, #0x6c8]                              ; __ZZL12identityStubPvS_E14identityLogged|__ZZL12identityStubPvS_E14identityLogged
0000ac04 aa835ff8 ldur       x10, [x29, #-8]                              
0000ac08 e80b40f9 ldr        x8, [sp, #0x10]                              
0000ac0c e9030091 mov        x9, sp                                       
0000ac10 2a0100f9 str        x10, [x9]                                    
0000ac14 280500f9 str        x8, [x9, #8]                                 
0000ac18 00010090 adrp       x0, #0x2a000                                 
0000ac1c 00c83391 add        x0, x0, #0xcf2                                ; 'identityStub: first call, CA is dispatching into our vtable (self=%p filter=%p)'
0000ac20 74f5ff97 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000ac24 01000014 b          #0xac28                                      
0000ac28 00008052 mov        w0, #0                                       
0000ac2c fd7b42a9 ldp        x29, x30, [sp, #0x20]                        
0000ac30 ffc30091 add        sp, sp, #0x30                                
0000ac34 ff0f5fd6 retab                                                   
0000ac38 7f2303d5 pacibsp                                                  ; __ZL14customEdgeInfoPvS_S_S_S_PDv2_fPb||__ZL14customEdgeInfoPvS_S_S_S_PDv2_fPb|
0000ac3c ff4301d1 sub        sp, sp, #0x50                                
0000ac40 fd7b04a9 stp        x29, x30, [sp, #0x40]                        
0000ac44 fd030191 add        x29, sp, #0x40                               
0000ac48 a0831ff8 stur       x0, [x29, #-8]                               
0000ac4c a1031ff8 stur       x1, [x29, #-0x10]                            
0000ac50 a2831ef8 stur       x2, [x29, #-0x18]                            
0000ac54 e31300f9 str        x3, [sp, #0x20]                              
0000ac58 e40f00f9 str        x4, [sp, #0x18]                              
0000ac5c e50b00f9 str        x5, [sp, #0x10]                              
0000ac60 e60700f9 str        x6, [sp, #8]                                 
0000ac64 680100d0 adrp       x8, #0x38000                                 
0000ac68 08e543f9 ldr        x8, [x8, #0x7c8]                              ; __ZL19g_origGaussEdgeInfo|__ZL19g_origGaussEdgeInfo
0000ac6c c80100b4 cbz        x8, #0xaca4                                  
0000ac70 01000014 b          #0xac74                                      
0000ac74 680100d0 adrp       x8, #0x38000                                 
0000ac78 08e543f9 ldr        x8, [x8, #0x7c8]                              ; __ZL19g_origGaussEdgeInfo|__ZL19g_origGaussEdgeInfo
0000ac7c a0835ff8 ldur       x0, [x29, #-8]                               
0000ac80 a1035ff8 ldur       x1, [x29, #-0x10]                            
0000ac84 a2835ef8 ldur       x2, [x29, #-0x18]                            
0000ac88 e31340f9 ldr        x3, [sp, #0x20]                              
0000ac8c e40f40f9 ldr        x4, [sp, #0x18]                              
0000ac90 e50b40f9 ldr        x5, [sp, #0x10]                              
0000ac94 e60740f9 ldr        x6, [sp, #8]                                 
0000ac98 1f093fd6 blraaz     x8                                           
0000ac9c e00300f9 str        x0, [sp]                                     
0000aca0 04000014 b          #0xacb0                                      
0000aca4 080080d2 mov        x8, #0                                       
0000aca8 e80300f9 str        x8, [sp]                                     
0000acac 01000014 b          #0xacb0                                      
0000acb0 e00340f9 ldr        x0, [sp]                                     
0000acb4 fd7b44a9 ldp        x29, x30, [sp, #0x40]                        
0000acb8 ff430191 add        sp, sp, #0x50                                
0000acbc ff0f5fd6 retab                                                   
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
