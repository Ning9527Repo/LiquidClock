; lite-font arm64e unslid VA [0x6b304,0x6b5a8)
0006b304 pacibsp                                                
0006b308 sub       sp, sp, #0x40                                
0006b30c stp       x22, x21, [sp, #0x10]                        
0006b310 stp       x20, x19, [sp, #0x20]                        
0006b314 stp       x29, x30, [sp, #0x30]                        
0006b318 add       x29, sp, #0x30                               
0006b31c mov       x19, x0                                      
0006b320 adrp      x8, #0xec000                                 
0006b324 ldr       x8, [x8, #0x9b8]                              ; &LGClockLiteFontController
0006b328 stp       x0, x8, [sp]                                 
0006b32c adrp      x8, #0xec000                                 
0006b330 ldr       x1, [x8, #0xe0]                               ; SEL viewDidLoad
0006b334 mov       x0, sp                                       
0006b338 bl        #0xa46a4                                      ; _objc_msgSendSuper2
0006b33c mov       x0, x19                                      
0006b340 mov       w2, #2                                       
0006b344 bl        #0xae280                                      ; objc_msgSend$setOverrideUserInterfaceStyle:
0006b348 adrp      x8, #0xec000                                 
0006b34c ldr       x0, [x8, #0x5b0]                              ; &_OBJC_CLASS_$_UIVisualEffectView
0006b350 bl        #0xa4594                                      ; _objc_alloc
0006b354 mov       x20, x0                                      
0006b358 adrp      x8, #0xec000                                 
0006b35c ldr       x0, [x8, #0x7f0]                              ; &_OBJC_CLASS_$_UIBlurEffect
0006b360 mov       w2, #0x11                                    
0006b364 bl        #0xa7380                                      ; objc_msgSend$effectWithStyle:
0006b368 mov       x29, x29                                     
0006b36c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b370 mov       x21, x0                                      
0006b374 mov       x0, x20                                      
0006b378 mov       x2, x21                                      
0006b37c bl        #0xa8660                                      ; objc_msgSend$initWithEffect:
0006b380 mov       x20, x0                                      
0006b384 mov       x0, x21                                      
0006b388 bl        #0xa46f4                                      ; _objc_release
0006b38c mov       x0, x19                                      
0006b390 bl        #0xb1920                                      ; objc_msgSend$view
0006b394 mov       x29, x29                                     
0006b398 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b39c mov       x21, x0                                      
0006b3a0 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006b3a4 mov       x0, x20                                      
0006b3a8 bl        #0xace60                                      ; objc_msgSend$setFrame:
0006b3ac mov       x0, x21                                      
0006b3b0 bl        #0xa46f4                                      ; _objc_release
0006b3b4 mov       x0, x20                                      
0006b3b8 mov       w2, #0x12                                    
0006b3bc bl        #0xabe20                                      ; objc_msgSend$setAutoresizingMask:
0006b3c0 mov       x0, x19                                      
0006b3c4 bl        #0xb1920                                      ; objc_msgSend$view
0006b3c8 mov       x29, x29                                     
0006b3cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b3d0 mov       x21, x0                                      
0006b3d4 mov       x2, x20                                      
0006b3d8 bl        #0xa4f80                                      ; objc_msgSend$addSubview:
0006b3dc mov       x0, x21                                      
0006b3e0 bl        #0xa46f4                                      ; _objc_release
0006b3e4 adrp      x8, #0xec000                                 
0006b3e8 ldr       x0, [x8, #0x7f8]                              ; &LGClockFontPanel
0006b3ec bl        #0xa4594                                      ; _objc_alloc
0006b3f0 mov       x21, x0                                      
0006b3f4 mov       x0, x19                                      
0006b3f8 bl        #0xb0220                                      ; objc_msgSend$state
0006b3fc mov       x29, x29                                     
0006b400 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b404 mov       x22, x0                                      
0006b408 mov       x0, x21                                      
0006b40c mov       x2, x19                                      
0006b410 mov       x3, x22                                      
0006b414 bl        #0xa87e0                                      ; objc_msgSend$initWithPicker:state:
0006b418 mov       x21, x0                                      
0006b41c mov       x0, x19                                      
0006b420 mov       x2, x21                                      
0006b424 bl        #0xae2c0                                      ; objc_msgSend$setPanel:
0006b428 mov       x0, x21                                      
0006b42c bl        #0xa46f4                                      ; _objc_release
0006b430 mov       x0, x22                                      
0006b434 bl        #0xa46f4                                      ; _objc_release
0006b438 mov       x0, x19                                      
0006b43c bl        #0xaa720                                      ; objc_msgSend$panel
0006b440 mov       x29, x29                                     
0006b444 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b448 mov       x21, x0                                      
0006b44c bl        #0xa9d00                                      ; objc_msgSend$mode
0006b450 mov       x29, x29                                     
0006b454 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b458 mov       x22, x0                                      
0006b45c mov       w2, #1                                       
0006b460 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
0006b464 mov       x0, x22                                      
0006b468 bl        #0xa46f4                                      ; _objc_release
0006b46c mov       x0, x21                                      
0006b470 bl        #0xa46f4                                      ; _objc_release
0006b474 fmov      d0, #17.00000000                             
0006b478 movi      d1, #0000000000000000                        
0006b47c movi      d2, #0000000000000000                        
0006b480 movi      d3, #0000000000000000                        
0006b484 mov       x0, x19                                      
0006b488 bl        #0xabc00                                      ; objc_msgSend$setAdditionalSafeAreaInsets:
0006b48c mov       x0, x20                                      
0006b490 bl        #0xa46f4                                      ; _objc_release
0006b494 ldp       x29, x30, [sp, #0x30]                        
0006b498 ldp       x20, x19, [sp, #0x20]                        
0006b49c ldp       x22, x21, [sp, #0x10]                        
0006b4a0 add       sp, sp, #0x40                                
0006b4a4 retab                                                  
0006b4a8 pacibsp                                                
0006b4ac sub       sp, sp, #0x30                                
0006b4b0 stp       x20, x19, [sp, #0x10]                        
0006b4b4 stp       x29, x30, [sp, #0x20]                        
0006b4b8 add       x29, sp, #0x20                               
0006b4bc mov       x19, x0                                      
0006b4c0 adrp      x8, #0xec000                                 
0006b4c4 ldr       x8, [x8, #0x9b8]                              ; &LGClockLiteFontController
0006b4c8 stp       x0, x8, [sp]                                 
0006b4cc adrp      x8, #0xeb000                                 
0006b4d0 ldr       x1, [x8, #0xf90]                              ; SEL viewDidLayoutSubviews
0006b4d4 mov       x0, sp                                       
0006b4d8 bl        #0xa46a4                                      ; _objc_msgSendSuper2
0006b4dc mov       x0, x19                                      
0006b4e0 bl        #0xaa720                                      ; objc_msgSend$panel
0006b4e4 mov       x29, x29                                     
0006b4e8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b4ec mov       x19, x0                                      
0006b4f0 bl        #0xa9200                                      ; objc_msgSend$layout
0006b4f4 mov       x0, x19                                      
0006b4f8 bl        #0xa46f4                                      ; _objc_release
0006b4fc ldp       x29, x30, [sp, #0x20]                        
0006b500 ldp       x20, x19, [sp, #0x10]                        
0006b504 add       sp, sp, #0x30                                
0006b508 retab                                                  
0006b50c adrp      x8, #0xec000                                 
0006b510 ldrsw     x8, [x8, #0xdf4]                             
0006b514 ldr       x0, [x0, x8]                                 
0006b518 ret                                                    
0006b51c mov       x1, x2                                       
0006b520 adrp      x8, #0xec000                                 
0006b524 ldrsw     x8, [x8, #0xdf4]                             
0006b528 add       x0, x0, x8                                   
0006b52c b         #0xa4774                                      ; _objc_storeStrong
0006b530 adrp      x8, #0xec000                                 
0006b534 ldrsw     x8, [x8, #0xdf8]                             
0006b538 ldr       x0, [x0, x8]                                 
0006b53c ret                                                    
0006b540 mov       x1, x2                                       
0006b544 adrp      x8, #0xec000                                 
0006b548 ldrsw     x8, [x8, #0xdf8]                             
0006b54c add       x0, x0, x8                                   
0006b550 b         #0xa4774                                      ; _objc_storeStrong
0006b554 pacibsp                                                
0006b558 stp       x20, x19, [sp, #-0x20]!                      
0006b55c stp       x29, x30, [sp, #0x10]                        
0006b560 add       x29, sp, #0x10                               
0006b564 mov       x19, x0                                      
0006b568 adrp      x8, #0xec000                                 
0006b56c ldrsw     x8, [x8, #0xdf8]                             
0006b570 add       x0, x0, x8                                   
0006b574 mov       x1, #0                                       
0006b578 bl        #0xa4774                                      ; _objc_storeStrong
0006b57c adrp      x8, #0xec000                                 
0006b580 ldrsw     x8, [x8, #0xdf4]                             
0006b584 add       x0, x19, x8                                  
0006b588 mov       x1, #0                                       
0006b58c ldp       x29, x30, [sp, #0x10]                        
0006b590 ldp       x20, x19, [sp], #0x20                        
0006b594 autibsp                                                
0006b598 eor       x16, x30, x30, lsl #1                        
0006b59c tbz       x16, #0x3e, #0x6b5a4                         
0006b5a0 brk       #0xc471                                      
0006b5a4 b         #0xa4774                                      ; _objc_storeStrong
