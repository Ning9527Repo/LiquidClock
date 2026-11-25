; prefs arm64e unslid VA [0x1d360,0x1ed7c); slice_offset=0xa0000
0001d360 mov       x1, x0                                       
0001d364 b         #0x1d368                                     
0001d368 pacibsp                                                
0001d36c stp       d11, d10, [sp, #-0x80]!                      
0001d370 stp       d9, d8, [sp, #0x10]                          
0001d374 stp       x28, x27, [sp, #0x20]                        
0001d378 stp       x26, x25, [sp, #0x30]                        
0001d37c stp       x24, x23, [sp, #0x40]                        
0001d380 stp       x22, x21, [sp, #0x50]                        
0001d384 stp       x20, x19, [sp, #0x60]                        
0001d388 stp       x29, x30, [sp, #0x70]                        
0001d38c add       x29, sp, #0x70                               
0001d390 sub       sp, sp, #0x690                               
0001d394 mov       x19, x1                                      
0001d398 adrp      x8, #0x78000                                 
0001d39c ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001d3a0 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001d3a4 stur      x8, [x29, #-0x88]                            
0001d3a8 bl        #0x58e14                                      ; _objc_retain
0001d3ac mov       x27, x0                                      
0001d3b0 mov       x0, x19                                      
0001d3b4 bl        #0x58e14                                      ; _objc_retain
0001d3b8 mov       x22, x0                                      
0001d3bc mov       x0, x27                                      
0001d3c0 bl        #0x58e24                                      ; _objc_retainAutorelease
0001d3c4 bl        #0x59120                                      ; objc_msgSend$UTF8String
0001d3c8 cbz       x0, #0x1d408                                 
0001d3cc mov       x19, x0                                      
0001d3d0 add       x23, sp, #0x520                              
0001d3d4 mov       w21, #0x20                                   
0001d3d8 adrp      x20, #0x78000                                
0001d3dc ldr       x20, [x20, #0x4e0]                            ; &___NSArray0__struct
0001d3e0 adrp      x28, #0x78000                                
0001d3e4 add       x28, x28, #0xe98                             
0001d3e8 ldur      x0, [x28, #-0x10]                            
0001d3ec mov       x1, x19                                      
0001d3f0 bl        #0x58f64                                      ; _strcmp
0001d3f4 cbz       w0, #0x1d414                                 
0001d3f8 add       x28, x28, #0x48                              
0001d3fc subs      x21, x21, #1                                 
0001d400 b.ne      #0x1d3e8                                     
0001d404 b         #0x1ecfc                                     
0001d408 adrp      x20, #0x78000                                
0001d40c ldr       x20, [x20, #0x4e0]                            ; &___NSArray0__struct
0001d410 b         #0x1ecfc                                     
0001d414 add       x8, sp, #0x1d0                               
0001d418 adrp      x16, #0x78000                                
0001d41c ldr       x16, [x16, #0x5f0]                            ; &__NSConcreteStackBlock
0001d420 mov       x17, x8                                      
0001d424 movk      x17, #0x6ae1, lsl #48                        
0001d428 pacda     x16, x17                                     
0001d42c str       x16, [sp, #0x1d0]                            
0001d430 adrp      x9, #0x68000                                 
0001d434 ldr       d0, [x9, #0xd90]                             
0001d438 str       d0, [sp, #0x1d8]                             
0001d43c add       x8, x8, #0x10                                
0001d440 adrp      x16, #0x27000                                
0001d444 add       x16, x16, #0x4a0                             
0001d448 pacia     x16, x8                                      
0001d44c adrp      x8, #0x78000                                 
0001d450 add       x8, x8, #0xdd8                               
0001d454 stp       x16, x8, [sp, #0x1e0]                        
0001d458 mov       x0, x22                                      
0001d45c bl        #0x58e14                                      ; _objc_retain
0001d460 str       x0, [sp, #0x1f0]                             
0001d464 add       x0, sp, #0x1d0                               
0001d468 bl        #0x58e54                                      ; _objc_retainBlock
0001d46c str       x0, [sp, #0x1b0]                             
0001d470 adrp      x19, #0x8b000                                
0001d474 ldr       x0, [x19, #0xb30]                             ; &_OBJC_CLASS_$_NSString
0001d478 ldr       x2, [x28, #0x18]                              ; x2 memory 0x78ef8
0001d47c bl        #0x60760                                      ; objc_msgSend$stringWithUTF8String:
0001d480 mov       x29, x29                                     
0001d484 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d488 str       x0, [sp, #0x188]                             
0001d48c ldr       x0, [x19, #0xb30]                             ; &_OBJC_CLASS_$_NSString
0001d490 ldr       x2, [x28, #0x20]                              ; x2 memory 0x78f00
0001d494 bl        #0x60760                                      ; objc_msgSend$stringWithUTF8String:
0001d498 mov       x29, x29                                     
0001d49c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d4a0 str       x0, [sp, #0x180]                             
0001d4a4 adrp      x0, #0x7d000                                 
0001d4a8 add       x0, x0, #0xc50                                ; @'DispersionStrength'
0001d4ac mov       x1, x27                                      
0001d4b0 bl        #0x274d0                                     
0001d4b4 mov       x29, x29                                     
0001d4b8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d4bc str       x0, [sp, #0x198]                             
0001d4c0 ldr       s0, [x28, #0x10]                             
0001d4c4 fcvt      d10, s0                                      
0001d4c8 adrp      x2, #0x7c000                                 
0001d4cc add       x2, x2, #0x310                                ; @'Dock'
0001d4d0 mov       x0, x27                                      
0001d4d4 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d4d8 str       x22, [sp, #0x178]                            
0001d4dc str       x27, [sp, #0x190]                            
0001d4e0 cbz       w0, #0x1d6cc                                 
0001d4e4 movi      v0.2d, #0000000000000000                     
0001d4e8 stp       q0, q0, [x23, #0xc0]                         
0001d4ec stp       q0, q0, [x23, #0xe0]                         
0001d4f0 adrp      x8, #0x8b000                                 
0001d4f4 ldr       x0, [x8, #0xbc8]                              ; &_OBJC_CLASS_$_UIApplication
0001d4f8 bl        #0x60160                                      ; objc_msgSend$sharedApplication
0001d4fc mov       x29, x29                                     
0001d500 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d504 mov       x19, x0                                      
0001d508 bl        #0x5a0a0                                      ; objc_msgSend$connectedScenes
0001d50c mov       x29, x29                                     
0001d510 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d514 mov       x20, x0                                      
0001d518 mov       x0, x19                                      
0001d51c bl        #0x58e04                                      ; _objc_release
0001d520 add       x2, sp, #0x5e0                               
0001d524 add       x3, sp, #0x560                               
0001d528 mov       x0, x20                                      
0001d52c mov       w4, #0x10                                    
0001d530 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001d534 cbz       x0, #0x1d66c                                 
0001d538 mov       x22, x0                                      
0001d53c ldr       x8, [sp, #0x5f0]                             
0001d540 ldr       x25, [x8]                                    
0001d544 adrp      x21, #0x8b000                                
0001d548 mov       x27, #0                                      
0001d54c ldr       x8, [sp, #0x5f0]                             
0001d550 ldr       x8, [x8]                                     
0001d554 cmp       x8, x25                                      
0001d558 b.eq      #0x1d564                                     
0001d55c mov       x0, x20                                      
0001d560 bl        #0x58d54                                      ; _objc_enumerationMutation
0001d564 ldr       x8, [sp, #0x5e8]                             
0001d568 ldr       x19, [x8, x27, lsl #3]                       
0001d56c ldr       x0, [x21, #0xc90]                             ; &_OBJC_CLASS_$_UIWindowScene
0001d570 bl        #0x58dc4                                      ; _objc_opt_class
0001d574 mov       x1, x0                                       
0001d578 mov       x0, x19                                      
0001d57c bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
0001d580 tbz       w0, #0, #0x1d590                             
0001d584 mov       x0, x19                                      
0001d588 bl        #0x59280                                      ; objc_msgSend$activationState
0001d58c cbz       x0, #0x1d5a0                                 
0001d590 add       x27, x27, #1                                 
0001d594 cmp       x27, x22                                     
0001d598 b.ne      #0x1d54c                                     
0001d59c b         #0x1d64c                                     
0001d5a0 movi      v0.2d, #0000000000000000                     
0001d5a4 stp       q0, q0, [x23, #0x20]                         
0001d5a8 stp       q0, q0, [x23]                                
0001d5ac mov       x0, x19                                      
0001d5b0 bl        #0x615c0                                      ; objc_msgSend$windows
0001d5b4 mov       x29, x29                                     
0001d5b8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d5bc mov       x21, x0                                      
0001d5c0 add       x2, sp, #0x520                               
0001d5c4 add       x3, sp, #0x4a0                               
0001d5c8 mov       w4, #0x10                                    
0001d5cc bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001d5d0 cbz       x0, #0x1d638                                 
0001d5d4 mov       x19, x0                                      
0001d5d8 ldr       x8, [sp, #0x530]                             
0001d5dc ldr       x26, [x8]                                    
0001d5e0 mov       x24, #0                                      
0001d5e4 ldr       x8, [sp, #0x530]                             
0001d5e8 ldr       x8, [x8]                                     
0001d5ec cmp       x8, x26                                      
0001d5f0 b.eq      #0x1d5fc                                     
0001d5f4 mov       x0, x21                                      
0001d5f8 bl        #0x58d54                                      ; _objc_enumerationMutation
0001d5fc ldr       x8, [sp, #0x528]                             
0001d600 ldr       x23, [x8, x24, lsl #3]                       
0001d604 mov       x0, x23                                      
0001d608 bl        #0x5bcc0                                      ; objc_msgSend$isKeyWindow
0001d60c cbnz      w0, #0x1d678                                 
0001d610 add       x24, x24, #1                                 
0001d614 cmp       x19, x24                                     
0001d618 b.ne      #0x1d5e4                                     
0001d61c add       x2, sp, #0x520                               
0001d620 add       x3, sp, #0x4a0                               
0001d624 mov       x0, x21                                      
0001d628 mov       w4, #0x10                                    
0001d62c bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001d630 mov       x19, x0                                      
0001d634 cbnz      x0, #0x1d5e0                                 
0001d638 mov       x0, x21                                      
0001d63c bl        #0x58e04                                      ; _objc_release
0001d640 add       x23, sp, #0x520                              
0001d644 adrp      x21, #0x8b000                                
0001d648 b         #0x1d590                                     
0001d64c add       x2, sp, #0x5e0                               
0001d650 add       x3, sp, #0x560                               
0001d654 mov       x0, x20                                      
0001d658 mov       w4, #0x10                                    
0001d65c bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001d660 mov       x22, x0                                      
0001d664 ldr       x27, [sp, #0x190]                            
0001d668 cbnz      x0, #0x1d548                                 
0001d66c mov       x0, x20                                      
0001d670 bl        #0x58e04                                      ; _objc_release
0001d674 b         #0x1d6cc                                     
0001d678 mov       x0, x23                                      
0001d67c bl        #0x5d620                                      ; objc_msgSend$safeAreaInsets
0001d680 fmov      d1, #20.00000000                             
0001d684 fcmp      d0, d1                                       
0001d688 b.ls      #0x1d6a0                                     
0001d68c mov       x0, x21                                      
0001d690 bl        #0x58e04                                      ; _objc_release
0001d694 mov       x0, x20                                      
0001d698 bl        #0x58e04                                      ; _objc_release
0001d69c b         #0x1d6c8                                     
0001d6a0 mov       x0, x23                                      
0001d6a4 bl        #0x5d620                                      ; objc_msgSend$safeAreaInsets
0001d6a8 fmov      d8, d2                                       
0001d6ac mov       x0, x21                                      
0001d6b0 bl        #0x58e04                                      ; _objc_release
0001d6b4 mov       x0, x20                                      
0001d6b8 bl        #0x58e04                                      ; _objc_release
0001d6bc fcmp      d8, #0.0                                     
0001d6c0 movi      d0, #0000000000000000                        
0001d6c4 fcsel     d10, d0, d10, ls                             
0001d6c8 ldr       x27, [sp, #0x190]                            
0001d6cc adrp      x2, #0x7d000                                 
0001d6d0 add       x2, x2, #0xc70                                ; @'CoverSheet'
0001d6d4 mov       x0, x27                                      
0001d6d8 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d6dc cbz       w0, #0x1d6f8                                 
0001d6e0 bl        #0x27624                                     
0001d6e4 fcmp      d0, #0.0                                     
0001d6e8 adrp      x8, #0x68000                                 
0001d6ec ldr       d1, [x8, #0xe68]                             
0001d6f0 fcsel     d8, d0, d1, gt                               
0001d6f4 b         #0x1d700                                     
0001d6f8 ldur      s0, [x28, #-4]                               
0001d6fc fcvt      d8, s0                                       
0001d700 adrp      x2, #0x7c000                                 
0001d704 add       x2, x2, #0x5d0                                ; @'AppIcons'
0001d708 mov       x0, x27                                      
0001d70c bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d710 mov       x22, x0                                      
0001d714 adrp      x2, #0x7c000                                 
0001d718 add       x2, x2, #0x650                                ; @'Clock'
0001d71c mov       x0, x27                                      
0001d720 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d724 tbnz      w0, #0, #0x1d778                             
0001d728 adrp      x2, #0x7d000                                 
0001d72c add       x2, x2, #0xc90                                ; @'TextLoupe'
0001d730 mov       x0, x27                                      
0001d734 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d738 tbnz      w0, #0, #0x1d778                             
0001d73c adrp      x2, #0x7d000                                 
0001d740 add       x2, x2, #0xc70                                ; @'CoverSheet'
0001d744 mov       x0, x27                                      
0001d748 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d74c tbnz      w0, #0, #0x1d778                             
0001d750 adrp      x2, #0x7c000                                 
0001d754 add       x2, x2, #0x770                                ; @'TabBar'
0001d758 mov       x0, x27                                      
0001d75c bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d760 tbnz      w0, #0, #0x1d778                             
0001d764 adrp      x2, #0x7c000                                 
0001d768 add       x2, x2, #0x7b0                                ; @'TabBarSelection'
0001d76c mov       x0, x27                                      
0001d770 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001d774 tbz       w0, #0, #0x1ed60                             
0001d778 mov       w20, #1                                      
0001d77c adrp      x2, #0x7d000                                 
0001d780 add       x2, x2, #0xcb0                                ; @'Prefs'
0001d784 mov       x0, x27                                      
0001d788 bl        #0x5b3a0                                      ; objc_msgSend$hasPrefix:
0001d78c cmp       w0, #0                                       
0001d790 fmov      d0, #1.00000000                              
0001d794 fmov      d1, #1.50000000                              
0001d798 fcsel     d9, d1, d0, ne                               
0001d79c adrp      x8, #0x8b000                                 
0001d7a0 ldr       x8, [x8, #0xb38]                              ; &_OBJC_CLASS_$_NSMutableArray
0001d7a4 str       x8, [sp, #0x1a8]                             
0001d7a8 ldr       x25, [sp, #0x1b0]                            
0001d7ac mov       x26, x25                                     
0001d7b0 ldr       x8, [x26, #0x10]!                            
0001d7b4 adrp      x1, #0x7d000                                 
0001d7b8 add       x1, x1, #0x610                                ; @'Enabled'
0001d7bc mov       x0, x25                                      
0001d7c0 blraa     x8, x26                                      
0001d7c4 mov       x29, x29                                     
0001d7c8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d7cc eor       w1, w22, #1                                  
0001d7d0 str       x0, [sp, #0x170]                             
0001d7d4 bl        #0x1d274                                      ; _LGGlassEnabledSetting
0001d7d8 mov       x29, x29                                     
0001d7dc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d7e0 str       x0, [sp, #0x168]                             
0001d7e4 str       x0, [sp, #0x458]                             
0001d7e8 adrp      x8, #0x7b000                                 
0001d7ec add       x8, x8, #0x970                                ; @'type'
0001d7f0 adrp      x9, #0x7b000                                 
0001d7f4 add       x9, x9, #0xf10                                ; @'scale_override'
0001d7f8 str       x9, [sp, #0x400]                             
0001d7fc adrp      x9, #0x7b000                                 
0001d800 add       x9, x9, #0x7b0                                ; @'key'
0001d804 str       x8, [sp, #0x3a8]                             
0001d808 str       x9, [sp, #0x3b0]                             
0001d80c ldr       x8, [x26]                                    
0001d810 adrp      x22, #0x7d000                                
0001d814 add       x22, x22, #0xcd0                              ; @'CustomScale'
0001d818 mov       x0, x25                                      
0001d81c mov       x1, x22                                      
0001d820 blraa     x8, x26                                      
0001d824 mov       x29, x29                                     
0001d828 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d82c str       x0, [sp, #0x160]                             
0001d830 str       x0, [sp, #0x408]                             
0001d834 adrp      x8, #0x7b000                                 
0001d838 add       x8, x8, #0xd90                                ; @'toggle_key'
0001d83c str       x8, [sp, #0x3b8]                             
0001d840 ldr       x8, [x26]                                    
0001d844 adrp      x19, #0x7d000                                
0001d848 add       x19, x19, #0xcf0                              ; @'CustomScaleEnabled'
0001d84c mov       x0, x25                                      
0001d850 mov       x1, x19                                      
0001d854 blraa     x8, x26                                      
0001d858 mov       x29, x29                                     
0001d85c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d860 str       x0, [sp, #0x158]                             
0001d864 str       x0, [sp, #0x410]                             
0001d868 adrp      x8, #0x7b000                                 
0001d86c add       x8, x8, #0x7d0                                ; @'keys'
0001d870 str       x8, [sp, #0x3c0]                             
0001d874 ldr       x8, [x26]                                    
0001d878 mov       x0, x25                                      
0001d87c mov       x1, x19                                      
0001d880 blraa     x8, x26                                      
0001d884 mov       x29, x29                                     
0001d888 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d88c str       x0, [sp, #0x150]                             
0001d890 str       x0, [sp, #0x3a0]                             
0001d894 adrp      x8, #0x8b000                                 
0001d898 ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0001d89c add       x2, sp, #0x3a0                               
0001d8a0 mov       w3, #1                                       
0001d8a4 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
0001d8a8 mov       x29, x29                                     
0001d8ac bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d8b0 str       x0, [sp, #0x148]                             
0001d8b4 str       x0, [sp, #0x418]                             
0001d8b8 adrp      x8, #0x7b000                                 
0001d8bc add       x8, x8, #0x9d0                                ; @'title'
0001d8c0 str       x8, [sp, #0x3c8]                             
0001d8c4 adrp      x0, #0x7d000                                 
0001d8c8 add       x0, x0, #0xd10                                ; @'prefs.control.force_custom_scale'
0001d8cc bl        #0x1b5dc                                      ; _LGLocalized
0001d8d0 mov       x29, x29                                     
0001d8d4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d8d8 str       x0, [sp, #0x140]                             
0001d8dc str       x0, [sp, #0x420]                             
0001d8e0 adrp      x8, #0x7b000                                 
0001d8e4 add       x8, x8, #0x9f0                                ; @'subtitle'
0001d8e8 str       x8, [sp, #0x3d0]                             
0001d8ec adrp      x0, #0x7d000                                 
0001d8f0 add       x0, x0, #0xd30                                ; @'prefs.subtitle.force_custom_scale'
0001d8f4 bl        #0x1b5dc                                      ; _LGLocalized
0001d8f8 mov       x29, x29                                     
0001d8fc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d900 str       x0, [sp, #0x138]                             
0001d904 str       x0, [sp, #0x428]                             
0001d908 adrp      x8, #0x7b000                                 
0001d90c add       x8, x8, #0xaf0                                ; @'default'
0001d910 str       x8, [sp, #0x3d8]                             
0001d914 adrp      x8, #0x8b000                                 
0001d918 ldr       x0, [x8, #0xbb0]                              ; &_OBJC_CLASS_$_NSNumber
0001d91c mov       x19, x8                                      
0001d920 fmov      d0, d9                                       
0001d924 bl        #0x5c900                                      ; objc_msgSend$numberWithDouble:
0001d928 mov       x29, x29                                     
0001d92c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d930 str       x0, [sp, #0x130]                             
0001d934 str       x0, [sp, #0x430]                             
0001d938 adrp      x8, #0x7b000                                 
0001d93c add       x8, x8, #0xdb0                                ; @'toggle_default'
0001d940 str       x8, [sp, #0x3e0]                             
0001d944 ldr       x0, [x19, #0xbb0]                            
0001d948 mov       x2, x20                                      
0001d94c bl        #0x5c8e0                                      ; objc_msgSend$numberWithBool:
0001d950 mov       x29, x29                                     
0001d954 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d958 str       x0, [sp, #0x128]                             
0001d95c str       x0, [sp, #0x438]                             
0001d960 adrp      x8, #0x7b000                                 
0001d964 add       x8, x8, #0xd10                                ; @'min'
0001d968 str       x8, [sp, #0x3e8]                             
0001d96c mov       x0, x22                                      
0001d970 mov       x1, x27                                      
0001d974 bl        #0x274d0                                     
0001d978 mov       x29, x29                                     
0001d97c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d980 str       x0, [sp, #0x120]                             
0001d984 mov       x2, #0                                       
0001d988 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001d98c mov       x29, x29                                     
0001d990 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d994 str       x0, [sp, #0x118]                             
0001d998 str       x0, [sp, #0x440]                             
0001d99c adrp      x8, #0x7b000                                 
0001d9a0 add       x8, x8, #0xd30                                ; @'max'
0001d9a4 str       x8, [sp, #0x3f0]                             
0001d9a8 mov       x0, x22                                      
0001d9ac mov       x1, x27                                      
0001d9b0 bl        #0x274d0                                     
0001d9b4 mov       x29, x29                                     
0001d9b8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d9bc str       x0, [sp, #0x110]                             
0001d9c0 mov       w2, #1                                       
0001d9c4 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001d9c8 mov       x29, x29                                     
0001d9cc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d9d0 adrp      x8, #0x7b000                                 
0001d9d4 add       x8, x8, #0xd50                                ; @'decimals'
0001d9d8 str       x8, [sp, #0x3f8]                             
0001d9dc adrp      x8, #0x81000                                 
0001d9e0 add       x8, x8, #0xbc0                                ; &_OBJC_CLASS_$_NSConstantIntegerNumber
0001d9e4 str       x0, [sp, #0x108]                             
0001d9e8 str       x0, [sp, #0x448]                             
0001d9ec str       x8, [sp, #0x450]                             
0001d9f0 adrp      x8, #0x8b000                                 
0001d9f4 ldr       x0, [x8, #0xaf0]                              ; &_OBJC_CLASS_$_NSDictionary
0001d9f8 add       x2, sp, #0x400                               
0001d9fc add       x3, sp, #0x3a8                               
0001da00 mov       w4, #0xb                                     
0001da04 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001da08 mov       x29, x29                                     
0001da0c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001da10 str       x0, [sp, #0x100]                             
0001da14 str       x0, [sp, #0x460]                             
0001da18 ldr       x8, [x26]                                    
0001da1c adrp      x19, #0x7d000                                
0001da20 add       x19, x19, #0xd50                              ; @'BezelWidth'
0001da24 mov       x0, x25                                      
0001da28 mov       x1, x19                                      
0001da2c blraa     x8, x26                                      
0001da30 mov       x29, x29                                     
0001da34 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001da38 mov       x21, x0                                      
0001da3c adrp      x0, #0x7d000                                 
0001da40 add       x0, x0, #0xd70                                ; @'prefs.control.bezel_width'
0001da44 bl        #0x1b5dc                                      ; _LGLocalized
0001da48 mov       x29, x29                                     
0001da4c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001da50 mov       x22, x0                                      
0001da54 adrp      x0, #0x7d000                                 
0001da58 add       x0, x0, #0xd90                                ; @'prefs.subtitle.bezel_width'
0001da5c bl        #0x1b5dc                                      ; _LGLocalized
0001da60 mov       x29, x29                                     
0001da64 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001da68 mov       x23, x0                                      
0001da6c mov       x0, x19                                      
0001da70 mov       x1, x27                                      
0001da74 bl        #0x274d0                                     
0001da78 mov       x29, x29                                     
0001da7c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001da80 str       x0, [sp, #0xe0]                              
0001da84 mov       x2, #0                                       
0001da88 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001da8c mov       x29, x29                                     
0001da90 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001da94 str       x0, [sp, #0xd8]                              
0001da98 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001da9c fmov      d9, d0                                       
0001daa0 mov       x0, x19                                      
0001daa4 mov       x1, x27                                      
0001daa8 bl        #0x274d0                                     
0001daac mov       x29, x29                                     
0001dab0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dab4 str       x0, [sp, #0xd0]                              
0001dab8 mov       w2, #1                                       
0001dabc bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001dac0 mov       x29, x29                                     
0001dac4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dac8 str       x0, [sp, #0xc8]                              
0001dacc bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001dad0 fmov      d2, d0                                       
0001dad4 stp       x22, x21, [sp, #0xf0]                        
0001dad8 mov       x0, x21                                      
0001dadc mov       x1, x22                                      
0001dae0 str       x23, [sp, #0xe8]                             
0001dae4 mov       x2, x23                                      
0001dae8 fmov      d0, d8                                       
0001daec fmov      d1, d9                                       
0001daf0 mov       w3, #1                                       
0001daf4 bl        #0x1d058                                      ; _LGSliderSetting
0001daf8 mov       x29, x29                                     
0001dafc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001db00 str       x0, [sp, #0xc0]                              
0001db04 str       x0, [sp, #0x468]                             
0001db08 ldr       x8, [x26]                                    
0001db0c adrp      x21, #0x7d000                                
0001db10 add       x21, x21, #0xdb0                              ; @'GlassThickness'
0001db14 mov       x0, x25                                      
0001db18 mov       x1, x21                                      
0001db1c blraa     x8, x26                                      
0001db20 mov       x29, x29                                     
0001db24 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001db28 mov       x27, x0                                      
0001db2c ldr       s0, [x28]                                    
0001db30 fcvt      d8, s0                                       
0001db34 adrp      x0, #0x7e000                                 
0001db38 add       x0, x0, #0xb0                                 ; @'prefs.control.glass_thickness'
0001db3c bl        #0x1b5dc                                      ; _LGLocalized
0001db40 mov       x29, x29                                     
0001db44 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001db48 mov       x20, x0                                      
0001db4c adrp      x0, #0x7e000                                 
0001db50 add       x0, x0, #0xd0                                 ; @'prefs.subtitle.glass_thickness'
0001db54 bl        #0x1b5dc                                      ; _LGLocalized
0001db58 mov       x29, x29                                     
0001db5c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001db60 mov       x19, x0                                      
0001db64 mov       x0, x21                                      
0001db68 mov       x1, #0                                       
0001db6c bl        #0x274d0                                     
0001db70 mov       x29, x29                                     
0001db74 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001db78 mov       x22, x0                                      
0001db7c mov       x2, #0                                       
0001db80 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001db84 mov       x29, x29                                     
0001db88 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001db8c mov       x23, x0                                      
0001db90 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001db94 fmov      d9, d0                                       
0001db98 mov       x0, x21                                      
0001db9c mov       x1, #0                                       
0001dba0 bl        #0x274d0                                     
0001dba4 mov       x29, x29                                     
0001dba8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dbac mov       x21, x0                                      
0001dbb0 mov       w2, #1                                       
0001dbb4 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001dbb8 mov       x29, x29                                     
0001dbbc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dbc0 mov       x24, x0                                      
0001dbc4 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001dbc8 fmov      d2, d0                                       
0001dbcc str       x27, [sp, #0xb8]                             
0001dbd0 mov       x0, x27                                      
0001dbd4 mov       x1, x20                                      
0001dbd8 mov       x2, x19                                      
0001dbdc fmov      d0, d8                                       
0001dbe0 fmov      d1, d9                                       
0001dbe4 mov       w3, #1                                       
0001dbe8 bl        #0x1d058                                      ; _LGSliderSetting
0001dbec mov       x29, x29                                     
0001dbf0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dbf4 mov       x27, x0                                      
0001dbf8 mov       x0, x24                                      
0001dbfc bl        #0x58e04                                      ; _objc_release
0001dc00 mov       x0, x21                                      
0001dc04 bl        #0x58e04                                      ; _objc_release
0001dc08 mov       x0, x23                                      
0001dc0c bl        #0x58e04                                      ; _objc_release
0001dc10 mov       x0, x22                                      
0001dc14 bl        #0x58e04                                      ; _objc_release
0001dc18 mov       x0, x19                                      
0001dc1c bl        #0x58e04                                      ; _objc_release
0001dc20 mov       x0, x20                                      
0001dc24 bl        #0x58e04                                      ; _objc_release
0001dc28 str       x27, [sp, #0xb0]                             
0001dc2c str       x27, [sp, #0x470]                            
0001dc30 ldr       x8, [x26]                                    
0001dc34 adrp      x21, #0x7d000                                
0001dc38 add       x21, x21, #0xdd0                              ; @'RefractionScale'
0001dc3c mov       x0, x25                                      
0001dc40 mov       x1, x21                                      
0001dc44 blraa     x8, x26                                      
0001dc48 mov       x29, x29                                     
0001dc4c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dc50 mov       x27, x0                                      
0001dc54 ldr       s0, [x28, #4]                                
0001dc58 fcvt      d8, s0                                       
0001dc5c adrp      x0, #0x7e000                                 
0001dc60 add       x0, x0, #0xf0                                 ; @'prefs.control.refraction'
0001dc64 bl        #0x1b5dc                                      ; _LGLocalized
0001dc68 mov       x29, x29                                     
0001dc6c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dc70 mov       x20, x0                                      
0001dc74 adrp      x0, #0x7e000                                 
0001dc78 add       x0, x0, #0x110                                ; @'prefs.subtitle.refraction'
0001dc7c bl        #0x1b5dc                                      ; _LGLocalized
0001dc80 mov       x29, x29                                     
0001dc84 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dc88 mov       x19, x0                                      
0001dc8c mov       x0, x21                                      
0001dc90 mov       x1, #0                                       
0001dc94 bl        #0x274d0                                     
0001dc98 mov       x29, x29                                     
0001dc9c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dca0 mov       x22, x0                                      
0001dca4 mov       x2, #0                                       
0001dca8 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001dcac mov       x29, x29                                     
0001dcb0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dcb4 mov       x23, x0                                      
0001dcb8 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001dcbc fmov      d9, d0                                       
0001dcc0 mov       x0, x21                                      
0001dcc4 mov       x1, #0                                       
0001dcc8 bl        #0x274d0                                     
0001dccc mov       x29, x29                                     
0001dcd0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dcd4 mov       x21, x0                                      
0001dcd8 mov       w2, #1                                       
0001dcdc bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001dce0 mov       x29, x29                                     
0001dce4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dce8 mov       x24, x0                                      
0001dcec bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001dcf0 fmov      d2, d0                                       
0001dcf4 str       x27, [sp, #0xa8]                             
0001dcf8 mov       x0, x27                                      
0001dcfc mov       x1, x20                                      
0001dd00 mov       x2, x19                                      
0001dd04 fmov      d0, d8                                       
0001dd08 fmov      d1, d9                                       
0001dd0c mov       w3, #2                                       
0001dd10 bl        #0x1d058                                      ; _LGSliderSetting
0001dd14 mov       x29, x29                                     
0001dd18 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dd1c mov       x27, x0                                      
0001dd20 mov       x0, x24                                      
0001dd24 bl        #0x58e04                                      ; _objc_release
0001dd28 mov       x0, x21                                      
0001dd2c bl        #0x58e04                                      ; _objc_release
0001dd30 mov       x0, x23                                      
0001dd34 bl        #0x58e04                                      ; _objc_release
0001dd38 mov       x0, x22                                      
0001dd3c bl        #0x58e04                                      ; _objc_release
0001dd40 mov       x0, x19                                      
0001dd44 bl        #0x58e04                                      ; _objc_release
0001dd48 mov       x0, x20                                      
0001dd4c bl        #0x58e04                                      ; _objc_release
0001dd50 str       x27, [sp, #0xa0]                             
0001dd54 str       x27, [sp, #0x478]                            
0001dd58 ldr       x8, [x26]                                    
0001dd5c adrp      x21, #0x7d000                                
0001dd60 add       x21, x21, #0xdf0                              ; @'RefractiveIndex'
0001dd64 mov       x0, x25                                      
0001dd68 mov       x1, x21                                      
0001dd6c blraa     x8, x26                                      
0001dd70 mov       x29, x29                                     
0001dd74 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dd78 mov       x27, x0                                      
0001dd7c ldr       s0, [x28, #8]                                
0001dd80 fcvt      d8, s0                                       
0001dd84 adrp      x0, #0x7e000                                 
0001dd88 add       x0, x0, #0x130                                ; @'prefs.control.refractive_index'
0001dd8c bl        #0x1b5dc                                      ; _LGLocalized
0001dd90 mov       x29, x29                                     
0001dd94 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dd98 mov       x20, x0                                      
0001dd9c adrp      x0, #0x7e000                                 
0001dda0 add       x0, x0, #0x150                                ; @'prefs.subtitle.refractive_index'
0001dda4 bl        #0x1b5dc                                      ; _LGLocalized
0001dda8 mov       x29, x29                                     
0001ddac bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ddb0 mov       x19, x0                                      
0001ddb4 mov       x0, x21                                      
0001ddb8 mov       x1, #0                                       
0001ddbc bl        #0x274d0                                     
0001ddc0 mov       x29, x29                                     
0001ddc4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ddc8 mov       x22, x0                                      
0001ddcc mov       x2, #0                                       
0001ddd0 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001ddd4 mov       x29, x29                                     
0001ddd8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dddc mov       x23, x0                                      
0001dde0 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001dde4 fmov      d9, d0                                       
0001dde8 mov       x0, x21                                      
0001ddec mov       x1, #0                                       
0001ddf0 bl        #0x274d0                                     
0001ddf4 mov       x29, x29                                     
0001ddf8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ddfc mov       x21, x0                                      
0001de00 mov       w2, #1                                       
0001de04 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001de08 mov       x29, x29                                     
0001de0c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001de10 mov       x24, x0                                      
0001de14 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001de18 fmov      d2, d0                                       
0001de1c str       x27, [sp, #0x98]                             
0001de20 mov       x0, x27                                      
0001de24 mov       x1, x20                                      
0001de28 mov       x2, x19                                      
0001de2c fmov      d0, d8                                       
0001de30 fmov      d1, d9                                       
0001de34 mov       w3, #2                                       
0001de38 bl        #0x1d058                                      ; _LGSliderSetting
0001de3c mov       x29, x29                                     
0001de40 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001de44 mov       x27, x0                                      
0001de48 mov       x0, x24                                      
0001de4c bl        #0x58e04                                      ; _objc_release
0001de50 mov       x0, x21                                      
0001de54 bl        #0x58e04                                      ; _objc_release
0001de58 mov       x0, x23                                      
0001de5c bl        #0x58e04                                      ; _objc_release
0001de60 mov       x0, x22                                      
0001de64 bl        #0x58e04                                      ; _objc_release
0001de68 mov       x0, x19                                      
0001de6c bl        #0x58e04                                      ; _objc_release
0001de70 mov       x0, x20                                      
0001de74 adrp      x20, #0x7b000                                
0001de78 add       x20, x20, #0x7d0                              ; @'keys'
0001de7c bl        #0x58e04                                      ; _objc_release
0001de80 str       x27, [sp, #0x90]                             
0001de84 str       x27, [sp, #0x480]                            
0001de88 adrp      x8, #0x7b000                                 
0001de8c add       x8, x8, #0xf10                                ; @'scale_override'
0001de90 str       x8, [sp, #0x348]                             
0001de94 adrp      x8, #0x7b000                                 
0001de98 add       x8, x8, #0x970                                ; @'type'
0001de9c str       x8, [sp, #0x2f0]                             
0001dea0 adrp      x8, #0x7b000                                 
0001dea4 add       x8, x8, #0x7b0                                ; @'key'
0001dea8 str       x8, [sp, #0x2f8]                             
0001deac ldr       x8, [x26]                                    
0001deb0 adrp      x1, #0x7d000                                 
0001deb4 add       x1, x1, #0xc50                                ; @'DispersionStrength'
0001deb8 mov       x0, x25                                      
0001debc blraa     x8, x26                                      
0001dec0 mov       x29, x29                                     
0001dec4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dec8 str       x0, [sp, #0x88]                              
0001decc str       x0, [sp, #0x350]                             
0001ded0 adrp      x8, #0x7b000                                 
0001ded4 add       x8, x8, #0xd90                                ; @'toggle_key'
0001ded8 str       x8, [sp, #0x300]                             
0001dedc ldr       x8, [x26]                                    
0001dee0 adrp      x19, #0x7d000                                
0001dee4 add       x19, x19, #0xe10                              ; @'DispersionEnabled'
0001dee8 mov       x0, x25                                      
0001deec mov       x1, x19                                      
0001def0 blraa     x8, x26                                      
0001def4 mov       x29, x29                                     
0001def8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001defc str       x0, [sp, #0x80]                              
0001df00 str       x0, [sp, #0x358]                             
0001df04 str       x20, [sp, #0x308]                            
0001df08 ldr       x8, [x26]                                    
0001df0c mov       x0, x25                                      
0001df10 mov       x1, x19                                      
0001df14 blraa     x8, x26                                      
0001df18 mov       x29, x29                                     
0001df1c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001df20 str       x0, [sp, #0x78]                              
0001df24 str       x0, [sp, #0x2e8]                             
0001df28 adrp      x8, #0x8b000                                 
0001df2c ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0001df30 add       x2, sp, #0x2e8                               
0001df34 mov       w3, #1                                       
0001df38 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
0001df3c mov       x29, x29                                     
0001df40 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001df44 str       x0, [sp, #0x70]                              
0001df48 str       x0, [sp, #0x360]                             
0001df4c adrp      x8, #0x7b000                                 
0001df50 add       x8, x8, #0x9d0                                ; @'title'
0001df54 str       x8, [sp, #0x310]                             
0001df58 adrp      x0, #0x7d000                                 
0001df5c add       x0, x0, #0xe30                                ; @'prefs.control.chromatic_dispersion'
0001df60 bl        #0x1b5dc                                      ; _LGLocalized
0001df64 mov       x29, x29                                     
0001df68 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001df6c str       x0, [sp, #0x68]                              
0001df70 str       x0, [sp, #0x368]                             
0001df74 adrp      x8, #0x7b000                                 
0001df78 add       x8, x8, #0x9f0                                ; @'subtitle'
0001df7c str       x8, [sp, #0x318]                             
0001df80 adrp      x0, #0x7d000                                 
0001df84 add       x0, x0, #0xe50                                ; @'prefs.subtitle.chromatic_dispersion'
0001df88 bl        #0x1b5dc                                      ; _LGLocalized
0001df8c mov       x29, x29                                     
0001df90 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001df94 str       x0, [sp, #0x60]                              
0001df98 str       x0, [sp, #0x370]                             
0001df9c adrp      x8, #0x7b000                                 
0001dfa0 add       x8, x8, #0xaf0                                ; @'default'
0001dfa4 str       x8, [sp, #0x320]                             
0001dfa8 adrp      x19, #0x8b000                                
0001dfac ldr       x0, [x19, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001dfb0 ldr       s8, [x28, #0x14]                             
0001dfb4 fmov      s0, s8                                       
0001dfb8 bl        #0x5c920                                      ; objc_msgSend$numberWithFloat:
0001dfbc mov       x29, x29                                     
0001dfc0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dfc4 str       x0, [sp, #0x58]                              
0001dfc8 str       x0, [sp, #0x378]                             
0001dfcc adrp      x8, #0x7b000                                 
0001dfd0 add       x8, x8, #0xdb0                                ; @'toggle_default'
0001dfd4 str       x8, [sp, #0x328]                             
0001dfd8 ldr       x0, [x19, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001dfdc adrp      x8, #0x68000                                 
0001dfe0 ldr       s0, [x8, #0xe90]                             
0001dfe4 fcmp      s8, s0                                       
0001dfe8 cset      w2, gt                                       
0001dfec bl        #0x5c940                                      ; objc_msgSend$numberWithInt:
0001dff0 mov       x29, x29                                     
0001dff4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001dff8 str       x0, [sp, #0x50]                              
0001dffc str       x0, [sp, #0x380]                             
0001e000 adrp      x8, #0x7b000                                 
0001e004 add       x8, x8, #0xd10                                ; @'min'
0001e008 str       x8, [sp, #0x330]                             
0001e00c ldr       x19, [sp, #0x198]                            
0001e010 mov       x0, x19                                      
0001e014 mov       x2, #0                                       
0001e018 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001e01c mov       x29, x29                                     
0001e020 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e024 str       x0, [sp, #0x48]                              
0001e028 str       x0, [sp, #0x388]                             
0001e02c adrp      x8, #0x7b000                                 
0001e030 add       x8, x8, #0xd30                                ; @'max'
0001e034 str       x8, [sp, #0x338]                             
0001e038 mov       x0, x19                                      
0001e03c mov       w2, #1                                       
0001e040 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001e044 mov       x29, x29                                     
0001e048 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e04c adrp      x8, #0x7b000                                 
0001e050 add       x8, x8, #0xd50                                ; @'decimals'
0001e054 str       x8, [sp, #0x340]                             
0001e058 adrp      x8, #0x81000                                 
0001e05c add       x8, x8, #0xbd8                                ; &_OBJC_CLASS_$_NSConstantIntegerNumber
0001e060 str       x0, [sp, #0x40]                              
0001e064 str       x0, [sp, #0x390]                             
0001e068 str       x8, [sp, #0x398]                             
0001e06c adrp      x8, #0x8b000                                 
0001e070 ldr       x0, [x8, #0xaf0]                              ; &_OBJC_CLASS_$_NSDictionary
0001e074 add       x2, sp, #0x348                               
0001e078 add       x3, sp, #0x2f0                               
0001e07c mov       w4, #0xb                                     
0001e080 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e084 mov       x29, x29                                     
0001e088 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e08c str       x0, [sp, #0x38]                              
0001e090 str       x0, [sp, #0x488]                             
0001e094 ldr       x8, [x26]                                    
0001e098 adrp      x1, #0x7d000                                 
0001e09c add       x1, x1, #0xe70                                ; @'SpecularOpacity'
0001e0a0 mov       x0, x25                                      
0001e0a4 str       x26, [sp, #0x1a0]                            
0001e0a8 blraa     x8, x26                                      
0001e0ac mov       x29, x29                                     
0001e0b0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e0b4 bl        #0x58e14                                      ; _objc_retain
0001e0b8 mov       x21, x0                                      
0001e0bc adrp      x2, #0x7b000                                 
0001e0c0 add       x2, x2, #0xd70                                ; @'.SpecularOpacity'
0001e0c4 bl        #0x5b420                                      ; objc_msgSend$hasSuffix:
0001e0c8 tbz       w0, #0, #0x1e120                             
0001e0cc mov       x0, x21                                      
0001e0d0 bl        #0x5bf00                                      ; objc_msgSend$length
0001e0d4 mov       x19, x0                                      
0001e0d8 adrp      x0, #0x7b000                                 
0001e0dc add       x0, x0, #0xd70                                ; @'.SpecularOpacity'
0001e0e0 bl        #0x5bf00                                      ; objc_msgSend$length
0001e0e4 sub       x2, x19, x0                                  
0001e0e8 mov       x0, x21                                      
0001e0ec bl        #0x60840                                      ; objc_msgSend$substringToIndex:
0001e0f0 mov       x29, x29                                     
0001e0f4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e0f8 mov       x19, x0                                      
0001e0fc adrp      x2, #0x7b000                                 
0001e100 add       x2, x2, #0xc10                                ; @'.SpecularEnabled'
0001e104 bl        #0x605c0                                      ; objc_msgSend$stringByAppendingString:
0001e108 mov       x29, x29                                     
0001e10c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e110 mov       x26, x0                                      
0001e114 mov       x0, x19                                      
0001e118 bl        #0x58e04                                      ; _objc_release
0001e11c b         #0x1e12c                                     
0001e120 mov       x0, x21                                      
0001e124 bl        #0x58e14                                      ; _objc_retain
0001e128 mov       x26, x0                                      
0001e12c adrp      x2, #0x7b000                                 
0001e130 add       x2, x2, #0xc10                                ; @'.SpecularEnabled'
0001e134 mov       x0, x26                                      
0001e138 bl        #0x5b420                                      ; objc_msgSend$hasSuffix:
0001e13c str       x21, [sp, #0x30]                             
0001e140 tbz       w0, #0, #0x1e198                             
0001e144 mov       x0, x26                                      
0001e148 bl        #0x5bf00                                      ; objc_msgSend$length
0001e14c mov       x19, x0                                      
0001e150 adrp      x0, #0x7b000                                 
0001e154 add       x0, x0, #0xc10                                ; @'.SpecularEnabled'
0001e158 bl        #0x5bf00                                      ; objc_msgSend$length
0001e15c sub       x2, x19, x0                                  
0001e160 mov       x0, x26                                      
0001e164 bl        #0x60840                                      ; objc_msgSend$substringToIndex:
0001e168 mov       x29, x29                                     
0001e16c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e170 mov       x19, x0                                      
0001e174 adrp      x2, #0x7e000                                 
0001e178 add       x2, x2, #0x170                                ; @'.SpecularMode'
0001e17c bl        #0x605c0                                      ; objc_msgSend$stringByAppendingString:
0001e180 mov       x29, x29                                     
0001e184 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e188 mov       x21, x0                                      
0001e18c mov       x0, x19                                      
0001e190 bl        #0x58e04                                      ; _objc_release
0001e194 b         #0x1e1b4                                     
0001e198 adrp      x2, #0x7e000                                 
0001e19c add       x2, x2, #0x190                                ; @'.Mode'
0001e1a0 mov       x0, x26                                      
0001e1a4 bl        #0x605c0                                      ; objc_msgSend$stringByAppendingString:
0001e1a8 mov       x29, x29                                     
0001e1ac bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e1b0 mov       x21, x0                                      
0001e1b4 str       x21, [sp, #8]                                
0001e1b8 adrp      x8, #0x7b000                                 
0001e1bc add       x8, x8, #0xe90                                ; @'segmented'
0001e1c0 adrp      x9, #0x7b000                                 
0001e1c4 add       x9, x9, #0x970                                ; @'type'
0001e1c8 str       x9, [sp, #0x4a0]                             
0001e1cc adrp      x9, #0x7b000                                 
0001e1d0 add       x9, x9, #0x7b0                                ; @'key'
0001e1d4 str       x9, [sp, #0x4a8]                             
0001e1d8 str       x8, [sp, #0x560]                             
0001e1dc str       x21, [sp, #0x568]                            
0001e1e0 str       x20, [sp, #0x4b0]                            
0001e1e4 stur      x26, [x29, #-0x90]                           
0001e1e8 adrp      x8, #0x8b000                                 
0001e1ec ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0001e1f0 sub       x2, x29, #0x90                               
0001e1f4 mov       w3, #1                                       
0001e1f8 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
0001e1fc mov       x29, x29                                     
0001e200 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e204 str       x0, [sp, #0x28]                              
0001e208 adrp      x8, #0x7b000                                 
0001e20c add       x8, x8, #0xcd0                                ; @'legacy_key'
0001e210 str       x0, [sp, #0x570]                             
0001e214 str       x26, [sp, #0x578]                            
0001e218 str       x8, [sp, #0x4b8]                             
0001e21c adrp      x25, #0x7b000                                
0001e220 add       x25, x25, #0x9d0                              ; @'title'
0001e224 str       x25, [sp, #0x4c0]                            
0001e228 adrp      x0, #0x7e000                                 
0001e22c add       x0, x0, #0x1b0                                ; @'prefs.control.specular'
0001e230 bl        #0x1b5dc                                      ; _LGLocalized
0001e234 mov       x29, x29                                     
0001e238 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e23c str       x0, [sp, #0x20]                              
0001e240 str       x0, [sp, #0x580]                             
0001e244 adrp      x8, #0x7b000                                 
0001e248 add       x8, x8, #0x9f0                                ; @'subtitle'
0001e24c str       x8, [sp, #0x4c8]                             
0001e250 adrp      x0, #0x7e000                                 
0001e254 add       x0, x0, #0x1d0                                ; @'prefs.subtitle.specular'
0001e258 bl        #0x1b5dc                                      ; _LGLocalized
0001e25c mov       x29, x29                                     
0001e260 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e264 str       x0, [sp, #0x18]                              
0001e268 str       x0, [sp, #0x588]                             
0001e26c adrp      x8, #0x7b000                                 
0001e270 add       x8, x8, #0xaf0                                ; @'default'
0001e274 str       x8, [sp, #0x4d0]                             
0001e278 adrp      x2, #0x7e000                                 
0001e27c add       x2, x2, #0x1f0                                ; @'CoverSheet.SpecularMode'
0001e280 mov       x0, x21                                      
0001e284 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001e288 adrp      x20, #0x7e000                                
0001e28c add       x20, x20, #0x230                              ; @'glass'
0001e290 adrp      x19, #0x7e000                                
0001e294 add       x19, x19, #0x210                              ; @'border'
0001e298 adrp      x8, #0x68000                                 
0001e29c ldr       d0, [x8, #0xe70]                             
0001e2a0 fcmp      d10, d0                                      
0001e2a4 adrp      x8, #0x7b000                                 
0001e2a8 add       x8, x8, #0xcf0                                ; @'none'
0001e2ac csel      x9, x19, x20, ls                             
0001e2b0 cmp       w0, #0                                       
0001e2b4 csel      x9, x8, x9, ne                               
0001e2b8 str       x9, [sp, #0x590]                             
0001e2bc adrp      x9, #0x7b000                                 
0001e2c0 add       x9, x9, #0xc50                                ; @'choices'
0001e2c4 str       x9, [sp, #0x4d8]                             
0001e2c8 str       x8, [sp, #0x520]                             
0001e2cc adrp      x27, #0x7b000                                
0001e2d0 add       x27, x27, #0xc70                              ; @'value'
0001e2d4 stp       x27, x25, [x29, #-0xa0]                      
0001e2d8 adrp      x0, #0x7e000                                 
0001e2dc add       x0, x0, #0x250                                ; @'prefs.specular.none'
0001e2e0 bl        #0x1b5dc                                      ; _LGLocalized
0001e2e4 mov       x29, x29                                     
0001e2e8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e2ec mov       x22, x0                                      
0001e2f0 str       x0, [sp, #0x528]                             
0001e2f4 adrp      x24, #0x8b000                                
0001e2f8 ldr       x0, [x24, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001e2fc add       x2, sp, #0x520                               
0001e300 sub       x3, x29, #0xa0                               
0001e304 mov       w4, #2                                       
0001e308 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e30c mov       x29, x29                                     
0001e310 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e314 mov       x21, x0                                      
0001e318 str       x0, [sp, #0x5e0]                             
0001e31c stp       x25, x19, [x29, #-0xb8]                      
0001e320 stur      x27, [x29, #-0xc0]                           
0001e324 adrp      x0, #0x7e000                                 
0001e328 add       x0, x0, #0x270                                ; @'prefs.specular.border'
0001e32c bl        #0x1b5dc                                      ; _LGLocalized
0001e330 mov       x29, x29                                     
0001e334 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e338 mov       x23, x0                                      
0001e33c stur      x0, [x29, #-0xa8]                            
0001e340 ldr       x0, [x24, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001e344 sub       x2, x29, #0xb0                               
0001e348 sub       x3, x29, #0xc0                               
0001e34c mov       w4, #2                                       
0001e350 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e354 mov       x29, x29                                     
0001e358 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e35c mov       x19, x0                                      
0001e360 str       x0, [sp, #0x5e8]                             
0001e364 stp       x25, x20, [x29, #-0xd8]                      
0001e368 stur      x27, [x29, #-0xe0]                           
0001e36c adrp      x0, #0x7e000                                 
0001e370 add       x0, x0, #0x290                                ; @'prefs.specular.glass'
0001e374 bl        #0x1b5dc                                      ; _LGLocalized
0001e378 mov       x29, x29                                     
0001e37c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e380 mov       x25, x0                                      
0001e384 stur      x0, [x29, #-0xc8]                            
0001e388 ldr       x0, [x24, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001e38c sub       x2, x29, #0xd0                               
0001e390 sub       x3, x29, #0xe0                               
0001e394 mov       w4, #2                                       
0001e398 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e39c mov       x29, x29                                     
0001e3a0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e3a4 mov       x27, x0                                      
0001e3a8 str       x0, [sp, #0x5f0]                             
0001e3ac adrp      x8, #0x8b000                                 
0001e3b0 ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0001e3b4 add       x2, sp, #0x5e0                               
0001e3b8 mov       w3, #3                                       
0001e3bc bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
0001e3c0 mov       x29, x29                                     
0001e3c4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e3c8 mov       x20, x0                                      
0001e3cc str       x0, [sp, #0x598]                             
0001e3d0 ldr       x0, [x24, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001e3d4 add       x2, sp, #0x560                               
0001e3d8 add       x3, sp, #0x4a0                               
0001e3dc mov       w4, #8                                       
0001e3e0 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e3e4 mov       x29, x29                                     
0001e3e8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e3ec mov       x24, x0                                      
0001e3f0 str       x0, [sp, #0x10]                              
0001e3f4 mov       x0, x20                                      
0001e3f8 bl        #0x58e04                                      ; _objc_release
0001e3fc mov       x0, x27                                      
0001e400 bl        #0x58e04                                      ; _objc_release
0001e404 mov       x0, x25                                      
0001e408 bl        #0x58e04                                      ; _objc_release
0001e40c mov       x0, x19                                      
0001e410 bl        #0x58e04                                      ; _objc_release
0001e414 mov       x0, x23                                      
0001e418 bl        #0x58e04                                      ; _objc_release
0001e41c mov       x0, x21                                      
0001e420 bl        #0x58e04                                      ; _objc_release
0001e424 mov       x0, x22                                      
0001e428 bl        #0x58e04                                      ; _objc_release
0001e42c ldr       x0, [sp, #0x18]                              
0001e430 bl        #0x58e04                                      ; _objc_release
0001e434 ldr       x0, [sp, #0x20]                              
0001e438 bl        #0x58e04                                      ; _objc_release
0001e43c ldr       x0, [sp, #0x28]                              
0001e440 bl        #0x58e04                                      ; _objc_release
0001e444 ldr       x0, [sp, #8]                                 
0001e448 bl        #0x58e04                                      ; _objc_release
0001e44c mov       x0, x26                                      
0001e450 bl        #0x58e04                                      ; _objc_release
0001e454 ldr       x26, [sp, #0x30]                             
0001e458 mov       x0, x26                                      
0001e45c bl        #0x58e04                                      ; _objc_release
0001e460 str       x24, [sp, #0x490]                            
0001e464 ldr       x0, [sp, #0x1b0]                             
0001e468 ldr       x8, [x0, #0x10]                              
0001e46c adrp      x22, #0x7d000                                
0001e470 add       x22, x22, #0xe90                              ; @'Blur'
0001e474 mov       x1, x22                                      
0001e478 ldr       x9, [sp, #0x1a0]                             
0001e47c blraa     x8, x9                                       
0001e480 mov       x29, x29                                     
0001e484 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e488 mov       x20, x0                                      
0001e48c ldr       s0, [x28, #0xc]                              
0001e490 fcvt      d8, s0                                       
0001e494 adrp      x0, #0x7e000                                 
0001e498 add       x0, x0, #0x2b0                                ; @'prefs.control.blur'
0001e49c bl        #0x1b5dc                                      ; _LGLocalized
0001e4a0 mov       x29, x29                                     
0001e4a4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e4a8 mov       x21, x0                                      
0001e4ac adrp      x0, #0x7e000                                 
0001e4b0 add       x0, x0, #0x2d0                                ; @'prefs.subtitle.blur'
0001e4b4 bl        #0x1b5dc                                      ; _LGLocalized
0001e4b8 mov       x29, x29                                     
0001e4bc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e4c0 mov       x19, x0                                      
0001e4c4 mov       x0, x22                                      
0001e4c8 mov       x1, #0                                       
0001e4cc bl        #0x274d0                                     
0001e4d0 mov       x29, x29                                     
0001e4d4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e4d8 mov       x23, x0                                      
0001e4dc mov       x2, #0                                       
0001e4e0 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001e4e4 mov       x29, x29                                     
0001e4e8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e4ec mov       x24, x0                                      
0001e4f0 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001e4f4 fmov      d9, d0                                       
0001e4f8 mov       x0, x22                                      
0001e4fc mov       x1, #0                                       
0001e500 bl        #0x274d0                                     
0001e504 mov       x29, x29                                     
0001e508 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e50c mov       x22, x0                                      
0001e510 mov       w2, #1                                       
0001e514 bl        #0x5c980                                      ; objc_msgSend$objectAtIndexedSubscript:
0001e518 mov       x29, x29                                     
0001e51c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e520 mov       x25, x0                                      
0001e524 bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001e528 fmov      d2, d0                                       
0001e52c mov       x0, x20                                      
0001e530 mov       x1, x21                                      
0001e534 mov       x2, x19                                      
0001e538 fmov      d0, d8                                       
0001e53c fmov      d1, d9                                       
0001e540 mov       w3, #1                                       
0001e544 bl        #0x1d058                                      ; _LGSliderSetting
0001e548 mov       x29, x29                                     
0001e54c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e550 mov       x27, x0                                      
0001e554 mov       x0, x25                                      
0001e558 bl        #0x58e04                                      ; _objc_release
0001e55c mov       x0, x22                                      
0001e560 bl        #0x58e04                                      ; _objc_release
0001e564 mov       x0, x24                                      
0001e568 bl        #0x58e04                                      ; _objc_release
0001e56c mov       x0, x23                                      
0001e570 bl        #0x58e04                                      ; _objc_release
0001e574 mov       x0, x19                                      
0001e578 bl        #0x58e04                                      ; _objc_release
0001e57c mov       x0, x21                                      
0001e580 bl        #0x58e04                                      ; _objc_release
0001e584 str       x27, [sp, #0x498]                            
0001e588 adrp      x8, #0x8b000                                 
0001e58c ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0001e590 add       x2, sp, #0x458                               
0001e594 mov       w3, #9                                       
0001e598 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
0001e59c mov       x29, x29                                     
0001e5a0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e5a4 mov       x19, x0                                      
0001e5a8 ldr       x0, [sp, #0x1a8]                             
0001e5ac mov       x2, x19                                      
0001e5b0 bl        #0x59860                                      ; objc_msgSend$arrayWithArray:
0001e5b4 mov       x29, x29                                     
0001e5b8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e5bc str       x0, [sp, #0x1a8]                             
0001e5c0 mov       x0, x19                                      
0001e5c4 bl        #0x58e04                                      ; _objc_release
0001e5c8 mov       x0, x27                                      
0001e5cc bl        #0x58e04                                      ; _objc_release
0001e5d0 mov       x0, x20                                      
0001e5d4 bl        #0x58e04                                      ; _objc_release
0001e5d8 ldr       x0, [sp, #0x10]                              
0001e5dc bl        #0x58e04                                      ; _objc_release
0001e5e0 mov       x0, x26                                      
0001e5e4 bl        #0x58e04                                      ; _objc_release
0001e5e8 ldr       x0, [sp, #0x38]                              
0001e5ec bl        #0x58e04                                      ; _objc_release
0001e5f0 ldr       x0, [sp, #0x40]                              
0001e5f4 bl        #0x58e04                                      ; _objc_release
0001e5f8 ldr       x0, [sp, #0x48]                              
0001e5fc bl        #0x58e04                                      ; _objc_release
0001e600 ldr       x0, [sp, #0x50]                              
0001e604 bl        #0x58e04                                      ; _objc_release
0001e608 ldr       x0, [sp, #0x58]                              
0001e60c bl        #0x58e04                                      ; _objc_release
0001e610 ldr       x0, [sp, #0x60]                              
0001e614 bl        #0x58e04                                      ; _objc_release
0001e618 ldr       x0, [sp, #0x68]                              
0001e61c bl        #0x58e04                                      ; _objc_release
0001e620 ldr       x0, [sp, #0x70]                              
0001e624 bl        #0x58e04                                      ; _objc_release
0001e628 ldr       x0, [sp, #0x78]                              
0001e62c bl        #0x58e04                                      ; _objc_release
0001e630 ldr       x0, [sp, #0x80]                              
0001e634 bl        #0x58e04                                      ; _objc_release
0001e638 ldr       x0, [sp, #0x88]                              
0001e63c bl        #0x58e04                                      ; _objc_release
0001e640 ldr       x0, [sp, #0x90]                              
0001e644 bl        #0x58e04                                      ; _objc_release
0001e648 ldr       x0, [sp, #0x98]                              
0001e64c bl        #0x58e04                                      ; _objc_release
0001e650 ldr       x0, [sp, #0xa0]                              
0001e654 bl        #0x58e04                                      ; _objc_release
0001e658 ldr       x0, [sp, #0xa8]                              
0001e65c bl        #0x58e04                                      ; _objc_release
0001e660 ldr       x0, [sp, #0xb0]                              
0001e664 bl        #0x58e04                                      ; _objc_release
0001e668 ldr       x0, [sp, #0xb8]                              
0001e66c bl        #0x58e04                                      ; _objc_release
0001e670 ldr       x0, [sp, #0xc0]                              
0001e674 bl        #0x58e04                                      ; _objc_release
0001e678 ldr       x0, [sp, #0xc8]                              
0001e67c bl        #0x58e04                                      ; _objc_release
0001e680 ldr       x0, [sp, #0xd0]                              
0001e684 bl        #0x58e04                                      ; _objc_release
0001e688 ldr       x0, [sp, #0xd8]                              
0001e68c bl        #0x58e04                                      ; _objc_release
0001e690 ldr       x0, [sp, #0xe0]                              
0001e694 bl        #0x58e04                                      ; _objc_release
0001e698 ldr       x0, [sp, #0xe8]                              
0001e69c bl        #0x58e04                                      ; _objc_release
0001e6a0 ldr       x0, [sp, #0xf0]                              
0001e6a4 bl        #0x58e04                                      ; _objc_release
0001e6a8 ldr       x0, [sp, #0xf8]                              
0001e6ac bl        #0x58e04                                      ; _objc_release
0001e6b0 ldr       x0, [sp, #0x100]                             
0001e6b4 bl        #0x58e04                                      ; _objc_release
0001e6b8 ldr       x0, [sp, #0x108]                             
0001e6bc bl        #0x58e04                                      ; _objc_release
0001e6c0 ldr       x0, [sp, #0x110]                             
0001e6c4 bl        #0x58e04                                      ; _objc_release
0001e6c8 ldr       x0, [sp, #0x118]                             
0001e6cc bl        #0x58e04                                      ; _objc_release
0001e6d0 ldr       x0, [sp, #0x120]                             
0001e6d4 bl        #0x58e04                                      ; _objc_release
0001e6d8 ldr       x0, [sp, #0x128]                             
0001e6dc bl        #0x58e04                                      ; _objc_release
0001e6e0 ldr       x0, [sp, #0x130]                             
0001e6e4 bl        #0x58e04                                      ; _objc_release
0001e6e8 ldr       x0, [sp, #0x138]                             
0001e6ec bl        #0x58e04                                      ; _objc_release
0001e6f0 ldr       x0, [sp, #0x140]                             
0001e6f4 bl        #0x58e04                                      ; _objc_release
0001e6f8 ldr       x0, [sp, #0x148]                             
0001e6fc bl        #0x58e04                                      ; _objc_release
0001e700 ldr       x0, [sp, #0x150]                             
0001e704 bl        #0x58e04                                      ; _objc_release
0001e708 ldr       x0, [sp, #0x158]                             
0001e70c bl        #0x58e04                                      ; _objc_release
0001e710 ldr       x0, [sp, #0x160]                             
0001e714 bl        #0x58e04                                      ; _objc_release
0001e718 ldr       x0, [sp, #0x168]                             
0001e71c bl        #0x58e04                                      ; _objc_release
0001e720 ldr       x0, [sp, #0x170]                             
0001e724 bl        #0x58e04                                      ; _objc_release
0001e728 adrp      x2, #0x7c000                                 
0001e72c add       x2, x2, #0x650                                ; @'Clock'
0001e730 ldr       x27, [sp, #0x190]                            
0001e734 mov       x0, x27                                      
0001e738 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001e73c cbz       w0, #0x1e778                                 
0001e740 adrp      x8, #0x8b000                                 
0001e744 ldr       x0, [x8, #0xc88]                              ; &_OBJC_CLASS_$_NSProcessInfo
0001e748 bl        #0x5cfa0                                      ; objc_msgSend$processInfo
0001e74c mov       x29, x29                                     
0001e750 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e754 mov       x19, x0                                      
0001e758 cbz       x0, #0x1e780                                 
0001e75c add       x8, sp, #0x1b8                               
0001e760 mov       x0, x19                                      
0001e764 bl        #0x5caa0                                      ; objc_msgSend$operatingSystemVersion
0001e768 ldr       x8, [sp, #0x1b8]                             
0001e76c cmp       x8, #0xf                                     
0001e770 cset      w20, gt                                      
0001e774 b         #0x1e78c                                     
0001e778 mov       w20, #0                                      
0001e77c b         #0x1e794                                     
0001e780 mov       w20, #0                                      
0001e784 stp       xzr, xzr, [sp, #0x1b8]                       
0001e788 str       xzr, [sp, #0x1c8]                            
0001e78c mov       x0, x19                                      
0001e790 bl        #0x58e04                                      ; _objc_release
0001e794 adrp      x2, #0x7d000                                 
0001e798 add       x2, x2, #0xeb0                                ; @'AssistiveTouch'
0001e79c mov       x0, x27                                      
0001e7a0 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001e7a4 tbnz      w0, #0, #0x1e998                             
0001e7a8 tbnz      w20, #0, #0x1e998                            
0001e7ac adrp      x8, #0x7b000                                 
0001e7b0 add       x8, x8, #0xed0                                ; @'color'
0001e7b4 str       x8, [sp, #0x2c0]                             
0001e7b8 adrp      x26, #0x7b000                                
0001e7bc add       x26, x26, #0x970                              ; @'type'
0001e7c0 str       x26, [sp, #0x298]                            
0001e7c4 adrp      x23, #0x7b000                                
0001e7c8 add       x23, x23, #0x7b0                              ; @'key'
0001e7cc str       x23, [sp, #0x2a0]                            
0001e7d0 ldr       x24, [sp, #0x1b0]                            
0001e7d4 ldr       x8, [x24, #0x10]                              ; SEL tableView
0001e7d8 adrp      x1, #0x7d000                                 
0001e7dc add       x1, x1, #0xed0                                ; @'LightTintColor'
0001e7e0 mov       x0, x24                                      
0001e7e4 ldr       x23, [sp, #0x1a0]                            
0001e7e8 blraa     x8, x23                                      
0001e7ec mov       x29, x29                                     
0001e7f0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e7f4 mov       x19, x0                                      
0001e7f8 str       x0, [sp, #0x2c8]                             
0001e7fc adrp      x25, #0x7b000                                
0001e800 add       x25, x25, #0x9d0                              ; @'title'
0001e804 str       x25, [sp, #0x2a8]                            
0001e808 adrp      x0, #0x7d000                                 
0001e80c add       x0, x0, #0xef0                                ; @'prefs.control.light_tint_color'
0001e810 bl        #0x1b5dc                                      ; _LGLocalized
0001e814 mov       x29, x29                                     
0001e818 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e81c mov       x20, x0                                      
0001e820 str       x0, [sp, #0x2d0]                             
0001e824 adrp      x8, #0x7b000                                 
0001e828 add       x8, x8, #0x9f0                                ; @'subtitle'
0001e82c str       x8, [sp, #0x2b0]                             
0001e830 adrp      x0, #0x7d000                                 
0001e834 add       x0, x0, #0xf10                                ; @'prefs.subtitle.light_tint_color'
0001e838 bl        #0x1b5dc                                      ; _LGLocalized
0001e83c mov       x29, x29                                     
0001e840 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e844 mov       x21, x0                                      
0001e848 adrp      x8, #0x7b000                                 
0001e84c add       x8, x8, #0xaf0                                ; @'default'
0001e850 str       x8, [sp, #0x2b8]                             
0001e854 str       x0, [sp, #0x2d8]                             
0001e858 ldr       x8, [sp, #0x188]                             
0001e85c str       x8, [sp, #0x2e0]                             
0001e860 adrp      x28, #0x8b000                                
0001e864 ldr       x0, [x28, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001e868 add       x2, sp, #0x2c0                               
0001e86c add       x3, sp, #0x298                               
0001e870 mov       w4, #5                                       
0001e874 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e878 mov       x29, x29                                     
0001e87c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e880 mov       x22, x0                                      
0001e884 ldr       x0, [sp, #0x1a8]                             
0001e888 mov       x2, x22                                      
0001e88c bl        #0x593e0                                      ; objc_msgSend$addObject:
0001e890 mov       x0, x22                                      
0001e894 bl        #0x58e04                                      ; _objc_release
0001e898 mov       x0, x21                                      
0001e89c bl        #0x58e04                                      ; _objc_release
0001e8a0 mov       x0, x20                                      
0001e8a4 bl        #0x58e04                                      ; _objc_release
0001e8a8 mov       x0, x19                                      
0001e8ac bl        #0x58e04                                      ; _objc_release
0001e8b0 adrp      x8, #0x7b000                                 
0001e8b4 add       x8, x8, #0xed0                                ; @'color'
0001e8b8 str       x8, [sp, #0x270]                             
0001e8bc str       x26, [sp, #0x248]                            
0001e8c0 adrp      x8, #0x7b000                                 
0001e8c4 add       x8, x8, #0x7b0                                ; @'key'
0001e8c8 str       x8, [sp, #0x250]                             
0001e8cc ldr       x8, [x24, #0x10]                              ; SEL tableView
0001e8d0 adrp      x1, #0x7d000                                 
0001e8d4 add       x1, x1, #0xf30                                ; @'DarkTintColor'
0001e8d8 mov       x0, x24                                      
0001e8dc blraa     x8, x23                                      
0001e8e0 mov       x29, x29                                     
0001e8e4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e8e8 mov       x19, x0                                      
0001e8ec str       x0, [sp, #0x278]                             
0001e8f0 str       x25, [sp, #0x258]                            
0001e8f4 adrp      x0, #0x7d000                                 
0001e8f8 add       x0, x0, #0xf50                                ; @'prefs.control.dark_tint_color'
0001e8fc bl        #0x1b5dc                                      ; _LGLocalized
0001e900 mov       x29, x29                                     
0001e904 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e908 mov       x20, x0                                      
0001e90c str       x0, [sp, #0x280]                             
0001e910 adrp      x8, #0x7b000                                 
0001e914 add       x8, x8, #0x9f0                                ; @'subtitle'
0001e918 str       x8, [sp, #0x260]                             
0001e91c adrp      x0, #0x7d000                                 
0001e920 add       x0, x0, #0xf70                                ; @'prefs.subtitle.dark_tint_color'
0001e924 bl        #0x1b5dc                                      ; _LGLocalized
0001e928 mov       x29, x29                                     
0001e92c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e930 mov       x21, x0                                      
0001e934 adrp      x8, #0x7b000                                 
0001e938 add       x8, x8, #0xaf0                                ; @'default'
0001e93c str       x8, [sp, #0x268]                             
0001e940 str       x0, [sp, #0x288]                             
0001e944 ldr       x8, [sp, #0x180]                             
0001e948 str       x8, [sp, #0x290]                             
0001e94c ldr       x0, [x28, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001e950 add       x2, sp, #0x270                               
0001e954 add       x3, sp, #0x248                               
0001e958 mov       w4, #5                                       
0001e95c bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001e960 mov       x29, x29                                     
0001e964 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e968 mov       x22, x0                                      
0001e96c ldr       x0, [sp, #0x1a8]                             
0001e970 mov       x2, x22                                      
0001e974 bl        #0x593e0                                      ; objc_msgSend$addObject:
0001e978 mov       x0, x22                                      
0001e97c bl        #0x58e04                                      ; _objc_release
0001e980 mov       x0, x21                                      
0001e984 bl        #0x58e04                                      ; _objc_release
0001e988 mov       x0, x20                                      
0001e98c bl        #0x58e04                                      ; _objc_release
0001e990 mov       x0, x19                                      
0001e994 bl        #0x58e04                                      ; _objc_release
0001e998 adrp      x2, #0x7d000                                 
0001e99c add       x2, x2, #0xc70                                ; @'CoverSheet'
0001e9a0 mov       x0, x27                                      
0001e9a4 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001e9a8 cbz       w0, #0x1ead4                                 
0001e9ac ldr       x23, [sp, #0x1b0]                            
0001e9b0 ldr       x8, [x23, #0x10]                             
0001e9b4 adrp      x19, #0x7d000                                
0001e9b8 add       x19, x19, #0xf90                              ; @'CornerRadius'
0001e9bc mov       x0, x23                                      
0001e9c0 mov       x1, x19                                      
0001e9c4 ldr       x24, [sp, #0x1a0]                            
0001e9c8 blraa     x8, x24                                      
0001e9cc mov       x29, x29                                     
0001e9d0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e9d4 mov       x20, x0                                      
0001e9d8 adrp      x0, #0x7c000                                 
0001e9dc add       x0, x0, #0x410                                ; @'prefs.control.corner_radius'
0001e9e0 bl        #0x1b5dc                                      ; _LGLocalized
0001e9e4 mov       x29, x29                                     
0001e9e8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001e9ec mov       x21, x0                                      
0001e9f0 adrp      x0, #0x7c000                                 
0001e9f4 add       x0, x0, #0x430                                ; @'prefs.subtitle.corner_radius'
0001e9f8 bl        #0x1b5dc                                      ; _LGLocalized
0001e9fc mov       x29, x29                                     
0001ea00 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ea04 mov       x22, x0                                      
0001ea08 ldr       x8, [x23, #0x10]                             
0001ea0c mov       x0, x23                                      
0001ea10 mov       x1, x19                                      
0001ea14 blraa     x8, x24                                      
0001ea18 mov       x29, x29                                     
0001ea1c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ea20 mov       x19, x0                                      
0001ea24 adrp      x8, #0x8b000                                 
0001ea28 ldr       x23, [x8, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001ea2c bl        #0x27624                                     
0001ea30 mov       x0, x23                                      
0001ea34 bl        #0x5c900                                      ; objc_msgSend$numberWithDouble:
0001ea38 mov       x29, x29                                     
0001ea3c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ea40 mov       x23, x0                                      
0001ea44 mov       x0, x19                                      
0001ea48 mov       x1, x23                                      
0001ea4c bl        #0x1c490                                      ; _LGReadPreference
0001ea50 mov       x29, x29                                     
0001ea54 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ea58 mov       x24, x0                                      
0001ea5c bl        #0x5a9e0                                      ; objc_msgSend$doubleValue
0001ea60 mov       x8, #0x4069000000000000                      
0001ea64 fmov      d2, x8                                       
0001ea68 movi      d1, #0000000000000000                        
0001ea6c mov       x0, x20                                      
0001ea70 mov       x1, x21                                      
0001ea74 mov       x2, x22                                      
0001ea78 mov       w3, #1                                       
0001ea7c bl        #0x1d058                                      ; _LGSliderSetting
0001ea80 mov       x29, x29                                     
0001ea84 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ea88 mov       x25, x0                                      
0001ea8c ldr       x0, [sp, #0x1a8]                             
0001ea90 mov       x2, x25                                      
0001ea94 mov       w3, #2                                       
0001ea98 bl        #0x5ba20                                      ; objc_msgSend$insertObject:atIndex:
0001ea9c mov       x0, x25                                      
0001eaa0 bl        #0x58e04                                      ; _objc_release
0001eaa4 mov       x0, x24                                      
0001eaa8 bl        #0x58e04                                      ; _objc_release
0001eaac mov       x0, x23                                      
0001eab0 bl        #0x58e04                                      ; _objc_release
0001eab4 mov       x0, x19                                      
0001eab8 bl        #0x58e04                                      ; _objc_release
0001eabc mov       x0, x22                                      
0001eac0 bl        #0x58e04                                      ; _objc_release
0001eac4 mov       x0, x21                                      
0001eac8 bl        #0x58e04                                      ; _objc_release
0001eacc mov       x0, x20                                      
0001ead0 bl        #0x58e04                                      ; _objc_release
0001ead4 adrp      x2, #0x7c000                                 
0001ead8 add       x2, x2, #0x970                                ; @'Notification'
0001eadc mov       x0, x27                                      
0001eae0 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0001eae4 cbz       w0, #0x1ecb8                                 
0001eae8 ldr       x0, [sp, #0x1b0]                             
0001eaec ldr       x8, [x0, #0x10]                              
0001eaf0 adrp      x1, #0x7d000                                 
0001eaf4 add       x1, x1, #0xfb0                                ; @'LabelColor'
0001eaf8 ldr       x9, [sp, #0x1a0]                             
0001eafc blraa     x8, x9                                       
0001eb00 mov       x29, x29                                     
0001eb04 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001eb08 mov       x20, x0                                      
0001eb0c adrp      x0, #0x7d000                                 
0001eb10 add       x0, x0, #0xfd0                                ; @'prefs.notification.label_color.title'
0001eb14 bl        #0x1b5dc                                      ; _LGLocalized
0001eb18 mov       x29, x29                                     
0001eb1c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001eb20 mov       x22, x0                                      
0001eb24 adrp      x0, #0x7d000                                 
0001eb28 add       x0, x0, #0xff0                                ; @'prefs.notification.label_color.subtitle'
0001eb2c bl        #0x1b5dc                                      ; _LGLocalized
0001eb30 mov       x29, x29                                     
0001eb34 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001eb38 mov       x23, x0                                      
0001eb3c adrp      x19, #0x7e000                                
0001eb40 add       x19, x19, #0x10                               ; @'white'
0001eb44 str       x19, [sp, #0x228]                            
0001eb48 adrp      x27, #0x7b000                                
0001eb4c add       x27, x27, #0xc70                              ; @'value'
0001eb50 str       x27, [sp, #0x218]                            
0001eb54 adrp      x25, #0x7b000                                
0001eb58 add       x25, x25, #0x9d0                              ; @'title'
0001eb5c str       x25, [sp, #0x220]                            
0001eb60 adrp      x0, #0x7e000                                 
0001eb64 add       x0, x0, #0x30                                 ; @'prefs.color.white'
0001eb68 bl        #0x1b5dc                                      ; _LGLocalized
0001eb6c mov       x29, x29                                     
0001eb70 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001eb74 mov       x24, x0                                      
0001eb78 str       x0, [sp, #0x230]                             
0001eb7c adrp      x26, #0x8b000                                
0001eb80 ldr       x0, [x26, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001eb84 add       x2, sp, #0x228                               
0001eb88 add       x3, sp, #0x218                               
0001eb8c mov       w4, #2                                       
0001eb90 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001eb94 mov       x29, x29                                     
0001eb98 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001eb9c mov       x21, x0                                      
0001eba0 str       x0, [sp, #0x238]                             
0001eba4 adrp      x8, #0x7e000                                 
0001eba8 add       x8, x8, #0x50                                 ; @'black'
0001ebac str       x8, [sp, #0x208]                             
0001ebb0 stp       x27, x25, [sp, #0x1f8]                       
0001ebb4 adrp      x0, #0x7e000                                 
0001ebb8 add       x0, x0, #0x70                                 ; @'prefs.color.black'
0001ebbc bl        #0x1b5dc                                      ; _LGLocalized
0001ebc0 mov       x29, x29                                     
0001ebc4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ebc8 mov       x25, x0                                      
0001ebcc str       x0, [sp, #0x210]                             
0001ebd0 ldr       x0, [x26, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001ebd4 add       x2, sp, #0x208                               
0001ebd8 add       x3, sp, #0x1f8                               
0001ebdc mov       w4, #2                                       
0001ebe0 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001ebe4 mov       x29, x29                                     
0001ebe8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ebec mov       x27, x0                                      
0001ebf0 str       x0, [sp, #0x240]                             
0001ebf4 adrp      x8, #0x8b000                                 
0001ebf8 ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0001ebfc add       x2, sp, #0x238                               
0001ec00 mov       w3, #2                                       
0001ec04 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
0001ec08 mov       x29, x29                                     
0001ec0c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ec10 mov       x28, x0                                      
0001ec14 mov       x0, x20                                      
0001ec18 mov       x1, x22                                      
0001ec1c mov       x2, x23                                      
0001ec20 mov       x3, x19                                      
0001ec24 mov       x4, x28                                      
0001ec28 bl        #0x1ceb8                                      ; _LGMenuSetting
0001ec2c mov       x29, x29                                     
0001ec30 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ec34 mov       x19, x0                                      
0001ec38 adrp      x1, #0x7e000                                 
0001ec3c add       x1, x1, #0x90                                 ; @'Notification.Enabled'
0001ec40 adrp      x2, #0x78000                                 
0001ec44 ldr       x2, [x2, #0x4f8]                              ; &___kCFBooleanTrue | x2 <- &___kCFBooleanTrue
0001ec48 bl        #0x231f8                                     
0001ec4c mov       x29, x29                                     
0001ec50 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001ec54 mov       x26, x0                                      
0001ec58 ldr       x0, [sp, #0x1a8]                             
0001ec5c mov       x2, x26                                      
0001ec60 bl        #0x593e0                                      ; objc_msgSend$addObject:
0001ec64 mov       x0, x26                                      
0001ec68 bl        #0x58e04                                      ; _objc_release
0001ec6c mov       x0, x19                                      
0001ec70 bl        #0x58e04                                      ; _objc_release
0001ec74 mov       x0, x28                                      
0001ec78 bl        #0x58e04                                      ; _objc_release
0001ec7c mov       x0, x27                                      
0001ec80 ldr       x27, [sp, #0x190]                            
0001ec84 bl        #0x58e04                                      ; _objc_release
0001ec88 mov       x0, x25                                      
0001ec8c bl        #0x58e04                                      ; _objc_release
0001ec90 mov       x0, x21                                      
0001ec94 bl        #0x58e04                                      ; _objc_release
0001ec98 mov       x0, x24                                      
0001ec9c bl        #0x58e04                                      ; _objc_release
0001eca0 mov       x0, x23                                      
0001eca4 bl        #0x58e04                                      ; _objc_release
0001eca8 mov       x0, x22                                      
0001ecac bl        #0x58e04                                      ; _objc_release
0001ecb0 mov       x0, x20                                      
0001ecb4 bl        #0x58e04                                      ; _objc_release
0001ecb8 ldr       x19, [sp, #0x1a8]                            
0001ecbc mov       x0, x19                                      
0001ecc0 bl        #0x5a4e0                                      ; objc_msgSend$copy
0001ecc4 mov       x20, x0                                      
0001ecc8 mov       x0, x19                                      
0001eccc bl        #0x58e04                                      ; _objc_release
0001ecd0 ldr       x0, [sp, #0x198]                             
0001ecd4 bl        #0x58e04                                      ; _objc_release
0001ecd8 ldr       x0, [sp, #0x180]                             
0001ecdc bl        #0x58e04                                      ; _objc_release
0001ece0 ldr       x0, [sp, #0x188]                             
0001ece4 bl        #0x58e04                                      ; _objc_release
0001ece8 ldr       x0, [sp, #0x1b0]                             
0001ecec bl        #0x58e04                                      ; _objc_release
0001ecf0 ldr       x0, [sp, #0x1f0]                             
0001ecf4 bl        #0x58e04                                      ; _objc_release
0001ecf8 ldr       x22, [sp, #0x178]                            
0001ecfc mov       x0, x22                                      
0001ed00 bl        #0x58e04                                      ; _objc_release
0001ed04 mov       x0, x27                                      
0001ed08 bl        #0x58e04                                      ; _objc_release
0001ed0c ldur      x8, [x29, #-0x88]                            
0001ed10 adrp      x9, #0x78000                                 
0001ed14 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001ed18 ldr       x9, [x9]                                      ; &___objc_personality_v0
0001ed1c cmp       x9, x8                                       
0001ed20 b.ne      #0x1ed78                                     
0001ed24 mov       x0, x20                                      
0001ed28 add       sp, sp, #0x690                               
0001ed2c ldp       x29, x30, [sp, #0x70]                        
0001ed30 ldp       x20, x19, [sp, #0x60]                        
0001ed34 ldp       x22, x21, [sp, #0x50]                        
0001ed38 ldp       x24, x23, [sp, #0x40]                        
0001ed3c ldp       x26, x25, [sp, #0x30]                        
0001ed40 ldp       x28, x27, [sp, #0x20]                        
0001ed44 ldp       d9, d8, [sp, #0x10]                          
0001ed48 ldp       d11, d10, [sp], #0x80                        
0001ed4c autibsp                                                
0001ed50 eor       x16, x30, x30, lsl #1                        
0001ed54 tbz       x16, #0x3e, #0x1ed5c                         
0001ed58 brk       #0xc471                                      
0001ed5c b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001ed60 adrp      x2, #0x7d000                                 
0001ed64 add       x2, x2, #0xcb0                                ; @'Prefs'
0001ed68 mov       x0, x27                                      
0001ed6c bl        #0x5b3a0                                      ; objc_msgSend$hasPrefix:
0001ed70 mov       x20, x0                                      
0001ed74 b         #0x1d77c                                     
0001ed78 bl        #0x58a94                                      ; ___stack_chk_fail
