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
0000ebec 086969b8 ldr        w8, [x8, x9]                                 
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
