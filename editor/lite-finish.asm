; lite-finish arm64e unslid VA [0x6d320,0x6d6cc)
0006d320 pacibsp                                                
0006d324 stp       d9, d8, [sp, #-0x70]!                        
0006d328 stp       x28, x27, [sp, #0x10]                        
0006d32c stp       x26, x25, [sp, #0x20]                        
0006d330 stp       x24, x23, [sp, #0x30]                        
0006d334 stp       x22, x21, [sp, #0x40]                        
0006d338 stp       x20, x19, [sp, #0x50]                        
0006d33c stp       x29, x30, [sp, #0x60]                        
0006d340 add       x29, sp, #0x60                               
0006d344 sub       sp, sp, #0x190                               
0006d348 mov       x19, x0                                      
0006d34c adrp      x8, #0xd4000                                 
0006d350 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0006d354 ldr       x8, [x8]                                      ; &___objc_personality_v0
0006d358 stur      x8, [x29, #-0x68]                            
0006d35c bl        #0xa6020                                      ; objc_msgSend$closing
0006d360 tbnz      w0, #0, #0x6d68c                             
0006d364 mov       x0, x19                                      
0006d368 mov       w2, #1                                       
0006d36c bl        #0xac2a0                                      ; objc_msgSend$setClosing:
0006d370 mov       x0, x19                                      
0006d374 bl        #0xaac00                                      ; objc_msgSend$presentedViewController
0006d378 mov       x29, x29                                     
0006d37c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d380 mov       x20, x0                                      
0006d384 bl        #0xa46f4                                      ; _objc_release
0006d388 cbz       x20, #0x6d39c                                
0006d38c mov       x0, x19                                      
0006d390 mov       w2, #0                                       
0006d394 mov       x3, #0                                       
0006d398 bl        #0xa7020                                      ; objc_msgSend$dismissViewControllerAnimated:completion:
0006d39c movi      v0.2d, #0000000000000000                     
0006d3a0 stp       q0, q0, [sp, #0x60]                          
0006d3a4 stp       q0, q0, [sp, #0x40]                          
0006d3a8 mov       x0, x19                                      
0006d3ac bl        #0xa8220                                      ; objc_msgSend$hiddenViews
0006d3b0 mov       x29, x29                                     
0006d3b4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d3b8 mov       x21, x0                                      
0006d3bc bl        #0xa9040                                      ; objc_msgSend$keyEnumerator
0006d3c0 mov       x29, x29                                     
0006d3c4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d3c8 mov       x20, x0                                      
0006d3cc mov       x0, x21                                      
0006d3d0 bl        #0xa46f4                                      ; _objc_release
0006d3d4 add       x2, sp, #0x40                                
0006d3d8 sub       x3, x29, #0xe8                               
0006d3dc mov       x0, x20                                      
0006d3e0 mov       w4, #0x10                                    
0006d3e4 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006d3e8 cbz       x0, #0x6d48c                                 
0006d3ec mov       x21, x0                                      
0006d3f0 ldr       x8, [sp, #0x50]                              
0006d3f4 ldr       x25, [x8]                                    
0006d3f8 mov       x26, #0                                      
0006d3fc ldr       x8, [sp, #0x50]                              
0006d400 ldr       x8, [x8]                                     
0006d404 cmp       x8, x25                                      
0006d408 b.eq      #0x6d414                                     
0006d40c mov       x0, x20                                      
0006d410 bl        #0xa4634                                      ; _objc_enumerationMutation
0006d414 ldr       x8, [sp, #0x48]                              
0006d418 ldr       x22, [x8, x26, lsl #3]                       
0006d41c mov       x0, x19                                      
0006d420 bl        #0xa8220                                      ; objc_msgSend$hiddenViews
0006d424 mov       x29, x29                                     
0006d428 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d42c mov       x23, x0                                      
0006d430 mov       x2, x22                                      
0006d434 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
0006d438 mov       x29, x29                                     
0006d43c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d440 mov       x24, x0                                      
0006d444 bl        #0xa5b80                                      ; objc_msgSend$boolValue
0006d448 mov       x2, x0                                       
0006d44c mov       x0, x22                                      
0006d450 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
0006d454 mov       x0, x24                                      
0006d458 bl        #0xa46f4                                      ; _objc_release
0006d45c mov       x0, x23                                      
0006d460 bl        #0xa46f4                                      ; _objc_release
0006d464 add       x26, x26, #1                                 
0006d468 cmp       x21, x26                                     
0006d46c b.ne      #0x6d3fc                                     
0006d470 add       x2, sp, #0x40                                
0006d474 sub       x3, x29, #0xe8                               
0006d478 mov       x0, x20                                      
0006d47c mov       w4, #0x10                                    
0006d480 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006d484 mov       x21, x0                                      
0006d488 cbnz      x0, #0x6d3f8                                 
0006d48c mov       x0, x20                                      
0006d490 bl        #0xa46f4                                      ; _objc_release
0006d494 movi      v0.2d, #0000000000000000                     
0006d498 stp       q0, q0, [sp, #0x20]                          
0006d49c stp       q0, q0, [sp]                                 
0006d4a0 mov       x0, x19                                      
0006d4a4 bl        #0xa7d00                                      ; objc_msgSend$gestures
0006d4a8 mov       x29, x29                                     
0006d4ac bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d4b0 mov       x21, x0                                      
0006d4b4 bl        #0xa9040                                      ; objc_msgSend$keyEnumerator
0006d4b8 mov       x29, x29                                     
0006d4bc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d4c0 mov       x20, x0                                      
0006d4c4 mov       x0, x21                                      
0006d4c8 bl        #0xa46f4                                      ; _objc_release
0006d4cc mov       x2, sp                                       
0006d4d0 add       x3, sp, #0x88                                
0006d4d4 mov       x0, x20                                      
0006d4d8 mov       w4, #0x10                                    
0006d4dc bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006d4e0 cbz       x0, #0x6d584                                 
0006d4e4 mov       x21, x0                                      
0006d4e8 ldr       x8, [sp, #0x10]                              
0006d4ec ldr       x25, [x8]                                    
0006d4f0 mov       x26, #0                                      
0006d4f4 ldr       x8, [sp, #0x10]                              
0006d4f8 ldr       x8, [x8]                                     
0006d4fc cmp       x8, x25                                      
0006d500 b.eq      #0x6d50c                                     
0006d504 mov       x0, x20                                      
0006d508 bl        #0xa4634                                      ; _objc_enumerationMutation
0006d50c ldr       x8, [sp, #8]                                 
0006d510 ldr       x22, [x8, x26, lsl #3]                       
0006d514 mov       x0, x19                                      
0006d518 bl        #0xa7d00                                      ; objc_msgSend$gestures
0006d51c mov       x29, x29                                     
0006d520 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d524 mov       x23, x0                                      
0006d528 mov       x2, x22                                      
0006d52c bl        #0xaa260                                      ; objc_msgSend$objectForKey:
0006d530 mov       x29, x29                                     
0006d534 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d538 mov       x24, x0                                      
0006d53c bl        #0xa5b80                                      ; objc_msgSend$boolValue
0006d540 mov       x2, x0                                       
0006d544 mov       x0, x22                                      
0006d548 bl        #0xacb40                                      ; objc_msgSend$setEnabled:
0006d54c mov       x0, x24                                      
0006d550 bl        #0xa46f4                                      ; _objc_release
0006d554 mov       x0, x23                                      
0006d558 bl        #0xa46f4                                      ; _objc_release
0006d55c add       x26, x26, #1                                 
0006d560 cmp       x21, x26                                     
0006d564 b.ne      #0x6d4f4                                     
0006d568 mov       x2, sp                                       
0006d56c add       x3, sp, #0x88                                
0006d570 mov       x0, x20                                      
0006d574 mov       w4, #0x10                                    
0006d578 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006d57c mov       x21, x0                                      
0006d580 cbnz      x0, #0x6d4f0                                 
0006d584 mov       x0, x20                                      
0006d588 bl        #0xa46f4                                      ; _objc_release
0006d58c adrp      x8, #0xef000                                 
0006d590 ldr       x0, [x8, #0x768]                             
0006d594 str       xzr, [x8, #0x768]                            
0006d598 bl        #0xa46f4                                      ; _objc_release
0006d59c mov       x0, x19                                      
0006d5a0 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006d5a4 mov       x29, x29                                     
0006d5a8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d5ac mov       x20, x0                                      
0006d5b0 bl        #0x64aa4                                     
0006d5b4 mov       x0, x20                                      
0006d5b8 bl        #0xa46f4                                      ; _objc_release
0006d5bc bl        #0x68928                                     
0006d5c0 adrp      x0, #0xef000                                 
0006d5c4 add       x0, x0, #0x770                               
0006d5c8 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006d5cc mov       x21, x0                                      
0006d5d0 bl        #0xa9f80                                      ; objc_msgSend$notificationListScrollView
0006d5d4 mov       x29, x29                                     
0006d5d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d5dc mov       x20, x0                                      
0006d5e0 mov       x0, x21                                      
0006d5e4 bl        #0xa46f4                                      ; _objc_release
0006d5e8 mov       x0, x20                                      
0006d5ec bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006d5f0 fmov      d8, d0                                       
0006d5f4 mov       x0, x19                                      
0006d5f8 bl        #0xab840                                      ; objc_msgSend$scrollTravel
0006d5fc fmov      d9, d0                                       
0006d600 mov       x0, x20                                      
0006d604 bl        #0xa6580                                      ; objc_msgSend$contentInset
0006d608 fsub      d1, d9, d0                                   
0006d60c mov       x0, x20                                      
0006d610 fmov      d0, d8                                       
0006d614 mov       w2, #0                                       
0006d618 bl        #0xac4a0                                      ; objc_msgSend$setContentOffset:animated:
0006d61c mov       x0, x19                                      
0006d620 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006d624 mov       x29, x29                                     
0006d628 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d62c mov       x21, x0                                      
0006d630 bl        #0x64aa4                                     
0006d634 mov       x0, x21                                      
0006d638 bl        #0xa46f4                                      ; _objc_release
0006d63c mov       x0, x19                                      
0006d640 mov       x2, #0                                       
0006d644 bl        #0xb1d20                                      ; objc_msgSend$willMoveToParentViewController:
0006d648 mov       x0, x19                                      
0006d64c bl        #0xb1920                                      ; objc_msgSend$view
0006d650 mov       x29, x29                                     
0006d654 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d658 mov       x21, x0                                      
0006d65c bl        #0xab200                                      ; objc_msgSend$removeFromSuperview
0006d660 mov       x0, x21                                      
0006d664 bl        #0xa46f4                                      ; _objc_release
0006d668 mov       x0, x19                                      
0006d66c bl        #0xab1c0                                      ; objc_msgSend$removeFromParentViewController
0006d670 adrp      x8, #0xef000                                 
0006d674 ldr       x0, [x8, #0x778]                             
0006d678 str       xzr, [x8, #0x778]                            
0006d67c bl        #0xa46f4                                      ; _objc_release
0006d680 bl        #0x60108                                     
0006d684 mov       x0, x20                                      
0006d688 bl        #0xa46f4                                      ; _objc_release
0006d68c ldur      x8, [x29, #-0x68]                            
0006d690 adrp      x9, #0xd4000                                 
0006d694 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006d698 ldr       x9, [x9]                                      ; &___objc_personality_v0
0006d69c cmp       x9, x8                                       
0006d6a0 b.ne      #0x6d6c8                                     
0006d6a4 add       sp, sp, #0x190                               
0006d6a8 ldp       x29, x30, [sp, #0x60]                        
0006d6ac ldp       x20, x19, [sp, #0x50]                        
0006d6b0 ldp       x22, x21, [sp, #0x40]                        
0006d6b4 ldp       x24, x23, [sp, #0x30]                        
0006d6b8 ldp       x26, x25, [sp, #0x20]                        
0006d6bc ldp       x28, x27, [sp, #0x10]                        
0006d6c0 ldp       d9, d8, [sp], #0x70                          
0006d6c4 retab                                                  
0006d6c8 bl        #0xa41d4                                      ; ___stack_chk_fail
