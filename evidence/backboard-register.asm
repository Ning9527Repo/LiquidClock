000083bc pacibsp                                                
000083c0 stp       x28, x27, [sp, #-0x20]!                      
000083c4 stp       x29, x30, [sp, #0x10]                        
000083c8 add       x29, sp, #0x10                               
000083cc sub       sp, sp, #0x6b0                               
000083d0 add       x8, sp, #0x4f4                               
000083d4 str       x8, [sp, #0x258]                             
000083d8 adrp      x16, #0xa000                                 
000083dc add       x16, x16, #0xbd0                              ; __ZL12identityStubPvS_||__ZL12identityStubPvS_|
000083e0 paciza    x16                                          
000083e4 str       x16, [sp, #0x260]                            
000083e8 adrp      x16, #0xa000                                 
000083ec add       x16, x16, #0xc38                              ; __ZL14customEdgeInfoPvS_S_S_S_PDv2_fPb||__ZL14customEdgeInfoPvS_S_S_S_PDv2_fPb|
000083f0 paciza    x16                                          
000083f4 str       x16, [sp, #0x268]                            
000083f8 adrp      x16, #0xa000                                 
000083fc add       x16, x16, #0xcc0                              ; __ZL4CR13PvS_S_S_fS_fbS_S_S_Pf||__ZL4CR13PvS_S_S_fS_fbS_S_S_Pf|
00008400 paciza    x16                                          
00008404 str       x16, [sp, #0x270]                            
00008408 adrp      x16, #0xe000                                 
0000840c add       x16, x16, #0xb94                              ; __ZL15gaussRenderHookPvS_S_S_fS_fbS_S_Pf||__ZL15gaussRenderHookPvS_S_S_fS_fbS_S_Pf|
00008410 paciza    x16                                          
00008414 str       x16, [sp, #0x278]                            
00008418 adrp      x8, #0x34000                                 
0000841c ldr       x8, [x8, #0x618]                              ; &___stack_chk_guard
00008420 ldr       x8, [x8]                                      ; &_objc_msgSend
00008424 stur      x8, [x29, #-0x18]                            
00008428 bl        #0x569c                                       ; |_LGResolve_FilterTableSlot||_LGResolve_FilterTableSlot
0000842c str       x0, [sp, #0x588]                             
00008430 ldr       x8, [sp, #0x588]                             
00008434 cbnz      x8, #0x845c                                  
00008438 b         #0x843c                                      
0000843c adrp      x0, #0x2a000                                 
00008440 add       x0, x0, #0xad                                 ; 'registerCustomFilter: could not resolve filter_table, aborting (no fallback)'
00008444 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008448 mov       w8, #0                                       
0000844c and       w8, w8, #1                                   
00008450 and       w8, w8, #1                                   
00008454 strb      w8, [sp, #0x597]                             
00008458 b         #0x9b58                                      
0000845c adrp      x8, #0x38000                                 
00008460 ldrb      w8, [x8, #0x7a0]                              ; __ZL18g_filterRegistered|__ZL18g_filterRegistered
00008464 tbz       w8, #0, #0x8480                              
00008468 b         #0x846c                                      
0000846c mov       w8, #1                                       
00008470 and       w8, w8, #1                                   
00008474 and       w8, w8, #1                                   
00008478 strb      w8, [sp, #0x597]                             
0000847c b         #0x9b58                                      
00008480 bl        #0x5678                                       ; |_LGResolve_GaussianCtxSlot||_LGResolve_GaussianCtxSlot
00008484 str       x0, [sp, #0x580]                             
00008488 ldr       x8, [sp, #0x580]                             
0000848c cbnz      x8, #0x84b4                                  
00008490 b         #0x8494                                      
00008494 adrp      x0, #0x2a000                                 
00008498 add       x0, x0, #0xfa                                 ; 'registerCustomFilter: could not resolve gaussian context, aborting (no fallback)'
0000849c bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000084a0 mov       w8, #0                                       
000084a4 and       w8, w8, #1                                   
000084a8 and       w8, w8, #1                                   
000084ac strb      w8, [sp, #0x597]                             
000084b0 b         #0x9b58                                      
000084b4 ldr       x8, [sp, #0x580]                             
000084b8 ldr       x0, [x8]                                     
000084bc bl        #0x45b4                                       ; |_LGSymStripData||_LGSymStripData
000084c0 adrp      x8, #0x38000                                 
000084c4 str       x8, [sp, #0x250]                             
000084c8 str       x0, [x8, #0x7a8]                             
000084cc ldr       x10, [x8, #0x7a8]                             ; __ZL15g_gaussCtxValue|__ZL15g_gaussCtxValue
000084d0 ldr       x8, [sp, #0x580]                             
000084d4 ldr       x8, [x8]                                      ; SEL UTF8String
000084d8 mov       x9, sp                                       
000084dc str       x10, [x9]                                    
000084e0 str       x8, [x9, #8]                                 
000084e4 adrp      x0, #0x2a000                                 
000084e8 add       x0, x0, #0x14b                                ; 'registerCustomFilter: g_gaussCtxValue = %p (raw from %p)'
000084ec bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000084f0 ldr       x8, [sp, #0x250]                             
000084f4 ldr       x8, [x8, #0x7a8]                             
000084f8 str       x8, [sp, #0x578]                             
000084fc ldr       x8, [sp, #0x578]                             
00008500 cbnz      x8, #0x8528                                  
00008504 b         #0x8508                                      
00008508 adrp      x0, #0x2a000                                 
0000850c add       x0, x0, #0x184                                ; 'registerCustomFilter: gaussian vtable not found'
00008510 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008514 mov       w8, #0                                       
00008518 and       w8, w8, #1                                   
0000851c and       w8, w8, #1                                   
00008520 strb      w8, [sp, #0x597]                             
00008524 b         #0x9b58                                      
00008528 ldr       x8, [sp, #0x578]                             
0000852c mov       x9, sp                                       
00008530 str       x8, [x9]                                     
00008534 adrp      x0, #0x2a000                                 
00008538 add       x0, x0, #0x1b4                                ; 'registerCustomFilter: gaussian vtable @ %p'
0000853c bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008540 ldr       x0, [sp, #0x578]                             
00008544 mov       w1, #0x16                                    
00008548 bl        #0x67f0                                       ; |_LGResolve_EdgeInfoVtableSlot||_LGResolve_EdgeInfoVtableSlot
0000854c str       w0, [sp, #0x574]                             
00008550 ldr       w8, [sp, #0x574]                             
00008554 tbnz      w8, #0x1f, #0x856c                           
00008558 b         #0x855c                                      
0000855c ldr       w8, [sp, #0x574]                             
00008560 subs      w8, w8, #0x16                                
00008564 b.lt      #0x8598                                      
00008568 b         #0x856c                                      
0000856c ldr       w8, [sp, #0x574]                             
00008570 mov       x9, sp                                       
00008574 str       x8, [x9]                                     
00008578 adrp      x0, #0x2a000                                 
0000857c add       x0, x0, #0x1df                                ; 'registerCustomFilter: could not resolve edge-info vtable slot (got %d), aborting'
00008580 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008584 mov       w8, #0                                       
00008588 and       w8, w8, #1                                   
0000858c and       w8, w8, #1                                   
00008590 strb      w8, [sp, #0x597]                             
00008594 b         #0x9b58                                      
00008598 ldr       w8, [sp, #0x574]                             
0000859c mov       x9, sp                                       
000085a0 str       x8, [x9]                                     
000085a4 adrp      x0, #0x2a000                                 
000085a8 add       x0, x0, #0x230                                ; 'registerCustomFilter: edge-info vtable slot = %d'
000085ac bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000085b0 ldr       x0, [sp, #0x578]                             
000085b4 mov       w1, #0x16                                    
000085b8 bl        #0x6174                                       ; |_LGResolve_RenderVtableSlot||_LGResolve_RenderVtableSlot
000085bc str       w0, [sp, #0x570]                             
000085c0 ldr       w8, [sp, #0x570]                             
000085c4 tbz       w8, #0x1f, #0x8650                           
000085c8 b         #0x85cc                                      
000085cc adrp      x8, #0x38000                                 
000085d0 ldrb      w8, [x8, #0x768]                              ; __ZL17g_legacyRenderABI|__ZL17g_legacyRenderABI
000085d4 tbz       w8, #0, #0x8650                              
000085d8 b         #0x85dc                                      
000085dc ldr       w8, [sp, #0x574]                             
000085e0 subs      w8, w8, #3                                   
000085e4 b.lt      #0x8650                                      
000085e8 b         #0x85ec                                      
000085ec ldr       w8, [sp, #0x574]                             
000085f0 subs      w8, w8, #3                                   
000085f4 str       w8, [sp, #0x56c]                             
000085f8 ldr       x8, [sp, #0x578]                             
000085fc ldrsw     x9, [sp, #0x56c]                             
00008600 ldr       x0, [x8, x9, lsl #3]                          ; SEL UTF8String
00008604 bl        #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
00008608 str       x0, [sp, #0x560]                             
0000860c ldr       x0, [sp, #0x560]                             
00008610 bl        #0x6638                                       ; |_LGSymAddressInQuartzCoreImage||_LGSymAddressInQuartzCoreImage
00008614 tbz       w0, #0, #0x864c                              
00008618 b         #0x861c                                      
0000861c ldr       w8, [sp, #0x56c]                             
00008620 str       w8, [sp, #0x570]                             
00008624 ldr       w8, [sp, #0x570]                             
00008628 mov       x10, x8                                      
0000862c ldr       x8, [sp, #0x560]                             
00008630 mov       x9, sp                                       
00008634 str       x10, [x9]                                    
00008638 str       x8, [x9, #8]                                 
0000863c adrp      x0, #0x2a000                                 
00008640 add       x0, x0, #0x261                                ; 'registerCustomFilter: iOS 14 direct render fallback vtable[%d]=%p'
00008644 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008648 b         #0x864c                                      
0000864c b         #0x8650                                      
00008650 ldr       w8, [sp, #0x570]                             
00008654 tbnz      w8, #0x1f, #0x866c                           
00008658 b         #0x865c                                      
0000865c ldr       w8, [sp, #0x570]                             
00008660 subs      w8, w8, #0x16                                
00008664 b.lt      #0x8698                                      
00008668 b         #0x866c                                      
0000866c ldr       w8, [sp, #0x570]                             
00008670 mov       x9, sp                                       
00008674 str       x8, [x9]                                     
00008678 adrp      x0, #0x2a000                                 
0000867c add       x0, x0, #0x2a3                                ; 'registerCustomFilter: could not resolve render vtable slot (got %d), aborting'
00008680 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008684 mov       w8, #0                                       
00008688 and       w8, w8, #1                                   
0000868c and       w8, w8, #1                                   
00008690 strb      w8, [sp, #0x597]                             
00008694 b         #0x9b58                                      
00008698 ldr       w8, [sp, #0x570]                             
0000869c mov       x9, sp                                       
000086a0 str       x8, [x9]                                     
000086a4 adrp      x0, #0x2a000                                 
000086a8 add       x0, x0, #0x2f1                                ; 'registerCustomFilter: render vtable slot = %d'
000086ac bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000086b0 ldr       w8, [sp, #0x574]                             
000086b4 ldr       w9, [sp, #0x570]                             
000086b8 subs      w8, w8, w9                                   
000086bc b.ne      #0x86e4                                      
000086c0 b         #0x86c4                                      
000086c4 adrp      x0, #0x2a000                                 
000086c8 add       x0, x0, #0x31f                                ; 'registerCustomFilter: render and edge-info resolved to the same slot, aborting'
000086cc bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000086d0 mov       w8, #0                                       
000086d4 and       w8, w8, #1                                   
000086d8 and       w8, w8, #1                                   
000086dc strb      w8, [sp, #0x597]                             
000086e0 b         #0x9b58                                      
000086e4 adrp      x8, #0x38000                                 
000086e8 ldrb      w8, [x8, #0x768]                              ; __ZL17g_legacyRenderABI|__ZL17g_legacyRenderABI
000086ec mov       w0, #0                                       
000086f0 str       w0, [sp, #0x24c]                             
000086f4 tbnz      w8, #0, #0x8714                              
000086f8 b         #0x86fc                                      
000086fc ldr       x8, [sp, #0x578]                             
00008700 ldrsw     x9, [sp, #0x570]                             
00008704 ldr       x0, [x8, x9, lsl #3]                          ; SEL UTF8String
00008708 bl        #0x66d0                                       ; |_LGResolve_RenderUsesTwoShapes||_LGResolve_RenderUsesTwoShapes
0000870c str       w0, [sp, #0x24c]                             
00008710 b         #0x8714                                      
00008714 ldr       w8, [sp, #0x24c]                             
00008718 mov       w9, #1                                       
0000871c and       w9, w8, w9                                   
00008720 adrp      x8, #0x38000                                 
00008724 strb      w9, [x8, #0x7b0]                             
00008728 ldrb      w10, [x8, #0x7b0]                             ; __ZL19g_twoShapeRenderABI|__ZL19g_twoShapeRenderABI
0000872c adrp      x9, #0x2a000                                 
00008730 add       x9, x9, #0x39e                                ; 'single shape'
00008734 adrp      x8, #0x2a000                                 
00008738 add       x8, x8, #0x394                                ; 'two shape'
0000873c and       w10, w10, #1                                 
00008740 ands      w10, w10, #1                                 
00008744 csel      x8, x8, x9, ne                               
00008748 mov       x9, sp                                       
0000874c str       x8, [x9]                                     
00008750 adrp      x0, #0x2a000                                 
00008754 add       x0, x0, #0x36e                                ; 'registerCustomFilter: render ABI = %s'
00008758 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
0000875c adrp      x8, #0x38000                                 
00008760 ldrb      w8, [x8, #0x76a]                              ; __ZL13g_useHookPath|__ZL13g_useHookPath
00008764 tbz       w8, #0, #0x87e4                              
00008768 b         #0x876c                                      
0000876c adrp      x8, #0x38000                                 
00008770 ldrb      w8, [x8, #0x7b1]                              ; __ZL24g_gaussianHooksInstalled|__ZL24g_gaussianHooksInstalled
00008774 tbnz      w8, #0, #0x87e4                              
00008778 b         #0x877c                                      
0000877c ldr       x8, [sp, #0x578]                             
00008780 ldr       x0, [x8]                                      ; SEL UTF8String
00008784 ldr       x8, [sp, #0x578]                             
00008788 ldrsw     x9, [sp, #0x574]                             
0000878c ldr       x1, [x8, x9, lsl #3]                          ; SEL UTF8String
00008790 ldr       x8, [sp, #0x578]                             
00008794 ldrsw     x9, [sp, #0x570]                             
00008798 ldr       x2, [x8, x9, lsl #3]                          ; SEL UTF8String | x2 <- SEL UTF8String
0000879c bl        #0xa334                                       ; __ZL22lgInstallGaussianHooksPvS_S_||__ZL22lgInstallGaussianHooksPvS_S_|
000087a0 tbnz      w0, #0, #0x87c8                              
000087a4 b         #0x87a8                                      
000087a8 adrp      x0, #0x2a000                                 
000087ac add       x0, x0, #0x3ab                                ; 'registerCustomFilter: Gaussian hooks install failed'
000087b0 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000087b4 mov       w8, #0                                       
000087b8 and       w8, w8, #1                                   
000087bc and       w8, w8, #1                                   
000087c0 strb      w8, [sp, #0x597]                             
000087c4 b         #0x9b58                                      
000087c8 mov       w8, #1                                       
000087cc adrp      x9, #0x38000                                 
000087d0 strb      w8, [x9, #0x7b1]                             
000087d4 adrp      x0, #0x2a000                                 
000087d8 add       x0, x0, #0x3df                                ; 'registerCustomFilter: Gaussian hooks installed before filter registration'
000087dc bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000087e0 b         #0x87e4                                      
000087e4 ldr       x8, [sp, #0x588]                             
000087e8 ldr       x8, [x8]                                     
000087ec cbnz      x8, #0x8868                                  
000087f0 b         #0x87f4                                      
000087f4 adrp      x0, #0x2a000                                 
000087f8 add       x0, x0, #0x429                                ; 'registerCustomFilter: filter_table null, retrying in 250ms'
000087fc bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008800 mov       x0, #0                                       
00008804 str       x0, [sp, #0x230]                             
00008808 mov       x1, #0xb280                                  
0000880c movk      x1, #0xee6, lsl #16                          
00008810 bl        #0x2808c                                      ; _dispatch_time
00008814 ldr       x1, [sp, #0x230]                             
00008818 str       x0, [sp, #0x238]                             
0000881c mov       x0, #0x11                                    
00008820 bl        #0x2809c                                      ; _dispatch_get_global_queue
00008824 mov       x29, x29                                     
00008828 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000882c mov       x1, x0                                       
00008830 ldr       x0, [sp, #0x238]                             
00008834 str       x1, [sp, #0x240]                             
00008838 adrp      x2, #0x34000                                 
0000883c add       x2, x2, #0x710                                ; ___block_literal_global.87|___block_literal_global.87
00008840 bl        #0x280ac                                      ; _dispatch_after
00008844 ldr       x0, [sp, #0x240]                             
00008848 adrp      x8, #0x34000                                 
0000884c ldr       x8, [x8, #0x620]                              ; &_objc_release
00008850 blr       x8                                           
00008854 mov       w8, #0                                       
00008858 and       w8, w8, #1                                   
0000885c and       w8, w8, #1                                   
00008860 strb      w8, [sp, #0x597]                             
00008864 b         #0x9b58                                      
00008868 adrp      x8, #0x38000                                 
0000886c ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00008870 cbz       x8, #0x8888                                  
00008874 b         #0x8878                                      
00008878 adrp      x8, #0x38000                                 
0000887c ldr       x8, [x8, #0x780]                              ; __ZL11g_addFilter|__ZL11g_addFilter
00008880 cbnz      x8, #0x88c4                                  
00008884 b         #0x8888                                      
00008888 adrp      x8, #0x38000                                 
0000888c ldr       x10, [x8, #0x778]                             ; __ZL12g_internAtom|__ZL12g_internAtom
00008890 adrp      x8, #0x38000                                 
00008894 ldr       x8, [x8, #0x780]                              ; __ZL11g_addFilter|__ZL11g_addFilter
00008898 mov       x9, sp                                       
0000889c str       x10, [x9]                                    
000088a0 str       x8, [x9, #8]                                 
000088a4 adrp      x0, #0x2a000                                 
000088a8 add       x0, x0, #0x464                                ; 'registerCustomFilter: internAtom=%p addFilter=%p, aborting'
000088ac bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000088b0 mov       w8, #0                                       
000088b4 and       w8, w8, #1                                   
000088b8 and       w8, w8, #1                                   
000088bc strb      w8, [sp, #0x597]                             
000088c0 b         #0x9b58                                      
000088c4 adrp      x8, #0x38000                                 
000088c8 str       x8, [sp, #0x220]                             
000088cc ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
000088d0 adrp      x9, #0x38000                                 
000088d4 str       x9, [sp, #0x228]                             
000088d8 ldr       x0, [x9, #0x268]                              ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
000088dc blraaz    x8                                           
000088e0 ldr       x8, [sp, #0x220]                             
000088e4 str       w0, [sp, #0x55c]                             
000088e8 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
000088ec adrp      x0, #0x2a000                                 
000088f0 add       x0, x0, #0x49f                                ; 'gaussianBlur'
000088f4 blraaz    x8                                           
000088f8 ldr       x8, [sp, #0x228]                             
000088fc str       w0, [sp, #0x558]                             
00008900 ldr       x12, [x8, #0x268]                             ; __ZL21kCustomFilterTypeName|__ZL21kCustomFilterTypeName
00008904 ldr       w8, [sp, #0x55c]                             
00008908 mov       x11, x8                                      
0000890c ldr       w8, [sp, #0x558]                             
00008910 mov       x10, x8                                      
00008914 ldr       w13, [sp, #0x55c]                            
00008918 ldr       w14, [sp, #0x558]                            
0000891c adrp      x9, #0x2a000                                 
00008920 add       x9, x9, #0x4f7                                ; 'no'
00008924 adrp      x8, #0x2a000                                 
00008928 add       x8, x8, #0x4ef                                ; 'YES-BAD'
0000892c subs      w13, w13, w14                                
00008930 csel      x8, x8, x9, eq                               
00008934 mov       x9, sp                                       
00008938 str       x12, [x9]                                    
0000893c str       x11, [x9, #8]                                
00008940 str       x10, [x9, #0x10]                             
00008944 str       x8, [x9, #0x18]                              
00008948 adrp      x0, #0x2a000                                 
0000894c add       x0, x0, #0x4ac                                ; "registerCustomFilter: atom('%s')=0x%x  gaussian=0x%x  collision=%s"
00008950 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008954 str       xzr, [sp, #0x550]                            
00008958 adrp      x8, #0x38000                                 
0000895c ldrb      w8, [x8, #0x76a]                              ; __ZL13g_useHookPath|__ZL13g_useHookPath
00008960 tbz       w8, #0, #0x89a4                              
00008964 b         #0x8968                                      
00008968 adrp      x8, #0x38000                                 
0000896c ldrb      w8, [x8, #0x7b1]                              ; __ZL24g_gaussianHooksInstalled|__ZL24g_gaussianHooksInstalled
00008970 tbnz      w8, #0, #0x8998                              
00008974 b         #0x8978                                      
00008978 adrp      x0, #0x2a000                                 
0000897c add       x0, x0, #0x4fa                                ; 'registerCustomFilter: Gaussian hooks unexpectedly missing'
00008980 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008984 mov       w8, #0                                       
00008988 and       w8, w8, #1                                   
0000898c and       w8, w8, #1                                   
00008990 strb      w8, [sp, #0x597]                             
00008994 b         #0x9b58                                      
00008998 ldr       x8, [sp, #0x580]                             
0000899c str       x8, [sp, #0x550]                             
000089a0 b         #0x8c0c                                      
000089a4 ldr       x8, [sp, #0x578]                             
000089a8 ldrsw     x9, [sp, #0x570]                             
000089ac ldr       x0, [x8, x9, lsl #3]                         
000089b0 bl        #0x452c                                       ; |_LGSymMakeCallable||_LGSymMakeCallable
000089b4 adrp      x8, #0x38000                                 
000089b8 str       x0, [x8, #0x7b8]                             
000089bc adrp      x8, #0x38000                                 
000089c0 ldrb      w8, [x8, #0x7b0]                              ; __ZL19g_twoShapeRenderABI|__ZL19g_twoShapeRenderABI
000089c4 tbz       w8, #0, #0x89e8                              
000089c8 b         #0x89cc                                      
000089cc ldr       x8, [sp, #0x578]                             
000089d0 ldrsw     x9, [sp, #0x570]                             
000089d4 ldr       x0, [x8, x9, lsl #3]                          ; SEL UTF8String
000089d8 bl        #0x452c                                       ; |_LGSymMakeCallable||_LGSymMakeCallable
000089dc adrp      x8, #0x38000                                 
000089e0 str       x0, [x8, #0x7c0]                             
000089e4 b         #0x89e8                                      
000089e8 ldr       x8, [sp, #0x578]                             
000089ec ldrsw     x9, [sp, #0x574]                             
000089f0 ldr       x0, [x8, x9, lsl #3]                          ; SEL UTF8String
000089f4 bl        #0x452c                                       ; |_LGSymMakeCallable||_LGSymMakeCallable
000089f8 adrp      x8, #0x38000                                 
000089fc str       x8, [sp, #0x210]                             
00008a00 str       x0, [x8, #0x7c8]                             
00008a04 adrp      x8, #0x38000                                 
00008a08 str       x8, [sp, #0x218]                             
00008a0c ldr       x8, [x8, #0x7b8]                              ; __ZL14g_origGaussR13|__ZL14g_origGaussR13
00008a10 mov       x9, sp                                       
00008a14 str       x8, [x9]                                     
00008a18 adrp      x0, #0x2a000                                 
00008a1c add       x0, x0, #0x534                                ; 'registerCustomFilter: g_origGaussR13 = %p'
00008a20 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008a24 ldr       x8, [sp, #0x210]                             
00008a28 ldr       x8, [x8, #0x7c8]                             
00008a2c mov       x9, sp                                       
00008a30 str       x8, [x9]                                     
00008a34 adrp      x0, #0x2a000                                 
00008a38 add       x0, x0, #0x55e                                ; 'registerCustomFilter: g_origGaussEdgeInfo = %p'
00008a3c bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008a40 ldr       x8, [sp, #0x218]                             
00008a44 ldr       x8, [x8, #0x7b8]                             
00008a48 cbz       x8, #0x8a60                                  
00008a4c b         #0x8a50                                      
00008a50 adrp      x8, #0x38000                                 
00008a54 ldr       x8, [x8, #0x7c8]                              ; __ZL19g_origGaussEdgeInfo|__ZL19g_origGaussEdgeInfo
00008a58 cbnz      x8, #0x8a80                                  
00008a5c b         #0x8a60                                      
00008a60 adrp      x0, #0x2a000                                 
00008a64 add       x0, x0, #0x58d                                ; 'registerCustomFilter: Gaussian callable resolution failed'
00008a68 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008a6c mov       w8, #0                                       
00008a70 and       w8, w8, #1                                   
00008a74 and       w8, w8, #1                                   
00008a78 strb      w8, [sp, #0x597]                             
00008a7c b         #0x9b58                                      
00008a80 mov       x0, #0                                       
00008a84 mov       x1, #0xb0                                    
00008a88 mov       w2, #3                                       
00008a8c mov       w3, #0x1002                                  
00008a90 mov       w4, #-1                                      
00008a94 mov       x5, #0                                       
00008a98 bl        #0x280fc                                      ; _mmap
00008a9c adrp      x8, #0x38000                                 
00008aa0 str       x0, [x8, #0x7d0]                             
00008aa4 ldr       x8, [x8, #0x7d0]                              ; __ZL14g_customVtable|__ZL14g_customVtable
00008aa8 adds      x8, x8, #1                                   
00008aac b.ne      #0x8aec                                      
00008ab0 b         #0x8ab4                                      
00008ab4 bl        #0x27fbc                                      ; ___error
00008ab8 ldr       w8, [x0]                                     
00008abc mov       x9, sp                                       
00008ac0 str       x8, [x9]                                     
00008ac4 adrp      x0, #0x2a000                                 
00008ac8 add       x0, x0, #0x5c7                                ; 'registerCustomFilter: vtable mmap failed errno=%d'
00008acc bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008ad0 adrp      x8, #0x38000                                 
00008ad4 str       xzr, [x8, #0x7d0]                            
00008ad8 mov       w8, #0                                       
00008adc and       w8, w8, #1                                   
00008ae0 and       w8, w8, #1                                   
00008ae4 strb      w8, [sp, #0x597]                             
00008ae8 b         #0x9b58                                      
00008aec adrp      x8, #0x38000                                 
00008af0 str       x8, [sp, #0x208]                             
00008af4 ldr       x0, [x8, #0x7d0]                              ; __ZL14g_customVtable|__ZL14g_customVtable
00008af8 ldr       x1, [sp, #0x578]                             
00008afc mov       x2, #0xb0                                    
00008b00 bl        #0x2810c                                      ; _memcpy
00008b04 ldr       x0, [sp, #0x260]                             
00008b08 bl        #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
00008b0c ldr       x9, [sp, #0x208]                             
00008b10 mov       x8, x0                                       
00008b14 ldr       x0, [sp, #0x268]                             
00008b18 ldr       x9, [x9, #0x7d0]                             
00008b1c str       x8, [x9]                                     
00008b20 bl        #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
00008b24 ldr       x9, [sp, #0x278]                             
00008b28 ldr       x8, [sp, #0x270]                             
00008b2c ldr       x10, [sp, #0x208]                            
00008b30 ldr       x10, [x10, #0x7d0]                           
00008b34 ldrsw     x11, [sp, #0x574]                            
00008b38 str       x0, [x10, x11, lsl #3]                       
00008b3c adrp      x10, #0x38000                                
00008b40 ldrb      w10, [x10, #0x7b0]                            ; __ZL19g_twoShapeRenderABI|__ZL19g_twoShapeRenderABI
00008b44 and       w10, w10, #1                                 
00008b48 ands      w10, w10, #1                                 
00008b4c csel      x0, x8, x9, ne                               
00008b50 bl        #0x4578                                       ; |_LGSymStripCode||_LGSymStripCode
00008b54 ldr       x8, [sp, #0x208]                             
00008b58 ldr       x8, [x8, #0x7d0]                             
00008b5c ldrsw     x9, [sp, #0x570]                             
00008b60 str       x0, [x8, x9, lsl #3]                         
00008b64 mov       x0, #0                                       
00008b68 mov       x1, #0x100                                   
00008b6c mov       w2, #3                                       
00008b70 mov       w3, #0x1002                                  
00008b74 mov       w4, #-1                                      
00008b78 mov       x5, #0                                       
00008b7c bl        #0x280fc                                      ; _mmap
00008b80 adrp      x8, #0x38000                                 
00008b84 str       x0, [x8, #0x7d8]                             
00008b88 ldr       x8, [x8, #0x7d8]                              ; __ZL11g_customCtx|__ZL11g_customCtx
00008b8c adds      x8, x8, #1                                   
00008b90 b.ne      #0x8bec                                      
00008b94 b         #0x8b98                                      
00008b98 bl        #0x27fbc                                      ; ___error
00008b9c ldr       w8, [x0]                                     
00008ba0 mov       x9, sp                                       
00008ba4 str       x8, [x9]                                     
00008ba8 adrp      x0, #0x2a000                                 
00008bac add       x0, x0, #0x5f9                                ; 'registerCustomFilter: ctx mmap failed errno=%d'
00008bb0 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00008bb4 adrp      x8, #0x38000                                 
00008bb8 str       x8, [sp, #0x200]                             
00008bbc ldr       x0, [x8, #0x7d0]                              ; __ZL14g_customVtable|__ZL14g_customVtable
00008bc0 mov       x1, #0xb0                                    
00008bc4 bl        #0x2811c                                      ; _munmap
00008bc8 ldr       x8, [sp, #0x200]                             
00008bcc str       xzr, [x8, #0x7d0]                            
00008bd0 adrp      x8, #0x38000                                 
00008bd4 str       xzr, [x8, #0x7d8]                            
00008bd8 mov       w8, #0                                       
00008bdc and       w8, w8, #1                                   
00008be0 and       w8, w8, #1                                   
00008be4 strb      w8, [sp, #0x597]                             
00008be8 b         #0x9b58                                      
00008bec adrp      x8, #0x38000                                 
00008bf0 ldr       x9, [x8, #0x7d0]                              ; __ZL14g_customVtable|__ZL14g_customVtable
00008bf4 adrp      x8, #0x38000                                 
00008bf8 ldr       x10, [x8, #0x7d8]                             ; __ZL11g_customCtx|__ZL11g_customCtx
00008bfc str       x9, [x10]                                    
00008c00 ldr       x8, [x8, #0x7d8]                              ; __ZL11g_customCtx|__ZL11g_customCtx
00008c04 str       x8, [sp, #0x550]                             
00008c08 b         #0x8c0c                                      
00008c0c ldr       x8, [sp, #0x550]                             
00008c10 adrp      x9, #0x38000                                 
00008c14 str       x8, [x9, #0x7e0]                             
00008c18 bl        #0xed6c                                       ; __ZL20lgStartPrefsObserverv||__ZL20lgStartPrefsObserverv|
00008c1c ldr       w8, [sp, #0x55c]                             
00008c20 adrp      x9, #0x38000                                 
00008c24 add       x9, x9, #0x7e8                                ; __ZL12g_hostParams|__ZL12g_hostParams
00008c28 str       w8, [x9, #0x10]                              
00008c2c ldr       w0, [sp, #0x55c]                             
00008c30 ldr       x1, [sp, #0x550]                             
00008c34 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00008c38 ldr       x1, [sp, #0x1f0]                             
00008c3c adrp      x8, #0x38000                                 
00008c40 ldr       x0, [x8, #0x200]                              ; &_OBJC_CLASS_$_NSString
00008c44 adrp      x8, #0x34000                                 
00008c48 ldr       x2, [x8, #0x730]                              ; __ZL13kHostDefaults|__ZL13kHostDefaults | x2 <- __ZL13kHostDefaults|__ZL13kHostDefaults
00008c4c bl        #0x290a0                                      ; objc_msgSend$stringWithUTF8String:
00008c50 mov       x29, x29                                     
00008c54 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008c58 ldr       x1, [sp, #0x1f0]                             
00008c5c str       x0, [sp, #0x1e0]                             
00008c60 adrp      x2, #0x35000                                 
00008c64 add       x2, x2, #0xc70                                ; @'.refresh'
00008c68 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
00008c6c mov       x29, x29                                     
00008c70 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008c74 mov       x8, x0                                       
00008c78 ldr       x0, [sp, #0x1e0]                             
00008c7c str       x8, [sp, #0x548]                             
00008c80 adrp      x8, #0x34000                                 
00008c84 ldr       x8, [x8, #0x620]                              ; &_objc_release
00008c88 blr       x8                                           
00008c8c adrp      x8, #0x38000                                 
00008c90 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00008c94 str       x8, [sp, #0x1f8]                             
00008c98 ldr       x0, [sp, #0x548]                             
00008c9c str       x0, [sp, #0x1e8]                             
00008ca0 bl        #0x27edc                                      ; _objc_retainAutorelease
00008ca4 ldr       x0, [sp, #0x1e8]                             
00008ca8 ldr       x1, [sp, #0x1f0]                             
00008cac bl        #0x289c0                                      ; objc_msgSend$UTF8String
00008cb0 ldr       x8, [sp, #0x1f8]                             
00008cb4 blraaz    x8                                           
00008cb8 str       w0, [sp, #0x544]                             
00008cbc ldr       w8, [sp, #0x544]                             
00008cc0 cbz       w8, #0x8cfc                                  
00008cc4 b         #0x8cc8                                      
00008cc8 str       wzr, [sp, #0x53c]                            
00008ccc strb      wzr, [sp, #0x540]                            
00008cd0 adrp      x0, #0x38000                                 
00008cd4 add       x0, x0, #0x708                                ; __ZL15g_refreshRoutes|__ZL15g_refreshRoutes
00008cd8 add       x1, sp, #0x544                               
00008cdc bl        #0x2812c                                      ; __ZNSt3__113unordered_mapIj11LGHostRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
00008ce0 ldr       x8, [sp, #0x258]                             
00008ce4 ldr       x8, [x8, #0x48]                              
00008ce8 str       x8, [x0]                                     
00008cec ldr       w0, [sp, #0x544]                             
00008cf0 ldr       x1, [sp, #0x550]                             
00008cf4 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00008cf8 b         #0x8cfc                                      
00008cfc mov       w8, #1                                       
00008d00 str       w8, [sp, #0x538]                             
00008d04 b         #0x8d08                                      
00008d08 ldr       w8, [sp, #0x538]                             
00008d0c subs      w8, w8, #0x20                                
00008d10 b.ge      #0x9394                                      
00008d14 b         #0x8d18                                      
00008d18 adrp      x8, #0x38000                                 
00008d1c ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00008d20 ldrsw     x9, [sp, #0x538]                             
00008d24 mov       x10, #0x50                                   
00008d28 str       x10, [sp, #0x1d8]                            
00008d2c mul       x10, x9, x10                                 
00008d30 adrp      x9, #0x34000                                 
00008d34 add       x9, x9, #0x730                                ; __ZL13kHostDefaults|__ZL13kHostDefaults
00008d38 ldr       x0, [x9, x10]                                 ; __ZL13kHostDefaults|__ZL13kHostDefaults
00008d3c blraaz    x8                                           
00008d40 ldr       x10, [sp, #0x1d8]                            
00008d44 str       w0, [sp, #0x534]                             
00008d48 ldr       w8, [sp, #0x534]                             
00008d4c ldrsw     x9, [sp, #0x538]                             
00008d50 mul       x10, x9, x10                                 
00008d54 adrp      x9, #0x38000                                 
00008d58 add       x9, x9, #0x7e8                                ; __ZL12g_hostParams|__ZL12g_hostParams
00008d5c add       x9, x9, x10                                  
00008d60 str       w8, [x9, #0x10]                              
00008d64 ldr       w8, [sp, #0x534]                             
00008d68 cbz       w8, #0x8d94                                  
00008d6c b         #0x8d70                                      
00008d70 ldr       w8, [sp, #0x534]                             
00008d74 ldr       w9, [sp, #0x55c]                             
00008d78 subs      w8, w8, w9                                   
00008d7c b.eq      #0x8d94                                      
00008d80 b         #0x8d84                                      
00008d84 ldr       w0, [sp, #0x534]                             
00008d88 ldr       x1, [sp, #0x550]                             
00008d8c bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00008d90 b         #0x8d94                                      
00008d94 ldr       x1, [sp, #0x1f0]                             
00008d98 adrp      x8, #0x38000                                 
00008d9c ldr       x0, [x8, #0x200]                              ; &_OBJC_CLASS_$_NSString
00008da0 ldrsw     x8, [sp, #0x538]                             
00008da4 mov       x9, #0x50                                    
00008da8 mul       x9, x8, x9                                   
00008dac adrp      x8, #0x34000                                 
00008db0 add       x8, x8, #0x730                                ; __ZL13kHostDefaults|__ZL13kHostDefaults
00008db4 ldr       x2, [x8, x9]                                  ; __ZL13kHostDefaults|__ZL13kHostDefaults | x2 <- __ZL13kHostDefaults|__ZL13kHostDefaults
00008db8 bl        #0x290a0                                      ; objc_msgSend$stringWithUTF8String:
00008dbc mov       x29, x29                                     
00008dc0 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008dc4 ldr       x1, [sp, #0x1f0]                             
00008dc8 str       x0, [sp, #0x1c0]                             
00008dcc adrp      x2, #0x35000                                 
00008dd0 add       x2, x2, #0xc70                                ; @'.refresh'
00008dd4 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
00008dd8 mov       x29, x29                                     
00008ddc bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008de0 mov       x8, x0                                       
00008de4 ldr       x0, [sp, #0x1c0]                             
00008de8 str       x8, [sp, #0x528]                             
00008dec adrp      x8, #0x34000                                 
00008df0 ldr       x8, [x8, #0x620]                              ; &_objc_release
00008df4 blr       x8                                           
00008df8 adrp      x8, #0x38000                                 
00008dfc ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00008e00 str       x8, [sp, #0x1d0]                             
00008e04 ldr       x0, [sp, #0x528]                             
00008e08 str       x0, [sp, #0x1c8]                             
00008e0c bl        #0x27edc                                      ; _objc_retainAutorelease
00008e10 ldr       x0, [sp, #0x1c8]                             
00008e14 ldr       x1, [sp, #0x1f0]                             
00008e18 bl        #0x289c0                                      ; objc_msgSend$UTF8String
00008e1c ldr       x8, [sp, #0x1d0]                             
00008e20 blraaz    x8                                           
00008e24 str       w0, [sp, #0x524]                             
00008e28 ldr       w8, [sp, #0x524]                             
00008e2c cbz       w8, #0x8e6c                                  
00008e30 b         #0x8e34                                      
00008e34 ldr       w8, [sp, #0x538]                             
00008e38 str       w8, [sp, #0x51c]                             
00008e3c strb      wzr, [sp, #0x520]                            
00008e40 adrp      x0, #0x38000                                 
00008e44 add       x0, x0, #0x708                                ; __ZL15g_refreshRoutes|__ZL15g_refreshRoutes
00008e48 add       x1, sp, #0x524                               
00008e4c bl        #0x2812c                                      ; __ZNSt3__113unordered_mapIj11LGHostRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
00008e50 ldr       x8, [sp, #0x258]                             
00008e54 ldr       x8, [x8, #0x28]                              
00008e58 str       x8, [x0]                                     
00008e5c ldr       w0, [sp, #0x524]                             
00008e60 ldr       x1, [sp, #0x550]                             
00008e64 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00008e68 b         #0x8e6c                                      
00008e6c ldr       x1, [sp, #0x1f0]                             
00008e70 adrp      x8, #0x38000                                 
00008e74 ldr       x0, [x8, #0x200]                              ; &_OBJC_CLASS_$_NSString
00008e78 ldrsw     x8, [sp, #0x538]                             
00008e7c mov       x9, #0x50                                    
00008e80 mul       x9, x8, x9                                   
00008e84 adrp      x8, #0x34000                                 
00008e88 add       x8, x8, #0x730                                ; __ZL13kHostDefaults|__ZL13kHostDefaults
00008e8c ldr       x2, [x8, x9]                                  ; __ZL13kHostDefaults|__ZL13kHostDefaults | x2 <- __ZL13kHostDefaults|__ZL13kHostDefaults
00008e90 bl        #0x290a0                                      ; objc_msgSend$stringWithUTF8String:
00008e94 mov       x29, x29                                     
00008e98 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008e9c ldr       x1, [sp, #0x1f0]                             
00008ea0 str       x0, [sp, #0x1a8]                             
00008ea4 adrp      x2, #0x35000                                 
00008ea8 add       x2, x2, #0xc90                                ; @'.dark'
00008eac bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
00008eb0 mov       x29, x29                                     
00008eb4 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008eb8 mov       x8, x0                                       
00008ebc ldr       x0, [sp, #0x1a8]                             
00008ec0 str       x8, [sp, #0x510]                             
00008ec4 adrp      x8, #0x34000                                 
00008ec8 ldr       x8, [x8, #0x620]                              ; &_objc_release
00008ecc blr       x8                                           
00008ed0 adrp      x8, #0x38000                                 
00008ed4 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00008ed8 str       x8, [sp, #0x1b8]                             
00008edc ldr       x0, [sp, #0x510]                             
00008ee0 str       x0, [sp, #0x1b0]                             
00008ee4 bl        #0x27edc                                      ; _objc_retainAutorelease
00008ee8 ldr       x0, [sp, #0x1b0]                             
00008eec ldr       x1, [sp, #0x1f0]                             
00008ef0 bl        #0x289c0                                      ; objc_msgSend$UTF8String
00008ef4 ldr       x8, [sp, #0x1b8]                             
00008ef8 blraaz    x8                                           
00008efc str       w0, [sp, #0x50c]                             
00008f00 ldr       w8, [sp, #0x50c]                             
00008f04 ldrsw     x10, [sp, #0x538]                            
00008f08 adrp      x9, #0x39000                                 
00008f0c add       x9, x9, #0x1e8                                ; __ZL11g_darkAtoms|__ZL11g_darkAtoms
00008f10 str       w8, [x9, x10, lsl #2]                        
00008f14 ldr       w8, [sp, #0x50c]                             
00008f18 cbz       w8, #0x8f44                                  
00008f1c b         #0x8f20                                      
00008f20 ldr       w8, [sp, #0x50c]                             
00008f24 ldr       w9, [sp, #0x534]                             
00008f28 subs      w8, w8, w9                                   
00008f2c b.eq      #0x8f44                                      
00008f30 b         #0x8f34                                      
00008f34 ldr       w0, [sp, #0x50c]                             
00008f38 ldr       x1, [sp, #0x550]                             
00008f3c bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00008f40 b         #0x8f44                                      
00008f44 ldr       x1, [sp, #0x1f0]                             
00008f48 ldr       x0, [sp, #0x510]                             
00008f4c adrp      x2, #0x35000                                 
00008f50 add       x2, x2, #0xc70                                ; @'.refresh'
00008f54 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
00008f58 mov       x29, x29                                     
00008f5c bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00008f60 str       x0, [sp, #0x500]                             
00008f64 adrp      x8, #0x38000                                 
00008f68 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00008f6c str       x8, [sp, #0x1a0]                             
00008f70 ldr       x0, [sp, #0x500]                             
00008f74 str       x0, [sp, #0x198]                             
00008f78 bl        #0x27edc                                      ; _objc_retainAutorelease
00008f7c ldr       x0, [sp, #0x198]                             
00008f80 ldr       x1, [sp, #0x1f0]                             
00008f84 bl        #0x289c0                                      ; objc_msgSend$UTF8String
00008f88 ldr       x8, [sp, #0x1a0]                             
00008f8c blraaz    x8                                           
00008f90 str       w0, [sp, #0x4fc]                             
00008f94 ldr       w8, [sp, #0x4fc]                             
00008f98 cbz       w8, #0x8fdc                                  
00008f9c b         #0x8fa0                                      
00008fa0 ldr       w8, [sp, #0x538]                             
00008fa4 str       w8, [sp, #0x4f4]                             
00008fa8 mov       w8, #1                                       
00008fac strb      w8, [sp, #0x4f8]                             
00008fb0 adrp      x0, #0x38000                                 
00008fb4 add       x0, x0, #0x708                                ; __ZL15g_refreshRoutes|__ZL15g_refreshRoutes
00008fb8 add       x1, sp, #0x4fc                               
00008fbc bl        #0x2812c                                      ; __ZNSt3__113unordered_mapIj11LGHostRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
00008fc0 ldr       x8, [sp, #0x258]                             
00008fc4 ldr       x8, [x8]                                     
00008fc8 str       x8, [x0]                                     
00008fcc ldr       w0, [sp, #0x4fc]                             
00008fd0 ldr       x1, [sp, #0x550]                             
00008fd4 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00008fd8 b         #0x8fdc                                      
00008fdc ldr       w0, [sp, #0x538]                             
00008fe0 bl        #0xef74                                       ; __ZL24lgUsesDynamicRadiusRoutei||__ZL24lgUsesDynamicRadiusRoutei|
00008fe4 tbz       w0, #0, #0x9358                              
00008fe8 b         #0x8fec                                      
00008fec str       wzr, [sp, #0x4f0]                            
00008ff0 b         #0x8ff4                                      
00008ff4 ldr       w8, [sp, #0x4f0]                             
00008ff8 subs      w8, w8, #0x10                                
00008ffc b.gt      #0x9354                                      
00009000 b         #0x9004                                      
00009004 ldr       x1, [sp, #0x1f0]                             
00009008 adrp      x8, #0x38000                                 
0000900c ldr       x0, [x8, #0x200]                              ; &_OBJC_CLASS_$_NSString
00009010 ldrsw     x8, [sp, #0x538]                             
00009014 mov       x9, #0x50                                    
00009018 mul       x9, x8, x9                                   
0000901c adrp      x8, #0x34000                                 
00009020 add       x8, x8, #0x730                                ; __ZL13kHostDefaults|__ZL13kHostDefaults
00009024 ldr       x2, [x8, x9]                                  ; __ZL13kHostDefaults|__ZL13kHostDefaults | x2 <- __ZL13kHostDefaults|__ZL13kHostDefaults
00009028 bl        #0x290a0                                      ; objc_msgSend$stringWithUTF8String:
0000902c mov       x29, x29                                     
00009030 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00009034 ldr       x1, [sp, #0x1f0]                             
00009038 str       x0, [sp, #0x180]                             
0000903c ldr       w8, [sp, #0x4f0]                             
00009040 mov       x9, sp                                       
00009044 str       x8, [x9]                                     
00009048 adrp      x2, #0x35000                                 
0000904c add       x2, x2, #0xcb0                                ; @'.r%d'
00009050 bl        #0x29020                                      ; objc_msgSend$stringByAppendingFormat:
00009054 mov       x29, x29                                     
00009058 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000905c mov       x8, x0                                       
00009060 ldr       x0, [sp, #0x180]                             
00009064 str       x8, [sp, #0x4e8]                             
00009068 adrp      x8, #0x34000                                 
0000906c ldr       x8, [x8, #0x620]                              ; &_objc_release
00009070 blr       x8                                           
00009074 adrp      x8, #0x38000                                 
00009078 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
0000907c str       x8, [sp, #0x190]                             
00009080 ldr       x0, [sp, #0x4e8]                             
00009084 str       x0, [sp, #0x188]                             
00009088 bl        #0x27edc                                      ; _objc_retainAutorelease
0000908c ldr       x0, [sp, #0x188]                             
00009090 ldr       x1, [sp, #0x1f0]                             
00009094 bl        #0x289c0                                      ; objc_msgSend$UTF8String
00009098 ldr       x8, [sp, #0x190]                             
0000909c blraaz    x8                                           
000090a0 str       w0, [sp, #0x4e4]                             
000090a4 ldr       w8, [sp, #0x4e4]                             
000090a8 cbz       w8, #0x91b8                                  
000090ac b         #0x90b0                                      
000090b0 ldr       w8, [sp, #0x538]                             
000090b4 str       w8, [sp, #0x4d8]                             
000090b8 ldr       s0, [sp, #0x4f0]                             
000090bc scvtf     s0, s0                                       
000090c0 movi      v1.2s, #0x42, lsl #24                        
000090c4 fdiv      s0, s0, s1                                   
000090c8 str       s0, [sp, #0x4dc]                             
000090cc strb      wzr, [sp, #0x4e0]                            
000090d0 adrp      x0, #0x38000                                 
000090d4 add       x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
000090d8 add       x1, sp, #0x4e4                               
000090dc bl        #0x2813c                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
000090e0 ldr       x8, [sp, #0x4d8]                             
000090e4 str       x8, [x0]                                     
000090e8 ldr       w8, [sp, #0x4e0]                             
000090ec str       w8, [x0, #8]                                 
000090f0 ldr       w0, [sp, #0x4e4]                             
000090f4 ldr       x1, [sp, #0x550]                             
000090f8 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
000090fc ldr       x1, [sp, #0x1f0]                             
00009100 ldr       x0, [sp, #0x4e8]                             
00009104 adrp      x2, #0x35000                                 
00009108 add       x2, x2, #0xc70                                ; @'.refresh'
0000910c bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
00009110 mov       x29, x29                                     
00009114 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00009118 str       x0, [sp, #0x4d0]                             
0000911c adrp      x8, #0x38000                                 
00009120 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
00009124 str       x8, [sp, #0x178]                             
00009128 ldr       x0, [sp, #0x4d0]                             
0000912c str       x0, [sp, #0x170]                             
00009130 bl        #0x27edc                                      ; _objc_retainAutorelease
00009134 ldr       x0, [sp, #0x170]                             
00009138 ldr       x1, [sp, #0x1f0]                             
0000913c bl        #0x289c0                                      ; objc_msgSend$UTF8String
00009140 ldr       x8, [sp, #0x178]                             
00009144 blraaz    x8                                           
00009148 str       w0, [sp, #0x4cc]                             
0000914c ldr       w8, [sp, #0x4cc]                             
00009150 cbz       w8, #0x91a8                                  
00009154 b         #0x9158                                      
00009158 ldr       w8, [sp, #0x538]                             
0000915c str       w8, [sp, #0x4c0]                             
00009160 ldr       s0, [sp, #0x4f0]                             
00009164 scvtf     s0, s0                                       
00009168 movi      v1.2s, #0x42, lsl #24                        
0000916c fdiv      s0, s0, s1                                   
00009170 str       s0, [sp, #0x4c4]                             
00009174 strb      wzr, [sp, #0x4c8]                            
00009178 adrp      x0, #0x38000                                 
0000917c add       x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
00009180 add       x1, sp, #0x4cc                               
00009184 bl        #0x2813c                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
00009188 ldr       x8, [sp, #0x4c0]                             
0000918c str       x8, [x0]                                     
00009190 ldr       w8, [sp, #0x4c8]                             
00009194 str       w8, [x0, #8]                                 
00009198 ldr       w0, [sp, #0x4cc]                             
0000919c ldr       x1, [sp, #0x550]                             
000091a0 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
000091a4 b         #0x91a8                                      
000091a8 add       x0, sp, #0x4d0                               
000091ac mov       x1, #0                                       
000091b0 bl        #0x27eec                                      ; _objc_storeStrong
000091b4 b         #0x91b8                                      
000091b8 ldr       x1, [sp, #0x1f0]                             
000091bc ldr       x0, [sp, #0x4e8]                             
000091c0 adrp      x2, #0x35000                                 
000091c4 add       x2, x2, #0xc90                                ; @'.dark'
000091c8 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
000091cc mov       x29, x29                                     
000091d0 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000091d4 str       x0, [sp, #0x4b8]                             
000091d8 adrp      x8, #0x38000                                 
000091dc ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
000091e0 str       x8, [sp, #0x168]                             
000091e4 ldr       x0, [sp, #0x4b8]                             
000091e8 str       x0, [sp, #0x160]                             
000091ec bl        #0x27edc                                      ; _objc_retainAutorelease
000091f0 ldr       x0, [sp, #0x160]                             
000091f4 ldr       x1, [sp, #0x1f0]                             
000091f8 bl        #0x289c0                                      ; objc_msgSend$UTF8String
000091fc ldr       x8, [sp, #0x168]                             
00009200 blraaz    x8                                           
00009204 str       w0, [sp, #0x4b4]                             
00009208 ldr       w8, [sp, #0x4b4]                             
0000920c cbz       w8, #0x9324                                  
00009210 b         #0x9214                                      
00009214 ldr       w8, [sp, #0x538]                             
00009218 str       w8, [sp, #0x4a8]                             
0000921c ldr       s0, [sp, #0x4f0]                             
00009220 scvtf     s0, s0                                       
00009224 movi      v1.2s, #0x42, lsl #24                        
00009228 fdiv      s0, s0, s1                                   
0000922c str       s0, [sp, #0x4ac]                             
00009230 mov       w8, #1                                       
00009234 strb      w8, [sp, #0x4b0]                             
00009238 adrp      x0, #0x38000                                 
0000923c add       x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
00009240 add       x1, sp, #0x4b4                               
00009244 bl        #0x2813c                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
00009248 ldr       x8, [sp, #0x4a8]                             
0000924c str       x8, [x0]                                     
00009250 ldr       w8, [sp, #0x4b0]                             
00009254 str       w8, [x0, #8]                                 
00009258 ldr       w0, [sp, #0x4b4]                             
0000925c ldr       x1, [sp, #0x550]                             
00009260 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00009264 ldr       x1, [sp, #0x1f0]                             
00009268 ldr       x0, [sp, #0x4b8]                             
0000926c adrp      x2, #0x35000                                 
00009270 add       x2, x2, #0xc70                                ; @'.refresh'
00009274 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
00009278 mov       x29, x29                                     
0000927c bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00009280 str       x0, [sp, #0x4a0]                             
00009284 adrp      x8, #0x38000                                 
00009288 ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
0000928c str       x8, [sp, #0x158]                             
00009290 ldr       x0, [sp, #0x4a0]                             
00009294 str       x0, [sp, #0x150]                             
00009298 bl        #0x27edc                                      ; _objc_retainAutorelease
0000929c ldr       x0, [sp, #0x150]                             
000092a0 ldr       x1, [sp, #0x1f0]                             
000092a4 bl        #0x289c0                                      ; objc_msgSend$UTF8String
000092a8 ldr       x8, [sp, #0x158]                             
000092ac blraaz    x8                                           
000092b0 str       w0, [sp, #0x49c]                             
000092b4 ldr       w8, [sp, #0x49c]                             
000092b8 cbz       w8, #0x9314                                  
000092bc b         #0x92c0                                      
000092c0 ldr       w8, [sp, #0x538]                             
000092c4 str       w8, [sp, #0x490]                             
000092c8 ldr       s0, [sp, #0x4f0]                             
000092cc scvtf     s0, s0                                       
000092d0 movi      v1.2s, #0x42, lsl #24                        
000092d4 fdiv      s0, s0, s1                                   
000092d8 str       s0, [sp, #0x494]                             
000092dc mov       w8, #1                                       
000092e0 strb      w8, [sp, #0x498]                             
000092e4 adrp      x0, #0x38000                                 
000092e8 add       x0, x0, #0x6b8                                ; __ZL14g_radiusRoutes|__ZL14g_radiusRoutes
000092ec add       x1, sp, #0x49c                               
000092f0 bl        #0x2813c                                      ; __ZNSt3__113unordered_mapIj13LGRadiusRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
000092f4 ldr       x8, [sp, #0x490]                             
000092f8 str       x8, [x0]                                     
000092fc ldr       w8, [sp, #0x498]                             
00009300 str       w8, [x0, #8]                                 
00009304 ldr       w0, [sp, #0x49c]                             
00009308 ldr       x1, [sp, #0x550]                             
0000930c bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00009310 b         #0x9314                                      
00009314 add       x0, sp, #0x4a0                               
00009318 mov       x1, #0                                       
0000931c bl        #0x27eec                                      ; _objc_storeStrong
00009320 b         #0x9324                                      
00009324 add       x0, sp, #0x4b8                               
00009328 mov       x1, #0                                       
0000932c str       x1, [sp, #0x148]                             
00009330 bl        #0x27eec                                      ; _objc_storeStrong
00009334 ldr       x1, [sp, #0x148]                             
00009338 add       x0, sp, #0x4e8                               
0000933c bl        #0x27eec                                      ; _objc_storeStrong
00009340 b         #0x9344                                      
00009344 ldr       w8, [sp, #0x4f0]                             
00009348 add       w8, w8, #1                                   
0000934c str       w8, [sp, #0x4f0]                             
00009350 b         #0x8ff4                                      
00009354 b         #0x9358                                      
00009358 add       x0, sp, #0x500                               
0000935c mov       x1, #0                                       
00009360 str       x1, [sp, #0x140]                             
00009364 bl        #0x27eec                                      ; _objc_storeStrong
00009368 ldr       x1, [sp, #0x140]                             
0000936c add       x0, sp, #0x510                               
00009370 bl        #0x27eec                                      ; _objc_storeStrong
00009374 ldr       x1, [sp, #0x140]                             
00009378 add       x0, sp, #0x528                               
0000937c bl        #0x27eec                                      ; _objc_storeStrong
00009380 b         #0x9384                                      
00009384 ldr       w8, [sp, #0x538]                             
00009388 add       w8, w8, #1                                   
0000938c str       w8, [sp, #0x538]                             
00009390 b         #0x8d08                                      
00009394 str       wzr, [sp, #0x48c]                            
00009398 b         #0x939c                                      
0000939c ldr       w8, [sp, #0x48c]                             
000093a0 subs      w8, w8, #0x10                                
000093a4 b.hs      #0x95f8                                      
000093a8 b         #0x93ac                                      
000093ac add       x0, sp, #0x440                               
000093b0 str       x0, [sp, #0x128]                             
000093b4 mov       x2, #0x40                                    
000093b8 mov       w1, #0                                       
000093bc bl        #0x2814c                                      ; _memset
000093c0 adrp      x8, #0x34000                                 
000093c4 ldr       x8, [x8, #0x628]                              ; &_objc_retain
000093c8 adrp      x0, #0x36000                                 
000093cc add       x0, x0, #0x1d8                                ; &_OBJC_CLASS_$_NSConstantArray
000093d0 blr       x8                                           
000093d4 ldr       x1, [sp, #0x1f0]                             
000093d8 ldr       x2, [sp, #0x128]                             
000093dc str       x0, [sp, #0x130]                             
000093e0 sub       x3, x29, #0x98                               
000093e4 mov       x4, #0x10                                    
000093e8 bl        #0x28b20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000093ec str       x0, [sp, #0x138]                             
000093f0 cbz       x0, #0x95d0                                  
000093f4 b         #0x93f8                                      
000093f8 ldr       x0, [sp, #0x138]                             
000093fc ldr       x8, [sp, #0x450]                             
00009400 ldr       x8, [x8]                                     
00009404 str       x8, [sp, #0x110]                             
00009408 mov       x8, #0                                       
0000940c str       x8, [sp, #0x118]                             
00009410 str       x0, [sp, #0x120]                             
00009414 b         #0x9418                                      
00009418 ldr       x9, [sp, #0x110]                             
0000941c ldr       x8, [sp, #0x118]                             
00009420 ldr       x10, [sp, #0x120]                            
00009424 str       x10, [sp, #0x100]                            
00009428 str       x8, [sp, #0x108]                             
0000942c ldr       x8, [sp, #0x450]                             
00009430 ldr       x8, [x8]                                     
00009434 subs      x8, x8, x9                                   
00009438 b.eq      #0x944c                                      
0000943c b         #0x9440                                      
00009440 ldr       x0, [sp, #0x130]                             
00009444 bl        #0x2815c                                      ; _objc_enumerationMutation
00009448 b         #0x944c                                      
0000944c ldr       x1, [sp, #0x1f0]                             
00009450 ldr       x9, [sp, #0x108]                             
00009454 ldr       x8, [sp, #0x448]                             
00009458 ldr       x8, [x8, x9, lsl #3]                         
0000945c str       x8, [sp, #0x480]                             
00009460 adrp      x8, #0x38000                                 
00009464 ldr       x0, [x8, #0x200]                              ; &_OBJC_CLASS_$_NSString
00009468 adrp      x8, #0x34000                                 
0000946c add       x8, x8, #0x730                                ; __ZL13kHostDefaults|__ZL13kHostDefaults
00009470 ldr       x11, [x8, #0x550]                            
00009474 ldr       w8, [sp, #0x48c]                             
00009478 mov       x10, x8                                      
0000947c ldr       x8, [sp, #0x480]                             
00009480 mov       x9, sp                                       
00009484 str       x11, [x9]                                    
00009488 str       x10, [x9, #8]                                
0000948c str       x8, [x9, #0x10]                              
00009490 adrp      x2, #0x35000                                 
00009494 add       x2, x2, #0xd10                                ; @'%s.poster%u%@'
00009498 bl        #0x29080                                      ; objc_msgSend$stringWithFormat:
0000949c mov       x29, x29                                     
000094a0 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000094a4 str       x0, [sp, #0x438]                             
000094a8 adrp      x8, #0x38000                                 
000094ac ldr       x8, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
000094b0 str       x8, [sp, #0xf8]                              
000094b4 ldr       x0, [sp, #0x438]                             
000094b8 str       x0, [sp, #0xf0]                              
000094bc bl        #0x27edc                                      ; _objc_retainAutorelease
000094c0 ldr       x0, [sp, #0xf0]                              
000094c4 ldr       x1, [sp, #0x1f0]                             
000094c8 bl        #0x289c0                                      ; objc_msgSend$UTF8String
000094cc ldr       x8, [sp, #0xf8]                              
000094d0 blraaz    x8                                           
000094d4 str       w0, [sp, #0x434]                             
000094d8 ldr       w8, [sp, #0x434]                             
000094dc cbnz      w8, #0x94f0                                  
000094e0 b         #0x94e4                                      
000094e4 mov       w8, #0xc                                     
000094e8 str       w8, [sp, #0x430]                             
000094ec b         #0x9560                                      
000094f0 ldr       x1, [sp, #0x1f0]                             
000094f4 mov       w8, #0x11                                    
000094f8 str       w8, [sp, #0x428]                             
000094fc ldr       x0, [sp, #0x480]                             
00009500 adrp      x2, #0x35000                                 
00009504 add       x2, x2, #0xc90                                ; @'.dark'
00009508 bl        #0x28ae0                                      ; objc_msgSend$containsString:
0000950c strb      w0, [sp, #0x42c]                             
00009510 adrp      x0, #0x38000                                 
00009514 add       x0, x0, #0x708                                ; __ZL15g_refreshRoutes|__ZL15g_refreshRoutes
00009518 add       x1, sp, #0x434                               
0000951c str       x1, [sp, #0xe0]                              
00009520 bl        #0x2812c                                      ; __ZNSt3__113unordered_mapIj11LGHostRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
00009524 ldr       x1, [sp, #0xe0]                              
00009528 ldr       x8, [sp, #0x428]                             
0000952c str       x8, [x0]                                     
00009530 ldr       w8, [sp, #0x48c]                             
00009534 str       w8, [sp, #0xec]                              
00009538 adrp      x0, #0x38000                                 
0000953c add       x0, x0, #0x6e0                                ; __ZL19g_clockPosterRoutes|__ZL19g_clockPosterRoutes
00009540 bl        #0x2816c                                      ; __ZNSt3__113unordered_mapIjiNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjiEEEEEixERS7_
00009544 ldr       w8, [sp, #0xec]                              
00009548 str       w8, [x0]                                     
0000954c ldr       w0, [sp, #0x434]                             
00009550 ldr       x1, [sp, #0x550]                             
00009554 bl        #0xedc4                                       ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
00009558 str       wzr, [sp, #0x430]                            
0000955c b         #0x9560                                      
00009560 add       x0, sp, #0x438                               
00009564 mov       x1, #0                                       
00009568 bl        #0x27eec                                      ; _objc_storeStrong
0000956c ldr       w8, [sp, #0x430]                             
00009570 cbz       w8, #0x957c                                  
00009574 b         #0x9578                                      
00009578 b         #0x9580                                      
0000957c b         #0x9580                                      
00009580 ldr       x0, [sp, #0x100]                             
00009584 ldr       x8, [sp, #0x108]                             
00009588 add       x8, x8, #1                                   
0000958c subs      x9, x8, x0                                   
00009590 str       x8, [sp, #0x118]                             
00009594 str       x0, [sp, #0x120]                             
00009598 b.lo      #0x9418                                      
0000959c b         #0x95a0                                      
000095a0 ldr       x1, [sp, #0x1f0]                             
000095a4 ldr       x0, [sp, #0x130]                             
000095a8 add       x2, sp, #0x440                               
000095ac sub       x3, x29, #0x98                               
000095b0 mov       x4, #0x10                                    
000095b4 bl        #0x28b20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000095b8 mov       x8, #0                                       
000095bc str       x8, [sp, #0x118]                             
000095c0 mov       x8, x0                                       
000095c4 str       x8, [sp, #0x120]                             
000095c8 cbnz      x0, #0x9418                                  
000095cc b         #0x95d0                                      
000095d0 ldr       x0, [sp, #0x130]                             
000095d4 adrp      x8, #0x34000                                 
000095d8 ldr       x8, [x8, #0x620]                              ; &_objc_release
000095dc blr       x8                                           
000095e0 b         #0x95e4                                      
000095e4 b         #0x95e8                                      
000095e8 ldr       w8, [sp, #0x48c]                             
000095ec add       w8, w8, #1                                   
000095f0 str       w8, [sp, #0x48c]                             
000095f4 b         #0x939c                                      
000095f8 sub       x9, x29, #0xa8                               
000095fc mov       w8, #0x19                                    
00009600 stur      w8, [x29, #-0xa8]                            
00009604 mov       w8, #0x16                                    
00009608 stur      w8, [x29, #-0xa4]                            
0000960c mov       w8, #0x13                                    
00009610 stur      w8, [x29, #-0xa0]                            
00009614 mov       w8, #0x14                                    
00009618 stur      w8, [x29, #-0x9c]                            
0000961c add       x8, sp, #0x410                               
00009620 str       x9, [sp, #0x410]                             
00009624 mov       x9, #4                                       
00009628 str       x9, [sp, #0x418]                             
0000962c str       x8, [sp, #0x420]                             
00009630 ldr       x0, [sp, #0x420]                             
00009634 bl        #0xf11c                                       ; __ZNKSt16initializer_listI16LGHostIdentifierE5beginB6v15006Ev||__ZNKSt16initializer_listI16LGHostIdentifierE5beginB6v15006Ev|
00009638 str       x0, [sp, #0x408]                             
0000963c ldr       x0, [sp, #0x420]                             
00009640 bl        #0xf134                                       ; __ZNKSt16initializer_listI16LGHostIdentifierE3endB6v15006Ev||__ZNKSt16initializer_listI16LGHostIdentifierE3endB6v15006Ev|
00009644 str       x0, [sp, #0x400]                             
00009648 b         #0x964c                                      
0000964c ldr       x8, [sp, #0x408]                             
00009650 ldr       x9, [sp, #0x400]                             
00009654 subs      x8, x8, x9                                   
00009658 b.eq      #0x9aac                                      
0000965c b         #0x9660                                      
00009660 ldr       x8, [sp, #0x408]                             
00009664 ldr       w8, [x8]                                     
00009668 str       w8, [sp, #0x3fc]                             
0000966c ldr       w8, [sp, #0x3fc]                             
00009670 mov       x9, #0x50                                    
00009674 mul       x9, x8, x9                                   
00009678 adrp      x8, #0x34000                                 
0000967c add       x8, x8, #0x730                                ; __ZL13kHostDefaults|__ZL13kHostDefaults
00009680 add       x1, x8, x9                                   
00009684 add       x0, sp, #0x3a8                               
00009688 mov       x2, #0x50                                    
0000968c bl        #0x2810c                                      ; _memcpy
00009690 ldr       x1, [sp, #0x1f0]                             
00009694 fmov      s0, #-1.00000000                             
00009698 str       s0, [sp, #0x3c8]                             
0000969c adrp      x8, #0x38000                                 
000096a0 ldr       x0, [x8, #0x200]                              ; &_OBJC_CLASS_$_NSString
000096a4 ldr       x2, [sp, #0x3a8]                             
000096a8 bl        #0x290a0                                      ; objc_msgSend$stringWithUTF8String:
000096ac mov       x29, x29                                     
000096b0 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000096b4 ldr       x1, [sp, #0x1f0]                             
000096b8 str       x0, [sp, #0xd8]                              
000096bc adrp      x2, #0x35000                                 
000096c0 add       x2, x2, #0xd30                                ; @'.zoom'
000096c4 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
000096c8 mov       x29, x29                                     
000096cc bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000096d0 mov       x8, x0                                       
000096d4 ldr       x0, [sp, #0xd8]                              
000096d8 str       x8, [sp, #0x3a0]                             
000096dc adrp      x8, #0x34000                                 
000096e0 ldr       x8, [x8, #0x620]                              ; &_objc_release
000096e4 blr       x8                                           
000096e8 mov       w8, #-1                                      
000096ec str       w8, [sp, #0x39c]                             
000096f0 b         #0x96f4                                      
000096f4 ldr       w8, [sp, #0x39c]                             
000096f8 subs      w8, w8, #0x10                                
000096fc b.gt      #0x9a8c                                      
00009700 b         #0x9704                                      
00009704 ldr       w8, [sp, #0x39c]                             
00009708 mov       w9, #0                                       
0000970c and       w9, w9, #1                                   
00009710 and       w9, w9, #1                                   
00009714 strb      w9, [sp, #0x387]                             
00009718 tbz       w8, #0x1f, #0x972c                           
0000971c b         #0x9720                                      
00009720 ldr       x0, [sp, #0x3a0]                             
00009724 str       x0, [sp, #0xd0]                              
00009728 b         #0x9774                                      
0000972c ldr       x1, [sp, #0x1f0]                             
00009730 ldr       x0, [sp, #0x3a0]                             
00009734 ldr       w8, [sp, #0x39c]                             
00009738 mov       x9, sp                                       
0000973c str       x8, [x9]                                     
00009740 adrp      x2, #0x35000                                 
00009744 add       x2, x2, #0xcb0                                ; @'.r%d'
00009748 bl        #0x29020                                      ; objc_msgSend$stringByAppendingFormat:
0000974c mov       x29, x29                                     
00009750 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00009754 mov       x8, x0                                       
00009758 str       x8, [sp, #0x388]                             
0000975c mov       w8, #1                                       
00009760 and       w8, w8, #1                                   
00009764 and       w8, w8, #1                                   
00009768 strb      w8, [sp, #0x387]                             
0000976c str       x0, [sp, #0xd0]                              
00009770 b         #0x9774                                      
00009774 ldr       x0, [sp, #0xd0]                              
00009778 adrp      x8, #0x34000                                 
0000977c ldr       x8, [x8, #0x628]                              ; &_objc_retain
00009780 blr       x8                                           
00009784 str       x0, [sp, #0x390]                             
00009788 ldrb      w8, [sp, #0x387]                             
0000978c tbz       w8, #0, #0x97a8                              
00009790 b         #0x9794                                      
00009794 ldr       x0, [sp, #0x388]                             
00009798 adrp      x8, #0x34000                                 
0000979c ldr       x8, [x8, #0x620]                              ; &_objc_release
000097a0 blr       x8                                           
000097a4 b         #0x97a8                                      
000097a8 ldr       w8, [sp, #0x39c]                             
000097ac tbz       w8, #0x1f, #0x97c0                           
000097b0 b         #0x97b4                                      
000097b4 ldr       s0, [sp, #0x3bc]                             
000097b8 str       s0, [sp, #0xcc]                              
000097bc b         #0x97d8                                      
000097c0 ldr       s0, [sp, #0x39c]                             
000097c4 scvtf     s0, s0                                       
000097c8 movi      v1.2s, #0x42, lsl #24                        
000097cc fdiv      s0, s0, s1                                   
000097d0 str       s0, [sp, #0xcc]                              
000097d4 b         #0x97d8                                      
000097d8 ldr       s0, [sp, #0xcc]                              
000097dc str       s0, [sp, #0x380]                             
000097e0 add       x0, sp, #0x338                               
000097e4 str       x0, [sp, #0xb0]                              
000097e8 mov       x2, #0x40                                    
000097ec mov       w1, #0                                       
000097f0 bl        #0x2814c                                      ; _memset
000097f4 adrp      x8, #0x34000                                 
000097f8 ldr       x8, [x8, #0x628]                              ; &_objc_retain
000097fc adrp      x0, #0x36000                                 
00009800 add       x0, x0, #0x1f0                                ; &_OBJC_CLASS_$_NSConstantArray
00009804 blr       x8                                           
00009808 ldr       x1, [sp, #0x1f0]                             
0000980c ldr       x2, [sp, #0xb0]                              
00009810 str       x0, [sp, #0xb8]                              
00009814 add       x3, sp, #0x598                               
00009818 mov       x4, #0x10                                    
0000981c bl        #0x28b20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00009820 str       x0, [sp, #0xc0]                              
00009824 cbz       x0, #0x9a58                                  
00009828 b         #0x982c                                      
0000982c ldr       x0, [sp, #0xc0]                              
00009830 ldr       x8, [sp, #0x348]                             
00009834 ldr       x8, [x8]                                     
00009838 str       x8, [sp, #0x98]                              
0000983c mov       x8, #0                                       
00009840 str       x8, [sp, #0xa0]                              
00009844 str       x0, [sp, #0xa8]                              
00009848 b         #0x984c                                      
0000984c ldr       x9, [sp, #0x98]                              
00009850 ldr       x8, [sp, #0xa0]                              
00009854 ldr       x10, [sp, #0xa8]                             
00009858 str       x10, [sp, #0x88]                             
0000985c str       x8, [sp, #0x90]                              
00009860 ldr       x8, [sp, #0x348]                             
00009864 ldr       x8, [x8]                                     
00009868 subs      x8, x8, x9                                   
0000986c b.eq      #0x9880                                      
00009870 b         #0x9874                                      
00009874 ldr       x0, [sp, #0xb8]                              
00009878 bl        #0x2815c                                      ; _objc_enumerationMutation
0000987c b         #0x9880                                      
00009880 ldr       x1, [sp, #0x1f0]                             
00009884 ldr       x9, [sp, #0x90]                              
00009888 ldr       x8, [sp, #0x340]                             
0000988c ldr       x8, [x8, x9, lsl #3]                         
00009890 str       x8, [sp, #0x378]                             
00009894 ldr       x0, [sp, #0x378]                             
00009898 bl        #0x28a00                                      ; objc_msgSend$boolValue
0000989c mov       w8, #0                                       
000098a0 and       w8, w8, #1                                   
000098a4 and       w8, w8, #1                                   
000098a8 strb      w8, [sp, #0x327]                             
000098ac tbz       w0, #0, #0x98f0                              
000098b0 b         #0x98b4                                      
000098b4 ldr       x1, [sp, #0x1f0]                             
000098b8 ldr       x0, [sp, #0x390]                             
000098bc adrp      x2, #0x35000                                 
000098c0 add       x2, x2, #0xc90                                ; @'.dark'
000098c4 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
000098c8 mov       x29, x29                                     
000098cc bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000098d0 mov       x8, x0                                       
000098d4 str       x8, [sp, #0x328]                             
000098d8 mov       w8, #1                                       
000098dc and       w8, w8, #1                                   
000098e0 and       w8, w8, #1                                   
000098e4 strb      w8, [sp, #0x327]                             
000098e8 str       x0, [sp, #0x80]                              
000098ec b         #0x98fc                                      
000098f0 ldr       x8, [sp, #0x390]                             
000098f4 str       x8, [sp, #0x80]                              
000098f8 b         #0x98fc                                      
000098fc ldr       x0, [sp, #0x80]                              
00009900 adrp      x8, #0x34000                                 
00009904 ldr       x8, [x8, #0x628]                              ; &_objc_retain
00009908 blr       x8                                           
0000990c str       x0, [sp, #0x330]                             
00009910 ldrb      w8, [sp, #0x327]                             
00009914 tbz       w8, #0, #0x9930                              
00009918 b         #0x991c                                      
0000991c ldr       x0, [sp, #0x328]                             
00009920 adrp      x8, #0x34000                                 
00009924 ldr       x8, [x8, #0x620]                              ; &_objc_release
00009928 blr       x8                                           
0000992c b         #0x9930                                      
00009930 add       x8, sp, #0x330                               
00009934 str       x8, [sp, #0x78]                              
00009938 ldr       x8, [sp, #0x330]                             
0000993c str       x8, [sp, #0x48]                              
00009940 add       x0, sp, #0x2d0                               
00009944 str       x0, [sp, #0x38]                              
00009948 add       x1, sp, #0x3a8                               
0000994c str       x1, [sp, #0x50]                              
00009950 mov       x2, #0x50                                    
00009954 str       x2, [sp, #0x58]                              
00009958 bl        #0x2810c                                      ; _memcpy
0000995c ldr       x1, [sp, #0x1f0]                             
00009960 ldr       s0, [sp, #0x380]                             
00009964 str       s0, [sp, #0x44]                              
00009968 ldr       x0, [sp, #0x378]                             
0000996c bl        #0x28a00                                      ; objc_msgSend$boolValue
00009970 ldr       x1, [sp, #0x38]                              
00009974 ldr       s0, [sp, #0x44]                              
00009978 mov       x2, x0                                       
0000997c ldr       x0, [sp, #0x48]                              
00009980 ldr       x3, [sp, #0x550]                             
00009984 bl        #0xf154                                       ; __ZL22lgRegisterDynamicRouteP8NSString12LGHostParamsfbPv||__ZL22lgRegisterDynamicRouteP8NSString12LGHostParamsfbPv|
00009988 ldr       x1, [sp, #0x1f0]                             
0000998c ldr       x0, [sp, #0x330]                             
00009990 adrp      x2, #0x35000                                 
00009994 add       x2, x2, #0xc70                                ; @'.refresh'
00009998 bl        #0x29040                                      ; objc_msgSend$stringByAppendingString:
0000999c mov       x29, x29                                     
000099a0 bl        #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000099a4 ldr       x1, [sp, #0x50]                              
000099a8 ldr       x2, [sp, #0x58]                              
000099ac str       x0, [sp, #0x70]                              
000099b0 add       x0, sp, #0x280                               
000099b4 str       x0, [sp, #0x60]                              
000099b8 bl        #0x2810c                                      ; _memcpy
000099bc ldr       x1, [sp, #0x1f0]                             
000099c0 ldr       s0, [sp, #0x380]                             
000099c4 str       s0, [sp, #0x6c]                              
000099c8 ldr       x0, [sp, #0x378]                             
000099cc bl        #0x28a00                                      ; objc_msgSend$boolValue
000099d0 ldr       x1, [sp, #0x60]                              
000099d4 ldr       s0, [sp, #0x6c]                              
000099d8 mov       x2, x0                                       
000099dc ldr       x0, [sp, #0x70]                              
000099e0 ldr       x3, [sp, #0x550]                             
000099e4 bl        #0xf154                                       ; __ZL22lgRegisterDynamicRouteP8NSString12LGHostParamsfbPv||__ZL22lgRegisterDynamicRouteP8NSString12LGHostParamsfbPv|
000099e8 ldr       x0, [sp, #0x70]                              
000099ec adrp      x8, #0x34000                                 
000099f0 ldr       x8, [x8, #0x620]                              ; &_objc_release
000099f4 blr       x8                                           
000099f8 ldr       x0, [sp, #0x78]                              
000099fc mov       x1, #0                                       
00009a00 bl        #0x27eec                                      ; _objc_storeStrong
00009a04 b         #0x9a08                                      
00009a08 ldr       x0, [sp, #0x88]                              
00009a0c ldr       x8, [sp, #0x90]                              
00009a10 add       x8, x8, #1                                   
00009a14 subs      x9, x8, x0                                   
00009a18 str       x8, [sp, #0xa0]                              
00009a1c str       x0, [sp, #0xa8]                              
00009a20 b.lo      #0x984c                                      
00009a24 b         #0x9a28                                      
00009a28 ldr       x1, [sp, #0x1f0]                             
00009a2c ldr       x0, [sp, #0xb8]                              
00009a30 add       x2, sp, #0x338                               
00009a34 add       x3, sp, #0x598                               
00009a38 mov       x4, #0x10                                    
00009a3c bl        #0x28b20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00009a40 mov       x8, #0                                       
00009a44 str       x8, [sp, #0xa0]                              
00009a48 mov       x8, x0                                       
00009a4c str       x8, [sp, #0xa8]                              
00009a50 cbnz      x0, #0x984c                                  
00009a54 b         #0x9a58                                      
00009a58 ldr       x0, [sp, #0xb8]                              
00009a5c adrp      x8, #0x34000                                 
00009a60 ldr       x8, [x8, #0x620]                              ; &_objc_release
00009a64 blr       x8                                           
00009a68 b         #0x9a6c                                      
00009a6c add       x0, sp, #0x390                               
00009a70 mov       x1, #0                                       
00009a74 bl        #0x27eec                                      ; _objc_storeStrong
00009a78 b         #0x9a7c                                      
00009a7c ldr       w8, [sp, #0x39c]                             
00009a80 add       w8, w8, #1                                   
00009a84 str       w8, [sp, #0x39c]                             
00009a88 b         #0x96f4                                      
00009a8c add       x0, sp, #0x3a0                               
00009a90 mov       x1, #0                                       
00009a94 bl        #0x27eec                                      ; _objc_storeStrong
00009a98 b         #0x9a9c                                      
00009a9c ldr       x8, [sp, #0x408]                             
00009aa0 add       x8, x8, #4                                   
00009aa4 str       x8, [sp, #0x408]                             
00009aa8 b         #0x964c                                      
00009aac ldr       x0, [sp, #0x550]                             
00009ab0 bl        #0xf27c                                       ; __ZL34lgRegisterCustomRuleAtomsFromPrefsPv||__ZL34lgRegisterCustomRuleAtomsFromPrefsPv|
00009ab4 mov       w8, #1                                       
00009ab8 adrp      x9, #0x38000                                 
00009abc strb      w8, [x9, #0x7a0]                             
00009ac0 adrp      x8, #0x38000                                 
00009ac4 ldrb      w10, [x8, #0x76a]                             ; __ZL13g_useHookPath|__ZL13g_useHookPath
00009ac8 adrp      x9, #0x2a000                                 
00009acc add       x9, x9, #0x6b5                                ; 'clone'
00009ad0 adrp      x8, #0x2a000                                 
00009ad4 add       x8, x8, #0x6b0                                ; 'hook'
00009ad8 mov       w11, #1                                      
00009adc str       w11, [sp, #0x34]                             
00009ae0 and       w10, w10, #1                                 
00009ae4 ands      w10, w10, #1                                 
00009ae8 csel      x12, x8, x9, ne                              
00009aec ldr       x11, [sp, #0x550]                            
00009af0 ldr       w8, [sp, #0x570]                             
00009af4 mov       x10, x8                                      
00009af8 ldr       w8, [sp, #0x55c]                             
00009afc mov       x9, sp                                       
00009b00 str       x12, [x9]                                    
00009b04 str       x11, [x9, #8]                                
00009b08 str       x10, [x9, #0x10]                             
00009b0c str       x8, [x9, #0x18]                              
00009b10 mov       x8, #0x20                                    
00009b14 str       x8, [x9, #0x20]                              
00009b18 adrp      x0, #0x2a000                                 
00009b1c add       x0, x0, #0x65e                                ; 'registerCustomFilter: done mode=%s descriptor=%p renderSlot=%d atom=0x%x hosts=%d'
00009b20 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00009b24 bl        #0xfa74                                       ; __ZL24lgPostParametersReloadedv||__ZL24lgPostParametersReloadedv|
00009b28 adrp      x0, #0x2a000                                 
00009b2c add       x0, x0, #0x6bb                                ; 'registerCustomFilter: registration-ready notification posted'
00009b30 bl        #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00009b34 ldr       w8, [sp, #0x34]                              
00009b38 and       w9, w8, #1                                   
00009b3c and       w9, w9, w8                                   
00009b40 strb      w9, [sp, #0x597]                             
00009b44 str       w8, [sp, #0x430]                             
00009b48 add       x0, sp, #0x548                               
00009b4c mov       x1, #0                                       
00009b50 bl        #0x27eec                                      ; _objc_storeStrong
00009b54 b         #0x9b58                                      
00009b58 ldrb      w8, [sp, #0x597]                             
00009b5c str       w8, [sp, #0x30]                              

