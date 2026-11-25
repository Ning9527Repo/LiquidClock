00005150 7f2303d5 pacibsp                                                  ; |_LGResolve_AddFilter||_LGResolve_AddFilter
00005154 fd7bbfa9 stp        x29, x30, [sp, #-0x10]!                      
00005158 fd030091 mov        x29, sp                                      
0000515c 05000094 bl         #0x5170                                       ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
00005160 880100f0 adrp       x8, #0x38000                                 
00005164 00fd41f9 ldr        x0, [x8, #0x3f8]                              ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005168 fd7bc1a8 ldp        x29, x30, [sp], #0x10                        
0000516c ff0f5fd6 retab                                                   
00005170 7f2303d5 pacibsp                                                  ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
00005174 ffc306d1 sub        sp, sp, #0x1b0                               
00005178 fc6f19a9 stp        x28, x27, [sp, #0x190]                       
0000517c fd7b1aa9 stp        x29, x30, [sp, #0x1a0]                       
00005180 fd830691 add        x29, sp, #0x1a0                              
00005184 680100f0 adrp       x8, #0x34000                                 
00005188 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000518c 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
00005190 a8831ef8 stur       x8, [x29, #-0x18]                            
00005194 880100f0 adrp       x8, #0x38000                                 
00005198 08c14f39 ldrb       w8, [x8, #0x3f0]                             
0000519c 68000036 tbz        w8, #0, #0x51a8                              
000051a0 01000014 b          #0x51a4                                      
000051a4 29010014 b          #0x5648                                      
000051a8 28008052 mov        w8, #1                                       
000051ac 890100f0 adrp       x9, #0x38000                                 
000051b0 28c10f39 strb       w8, [x9, #0x3f0]                              ; __ZL21g_gaussianSiteScanned|__ZL21g_gaussianSiteScanned
000051b4 880100f0 adrp       x8, #0x38000                                 
000051b8 08014f39 ldrb       w8, [x8, #0x3c0]                             
000051bc 68000037 tbnz       w8, #0, #0x51c8                              
000051c0 01000014 b          #0x51c4                                      
000051c4 21010014 b          #0x5648                                      
000051c8 880100f0 adrp       x8, #0x38000                                 
000051cc 09e941f9 ldr        x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
000051d0 a90314f8 stur       x9, [x29, #-0xc0]                            
000051d4 08e941f9 ldr        x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
000051d8 890100f0 adrp       x9, #0x38000                                 
000051dc 29ed41f9 ldr        x9, [x9, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
000051e0 0801098b add        x8, x8, x9                                   
000051e4 088100f1 subs       x8, x8, #0x20                                
000051e8 a88313f8 stur       x8, [x29, #-0xc8]                            
000051ec bf4313b8 stur       wzr, [x29, #-0xcc]                           
000051f0 20010090 adrp       x0, #0x29000                                 
000051f4 00582191 add        x0, x0, #0x856                                ; 'scanGaussianSite: using built-in cluster position (constructor-safe)'
000051f8 bcfdff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000051fc 080280d2 mov        x8, #0x10                                    
00005200 e86700f9 str        x8, [sp, #0xc8]                              
00005204 88008052 mov        w8, #4                                       
00005208 e8c700b9 str        w8, [sp, #0xc4]                              
0000520c a80354f8 ldur       x8, [x29, #-0xc0]                            
00005210 08210091 add        x8, x8, #8                                   
00005214 e85f00f9 str        x8, [sp, #0xb8]                              
00005218 01000014 b          #0x521c                                      
0000521c e85f40f9 ldr        x8, [sp, #0xb8]                              
00005220 a98353f8 ldur       x9, [x29, #-0xc8]                            
00005224 080109eb subs       x8, x8, x9                                   
00005228 82200054 b.hs       #0x5638                                      
0000522c 01000014 b          #0x5230                                      
00005230 e2c30291 add        x2, sp, #0xb0                                
00005234 ff5b00f9 str        xzr, [sp, #0xb0]                             
00005238 e3b30291 add        x3, sp, #0xac                                
0000523c ffaf00b9 str        wzr, [sp, #0xac]                             
00005240 e05f40f9 ldr        x0, [sp, #0xb8]                              
00005244 a18353f8 ldur       x1, [x29, #-0xc8]                            
00005248 1f070094 bl         #0x6ec4                                       ; __ZL20matchAddFilterCallAtPjS_PPvS_||__ZL20matchAddFilterCallAtPjS_PPvS_|
0000524c e05300f9 str        x0, [sp, #0xa0]                              
00005250 e85340f9 ldr        x8, [sp, #0xa0]                              
00005254 680000b5 cbnz       x8, #0x5260                                  
00005258 01000014 b          #0x525c                                      
0000525c f3000014 b          #0x5628                                      
00005260 ff9f00b9 str        wzr, [sp, #0x9c]                             
00005264 e85f40f9 ldr        x8, [sp, #0xb8]                              
00005268 ea9f80b9 ldrsw      x10, [sp, #0x9c]                             
0000526c a96301d1 sub        x9, x29, #0x58                               
00005270 28792af8 str        x8, [x9, x10, lsl #3]                        
00005274 e85b40f9 ldr        x8, [sp, #0xb0]                              
00005278 ea9f80b9 ldrsw      x10, [sp, #0x9c]                             
0000527c a96302d1 sub        x9, x29, #0x98                               
00005280 28792af8 str        x8, [x9, x10, lsl #3]                        
00005284 e8af40b9 ldr        w8, [sp, #0xac]                              
00005288 ea9f80b9 ldrsw      x10, [sp, #0x9c]                             
0000528c a9e302d1 sub        x9, x29, #0xb8                               
00005290 28792ab8 str        w8, [x9, x10, lsl #2]                        
00005294 e89f40b9 ldr        w8, [sp, #0x9c]                              
00005298 08050011 add        w8, w8, #1                                   
0000529c e89f00b9 str        w8, [sp, #0x9c]                              
000052a0 e85f40f9 ldr        x8, [sp, #0xb8]                              
000052a4 e84b00f9 str        x8, [sp, #0x90]                              
000052a8 01000014 b          #0x52ac                                      
000052ac e89f40b9 ldr        w8, [sp, #0x9c]                              
000052b0 08210071 subs       w8, w8, #8                                   
000052b4 8a080054 b.ge       #0x53c4                                      
000052b8 01000014 b          #0x52bc                                      
000052bc e84b40f9 ldr        x8, [sp, #0x90]                              
000052c0 08110091 add        x8, x8, #4                                   
000052c4 e84700f9 str        x8, [sp, #0x88]                              
000052c8 e84b40f9 ldr        x8, [sp, #0x90]                              
000052cc 08010191 add        x8, x8, #0x40                                
000052d0 e84300f9 str        x8, [sp, #0x80]                              
000052d4 e84340f9 ldr        x8, [sp, #0x80]                              
000052d8 a98353f8 ldur       x9, [x29, #-0xc8]                            
000052dc 080109eb subs       x8, x8, x9                                   
000052e0 a9000054 b.ls       #0x52f4                                      
000052e4 01000014 b          #0x52e8                                      
000052e8 a88353f8 ldur       x8, [x29, #-0xc8]                            
000052ec e84300f9 str        x8, [sp, #0x80]                              
000052f0 01000014 b          #0x52f4                                      
000052f4 ff3f00f9 str        xzr, [sp, #0x78]                             
000052f8 ff3b00f9 str        xzr, [sp, #0x70]                             
000052fc ff6f00b9 str        wzr, [sp, #0x6c]                             
00005300 e84740f9 ldr        x8, [sp, #0x88]                              
00005304 e83300f9 str        x8, [sp, #0x60]                              
00005308 01000014 b          #0x530c                                      
0000530c e83340f9 ldr        x8, [sp, #0x60]                              
00005310 e94340f9 ldr        x9, [sp, #0x80]                              
00005314 080109eb subs       x8, x8, x9                                   
00005318 a2020054 b.hs       #0x536c                                      
0000531c 01000014 b          #0x5320                                      
00005320 e03340f9 ldr        x0, [sp, #0x60]                              
00005324 a18353f8 ldur       x1, [x29, #-0xc8]                            
00005328 e2c30191 add        x2, sp, #0x70                                
0000532c e3b30191 add        x3, sp, #0x6c                                
00005330 e5060094 bl         #0x6ec4                                       ; __ZL20matchAddFilterCallAtPjS_PPvS_||__ZL20matchAddFilterCallAtPjS_PPvS_|
00005334 e02f00f9 str        x0, [sp, #0x58]                              
00005338 e82f40f9 ldr        x8, [sp, #0x58]                              
0000533c e95340f9 ldr        x9, [sp, #0xa0]                              
00005340 080109eb subs       x8, x8, x9                                   
00005344 a1000054 b.ne       #0x5358                                      
00005348 01000014 b          #0x534c                                      
0000534c e83340f9 ldr        x8, [sp, #0x60]                              
00005350 e83f00f9 str        x8, [sp, #0x78]                              
00005354 06000014 b          #0x536c                                      
00005358 01000014 b          #0x535c                                      
0000535c e83340f9 ldr        x8, [sp, #0x60]                              
00005360 08110091 add        x8, x8, #4                                   
00005364 e83300f9 str        x8, [sp, #0x60]                              
00005368 e9ffff17 b          #0x530c                                      
0000536c e83f40f9 ldr        x8, [sp, #0x78]                              
00005370 680000b5 cbnz       x8, #0x537c                                  
00005374 01000014 b          #0x5378                                      
00005378 13000014 b          #0x53c4                                      
0000537c e83f40f9 ldr        x8, [sp, #0x78]                              
00005380 ea9f80b9 ldrsw      x10, [sp, #0x9c]                             
00005384 a96301d1 sub        x9, x29, #0x58                               
00005388 28792af8 str        x8, [x9, x10, lsl #3]                        
0000538c e83b40f9 ldr        x8, [sp, #0x70]                              
00005390 ea9f80b9 ldrsw      x10, [sp, #0x9c]                             
00005394 a96302d1 sub        x9, x29, #0x98                               
00005398 28792af8 str        x8, [x9, x10, lsl #3]                        
0000539c e86f40b9 ldr        w8, [sp, #0x6c]                              
000053a0 ea9f80b9 ldrsw      x10, [sp, #0x9c]                             
000053a4 a9e302d1 sub        x9, x29, #0xb8                               
000053a8 28792ab8 str        w8, [x9, x10, lsl #2]                        
000053ac e89f40b9 ldr        w8, [sp, #0x9c]                              
000053b0 08050011 add        w8, w8, #1                                   
000053b4 e89f00b9 str        w8, [sp, #0x9c]                              
000053b8 e83f40f9 ldr        x8, [sp, #0x78]                              
000053bc e84b00f9 str        x8, [sp, #0x90]                              
000053c0 bbffff17 b          #0x52ac                                      
000053c4 e89f40b9 ldr        w8, [sp, #0x9c]                              
000053c8 08110071 subs       w8, w8, #4                                   
000053cc 6a000054 b.ge       #0x53d8                                      
000053d0 01000014 b          #0x53d4                                      
000053d4 95000014 b          #0x5628                                      
000053d8 08008012 mov        w8, #-1                                      
000053dc e85700b9 str        w8, [sp, #0x54]                              
000053e0 a84353b8 ldur       w8, [x29, #-0xcc]                            
000053e4 08050034 cbz        w8, #0x5484                                  
000053e8 01000014 b          #0x53ec                                      
000053ec ff5300b9 str        wzr, [sp, #0x50]                             
000053f0 01000014 b          #0x53f4                                      
000053f4 e85340b9 ldr        w8, [sp, #0x50]                              
000053f8 e99f40b9 ldr        w9, [sp, #0x9c]                              
000053fc 0801096b subs       w8, w8, w9                                   
00005400 2a020054 b.ge       #0x5444                                      
00005404 01000014 b          #0x5408                                      
00005408 e95380b9 ldrsw      x9, [sp, #0x50]                              
0000540c a8e302d1 sub        x8, x29, #0xb8                               
00005410 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00005414 a94353b8 ldur       w9, [x29, #-0xcc]                            
00005418 0801096b subs       w8, w8, w9                                   
0000541c a1000054 b.ne       #0x5430                                      
00005420 01000014 b          #0x5424                                      
00005424 e85340b9 ldr        w8, [sp, #0x50]                              
00005428 e85700b9 str        w8, [sp, #0x54]                              
0000542c 06000014 b          #0x5444                                      
00005430 01000014 b          #0x5434                                      
00005434 e85340b9 ldr        w8, [sp, #0x50]                              
00005438 08050011 add        w8, w8, #1                                   
0000543c e85300b9 str        w8, [sp, #0x50]                              
00005440 edffff17 b          #0x53f4                                      
00005444 e85740b9 ldr        w8, [sp, #0x54]                              
00005448 c801f836 tbz        w8, #0x1f, #0x5480                           
0000544c 01000014 b          #0x5450                                      
00005450 eb5f40f9 ldr        x11, [sp, #0xb8]                             
00005454 e89f40b9 ldr        w8, [sp, #0x9c]                              
00005458 ea0308aa mov        x10, x8                                      
0000545c a84353b8 ldur       w8, [x29, #-0xcc]                            
00005460 e9030091 mov        x9, sp                                       
00005464 2b0100f9 str        x11, [x9]                                    
00005468 2a0500f9 str        x10, [x9, #8]                                
0000546c 280900f9 str        x8, [x9, #0x10]                              
00005470 20010090 adrp       x0, #0x29000                                 
00005474 006c2291 add        x0, x0, #0x89b                                ; 'scanGaussianSite: cluster @%p (len %d) lacks gaussian atom 0x%x, skipping'
00005478 1cfdff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000547c 6b000014 b          #0x5628                                      
00005480 07000014 b          #0x549c                                      
00005484 e99f40b9 ldr        w9, [sp, #0x9c]                              
00005488 08008052 mov        w8, #0                                       
0000548c 29050071 subs       w9, w9, #1                                   
00005490 08d59f1a csinc      w8, w8, wzr, le                              
00005494 e85700b9 str        w8, [sp, #0x54]                              
00005498 01000014 b          #0x549c                                      
0000549c e95780b9 ldrsw      x9, [sp, #0x54]                              
000054a0 a86302d1 sub        x8, x29, #0x98                               
000054a4 087969f8 ldr        x8, [x8, x9, lsl #3]                         
000054a8 e82700f9 str        x8, [sp, #0x48]                              
000054ac ff2300f9 str        xzr, [sp, #0x40]                             
000054b0 a8835af8 ldur       x8, [x29, #-0x58]                            
000054b4 e81f00f9 str        x8, [sp, #0x38]                              
000054b8 e81f40f9 ldr        x8, [sp, #0x38]                              
000054bc 082100f1 subs       x8, x8, #8                                   
000054c0 e81b00f9 str        x8, [sp, #0x30]                              
000054c4 01000014 b          #0x54c8                                      
000054c8 e91b40f9 ldr        x9, [sp, #0x30]                              
000054cc e81f40f9 ldr        x8, [sp, #0x38]                              
000054d0 0aa101f1 subs       x10, x8, #0x68                               
000054d4 08008052 mov        w8, #0                                       
000054d8 29010aeb subs       x9, x9, x10                                  
000054dc e82f00b9 str        w8, [sp, #0x2c]                              
000054e0 09010054 b.ls       #0x5500                                      
000054e4 01000014 b          #0x54e8                                      
000054e8 e81b40f9 ldr        x8, [sp, #0x30]                              
000054ec a90354f8 ldur       x9, [x29, #-0xc0]                            
000054f0 080109eb subs       x8, x8, x9                                   
000054f4 e8979f1a cset       w8, hi                                       
000054f8 e82f00b9 str        w8, [sp, #0x2c]                              
000054fc 01000014 b          #0x5500                                      
00005500 e82f40b9 ldr        w8, [sp, #0x2c]                              
00005504 68030036 tbz        w8, #0, #0x5570                              
00005508 01000014 b          #0x550c                                      
0000550c e81b40f9 ldr        x8, [sp, #0x30]                              
00005510 000140b9 ldr        w0, [x8]                                     
00005514 d6fdff97 bl         #0x4c6c                                       ; __ZL6isADRPj||__ZL6isADRPj|
00005518 20020036 tbz        w0, #0, #0x555c                              
0000551c 01000014 b          #0x5520                                      
00005520 e81b40f9 ldr        x8, [sp, #0x30]                              
00005524 08110091 add        x8, x8, #4                                   
00005528 a98353f8 ldur       x9, [x29, #-0xc8]                            
0000552c 080109eb subs       x8, x8, x9                                   
00005530 62010054 b.hs       #0x555c                                      
00005534 01000014 b          #0x5538                                      
00005538 e81b40f9 ldr        x8, [sp, #0x30]                              
0000553c 000540b9 ldr        w0, [x8, #4]                                 
00005540 3efeff97 bl         #0x4e38                                       ; __ZL12isLDR_uoff64j||__ZL12isLDR_uoff64j|
00005544 c0000036 tbz        w0, #0, #0x555c                              
00005548 01000014 b          #0x554c                                      
0000554c e01b40f9 ldr        x0, [sp, #0x30]                              
00005550 e9fdff97 bl         #0x4cf4                                       ; |_LGSymDecodeAdrpLdr||_LGSymDecodeAdrpLdr
00005554 e02300f9 str        x0, [sp, #0x40]                              
00005558 06000014 b          #0x5570                                      
0000555c 01000014 b          #0x5560                                      
00005560 e81b40f9 ldr        x8, [sp, #0x30]                              
00005564 081100f1 subs       x8, x8, #4                                   
00005568 e81b00f9 str        x8, [sp, #0x30]                              
0000556c d7ffff17 b          #0x54c8                                      
00005570 e85340f9 ldr        x8, [sp, #0xa0]                              
00005574 8a0100f0 adrp       x10, #0x38000                                
00005578 890100f0 adrp       x9, #0x38000                                 
0000557c 29e10f91 add        x9, x9, #0x3f8                                ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005580 48fd01f9 str        x8, [x10, #0x3f8]                             ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005584 e82740f9 ldr        x8, [sp, #0x48]                              
00005588 280500f9 str        x8, [x9, #8]                                 
0000558c e82340f9 ldr        x8, [sp, #0x40]                              
00005590 280900f9 str        x8, [x9, #0x10]                              
00005594 28008052 mov        w8, #1                                       
00005598 28610039 strb       w8, [x9, #0x18]                              
0000559c e89f40b9 ldr        w8, [sp, #0x9c]                              
000055a0 ec0308aa mov        x12, x8                                      
000055a4 eb1f40f9 ldr        x11, [sp, #0x38]                             
000055a8 e85740b9 ldr        w8, [sp, #0x54]                              
000055ac ea0308aa mov        x10, x8                                      
000055b0 e95780b9 ldrsw      x9, [sp, #0x54]                              
000055b4 a8e302d1 sub        x8, x29, #0xb8                               
000055b8 087969b8 ldr        w8, [x8, x9, lsl #2]                         
000055bc e9030091 mov        x9, sp                                       
000055c0 2c0100f9 str        x12, [x9]                                     ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
000055c4 2b0500f9 str        x11, [x9, #8]                                
000055c8 2a0900f9 str        x10, [x9, #0x10]                             
000055cc 280d00f9 str        x8, [x9, #0x18]                              
000055d0 20010090 adrp       x0, #0x29000                                 
000055d4 00942391 add        x0, x0, #0x8e5                                ; 'scanGaussianSite: confirmed cluster of %d calls, start=%p gaussIdx=%d atom=0x%x'
000055d8 c4fcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000055dc e85340f9 ldr        x8, [sp, #0xa0]                              
000055e0 e9030091 mov        x9, sp                                       
000055e4 280100f9 str        x8, [x9]                                      ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
000055e8 20010090 adrp       x0, #0x29000                                 
000055ec 00d42491 add        x0, x0, #0x935                                ; '  add_filter = %p'
000055f0 befcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000055f4 e82740f9 ldr        x8, [sp, #0x48]                              
000055f8 e9030091 mov        x9, sp                                       
000055fc 280100f9 str        x8, [x9]                                      ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005600 20010090 adrp       x0, #0x29000                                 
00005604 001c2591 add        x0, x0, #0x947                                ; '  gaussian ctx = %p'
00005608 b8fcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000560c e82340f9 ldr        x8, [sp, #0x40]                              
00005610 e9030091 mov        x9, sp                                       
00005614 280100f9 str        x8, [x9]                                      ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005618 20010090 adrp       x0, #0x29000                                 
0000561c 006c2591 add        x0, x0, #0x95b                                ; '  filter_table slot = %p'
00005620 b2fcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005624 09000014 b          #0x5648                                      
00005628 e85f40f9 ldr        x8, [sp, #0xb8]                              
0000562c 08110091 add        x8, x8, #4                                   
00005630 e85f00f9 str        x8, [sp, #0xb8]                              
00005634 fafeff17 b          #0x521c                                      
00005638 20010090 adrp       x0, #0x29000                                 
0000563c 00d02591 add        x0, x0, #0x974                                ; 'scanGaussianSite: no confirmed add_filter cluster found'
00005640 aafcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005644 01000014 b          #0x5648                                      
00005648 a9835ef8 ldur       x9, [x29, #-0x18]                            
0000564c 680100f0 adrp       x8, #0x34000                                 
00005650 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
00005654 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
00005658 080109eb subs       x8, x8, x9                                   
0000565c 60000054 b.eq       #0x5668                                      
00005660 01000014 b          #0x5664                                      
00005664 168a0094 bl         #0x27ebc                                      ; ___stack_chk_fail
00005668 fd7b5aa9 ldp        x29, x30, [sp, #0x1a0]                       
0000566c fc6f59a9 ldp        x28, x27, [sp, #0x190]                       
00005670 ffc30691 add        sp, sp, #0x1b0                               
00005674 ff0f5fd6 retab                                                   
00005678 7f2303d5 pacibsp                                                  ; |_LGResolve_GaussianCtxSlot||_LGResolve_GaussianCtxSlot
0000567c fd7bbfa9 stp        x29, x30, [sp, #-0x10]!                      
00005680 fd030091 mov        x29, sp                                      
00005684 bbfeff97 bl         #0x5170                                       ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
00005688 880100f0 adrp       x8, #0x38000                                 
0000568c 08e10f91 add        x8, x8, #0x3f8                                ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005690 000540f9 ldr        x0, [x8, #8]                                 
00005694 fd7bc1a8 ldp        x29, x30, [sp], #0x10                        
00005698 ff0f5fd6 retab                                                   
0000569c 7f2303d5 pacibsp                                                  ; |_LGResolve_FilterTableSlot||_LGResolve_FilterTableSlot
000056a0 fd7bbfa9 stp        x29, x30, [sp, #-0x10]!                      
000056a4 fd030091 mov        x29, sp                                      
000056a8 b2feff97 bl         #0x5170                                       ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
000056ac 880100f0 adrp       x8, #0x38000                                 
000056b0 08e10f91 add        x8, x8, #0x3f8                                ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
000056b4 000940f9 ldr        x0, [x8, #0x10]                              
000056b8 fd7bc1a8 ldp        x29, x30, [sp], #0x10                        
000056bc ff0f5fd6 retab                                                   
000056c0 7f2303d5 pacibsp                                                  ; |_LGResolve_StopEncoders||_LGResolve_StopEncoders
000056c4 ffc301d1 sub        sp, sp, #0x70                                
000056c8 fd7b06a9 stp        x29, x30, [sp, #0x60]                        
000056cc fd830191 add        x29, sp, #0x60                               
000056d0 880100f0 adrp       x8, #0x38000                                 
000056d4 08014f39 ldrb       w8, [x8, #0x3c0]                             
000056d8 88000037 tbnz       w8, #0, #0x56e8                              
000056dc 01000014 b          #0x56e0                                      
000056e0 bf831ff8 stur       xzr, [x29, #-8]                              
000056e4 a8000014 b          #0x5984                                      
000056e8 20010090 adrp       x0, #0x29000                                 
000056ec 00e80d91 add        x0, x0, #0x37a                                ; '!memoryless_in_use ()'
000056f0 a9000094 bl         #0x5994                                       ; __ZL11findCStringPKc||__ZL11findCStringPKc|
000056f4 a0031ff8 stur       x0, [x29, #-0x10]                            
000056f8 a8035ff8 ldur       x8, [x29, #-0x10]                            
000056fc e80000b5 cbnz       x8, #0x5718                                  
00005700 01000014 b          #0x5704                                      
00005704 20010090 adrp       x0, #0x29000                                 
00005708 00400e91 add        x0, x0, #0x390                                ; 'stop_encoders: anchor string not found'
0000570c 77fcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005710 bf831ff8 stur       xzr, [x29, #-8]                              
00005714 9c000014 b          #0x5984                                      
00005718 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000571c e9030091 mov        x9, sp                                       
00005720 280100f9 str        x8, [x9]                                      ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005724 20010090 adrp       x0, #0x29000                                 
00005728 00dc0e91 add        x0, x0, #0x3b7                                ; 'stop_encoders: anchor string at %p'
0000572c 6ffcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005730 880100f0 adrp       x8, #0x38000                                 
00005734 09e941f9 ldr        x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005738 a9831ef8 stur       x9, [x29, #-0x18]                            
0000573c 08e941f9 ldr        x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005740 890100f0 adrp       x9, #0x38000                                 
00005744 29ed41f9 ldr        x9, [x9, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
00005748 0801098b add        x8, x8, x9                                   
0000574c 081100f1 subs       x8, x8, #4                                   
00005750 a8031ef8 stur       x8, [x29, #-0x20]                            
00005754 bf831df8 stur       xzr, [x29, #-0x28]                           
00005758 a8835ef8 ldur       x8, [x29, #-0x18]                            
0000575c e81b00f9 str        x8, [sp, #0x30]                              
00005760 01000014 b          #0x5764                                      
00005764 e81b40f9 ldr        x8, [sp, #0x30]                              
00005768 a9035ef8 ldur       x9, [x29, #-0x20]                            
0000576c 080109eb subs       x8, x8, x9                                   
00005770 a2030054 b.hs       #0x57e4                                      
00005774 01000014 b          #0x5778                                      
00005778 e81b40f9 ldr        x8, [sp, #0x30]                              
0000577c 000140b9 ldr        w0, [x8]                                     
00005780 3bfdff97 bl         #0x4c6c                                       ; __ZL6isADRPj||__ZL6isADRPj|
00005784 e0000036 tbz        w0, #0, #0x57a0                              
00005788 01000014 b          #0x578c                                      
0000578c e81b40f9 ldr        x8, [sp, #0x30]                              
00005790 000540b9 ldr        w0, [x8, #4]                                 
00005794 40fdff97 bl         #0x4c94                                       ; __ZL9isADD_immj||__ZL9isADD_immj|
00005798 60000037 tbnz       w0, #0, #0x57a4                              
0000579c 01000014 b          #0x57a0                                      
000057a0 0d000014 b          #0x57d4                                      
000057a4 e01b40f9 ldr        x0, [sp, #0x30]                              
000057a8 d7fcff97 bl         #0x4b04                                       ; |_LGSymDecodeAdrpAdd||_LGSymDecodeAdrpAdd
000057ac e01700f9 str        x0, [sp, #0x28]                              
000057b0 e81740f9 ldr        x8, [sp, #0x28]                              
000057b4 a9035ff8 ldur       x9, [x29, #-0x10]                            
000057b8 080109eb subs       x8, x8, x9                                   
000057bc a1000054 b.ne       #0x57d0                                      
000057c0 01000014 b          #0x57c4                                      
000057c4 e81b40f9 ldr        x8, [sp, #0x30]                              
000057c8 a8831df8 stur       x8, [x29, #-0x28]                            
000057cc 06000014 b          #0x57e4                                      
000057d0 01000014 b          #0x57d4                                      
000057d4 e81b40f9 ldr        x8, [sp, #0x30]                              
000057d8 08110091 add        x8, x8, #4                                   
000057dc e81b00f9 str        x8, [sp, #0x30]                              
000057e0 e1ffff17 b          #0x5764                                      
000057e4 a8835df8 ldur       x8, [x29, #-0x28]                            
000057e8 e80000b5 cbnz       x8, #0x5804                                  
000057ec 01000014 b          #0x57f0                                      
000057f0 20010090 adrp       x0, #0x29000                                 
000057f4 00680f91 add        x0, x0, #0x3da                                ; 'stop_encoders: no xref to anchor string found'
000057f8 3cfcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000057fc bf831ff8 stur       xzr, [x29, #-8]                              
00005800 61000014 b          #0x5984                                      
00005804 a8835df8 ldur       x8, [x29, #-0x28]                            
00005808 e9030091 mov        x9, sp                                       
0000580c 280100f9 str        x8, [x9]                                     
00005810 20010090 adrp       x0, #0x29000                                 
00005814 00201091 add        x0, x0, #0x408                                ; 'stop_encoders: xref site at %p'
00005818 34fcff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000581c ff1300f9 str        xzr, [sp, #0x20]                             
00005820 a8835df8 ldur       x8, [x29, #-0x28]                            
00005824 e80f00f9 str        x8, [sp, #0x18]                              
00005828 a8835df8 ldur       x8, [x29, #-0x28]                            
0000582c 080120f1 subs       x8, x8, #0x800                               
00005830 e80b00f9 str        x8, [sp, #0x10]                              
00005834 01000014 b          #0x5838                                      
00005838 e90f40f9 ldr        x9, [sp, #0x18]                              
0000583c ea0b40f9 ldr        x10, [sp, #0x10]                             
00005840 08008052 mov        w8, #0                                       
00005844 29010aeb subs       x9, x9, x10                                  
00005848 e80f00b9 str        w8, [sp, #0xc]                               
0000584c 23010054 b.lo       #0x5870                                      
00005850 01000014 b          #0x5854                                      
00005854 e80f40f9 ldr        x8, [sp, #0x18]                              
00005858 890100f0 adrp       x9, #0x38000                                 
0000585c 29e941f9 ldr        x9, [x9, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005860 080109eb subs       x8, x8, x9                                   
00005864 e8379f1a cset       w8, hs                                       
00005868 e80f00b9 str        w8, [sp, #0xc]                               
0000586c 01000014 b          #0x5870                                      
00005870 e80f40b9 ldr        w8, [sp, #0xc]                               
00005874 68060036 tbz        w8, #0, #0x5940                              
00005878 01000014 b          #0x587c                                      
0000587c e80f40f9 ldr        x8, [sp, #0x18]                              
00005880 000140b9 ldr        w0, [x8]                                     
00005884 2afeff97 bl         #0x512c                                       ; __ZL9isPACIBSPj||__ZL9isPACIBSPj|
00005888 a0010037 tbnz       w0, #0, #0x58bc                              
0000588c 01000014 b          #0x5890                                      
00005890 e80f40f9 ldr        x8, [sp, #0x18]                              
00005894 000140b9 ldr        w0, [x8]                                     
00005898 5b000094 bl         #0x5a04                                       ; __ZL21isSTP_preindex_SP_negj||__ZL21isSTP_preindex_SP_negj|
0000589c 00010037 tbnz       w0, #0, #0x58bc                              
000058a0 01000014 b          #0x58a4                                      
000058a4 e80f40f9 ldr        x8, [sp, #0x18]                              
000058a8 000140b9 ldr        w0, [x8]                                     
000058ac 71000094 bl         #0x5a70                                       ; __ZL7isSUBspj||__ZL7isSUBspj|
000058b0 60000037 tbnz       w0, #0, #0x58bc                              
000058b4 01000014 b          #0x58b8                                      
000058b8 1e000014 b          #0x5930                                      
000058bc e80f40f9 ldr        x8, [sp, #0x18]                              
000058c0 000140b9 ldr        w0, [x8]                                     
000058c4 50000094 bl         #0x5a04                                       ; __ZL21isSTP_preindex_SP_negj||__ZL21isSTP_preindex_SP_negj|
000058c8 e0000037 tbnz       w0, #0, #0x58e4                              
000058cc 01000014 b          #0x58d0                                      
000058d0 e80f40f9 ldr        x8, [sp, #0x18]                              
000058d4 000140b9 ldr        w0, [x8]                                     
000058d8 66000094 bl         #0x5a70                                       ; __ZL7isSUBspj||__ZL7isSUBspj|
000058dc 20020036 tbz        w0, #0, #0x5920                              
000058e0 01000014 b          #0x58e4                                      
000058e4 e80f40f9 ldr        x8, [sp, #0x18]                              
000058e8 890100f0 adrp       x9, #0x38000                                 
000058ec 29e941f9 ldr        x9, [x9, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
000058f0 080109eb subs       x8, x8, x9                                   
000058f4 69010054 b.ls       #0x5920                                      
000058f8 01000014 b          #0x58fc                                      
000058fc e80f40f9 ldr        x8, [sp, #0x18]                              
00005900 00c15fb8 ldur       w0, [x8, #-4]                                
00005904 0afeff97 bl         #0x512c                                       ; __ZL9isPACIBSPj||__ZL9isPACIBSPj|
00005908 c0000036 tbz        w0, #0, #0x5920                              
0000590c 01000014 b          #0x5910                                      
00005910 e80f40f9 ldr        x8, [sp, #0x18]                              
00005914 081100f1 subs       x8, x8, #4                                   
00005918 e81300f9 str        x8, [sp, #0x20]                              
0000591c 04000014 b          #0x592c                                      
00005920 e80f40f9 ldr        x8, [sp, #0x18]                              
00005924 e81300f9 str        x8, [sp, #0x20]                              
00005928 01000014 b          #0x592c                                      
0000592c 05000014 b          #0x5940                                      
00005930 e80f40f9 ldr        x8, [sp, #0x18]                              
00005934 081100f1 subs       x8, x8, #4                                   
00005938 e80f00f9 str        x8, [sp, #0x18]                              
0000593c bfffff17 b          #0x5838                                      
00005940 e81340f9 ldr        x8, [sp, #0x20]                              
00005944 e80000b5 cbnz       x8, #0x5960                                  
00005948 01000014 b          #0x594c                                      
0000594c 20010090 adrp       x0, #0x29000                                 
00005950 009c1091 add        x0, x0, #0x427                                ; 'stop_encoders: prologue not found within window'
00005954 e5fbff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005958 bf831ff8 stur       xzr, [x29, #-8]                              
0000595c 0a000014 b          #0x5984                                      
00005960 e81340f9 ldr        x8, [sp, #0x20]                              
00005964 e9030091 mov        x9, sp                                       
00005968 280100f9 str        x8, [x9]                                     
0000596c 20010090 adrp       x0, #0x29000                                 
00005970 005c1191 add        x0, x0, #0x457                                ; 'stop_encoders: resolved entry = %p'
00005974 ddfbff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005978 e81340f9 ldr        x8, [sp, #0x20]                              
0000597c a8831ff8 stur       x8, [x29, #-8]                               
00005980 01000014 b          #0x5984                                      
00005984 a0835ff8 ldur       x0, [x29, #-8]                               
00005988 fd7b46a9 ldp        x29, x30, [sp, #0x60]                        
0000598c ffc30191 add        sp, sp, #0x70                                
00005990 ff0f5fd6 retab                                                   
00005994 7f2303d5 pacibsp                                                  ; __ZL11findCStringPKc||__ZL11findCStringPKc|
00005998 ffc300d1 sub        sp, sp, #0x30                                
0000599c fd7b02a9 stp        x29, x30, [sp, #0x20]                        
000059a0 fd830091 add        x29, sp, #0x20                               
000059a4 e00b00f9 str        x0, [sp, #0x10]                              
000059a8 880100f0 adrp       x8, #0x38000                                 
000059ac 08014f39 ldrb       w8, [x8, #0x3c0]                             
000059b0 88000037 tbnz       w8, #0, #0x59c0                              
000059b4 01000014 b          #0x59b8                                      
000059b8 bf831ff8 stur       xzr, [x29, #-8]                              
000059bc 0e000014 b          #0x59f4                                      
000059c0 e00b40f9 ldr        x0, [sp, #0x10]                              
000059c4 0e890094 bl         #0x27dfc                                      ; _strlen
000059c8 08040091 add        x8, x0, #1                                    ; 'top_encoders: resolved entry = %p'
000059cc e80700f9 str        x8, [sp, #8]                                 
000059d0 e00b40f9 ldr        x0, [sp, #0x10]                              
000059d4 e10740f9 ldr        x1, [sp, #8]                                 
000059d8 880100f0 adrp       x8, #0x38000                                 
000059dc 02e941f9 ldr        x2, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
000059e0 880100f0 adrp       x8, #0x38000                                 
000059e4 03ed41f9 ldr        x3, [x8, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
000059e8 c3050094 bl         #0x70f4                                       ; __ZL7rawScanPKhmPhm||__ZL7rawScanPKhmPhm|
000059ec a0831ff8 stur       x0, [x29, #-8]                               
000059f0 01000014 b          #0x59f4                                      
000059f4 a0835ff8 ldur       x0, [x29, #-8]                               
000059f8 fd7b42a9 ldp        x29, x30, [sp, #0x20]                        
000059fc ffc30091 add        sp, sp, #0x30                                
00005a00 ff0f5fd6 retab                                                   
00005a04 ff4300d1 sub        sp, sp, #0x10                                 ; __ZL21isSTP_preindex_SP_negj||__ZL21isSTP_preindex_SP_negj|
00005a08 e00f00b9 str        w0, [sp, #0xc]                               
00005a0c e80f40b9 ldr        w8, [sp, #0xc]                               
00005a10 09250a12 and        w9, w8, #0xffc00000                          
00005a14 0a30b552 mov        w10, #-0x56800000                            
00005a18 08008052 mov        w8, #0                                       
00005a1c 29010a6b subs       w9, w9, w10                                  
00005a20 e80b00b9 str        w8, [sp, #8]                                 
00005a24 e1010054 b.ne       #0x5a60                                      
00005a28 01000014 b          #0x5a2c                                      
00005a2c e80f40b9 ldr        w8, [sp, #0xc]                               
00005a30 087d0553 lsr        w8, w8, #5                                   
00005a34 09110012 and        w9, w8, #0x1f                                
00005a38 08008052 mov        w8, #0                                       
00005a3c 297d0071 subs       w9, w9, #0x1f                                
00005a40 e80b00b9 str        w8, [sp, #8]                                 
00005a44 e1000054 b.ne       #0x5a60                                      
00005a48 01000014 b          #0x5a4c                                      
00005a4c e80f40b9 ldr        w8, [sp, #0xc]                               
00005a50 08010b72 ands       w8, w8, #0x200000                            
00005a54 e8079f1a cset       w8, ne                                       
00005a58 e80b00b9 str        w8, [sp, #8]                                 
00005a5c 01000014 b          #0x5a60                                      
00005a60 e80b40b9 ldr        w8, [sp, #8]                                 
00005a64 00010012 and        w0, w8, #1                                   
00005a68 ff430091 add        sp, sp, #0x10                                
00005a6c c0035fd6 ret                                                     
00005a70 ff4300d1 sub        sp, sp, #0x10                                 ; __ZL7isSUBspj||__ZL7isSUBspj|
00005a74 e00f00b9 str        w0, [sp, #0xc]                               
00005a78 e80f40b9 ldr        w8, [sp, #0xc]                               
00005a7c 08490912 and        w8, w8, #0xff8003ff                          
00005a80 e97f8052 mov        w9, #0x3ff                                   
00005a84 0920ba72 movk       w9, #0xd100, lsl #16                         
00005a88 0801096b subs       w8, w8, w9                                   
00005a8c e0179f1a cset       w0, eq                                       
00005a90 ff430091 add        sp, sp, #0x10                                
00005a94 c0035fd6 ret                                                     
00005a98 7f2303d5 pacibsp                                                  ; |_LGResolve_MetalCmdBufOffset||_LGResolve_MetalCmdBufOffset
00005a9c ff4302d1 sub        sp, sp, #0x90                                
00005aa0 fd7b08a9 stp        x29, x30, [sp, #0x80]                        
00005aa4 fd030291 add        x29, sp, #0x80                               
00005aa8 880100f0 adrp       x8, #0x38000                                 
00005aac 08014f39 ldrb       w8, [x8, #0x3c0]                             
00005ab0 a8000037 tbnz       w8, #0, #0x5ac4                              
00005ab4 01000014 b          #0x5ab8                                      
00005ab8 08008092 mov        x8, #-1                                      
00005abc a8831ff8 stur       x8, [x29, #-8]                               
00005ac0 18010014 b          #0x5f20                                      
00005ac4 20010090 adrp       x0, #0x29000                                 
00005ac8 00e81191 add        x0, x0, #0x47a                                ; 'Command buffer allocation failed!\n'
00005acc b2ffff97 bl         #0x5994                                       ; __ZL11findCStringPKc||__ZL11findCStringPKc|
00005ad0 a0031ff8 stur       x0, [x29, #-0x10]                            
00005ad4 a8035ff8 ldur       x8, [x29, #-0x10]                            
00005ad8 080100b5 cbnz       x8, #0x5af8                                  
00005adc 01000014 b          #0x5ae0                                      
00005ae0 20010090 adrp       x0, #0x29000                                 
00005ae4 00741291 add        x0, x0, #0x49d                                ; 'cmdbuf: anchor string not found'
00005ae8 80fbff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005aec 08008092 mov        x8, #-1                                      
00005af0 a8831ff8 stur       x8, [x29, #-8]                               
00005af4 0b010014 b          #0x5f20                                      
00005af8 a8035ff8 ldur       x8, [x29, #-0x10]                            
00005afc e9030091 mov        x9, sp                                       
00005b00 280100f9 str        x8, [x9]                                     
00005b04 20010090 adrp       x0, #0x29000                                 
00005b08 00f41291 add        x0, x0, #0x4bd                                ; 'cmdbuf: anchor string at %p'
00005b0c 77fbff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005b10 880100f0 adrp       x8, #0x38000                                 
00005b14 09e941f9 ldr        x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005b18 a9831ef8 stur       x9, [x29, #-0x18]                            
00005b1c 08e941f9 ldr        x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005b20 890100f0 adrp       x9, #0x38000                                 
00005b24 29ed41f9 ldr        x9, [x9, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
00005b28 0801098b add        x8, x8, x9                                   
00005b2c 081100f1 subs       x8, x8, #4                                   
00005b30 a8031ef8 stur       x8, [x29, #-0x20]                            
00005b34 bf831df8 stur       xzr, [x29, #-0x28]                           
00005b38 a8835ef8 ldur       x8, [x29, #-0x18]                            
00005b3c a8031df8 stur       x8, [x29, #-0x30]                            
00005b40 01000014 b          #0x5b44                                      
00005b44 a8035df8 ldur       x8, [x29, #-0x30]                            
00005b48 a9035ef8 ldur       x9, [x29, #-0x20]                            
00005b4c 080109eb subs       x8, x8, x9                                   
00005b50 62030054 b.hs       #0x5bbc                                      
00005b54 01000014 b          #0x5b58                                      
00005b58 a8035df8 ldur       x8, [x29, #-0x30]                            
00005b5c 000140b9 ldr        w0, [x8]                                     
00005b60 43fcff97 bl         #0x4c6c                                       ; __ZL6isADRPj||__ZL6isADRPj|
00005b64 e0000036 tbz        w0, #0, #0x5b80                              
00005b68 01000014 b          #0x5b6c                                      
00005b6c a8035df8 ldur       x8, [x29, #-0x30]                            
00005b70 000540b9 ldr        w0, [x8, #4]                                 
00005b74 48fcff97 bl         #0x4c94                                       ; __ZL9isADD_immj||__ZL9isADD_immj|
00005b78 60000037 tbnz       w0, #0, #0x5b84                              
00005b7c 01000014 b          #0x5b80                                      
00005b80 0b000014 b          #0x5bac                                      
00005b84 a0035df8 ldur       x0, [x29, #-0x30]                            
00005b88 dffbff97 bl         #0x4b04                                       ; |_LGSymDecodeAdrpAdd||_LGSymDecodeAdrpAdd
00005b8c a8035ff8 ldur       x8, [x29, #-0x10]                            
00005b90 080008eb subs       x8, x0, x8                                   
00005b94 a1000054 b.ne       #0x5ba8                                      
00005b98 01000014 b          #0x5b9c                                      
00005b9c a8035df8 ldur       x8, [x29, #-0x30]                            
00005ba0 a8831df8 stur       x8, [x29, #-0x28]                            
00005ba4 06000014 b          #0x5bbc                                      
00005ba8 01000014 b          #0x5bac                                      
00005bac a8035df8 ldur       x8, [x29, #-0x30]                            
00005bb0 08110091 add        x8, x8, #4                                   
00005bb4 a8031df8 stur       x8, [x29, #-0x30]                            
00005bb8 e3ffff17 b          #0x5b44                                      
00005bbc a8835df8 ldur       x8, [x29, #-0x28]                            
00005bc0 080100b5 cbnz       x8, #0x5be0                                  
00005bc4 01000014 b          #0x5bc8                                      
00005bc8 20010090 adrp       x0, #0x29000                                 
00005bcc 00641391 add        x0, x0, #0x4d9                                ; 'cmdbuf: no xref to anchor string found'
00005bd0 46fbff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005bd4 08008092 mov        x8, #-1                                      
00005bd8 a8831ff8 stur       x8, [x29, #-8]                               
00005bdc d1000014 b          #0x5f20                                      
00005be0 a8835df8 ldur       x8, [x29, #-0x28]                            
00005be4 e9030091 mov        x9, sp                                       
00005be8 280100f9 str        x8, [x9]                                     
00005bec 20010090 adrp       x0, #0x29000                                 
00005bf0 00001491 add        x0, x0, #0x500                                ; 'cmdbuf: xref site at %p'
00005bf4 3dfbff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005bf8 bf831cf8 stur       xzr, [x29, #-0x38]                           
00005bfc a8835df8 ldur       x8, [x29, #-0x28]                            
00005c00 e82300f9 str        x8, [sp, #0x40]                              
00005c04 a8835df8 ldur       x8, [x29, #-0x28]                            
00005c08 080540f1 subs       x8, x8, #1, lsl #12                          
00005c0c e81f00f9 str        x8, [sp, #0x38]                              
00005c10 01000014 b          #0x5c14                                      
00005c14 e92340f9 ldr        x9, [sp, #0x40]                              
00005c18 ea1f40f9 ldr        x10, [sp, #0x38]                             
00005c1c 08008052 mov        w8, #0                                       
00005c20 29010aeb subs       x9, x9, x10                                  
00005c24 e80f00b9 str        w8, [sp, #0xc]                               
00005c28 23010054 b.lo       #0x5c4c                                      
00005c2c 01000014 b          #0x5c30                                      
00005c30 e82340f9 ldr        x8, [sp, #0x40]                              
00005c34 890100f0 adrp       x9, #0x38000                                 
00005c38 29e941f9 ldr        x9, [x9, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005c3c 080109eb subs       x8, x8, x9                                   
00005c40 e8379f1a cset       w8, hs                                       
00005c44 e80f00b9 str        w8, [sp, #0xc]                               
00005c48 01000014 b          #0x5c4c                                      
00005c4c e80f40b9 ldr        w8, [sp, #0xc]                               
00005c50 68060036 tbz        w8, #0, #0x5d1c                              
00005c54 01000014 b          #0x5c58                                      
00005c58 e82340f9 ldr        x8, [sp, #0x40]                              
00005c5c 000140b9 ldr        w0, [x8]                                     
00005c60 33fdff97 bl         #0x512c                                       ; __ZL9isPACIBSPj||__ZL9isPACIBSPj|
00005c64 80010037 tbnz       w0, #0, #0x5c94                              
00005c68 01000014 b          #0x5c6c                                      
00005c6c e82340f9 ldr        x8, [sp, #0x40]                              
00005c70 000140b9 ldr        w0, [x8]                                     
00005c74 64ffff97 bl         #0x5a04                                       ; __ZL21isSTP_preindex_SP_negj||__ZL21isSTP_preindex_SP_negj|
00005c78 e0000037 tbnz       w0, #0, #0x5c94                              
00005c7c 01000014 b          #0x5c80                                      
00005c80 e82340f9 ldr        x8, [sp, #0x40]                              
00005c84 000140b9 ldr        w0, [x8]                                     
00005c88 7affff97 bl         #0x5a70                                       ; __ZL7isSUBspj||__ZL7isSUBspj|
00005c8c e0030036 tbz        w0, #0, #0x5d08                              
00005c90 01000014 b          #0x5c94                                      
00005c94 e82340f9 ldr        x8, [sp, #0x40]                              
00005c98 000140b9 ldr        w0, [x8]                                     
00005c9c 5affff97 bl         #0x5a04                                       ; __ZL21isSTP_preindex_SP_negj||__ZL21isSTP_preindex_SP_negj|
00005ca0 e0000037 tbnz       w0, #0, #0x5cbc                              
00005ca4 01000014 b          #0x5ca8                                      
00005ca8 e82340f9 ldr        x8, [sp, #0x40]                              
00005cac 000140b9 ldr        w0, [x8]                                     
00005cb0 70ffff97 bl         #0x5a70                                       ; __ZL7isSUBspj||__ZL7isSUBspj|
00005cb4 20020036 tbz        w0, #0, #0x5cf8                              
00005cb8 01000014 b          #0x5cbc                                      
00005cbc e82340f9 ldr        x8, [sp, #0x40]                              
00005cc0 890100f0 adrp       x9, #0x38000                                 
00005cc4 29e941f9 ldr        x9, [x9, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005cc8 080109eb subs       x8, x8, x9                                   
00005ccc 69010054 b.ls       #0x5cf8                                      
00005cd0 01000014 b          #0x5cd4                                      
00005cd4 e82340f9 ldr        x8, [sp, #0x40]                              
00005cd8 00c15fb8 ldur       w0, [x8, #-4]                                
00005cdc 14fdff97 bl         #0x512c                                       ; __ZL9isPACIBSPj||__ZL9isPACIBSPj|
00005ce0 c0000036 tbz        w0, #0, #0x5cf8                              
00005ce4 01000014 b          #0x5ce8                                      
00005ce8 e82340f9 ldr        x8, [sp, #0x40]                              
00005cec 081100f1 subs       x8, x8, #4                                   
00005cf0 a8831cf8 stur       x8, [x29, #-0x38]                            
00005cf4 04000014 b          #0x5d04                                      
00005cf8 e82340f9 ldr        x8, [sp, #0x40]                              
00005cfc a8831cf8 stur       x8, [x29, #-0x38]                            
00005d00 01000014 b          #0x5d04                                      
00005d04 06000014 b          #0x5d1c                                      
00005d08 01000014 b          #0x5d0c                                      
00005d0c e82340f9 ldr        x8, [sp, #0x40]                              
00005d10 081100f1 subs       x8, x8, #4                                   
00005d14 e82300f9 str        x8, [sp, #0x40]                              
00005d18 bfffff17 b          #0x5c14                                      
00005d1c a8835cf8 ldur       x8, [x29, #-0x38]                            
00005d20 080100b5 cbnz       x8, #0x5d40                                  
00005d24 01000014 b          #0x5d28                                      
00005d28 20010090 adrp       x0, #0x29000                                 
00005d2c 00601491 add        x0, x0, #0x518                                ; 'cmdbuf: prologue not found within window'
00005d30 eefaff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005d34 08008092 mov        x8, #-1                                      
00005d38 a8831ff8 stur       x8, [x29, #-8]                               
00005d3c 79000014 b          #0x5f20                                      
00005d40 a8835cf8 ldur       x8, [x29, #-0x38]                            
00005d44 e9030091 mov        x9, sp                                       
00005d48 280100f9 str        x8, [x9]                                     
00005d4c 20010090 adrp       x0, #0x29000                                 
00005d50 00041591 add        x0, x0, #0x541                                ; 'cmdbuf: start_command_buffer entry = %p'
00005d54 e5faff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005d58 a8835cf8 ldur       x8, [x29, #-0x38]                            
00005d5c e81b00f9 str        x8, [sp, #0x30]                              
00005d60 28008052 mov        w8, #1                                       
00005d64 e82f00b9 str        w8, [sp, #0x2c]                              
00005d68 ff2b00b9 str        wzr, [sp, #0x28]                             
00005d6c 01000014 b          #0x5d70                                      
00005d70 e92b40b9 ldr        w9, [sp, #0x28]                              
00005d74 08008052 mov        w8, #0                                       
00005d78 29c10071 subs       w9, w9, #0x30                                
00005d7c e80b00b9 str        w8, [sp, #8]                                 
00005d80 4a010054 b.ge       #0x5da8                                      
00005d84 01000014 b          #0x5d88                                      
00005d88 e81b40f9 ldr        x8, [sp, #0x30]                              
00005d8c e92b80b9 ldrsw      x9, [sp, #0x28]                              
00005d90 0809098b add        x8, x8, x9, lsl #2                           
00005d94 a9035ef8 ldur       x9, [x29, #-0x20]                            
00005d98 080109eb subs       x8, x8, x9                                   
00005d9c e8279f1a cset       w8, lo                                       
00005da0 e80b00b9 str        w8, [sp, #8]                                 
00005da4 01000014 b          #0x5da8                                      
00005da8 e80b40b9 ldr        w8, [sp, #8]                                 
00005dac e80a0036 tbz        w8, #0, #0x5f08                              
00005db0 01000014 b          #0x5db4                                      
00005db4 e81b40f9 ldr        x8, [sp, #0x30]                              
00005db8 e92b80b9 ldrsw      x9, [sp, #0x28]                              
00005dbc 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00005dc0 e82700b9 str        w8, [sp, #0x24]                              
00005dc4 e02740b9 ldr        w0, [sp, #0x24]                              
00005dc8 5a000094 bl         #0x5f30                                       ; __ZL8isMOVregj||__ZL8isMOVregj|
00005dcc a0030036 tbz        w0, #0, #0x5e40                              
00005dd0 01000014 b          #0x5dd4                                      
00005dd4 e82740b9 ldr        w8, [sp, #0x24]                              
00005dd8 087d1053 lsr        w8, w8, #0x10                                
00005ddc 08110012 and        w8, w8, #0x1f                                
00005de0 e82300b9 str        w8, [sp, #0x20]                              
00005de4 e82740b9 ldr        w8, [sp, #0x24]                              
00005de8 08110012 and        w8, w8, #0x1f                                
00005dec e81f00b9 str        w8, [sp, #0x1c]                              
00005df0 e82f40b9 ldr        w8, [sp, #0x2c]                              
00005df4 e92340b9 ldr        w9, [sp, #0x20]                              
00005df8 0825c91a lsr        w8, w8, w9                                   
00005dfc 28010036 tbz        w8, #0, #0x5e20                              
00005e00 01000014 b          #0x5e04                                      
00005e04 e91f40b9 ldr        w9, [sp, #0x1c]                              
00005e08 28008052 mov        w8, #1                                       
00005e0c 0921c91a lsl        w9, w8, w9                                   
00005e10 e82f40b9 ldr        w8, [sp, #0x2c]                              
00005e14 0801092a orr        w8, w8, w9                                   
00005e18 e82f00b9 str        w8, [sp, #0x2c]                              
00005e1c 08000014 b          #0x5e3c                                      
00005e20 e91f40b9 ldr        w9, [sp, #0x1c]                              
00005e24 28008052 mov        w8, #1                                       
00005e28 0921c91a lsl        w9, w8, w9                                   
00005e2c e82f40b9 ldr        w8, [sp, #0x2c]                              
00005e30 0801290a bic        w8, w8, w9                                   
00005e34 e82f00b9 str        w8, [sp, #0x2c]                              
00005e38 01000014 b          #0x5e3c                                      
00005e3c 2f000014 b          #0x5ef8                                      
00005e40 e02740b9 ldr        w0, [sp, #0x24]                              
00005e44 45000094 bl         #0x5f58                                       ; __ZL15isLDRSTR_uimm64j||__ZL15isLDRSTR_uimm64j|
00005e48 60050036 tbz        w0, #0, #0x5ef4                              
00005e4c 01000014 b          #0x5e50                                      
00005e50 e82740b9 ldr        w8, [sp, #0x24]                              
00005e54 087d0553 lsr        w8, w8, #5                                   
00005e58 08110012 and        w8, w8, #0x1f                                
00005e5c e81b00b9 str        w8, [sp, #0x18]                              
00005e60 e82740b9 ldr        w8, [sp, #0x24]                              
00005e64 08110012 and        w8, w8, #0x1f                                
00005e68 e81700b9 str        w8, [sp, #0x14]                              
00005e6c e82740b9 ldr        w8, [sp, #0x24]                              
00005e70 087d0a53 lsr        w8, w8, #0xa                                 
00005e74 082d0012 and        w8, w8, #0xfff                               
00005e78 08711d53 lsl        w8, w8, #3                                   
00005e7c e81300b9 str        w8, [sp, #0x10]                              
00005e80 e82f40b9 ldr        w8, [sp, #0x2c]                              
00005e84 e91b40b9 ldr        w9, [sp, #0x18]                              
00005e88 0825c91a lsr        w8, w8, w9                                   
00005e8c e8010036 tbz        w8, #0, #0x5ec8                              
00005e90 01000014 b          #0x5e94                                      
00005e94 e81340b9 ldr        w8, [sp, #0x10]                              
00005e98 08011071 subs       w8, w8, #0x400                               
00005e9c 63010054 b.lo       #0x5ec8                                      
00005ea0 01000014 b          #0x5ea4                                      
00005ea4 e81340b9 ldr        w8, [sp, #0x10]                              
00005ea8 e9030091 mov        x9, sp                                       
00005eac 280100f9 str        x8, [x9]                                     
00005eb0 20010090 adrp       x0, #0x29000                                 
00005eb4 00a41591 add        x0, x0, #0x569                                ; 'cmdbuf: MetalContext command-buffer offset = %#x'
00005eb8 8cfaff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005ebc e81340b9 ldr        w8, [sp, #0x10]                              
00005ec0 a8831ff8 stur       x8, [x29, #-8]                               
00005ec4 17000014 b          #0x5f20                                      
00005ec8 e82740b9 ldr        w8, [sp, #0x24]                              
00005ecc 2801b036 tbz        w8, #0x16, #0x5ef0                           
00005ed0 01000014 b          #0x5ed4                                      
00005ed4 e91740b9 ldr        w9, [sp, #0x14]                              
00005ed8 28008052 mov        w8, #1                                       
00005edc 0921c91a lsl        w9, w8, w9                                   
00005ee0 e82f40b9 ldr        w8, [sp, #0x2c]                              
00005ee4 0801290a bic        w8, w8, w9                                   
00005ee8 e82f00b9 str        w8, [sp, #0x2c]                              
00005eec 01000014 b          #0x5ef0                                      
00005ef0 01000014 b          #0x5ef4                                      
00005ef4 01000014 b          #0x5ef8                                      
00005ef8 e82b40b9 ldr        w8, [sp, #0x28]                              
00005efc 08050011 add        w8, w8, #1                                   
00005f00 e82b00b9 str        w8, [sp, #0x28]                              
00005f04 9bffff17 b          #0x5d70                                      
00005f08 20010090 adrp       x0, #0x29000                                 
00005f0c 00681691 add        x0, x0, #0x59a                                ; 'cmdbuf: command-buffer field access not found'
00005f10 76faff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005f14 08008092 mov        x8, #-1                                      
00005f18 a8831ff8 stur       x8, [x29, #-8]                               
00005f1c 01000014 b          #0x5f20                                      
00005f20 a0835ff8 ldur       x0, [x29, #-8]                               
00005f24 fd7b48a9 ldp        x29, x30, [sp, #0x80]                        
00005f28 ff430291 add        sp, sp, #0x90                                
00005f2c ff0f5fd6 retab                                                   
00005f30 ff4300d1 sub        sp, sp, #0x10                                 ; __ZL8isMOVregj||__ZL8isMOVregj|
00005f34 e00f00b9 str        w0, [sp, #0xc]                               
00005f38 e80f40b9 ldr        w8, [sp, #0xc]                               
00005f3c 08a90b12 and        w8, w8, #0xffe0ffe0                          
00005f40 097c8052 mov        w9, #0x3e0                                   
00005f44 0940b572 movk       w9, #0xaa00, lsl #16                         
00005f48 0801096b subs       w8, w8, w9                                   
00005f4c e0179f1a cset       w0, eq                                       
00005f50 ff430091 add        sp, sp, #0x10                                
00005f54 c0035fd6 ret                                                     
00005f58 ff4300d1 sub        sp, sp, #0x10                                 ; __ZL15isLDRSTR_uimm64j||__ZL15isLDRSTR_uimm64j|
00005f5c e00f00b9 str        w0, [sp, #0xc]                               
00005f60 e80f40b9 ldr        w8, [sp, #0xc]                               
00005f64 08210912 and        w8, w8, #0xff800000                          
00005f68 0920bf52 mov        w9, #-0x7000000                              
00005f6c 0801096b subs       w8, w8, w9                                   
00005f70 e0179f1a cset       w0, eq                                       
00005f74 ff430091 add        sp, sp, #0x10                                
00005f78 c0035fd6 ret                                                     
00005f7c 7f2303d5 pacibsp                                                  ; |_LGResolve_ContextDestinationOffset||_LGResolve_ContextDestinationOffset
00005f80 ff4301d1 sub        sp, sp, #0x50                                
00005f84 fd7b04a9 stp        x29, x30, [sp, #0x40]                        
00005f88 fd030191 add        x29, sp, #0x40                               
00005f8c 880100f0 adrp       x8, #0x38000                                 
00005f90 08014f39 ldrb       w8, [x8, #0x3c0]                             
00005f94 a8000037 tbnz       w8, #0, #0x5fa8                              
00005f98 01000014 b          #0x5f9c                                      
00005f9c 08008092 mov        x8, #-1                                      
00005fa0 a8831ff8 stur       x8, [x29, #-8]                               
00005fa4 70000014 b          #0x6164                                      
00005fa8 880100f0 adrp       x8, #0x38000                                 
00005fac 08e941f9 ldr        x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00005fb0 a8031ff8 stur       x8, [x29, #-0x10]                            
00005fb4 880100f0 adrp       x8, #0x38000                                 
00005fb8 08ed41f9 ldr        x8, [x8, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
00005fbc 890080d2 mov        x9, #4                                       
00005fc0 0809c99a udiv       x8, x8, x9                                   
00005fc4 a8831ef8 stur       x8, [x29, #-0x18]                            
00005fc8 08008092 mov        x8, #-1                                      
00005fcc e81300f9 str        x8, [sp, #0x20]                              
00005fd0 ff0f00f9 str        xzr, [sp, #0x18]                             
00005fd4 01000014 b          #0x5fd8                                      
00005fd8 e80f40f9 ldr        x8, [sp, #0x18]                              
00005fdc 08150091 add        x8, x8, #5                                   
00005fe0 a9835ef8 ldur       x9, [x29, #-0x18]                            
00005fe4 080109eb subs       x8, x8, x9                                   
00005fe8 c20a0054 b.hs       #0x6140                                      
00005fec 01000014 b          #0x5ff0                                      
00005ff0 a8035ff8 ldur       x8, [x29, #-0x10]                            
00005ff4 e90f40f9 ldr        x9, [sp, #0x18]                              
00005ff8 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00005ffc 084d0a12 and        w8, w8, #0xffc003ff                          
00006000 09018052 mov        w9, #8                                       
00006004 0928bf72 movk       w9, #0xf940, lsl #16                         
00006008 0801096b subs       w8, w8, w9                                   
0000600c e1050054 b.ne       #0x60c8                                      
00006010 01000014 b          #0x6014                                      
00006014 a8035ff8 ldur       x8, [x29, #-0x10]                            
00006018 e90f40f9 ldr        x9, [sp, #0x18]                              
0000601c 29050091 add        x9, x9, #1                                   
00006020 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00006024 29218552 mov        w9, #0x2909                                  
00006028 8928a572 movk       w9, #0x2944, lsl #16                         
0000602c 0801096b subs       w8, w8, w9                                   
00006030 c1040054 b.ne       #0x60c8                                      
00006034 01000014 b          #0x6038                                      
00006038 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000603c e90f40f9 ldr        x9, [sp, #0x18]                              
00006040 29090091 add        x9, x9, #2                                   
00006044 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00006048 09248052 mov        w9, #0x120                                   
0000604c 49c4a372 movk       w9, #0x1e22, lsl #16                         
00006050 0801096b subs       w8, w8, w9                                   
00006054 a1030054 b.ne       #0x60c8                                      
00006058 01000014 b          #0x605c                                      
0000605c a8035ff8 ldur       x8, [x29, #-0x10]                            
00006060 e90f40f9 ldr        x9, [sp, #0x18]                              
00006064 290d0091 add        x9, x9, #3                                   
00006068 087969b8 ldr        w8, [x8, x9, lsl #2]                         
0000606c 69218652 mov        w9, #0x310b                                  
00006070 6928a572 movk       w9, #0x2943, lsl #16                         
00006074 0801096b subs       w8, w8, w9                                   
00006078 81020054 b.ne       #0x60c8                                      
0000607c 01000014 b          #0x6080                                      
00006080 a8035ff8 ldur       x8, [x29, #-0x10]                            
00006084 e90f40f9 ldr        x9, [sp, #0x18]                              
00006088 29110091 add        x9, x9, #4                                   
0000608c 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00006090 292d8052 mov        w9, #0x169                                   
00006094 2961a172 movk       w9, #0xb09, lsl #16                          
00006098 0801096b subs       w8, w8, w9                                   
0000609c 61010054 b.ne       #0x60c8                                      
000060a0 01000014 b          #0x60a4                                      
000060a4 a8035ff8 ldur       x8, [x29, #-0x10]                            
000060a8 e90f40f9 ldr        x9, [sp, #0x18]                              
000060ac 29150091 add        x9, x9, #5                                   
000060b0 087969b8 ldr        w8, [x8, x9, lsl #2]                         
000060b4 29248052 mov        w9, #0x121                                   
000060b8 49c4a372 movk       w9, #0x1e22, lsl #16                         
000060bc 0801096b subs       w8, w8, w9                                   
000060c0 60000054 b.eq       #0x60cc                                      
000060c4 01000014 b          #0x60c8                                      
000060c8 1a000014 b          #0x6130                                      
000060cc a8035ff8 ldur       x8, [x29, #-0x10]                            
000060d0 e90f40f9 ldr        x9, [sp, #0x18]                              
000060d4 087969b8 ldr        w8, [x8, x9, lsl #2]                         
000060d8 087d0a53 lsr        w8, w8, #0xa                                 
000060dc 082d0012 and        w8, w8, #0xfff                               
000060e0 08711d53 lsl        w8, w8, #3                                   
000060e4 e803082a mov        w8, w8                                       
000060e8 e80b00f9 str        x8, [sp, #0x10]                              
000060ec e81340f9 ldr        x8, [sp, #0x20]                              
000060f0 a801f8b7 tbnz       x8, #0x3f, #0x6124                           
000060f4 01000014 b          #0x60f8                                      
000060f8 e81340f9 ldr        x8, [sp, #0x20]                              
000060fc e90b40f9 ldr        x9, [sp, #0x10]                              
00006100 080109eb subs       x8, x8, x9                                   
00006104 00010054 b.eq       #0x6124                                      
00006108 01000014 b          #0x610c                                      
0000610c 000100f0 adrp       x0, #0x29000                                 
00006110 00201791 add        x0, x0, #0x5c8                                ; 'destination: conflicting projection-matrix fields'
00006114 f5f9ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00006118 08008092 mov        x8, #-1                                      
0000611c a8831ff8 stur       x8, [x29, #-8]                               
00006120 11000014 b          #0x6164                                      
00006124 e80b40f9 ldr        x8, [sp, #0x10]                              
00006128 e81300f9 str        x8, [sp, #0x20]                              
0000612c 01000014 b          #0x6130                                      
00006130 e80f40f9 ldr        x8, [sp, #0x18]                              
00006134 08050091 add        x8, x8, #1                                   
00006138 e80f00f9 str        x8, [sp, #0x18]                              
0000613c a7ffff17 b          #0x5fd8                                      
00006140 e81340f9 ldr        x8, [sp, #0x20]                              
00006144 e9030091 mov        x9, sp                                       
00006148 280100f9 str        x8, [x9]                                     
0000614c 000100f0 adrp       x0, #0x29000                                 
00006150 00e81791 add        x0, x0, #0x5fa                                ; 'destination: projection-matrix surface offset = %zd'
00006154 e5f9ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00006158 e81340f9 ldr        x8, [sp, #0x20]                              
0000615c a8831ff8 stur       x8, [x29, #-8]                               
00006160 01000014 b          #0x6164                                      
00006164 a0835ff8 ldur       x0, [x29, #-8]                               
00006168 fd7b44a9 ldp        x29, x30, [sp, #0x40]                        
0000616c ff430191 add        sp, sp, #0x50                                
00006170 ff0f5fd6 retab                                                   
00006174 7f2303d5 pacibsp                                                  ; |_LGResolve_RenderVtableSlot||_LGResolve_RenderVtableSlot
00006178 ff0302d1 sub        sp, sp, #0x80                                
0000617c fd7b07a9 stp        x29, x30, [sp, #0x70]                        
00006180 fdc30191 add        x29, sp, #0x70                               
00006184 08788052 mov        w8, #0x3c0                                   
00006188 e8cbba72 movk       w8, #0xd65f, lsl #16                         
0000618c e81b00b9 str        w8, [sp, #0x18]                              
00006190 a0031ff8 stur       x0, [x29, #-0x10]                            
00006194 a1c31eb8 stur       w1, [x29, #-0x14]                            
00006198 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000619c a80000b5 cbnz       x8, #0x61b0                                  
000061a0 01000014 b          #0x61a4                                      
000061a4 08008012 mov        w8, #-1                                      
000061a8 a8c31fb8 stur       w8, [x29, #-4]                               
000061ac 1f010014 b          #0x6628                                      
000061b0 bf831eb8 stur       wzr, [x29, #-0x18]                           
000061b4 01000014 b          #0x61b8                                      
000061b8 a8835eb8 ldur       w8, [x29, #-0x18]                            
000061bc 08050011 add        w8, w8, #1                                   
000061c0 a9c35eb8 ldur       w9, [x29, #-0x14]                            
000061c4 0801096b subs       w8, w8, w9                                   
000061c8 ea210054 b.ge       #0x6604                                      
000061cc 01000014 b          #0x61d0                                      
000061d0 a8035ff8 ldur       x8, [x29, #-0x10]                            
000061d4 a9839eb8 ldursw     x9, [x29, #-0x18]                            
000061d8 007969f8 ldr        x0, [x8, x9, lsl #3]                         
000061dc e7f8ff97 bl         #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
000061e0 a0031ef8 stur       x0, [x29, #-0x20]                            
000061e4 a8035ef8 ldur       x8, [x29, #-0x20]                            
000061e8 c80000b4 cbz        x8, #0x6200                                  
000061ec 01000014 b          #0x61f0                                      
000061f0 a0035ef8 ldur       x0, [x29, #-0x20]                            
000061f4 11010094 bl         #0x6638                                       ; |_LGSymAddressInQuartzCoreImage||_LGSymAddressInQuartzCoreImage
000061f8 60000037 tbnz       w0, #0, #0x6204                              
000061fc 01000014 b          #0x6200                                      
00006200 fd000014 b          #0x65f4                                      
00006204 bfc31db8 stur       wzr, [x29, #-0x24]                           
00006208 01000014 b          #0x620c                                      
0000620c a8c35db8 ldur       w8, [x29, #-0x24]                            
00006210 08050011 add        w8, w8, #1                                   
00006214 08610071 subs       w8, w8, #0x18                                
00006218 ca1e0054 b.ge       #0x65f0                                      
0000621c 01000014 b          #0x6220                                      
00006220 e91b40b9 ldr        w9, [sp, #0x18]                              
00006224 a8035ef8 ldur       x8, [x29, #-0x20]                            
00006228 aac39db8 ldursw     x10, [x29, #-0x24]                           
0000622c 08796ab8 ldr        w8, [x8, x10, lsl #2]                        
00006230 a8831db8 stur       w8, [x29, #-0x28]                            
00006234 a8835db8 ldur       w8, [x29, #-0x28]                            
00006238 0801096b subs       w8, w8, w9                                   
0000623c 61000054 b.ne       #0x6248                                      
00006240 01000014 b          #0x6244                                      
00006244 eb000014 b          #0x65f0                                      
00006248 a8835db8 ldur       w8, [x29, #-0x28]                            
0000624c 09018052 mov        w9, #8                                       
00006250 0928bf72 movk       w9, #0xf940, lsl #16                         
00006254 0801096b subs       w8, w8, w9                                   
00006258 610a0054 b.ne       #0x63a4                                      
0000625c 01000014 b          #0x6260                                      
00006260 a8035ef8 ldur       x8, [x29, #-0x20]                            
00006264 a9c35db8 ldur       w9, [x29, #-0x24]                            
00006268 29050011 add        w9, w9, #1                                   
0000626c 08d969b8 ldr        w8, [x8, w9, sxtw #2]                        
00006270 084d0a12 and        w8, w8, #0xffc003ff                          
00006274 09218052 mov        w9, #0x108                                   
00006278 0928bf72 movk       w9, #0xf940, lsl #16                         
0000627c 0801096b subs       w8, w8, w9                                   
00006280 21090054 b.ne       #0x63a4                                      
00006284 01000014 b          #0x6288                                      
00006288 a8035ef8 ldur       x8, [x29, #-0x20]                            
0000628c a9c35db8 ldur       w9, [x29, #-0x24]                            
00006290 29050011 add        w9, w9, #1                                   
00006294 08d969b8 ldr        w8, [x8, w9, sxtw #2]                        
00006298 087d0a53 lsr        w8, w8, #0xa                                 
0000629c 082d0012 and        w8, w8, #0xfff                               
000062a0 a8431db8 stur       w8, [x29, #-0x2c]                            
000062a4 a8435db8 ldur       w8, [x29, #-0x2c]                            
000062a8 a9835eb8 ldur       w9, [x29, #-0x18]                            
000062ac 29050011 add        w9, w9, #1                                   
000062b0 0801096b subs       w8, w8, w9                                   
000062b4 60000054 b.eq       #0x62c0                                      
000062b8 01000014 b          #0x62bc                                      
000062bc c9000014 b          #0x65e0                                      
000062c0 bf331d38 sturb      wzr, [x29, #-0x2d]                           
000062c4 a8c35db8 ldur       w8, [x29, #-0x24]                            
000062c8 08090011 add        w8, w8, #2                                   
000062cc a8c31cb8 stur       w8, [x29, #-0x34]                            
000062d0 01000014 b          #0x62d4                                      
000062d4 a8c35cb8 ldur       w8, [x29, #-0x34]                            
000062d8 a9c35db8 ldur       w9, [x29, #-0x24]                            
000062dc 29410011 add        w9, w9, #0x10                                
000062e0 0801096b subs       w8, w8, w9                                   
000062e4 0a040054 b.ge       #0x6364                                      
000062e8 01000014 b          #0x62ec                                      
000062ec a8035ef8 ldur       x8, [x29, #-0x20]                            
000062f0 a9c39cb8 ldursw     x9, [x29, #-0x34]                            
000062f4 087969b8 ldr        w8, [x8, x9, lsl #2]                         
000062f8 e83b00b9 str        w8, [sp, #0x38]                              
000062fc e83b40b9 ldr        w8, [sp, #0x38]                              
00006300 09208052 mov        w9, #0x100                                   
00006304 e9c3ba72 movk       w9, #0xd61f, lsl #16                         
00006308 0801096b subs       w8, w8, w9                                   
0000630c 00010054 b.eq       #0x632c                                      
00006310 01000014 b          #0x6314                                      
00006314 e83b40b9 ldr        w8, [sp, #0x38]                              
00006318 09208052 mov        w9, #0x100                                   
0000631c e9c7ba72 movk       w9, #0xd63f, lsl #16                         
00006320 0801096b subs       w8, w8, w9                                   
00006324 a1000054 b.ne       #0x6338                                      
00006328 01000014 b          #0x632c                                      
0000632c 28008052 mov        w8, #1                                       
00006330 a8331d38 sturb      w8, [x29, #-0x2d]                            
00006334 0c000014 b          #0x6364                                      
00006338 e91b40b9 ldr        w9, [sp, #0x18]                              
0000633c e83b40b9 ldr        w8, [sp, #0x38]                              
00006340 0801096b subs       w8, w8, w9                                   
00006344 61000054 b.ne       #0x6350                                      
00006348 01000014 b          #0x634c                                      
0000634c 06000014 b          #0x6364                                      
00006350 01000014 b          #0x6354                                      
00006354 a8c35cb8 ldur       w8, [x29, #-0x34]                            
00006358 08050011 add        w8, w8, #1                                   
0000635c a8c31cb8 stur       w8, [x29, #-0x34]                            
00006360 ddffff17 b          #0x62d4                                      
00006364 a8335d38 ldurb      w8, [x29, #-0x2d]                            
00006368 68000037 tbnz       w8, #0, #0x6374                              
0000636c 01000014 b          #0x6370                                      
00006370 9c000014 b          #0x65e0                                      
00006374 a8835eb8 ldur       w8, [x29, #-0x18]                            
00006378 ea0308aa mov        x10, x8                                      
0000637c a8435db8 ldur       w8, [x29, #-0x2c]                            
00006380 e9030091 mov        x9, sp                                       
00006384 2a0100f9 str        x10, [x9]                                    
00006388 280500f9 str        x8, [x9, #8]                                 
0000638c 000100f0 adrp       x0, #0x29000                                 
00006390 00b81891 add        x0, x0, #0x62e                                ; 'render-slot: forwarder at vtable[%d] -> render vtable[%d]'
00006394 55f9ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00006398 a8435db8 ldur       w8, [x29, #-0x2c]                            
0000639c a8c31fb8 stur       w8, [x29, #-4]                               
000063a0 a2000014 b          #0x6628                                      
000063a4 a8835db8 ldur       w8, [x29, #-0x28]                            
000063a8 09028052 mov        w9, #0x10                                    
000063ac 0928bf72 movk       w9, #0xf940, lsl #16                         
000063b0 0801096b subs       w8, w8, w9                                   
000063b4 41110054 b.ne       #0x65dc                                      
000063b8 01000014 b          #0x63bc                                      
000063bc a8c35db8 ldur       w8, [x29, #-0x24]                            
000063c0 08050011 add        w8, w8, #1                                   
000063c4 e83700b9 str        w8, [sp, #0x34]                              
000063c8 01000014 b          #0x63cc                                      
000063cc e83740b9 ldr        w8, [sp, #0x34]                              
000063d0 09050011 add        w9, w8, #1                                   
000063d4 08008052 mov        w8, #0                                       
000063d8 29610071 subs       w9, w9, #0x18                                
000063dc e81700b9 str        w8, [sp, #0x14]                              
000063e0 2a010054 b.ge       #0x6404                                      
000063e4 01000014 b          #0x63e8                                      
000063e8 e83740b9 ldr        w8, [sp, #0x34]                              
000063ec a9c35db8 ldur       w9, [x29, #-0x24]                            
000063f0 29290011 add        w9, w9, #0xa                                 
000063f4 0801096b subs       w8, w8, w9                                   
000063f8 e8a79f1a cset       w8, lt                                       
000063fc e81700b9 str        w8, [sp, #0x14]                              
00006400 01000014 b          #0x6404                                      
00006404 e81740b9 ldr        w8, [sp, #0x14]                              
00006408 880e0036 tbz        w8, #0, #0x65d8                              
0000640c 01000014 b          #0x6410                                      
00006410 a8035ef8 ldur       x8, [x29, #-0x20]                            
00006414 e93780b9 ldrsw      x9, [sp, #0x34]                              
00006418 087969b8 ldr        w8, [x8, x9, lsl #2]                         
0000641c e83300b9 str        w8, [sp, #0x30]                              
00006420 e83340b9 ldr        w8, [sp, #0x30]                              
00006424 09808152 mov        w9, #0xc00                                   
00006428 09fcbf72 movk       w9, #0xffe0, lsl #16                         
0000642c 0801090a and        w8, w8, w9                                   
00006430 09808152 mov        w9, #0xc00                                   
00006434 0908bf72 movk       w9, #0xf840, lsl #16                         
00006438 0801096b subs       w8, w8, w9                                   
0000643c 60000054 b.eq       #0x6448                                      
00006440 01000014 b          #0x6444                                      
00006444 61000014 b          #0x65c8                                      
00006448 e83340b9 ldr        w8, [sp, #0x30]                              
0000644c 087d0553 lsr        w8, w8, #5                                   
00006450 08110012 and        w8, w8, #0x1f                                
00006454 08410071 subs       w8, w8, #0x10                                
00006458 e1000054 b.ne       #0x6474                                      
0000645c 01000014 b          #0x6460                                      
00006460 e83340b9 ldr        w8, [sp, #0x30]                              
00006464 08110012 and        w8, w8, #0x1f                                
00006468 08210071 subs       w8, w8, #8                                   
0000646c 60000054 b.eq       #0x6478                                      
00006470 01000014 b          #0x6474                                      
00006474 55000014 b          #0x65c8                                      
00006478 e83340b9 ldr        w8, [sp, #0x30]                              
0000647c 087d0c53 lsr        w8, w8, #0xc                                 
00006480 08210012 and        w8, w8, #0x1ff                               
00006484 e82f00b9 str        w8, [sp, #0x2c]                              
00006488 e82f40b9 ldr        w8, [sp, #0x2c]                              
0000648c 09018052 mov        w9, #8                                       
00006490 080dc91a sdiv       w8, w8, w9                                   
00006494 e82b00b9 str        w8, [sp, #0x28]                              
00006498 e82b40b9 ldr        w8, [sp, #0x28]                              
0000649c a9835eb8 ldur       w9, [x29, #-0x18]                            
000064a0 29050011 add        w9, w9, #1                                   
000064a4 0801096b subs       w8, w8, w9                                   
000064a8 60000054 b.eq       #0x64b4                                      
000064ac 01000014 b          #0x64b0                                      
000064b0 4a000014 b          #0x65d8                                      
000064b4 ff9f0039 strb       wzr, [sp, #0x27]                             
000064b8 e83740b9 ldr        w8, [sp, #0x34]                              
000064bc 08050011 add        w8, w8, #1                                   
000064c0 e82300b9 str        w8, [sp, #0x20]                              
000064c4 01000014 b          #0x64c8                                      
000064c8 e92340b9 ldr        w9, [sp, #0x20]                              
000064cc e83740b9 ldr        w8, [sp, #0x34]                              
000064d0 0a290011 add        w10, w8, #0xa                                
000064d4 08008052 mov        w8, #0                                       
000064d8 29010a6b subs       w9, w9, w10                                  
000064dc e81300b9 str        w8, [sp, #0x10]                              
000064e0 ea000054 b.ge       #0x64fc                                      
000064e4 01000014 b          #0x64e8                                      
000064e8 e82340b9 ldr        w8, [sp, #0x20]                              
000064ec 08610071 subs       w8, w8, #0x18                                
000064f0 e8a79f1a cset       w8, lt                                       
000064f4 e81300b9 str        w8, [sp, #0x10]                              
000064f8 01000014 b          #0x64fc                                      
000064fc e81340b9 ldr        w8, [sp, #0x10]                              
00006500 48040036 tbz        w8, #0, #0x6588                              
00006504 01000014 b          #0x6508                                      
00006508 a8035ef8 ldur       x8, [x29, #-0x20]                            
0000650c e92380b9 ldrsw      x9, [sp, #0x20]                              
00006510 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00006514 e81f00b9 str        w8, [sp, #0x1c]                              
00006518 e81f40b9 ldr        w8, [sp, #0x1c]                              
0000651c 08511512 and        w8, w8, #0xfffff800                          
00006520 09008152 mov        w9, #0x800                                   
00006524 e9e7ba72 movk       w9, #0xd73f, lsl #16                         
00006528 0801096b subs       w8, w8, w9                                   
0000652c 20010054 b.eq       #0x6550                                      
00006530 01000014 b          #0x6534                                      
00006534 e81f40b9 ldr        w8, [sp, #0x1c]                              
00006538 08511512 and        w8, w8, #0xfffff800                          
0000653c 09008152 mov        w9, #0x800                                   
00006540 e9e3ba72 movk       w9, #0xd71f, lsl #16                         
00006544 0801096b subs       w8, w8, w9                                   
00006548 a1000054 b.ne       #0x655c                                      
0000654c 01000014 b          #0x6550                                      
00006550 28008052 mov        w8, #1                                       
00006554 e89f0039 strb       w8, [sp, #0x27]                              
00006558 0c000014 b          #0x6588                                      
0000655c e91b40b9 ldr        w9, [sp, #0x18]                              
00006560 e81f40b9 ldr        w8, [sp, #0x1c]                              
00006564 0801096b subs       w8, w8, w9                                   
00006568 61000054 b.ne       #0x6574                                      
0000656c 01000014 b          #0x6570                                      
00006570 06000014 b          #0x6588                                      
00006574 01000014 b          #0x6578                                      
00006578 e82340b9 ldr        w8, [sp, #0x20]                              
0000657c 08050011 add        w8, w8, #1                                   
00006580 e82300b9 str        w8, [sp, #0x20]                              
00006584 d1ffff17 b          #0x64c8                                      
00006588 e89f4039 ldrb       w8, [sp, #0x27]                              
0000658c 68000037 tbnz       w8, #0, #0x6598                              
00006590 01000014 b          #0x6594                                      
00006594 11000014 b          #0x65d8                                      
00006598 a8835eb8 ldur       w8, [x29, #-0x18]                            
0000659c ea0308aa mov        x10, x8                                      
000065a0 e82b40b9 ldr        w8, [sp, #0x28]                              
000065a4 e9030091 mov        x9, sp                                       
000065a8 2a0100f9 str        x10, [x9]                                    
000065ac 280500f9 str        x8, [x9, #8]                                 
000065b0 000100f0 adrp       x0, #0x29000                                 
000065b4 00a01991 add        x0, x0, #0x668                                ; 'render-slot: PAC forwarder at vtable[%d] -> render vtable[%d]'
000065b8 ccf8ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000065bc e82b40b9 ldr        w8, [sp, #0x28]                              
000065c0 a8c31fb8 stur       w8, [x29, #-4]                               
000065c4 19000014 b          #0x6628                                      
000065c8 e83740b9 ldr        w8, [sp, #0x34]                              
000065cc 08050011 add        w8, w8, #1                                   
000065d0 e83700b9 str        w8, [sp, #0x34]                              
000065d4 7effff17 b          #0x63cc                                      
000065d8 01000014 b          #0x65dc                                      
000065dc 01000014 b          #0x65e0                                      
000065e0 a8c35db8 ldur       w8, [x29, #-0x24]                            
000065e4 08050011 add        w8, w8, #1                                   
000065e8 a8c31db8 stur       w8, [x29, #-0x24]                            
000065ec 08ffff17 b          #0x620c                                      
000065f0 01000014 b          #0x65f4                                      
000065f4 a8835eb8 ldur       w8, [x29, #-0x18]                            
000065f8 08050011 add        w8, w8, #1                                   
000065fc a8831eb8 stur       w8, [x29, #-0x18]                            
00006600 eefeff17 b          #0x61b8                                      
00006604 a8c35eb8 ldur       w8, [x29, #-0x14]                            
00006608 e9030091 mov        x9, sp                                       
0000660c 280100f9 str        x8, [x9]                                     
00006610 000100f0 adrp       x0, #0x29000                                 
00006614 00981a91 add        x0, x0, #0x6a6                                ; 'render-slot: render forwarder not found (checked %d slots)'
00006618 b4f8ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000661c 08008012 mov        w8, #-1                                      
00006620 a8c31fb8 stur       w8, [x29, #-4]                               
00006624 01000014 b          #0x6628                                      
00006628 a0c35fb8 ldur       w0, [x29, #-4]                               
0000662c fd7b47a9 ldp        x29, x30, [sp, #0x70]                        
00006630 ff030291 add        sp, sp, #0x80                                
00006634 ff0f5fd6 retab                                                   
00006638 ff8300d1 sub        sp, sp, #0x20                                 ; |_LGSymAddressInQuartzCoreImage||_LGSymAddressInQuartzCoreImage
0000663c e00b00f9 str        x0, [sp, #0x10]                              
00006640 880100d0 adrp       x8, #0x38000                                 
00006644 08014f39 ldrb       w8, [x8, #0x3c0]                             
00006648 a8000036 tbz        w8, #0, #0x665c                              
0000664c 01000014 b          #0x6650                                      
00006650 e80b40f9 ldr        x8, [sp, #0x10]                              
00006654 e80000b5 cbnz       x8, #0x6670                                  
00006658 01000014 b          #0x665c                                      
0000665c 08008052 mov        w8, #0                                       
00006660 08010012 and        w8, w8, #1                                   
00006664 08010012 and        w8, w8, #1                                   
00006668 e87f0039 strb       w8, [sp, #0x1f]                              
0000666c 15000014 b          #0x66c0                                      
00006670 e90b40f9 ldr        x9, [sp, #0x10]                              
00006674 880100d0 adrp       x8, #0x38000                                 
00006678 0af141f9 ldr        x10, [x8, #0x3e0]                             ; __ZL11g_qcImageLo|__ZL11g_qcImageLo
0000667c 08008052 mov        w8, #0                                       
00006680 29010aeb subs       x9, x9, x10                                  
00006684 e80f00b9 str        w8, [sp, #0xc]                               
00006688 23010054 b.lo       #0x66ac                                      
0000668c 01000014 b          #0x6690                                      
00006690 e80b40f9 ldr        x8, [sp, #0x10]                              
00006694 890100d0 adrp       x9, #0x38000                                 
00006698 29f541f9 ldr        x9, [x9, #0x3e8]                              ; __ZL11g_qcImageHi|__ZL11g_qcImageHi
0000669c 080109eb subs       x8, x8, x9                                   
000066a0 e8279f1a cset       w8, lo                                       
000066a4 e80f00b9 str        w8, [sp, #0xc]                               
000066a8 01000014 b          #0x66ac                                      
000066ac e80f40b9 ldr        w8, [sp, #0xc]                               
000066b0 08010012 and        w8, w8, #1                                   
000066b4 08010012 and        w8, w8, #1                                   
000066b8 e87f0039 strb       w8, [sp, #0x1f]                              
000066bc 01000014 b          #0x66c0                                      
000066c0 e87f4039 ldrb       w8, [sp, #0x1f]                              
000066c4 00010012 and        w0, w8, #1                                   
000066c8 ff830091 add        sp, sp, #0x20                                
000066cc c0035fd6 ret                                                     
000066d0 7f2303d5 pacibsp                                                  ; |_LGResolve_RenderUsesTwoShapes||_LGResolve_RenderUsesTwoShapes
000066d4 ffc300d1 sub        sp, sp, #0x30                                
000066d8 fd7b02a9 stp        x29, x30, [sp, #0x20]                        
000066dc fd830091 add        x29, sp, #0x20                               
000066e0 e00b00f9 str        x0, [sp, #0x10]                              
000066e4 e00b40f9 ldr        x0, [sp, #0x10]                              
000066e8 a4f7ff97 bl         #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
000066ec e00700f9 str        x0, [sp, #8]                                 
000066f0 e80740f9 ldr        x8, [sp, #8]                                 
000066f4 c80000b4 cbz        x8, #0x670c                                  
000066f8 01000014 b          #0x66fc                                      
000066fc e00740f9 ldr        x0, [sp, #8]                                 
00006700 ceffff97 bl         #0x6638                                       ; |_LGSymAddressInQuartzCoreImage||_LGSymAddressInQuartzCoreImage
00006704 e0000037 tbnz       w0, #0, #0x6720                              
00006708 01000014 b          #0x670c                                      
0000670c 08008052 mov        w8, #0                                       
00006710 08010012 and        w8, w8, #1                                   
00006714 08010012 and        w8, w8, #1                                   
00006718 a8f31f38 sturb      w8, [x29, #-1]                               
0000671c 30000014 b          #0x67dc                                      
00006720 ff0700b9 str        wzr, [sp, #4]                                
00006724 01000014 b          #0x6728                                      
00006728 e80740b9 ldr        w8, [sp, #4]                                 
0000672c 08010471 subs       w8, w8, #0x100                               
00006730 ca040054 b.ge       #0x67c8                                      
00006734 01000014 b          #0x6738                                      
00006738 e80740f9 ldr        x8, [sp, #8]                                 
0000673c e90780b9 ldrsw      x9, [sp, #4]                                 
00006740 087969b8 ldr        w8, [x8, x9, lsl #2]                         
00006744 08691b12 and        w8, w8, #0xffffffe0                          
00006748 09f48152 mov        w9, #0xfa0                                   
0000674c 0928bf72 movk       w9, #0xf940, lsl #16                         
00006750 0801096b subs       w8, w8, w9                                   
00006754 e1000054 b.ne       #0x6770                                      
00006758 01000014 b          #0x675c                                      
0000675c 28008052 mov        w8, #1                                       
00006760 08010012 and        w8, w8, #1                                   
00006764 08010012 and        w8, w8, #1                                   
00006768 a8f31f38 sturb      w8, [x29, #-1]                               
0000676c 1c000014 b          #0x67dc                                      
00006770 e80740f9 ldr        x8, [sp, #8]                                 
00006774 e90780b9 ldrsw      x9, [sp, #4]                                 
00006778 087969b8 ldr        w8, [x8, x9, lsl #2]                         
0000677c 09788052 mov        w9, #0x3c0                                   
00006780 e9cbba72 movk       w9, #0xd65f, lsl #16                         
00006784 0801096b subs       w8, w8, w9                                   
00006788 40010054 b.eq       #0x67b0                                      
0000678c 01000014 b          #0x6790                                      
00006790 e80740f9 ldr        x8, [sp, #8]                                 
00006794 e90780b9 ldrsw      x9, [sp, #4]                                 
00006798 087969b8 ldr        w8, [x8, x9, lsl #2]                         
0000679c e9ff8152 mov        w9, #0xfff                                   
000067a0 e9cbba72 movk       w9, #0xd65f, lsl #16                         
000067a4 0801096b subs       w8, w8, w9                                   
000067a8 61000054 b.ne       #0x67b4                                      
000067ac 01000014 b          #0x67b0                                      
000067b0 06000014 b          #0x67c8                                      
000067b4 01000014 b          #0x67b8                                      
000067b8 e80740b9 ldr        w8, [sp, #4]                                 
000067bc 08050011 add        w8, w8, #1                                   
000067c0 e80700b9 str        w8, [sp, #4]                                 
000067c4 d9ffff17 b          #0x6728                                      
000067c8 08008052 mov        w8, #0                                       
000067cc 08010012 and        w8, w8, #1                                   
000067d0 08010012 and        w8, w8, #1                                   
000067d4 a8f31f38 sturb      w8, [x29, #-1]                               
000067d8 01000014 b          #0x67dc                                      
000067dc a8f35f38 ldurb      w8, [x29, #-1]                               
000067e0 00010012 and        w0, w8, #1                                   
000067e4 fd7b42a9 ldp        x29, x30, [sp, #0x20]                        
000067e8 ffc30091 add        sp, sp, #0x30                                
000067ec ff0f5fd6 retab                                                   
000067f0 7f2303d5 pacibsp                                                  ; |_LGResolve_EdgeInfoVtableSlot||_LGResolve_EdgeInfoVtableSlot
000067f4 ff0302d1 sub        sp, sp, #0x80                                
000067f8 fd7b07a9 stp        x29, x30, [sp, #0x70]                        
000067fc fdc30191 add        x29, sp, #0x70                               
00006800 a0031ff8 stur       x0, [x29, #-0x10]                            
00006804 a1c31eb8 stur       w1, [x29, #-0x14]                            
00006808 a8035ff8 ldur       x8, [x29, #-0x10]                            
0000680c a80000b5 cbnz       x8, #0x6820                                  
00006810 01000014 b          #0x6814                                      
00006814 08008012 mov        w8, #-1                                      
00006818 a8c31fb8 stur       w8, [x29, #-4]                               
0000681c cb000014 b          #0x6b48                                      
00006820 bf831eb8 stur       wzr, [x29, #-0x18]                           
00006824 01000014 b          #0x6828                                      
00006828 a8835eb8 ldur       w8, [x29, #-0x18]                            
0000682c a9c35eb8 ldur       w9, [x29, #-0x14]                            
00006830 0801096b subs       w8, w8, w9                                   
00006834 8a170054 b.ge       #0x6b24                                      
00006838 01000014 b          #0x683c                                      
0000683c a8035ff8 ldur       x8, [x29, #-0x10]                            
00006840 a9839eb8 ldursw     x9, [x29, #-0x18]                            
00006844 007969f8 ldr        x0, [x8, x9, lsl #3]                         
00006848 4cf7ff97 bl         #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
0000684c a0031ef8 stur       x0, [x29, #-0x20]                            
00006850 a8035ef8 ldur       x8, [x29, #-0x20]                            
00006854 c80000b4 cbz        x8, #0x686c                                  
00006858 01000014 b          #0x685c                                      
0000685c a0035ef8 ldur       x0, [x29, #-0x20]                            
00006860 76ffff97 bl         #0x6638                                       ; |_LGSymAddressInQuartzCoreImage||_LGSymAddressInQuartzCoreImage
00006864 60000037 tbnz       w0, #0, #0x6870                              
00006868 01000014 b          #0x686c                                      
0000686c aa000014 b          #0x6b14                                      
00006870 bff31d38 sturb      wzr, [x29, #-0x21]                           
00006874 bfe31d38 sturb      wzr, [x29, #-0x22]                           
00006878 bfd31d38 sturb      wzr, [x29, #-0x23]                           
0000687c bfc31d38 sturb      wzr, [x29, #-0x24]                           
00006880 bf831db8 stur       wzr, [x29, #-0x28]                           
00006884 01000014 b          #0x6888                                      
00006888 a8835db8 ldur       w8, [x29, #-0x28]                            
0000688c 08410171 subs       w8, w8, #0x50                                
00006890 6a110054 b.ge       #0x6abc                                      
00006894 01000014 b          #0x6898                                      
00006898 a8035ef8 ldur       x8, [x29, #-0x20]                            
0000689c a9839db8 ldursw     x9, [x29, #-0x28]                            
000068a0 087969b8 ldr        w8, [x8, x9, lsl #2]                         
000068a4 a8431db8 stur       w8, [x29, #-0x2c]                            
000068a8 a8435db8 ldur       w8, [x29, #-0x2c]                            
000068ac e97e8052 mov        w9, #0x3f7                                   
000068b0 a940b572 movk       w9, #0xaa05, lsl #16                         
000068b4 0801096b subs       w8, w8, w9                                   
000068b8 a1000054 b.ne       #0x68cc                                      
000068bc 01000014 b          #0x68c0                                      
000068c0 28008052 mov        w8, #1                                       
000068c4 a8f31d38 sturb      w8, [x29, #-0x21]                            
000068c8 01000014 b          #0x68cc                                      
000068cc a8435db8 ldur       w8, [x29, #-0x2c]                            
000068d0 897e8052 mov        w9, #0x3f4                                   
000068d4 c940b572 movk       w9, #0xaa06, lsl #16                         
000068d8 0801096b subs       w8, w8, w9                                   
000068dc a1000054 b.ne       #0x68f0                                      
000068e0 01000014 b          #0x68e4                                      
000068e4 28008052 mov        w8, #1                                       
000068e8 a8e31d38 sturb      w8, [x29, #-0x22]                            
000068ec 01000014 b          #0x68f0                                      
000068f0 a8435db8 ldur       w8, [x29, #-0x2c]                            
000068f4 295c8052 mov        w9, #0x2e1                                   
000068f8 09a0a572 movk       w9, #0x2d00, lsl #16                         
000068fc 0801096b subs       w8, w8, w9                                   
00006900 a1000054 b.ne       #0x6914                                      
00006904 01000014 b          #0x6908                                      
00006908 28008052 mov        w8, #1                                       
0000690c a8d31d38 sturb      w8, [x29, #-0x23]                            
00006910 01000014 b          #0x6914                                      
00006914 a8435db8 ldur       w8, [x29, #-0x2c]                            
00006918 095c8052 mov        w9, #0x2e0                                   
0000691c 09a0bf72 movk       w9, #0xfd00, lsl #16                         
00006920 0801096b subs       w8, w8, w9                                   
00006924 a1000054 b.ne       #0x6938                                      
00006928 01000014 b          #0x692c                                      
0000692c 28008052 mov        w8, #1                                       
00006930 a8d31d38 sturb      w8, [x29, #-0x23]                            
00006934 01000014 b          #0x6938                                      
00006938 e10f40f9 ldr        x1, [sp, #0x18]                              
0000693c 880100d0 adrp       x8, #0x38000                                 
00006940 00f140f9 ldr        x0, [x8, #0x1e0]                             
00006944 37890094 bl         #0x28e20                                      ; _objc_msgSend$processInfo
00006948 fd031daa mov        x29, x29                                     
0000694c 60850094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00006950 e01300f9 str        x0, [sp, #0x20]                              
00006954 e00000b4 cbz        x0, #0x6970                                  
00006958 01000014 b          #0x695c                                      
0000695c e10f40f9 ldr        x1, [sp, #0x18]                              
00006960 e01340f9 ldr        x0, [sp, #0x20]                              
00006964 e8a30091 add        x8, sp, #0x28                                
00006968 1e890094 bl         #0x28de0                                      ; _objc_msgSend$operatingSystemVersion
0000696c 05000014 b          #0x6980                                      
00006970 ff1700f9 str        xzr, [sp, #0x28]                             
00006974 ff1b00f9 str        xzr, [sp, #0x30]                             
00006978 ff1f00f9 str        xzr, [sp, #0x38]                             
0000697c 01000014 b          #0x6980                                      
00006980 e91740f9 ldr        x9, [sp, #0x28]                              
00006984 08008052 mov        w8, #0                                       
00006988 293500f1 subs       x9, x9, #0xd                                 
0000698c e81700b9 str        w8, [sp, #0x14]                              
00006990 81040054 b.ne       #0x6a20                                      
00006994 01000014 b          #0x6998                                      
00006998 a8835db8 ldur       w8, [x29, #-0x28]                            
0000699c 09050011 add        w9, w8, #1                                   
000069a0 08008052 mov        w8, #0                                       
000069a4 29410171 subs       w9, w9, #0x50                                
000069a8 e81700b9 str        w8, [sp, #0x14]                              
000069ac aa030054 b.ge       #0x6a20                                      
000069b0 01000014 b          #0x69b4                                      
000069b4 a8035ef8 ldur       x8, [x29, #-0x20]                            
000069b8 a9839db8 ldursw     x9, [x29, #-0x28]                            
000069bc 0809098b add        x8, x8, x9, lsl #2                           
000069c0 00110091 add        x0, x8, #4                                   
000069c4 1dffff97 bl         #0x6638                                       ; |_LGSymAddressInQuartzCoreImage||_LGSymAddressInQuartzCoreImage
000069c8 08008052 mov        w8, #0                                       
000069cc e81700b9 str        w8, [sp, #0x14]                              
000069d0 80020036 tbz        w0, #0, #0x6a20                              
000069d4 01000014 b          #0x69d8                                      
000069d8 a9435db8 ldur       w9, [x29, #-0x2c]                            
000069dc 2a5c8052 mov        w10, #0x2e1                                  
000069e0 0aa0b772 movk       w10, #0xbd00, lsl #16                        
000069e4 08008052 mov        w8, #0                                       
000069e8 29010a6b subs       w9, w9, w10                                  
000069ec e81700b9 str        w8, [sp, #0x14]                              
000069f0 81010054 b.ne       #0x6a20                                      
000069f4 01000014 b          #0x69f8                                      
000069f8 a8035ef8 ldur       x8, [x29, #-0x20]                            
000069fc a9835db8 ldur       w9, [x29, #-0x28]                            
00006a00 29050011 add        w9, w9, #1                                   
00006a04 08d969b8 ldr        w8, [x8, w9, sxtw #2]                        
00006a08 09dc8052 mov        w9, #0x6e0                                   
00006a0c 09a0b772 movk       w9, #0xbd00, lsl #16                         
00006a10 0801096b subs       w8, w8, w9                                   
00006a14 e8179f1a cset       w8, eq                                       
00006a18 e81700b9 str        w8, [sp, #0x14]                              
00006a1c 01000014 b          #0x6a20                                      
00006a20 e01340f9 ldr        x0, [sp, #0x20]                              
00006a24 e81740b9 ldr        w8, [sp, #0x14]                              
00006a28 e81300b9 str        w8, [sp, #0x10]                              
00006a2c 680100d0 adrp       x8, #0x34000                                 
00006a30 081143f9 ldr        x8, [x8, #0x620]                              ; _objc_release
00006a34 00013fd6 blr        x8                                           
00006a38 e81340b9 ldr        w8, [sp, #0x10]                              
00006a3c a8000036 tbz        w8, #0, #0x6a50                              
00006a40 01000014 b          #0x6a44                                      
00006a44 28008052 mov        w8, #1                                       
00006a48 a8d31d38 sturb      w8, [x29, #-0x23]                            
00006a4c 01000014 b          #0x6a50                                      
00006a50 a8435db8 ldur       w8, [x29, #-0x2c]                            
00006a54 09518052 mov        w9, #0x288                                   
00006a58 0920a772 movk       w9, #0x3900, lsl #16                         
00006a5c 0801096b subs       w8, w8, w9                                   
00006a60 a1000054 b.ne       #0x6a74                                      
00006a64 01000014 b          #0x6a68                                      
00006a68 28008052 mov        w8, #1                                       
00006a6c a8c31d38 sturb      w8, [x29, #-0x24]                            
00006a70 01000014 b          #0x6a74                                      
00006a74 a8435db8 ldur       w8, [x29, #-0x2c]                            
00006a78 09788052 mov        w9, #0x3c0                                   
00006a7c e9cbba72 movk       w9, #0xd65f, lsl #16                         
00006a80 0801096b subs       w8, w8, w9                                   
00006a84 00010054 b.eq       #0x6aa4                                      
00006a88 01000014 b          #0x6a8c                                      
00006a8c a8435db8 ldur       w8, [x29, #-0x2c]                            
00006a90 e9ff8152 mov        w9, #0xfff                                   
00006a94 e9cbba72 movk       w9, #0xd65f, lsl #16                         
00006a98 0801096b subs       w8, w8, w9                                   
00006a9c 61000054 b.ne       #0x6aa8                                      
00006aa0 01000014 b          #0x6aa4                                      
00006aa4 06000014 b          #0x6abc                                      
00006aa8 01000014 b          #0x6aac                                      
00006aac a8835db8 ldur       w8, [x29, #-0x28]                            
00006ab0 08050011 add        w8, w8, #1                                   
00006ab4 a8831db8 stur       w8, [x29, #-0x28]                            
00006ab8 74ffff17 b          #0x6888                                      
00006abc a8f35d38 ldurb      w8, [x29, #-0x21]                            
00006ac0 88020036 tbz        w8, #0, #0x6b10                              
00006ac4 01000014 b          #0x6ac8                                      
00006ac8 a8e35d38 ldurb      w8, [x29, #-0x22]                            
00006acc 28020036 tbz        w8, #0, #0x6b10                              
00006ad0 01000014 b          #0x6ad4                                      
00006ad4 a8d35d38 ldurb      w8, [x29, #-0x23]                            
00006ad8 c8010036 tbz        w8, #0, #0x6b10                              
00006adc 01000014 b          #0x6ae0                                      
00006ae0 a8c35d38 ldurb      w8, [x29, #-0x24]                            
00006ae4 68010036 tbz        w8, #0, #0x6b10                              
00006ae8 01000014 b          #0x6aec                                      
00006aec a8835eb8 ldur       w8, [x29, #-0x18]                            
00006af0 e9030091 mov        x9, sp                                       
00006af4 280100f9 str        x8, [x9]                                     
00006af8 000100f0 adrp       x0, #0x29000                                 
00006afc 00841b91 add        x0, x0, #0x6e1                                ; 'edge-info-slot: Gaussian get_edge_info at vtable[%d]'
00006b00 7af7ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00006b04 a8835eb8 ldur       w8, [x29, #-0x18]                            
00006b08 a8c31fb8 stur       w8, [x29, #-4]                               
00006b0c 0f000014 b          #0x6b48                                      
00006b10 01000014 b          #0x6b14                                      
00006b14 a8835eb8 ldur       w8, [x29, #-0x18]                            
00006b18 08050011 add        w8, w8, #1                                   
00006b1c a8831eb8 stur       w8, [x29, #-0x18]                            
00006b20 42ffff17 b          #0x6828                                      
00006b24 a8c35eb8 ldur       w8, [x29, #-0x14]                            
00006b28 e9030091 mov        x9, sp                                       
00006b2c 280100f9 str        x8, [x9]                                     
00006b30 000100f0 adrp       x0, #0x29000                                 
00006b34 00581c91 add        x0, x0, #0x716                                ; 'edge-info-slot: get_edge_info not found (checked %d slots)'
00006b38 6cf7ff97 bl         #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00006b3c 08008012 mov        w8, #-1                                      
00006b40 a8c31fb8 stur       w8, [x29, #-4]                               
00006b44 01000014 b          #0x6b48                                      
00006b48 a0c35fb8 ldur       w0, [x29, #-4]                               
00006b4c fd7b47a9 ldp        x29, x30, [sp, #0x70]                        
00006b50 ff030291 add        sp, sp, #0x80                                
00006b54 ff0f5fd6 retab                                                   
00006b58 7f2303d5 pacibsp                                                  ; |_LGSymResolverSaveCache||_LGSymResolverSaveCache
00006b5c ff0305d1 sub        sp, sp, #0x140                               
00006b60 fc6f12a9 stp        x28, x27, [sp, #0x120]                       
00006b64 fd7b13a9 stp        x29, x30, [sp, #0x130]                       
00006b68 fdc30491 add        x29, sp, #0x130                              
00006b6c 680100d0 adrp       x8, #0x34000                                 
00006b70 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
00006b74 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
00006b78 a8831ef8 stur       x8, [x29, #-0x18]                            
00006b7c 880100d0 adrp       x8, #0x38000                                 
00006b80 00f540f9 ldr        x0, [x8, #0x1e8]                             
00006b84 620100f0 adrp       x2, #0x35000                                 
00006b88 42c02a91 add        x2, x2, #0xab0                               
00006b8c a5870094 bl         #0x28a20                                      ; _objc_msgSend$bundleWithPath:
