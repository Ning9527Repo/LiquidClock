; Uploaded sample arm64e unslid VA 0x737b8..0x73948
000737b8 pacibsp                                                
000737bc sub       sp, sp, #0x120                               
000737c0 stp       x28, x27, [sp, #0xd0]                        
000737c4 stp       x24, x23, [sp, #0xe0]                        
000737c8 stp       x22, x21, [sp, #0xf0]                        
000737cc stp       x20, x19, [sp, #0x100]                       
000737d0 stp       x29, x30, [sp, #0x110]                       
000737d4 add       x29, sp, #0x110                              
000737d8 adrp      x8, #0xd4000                                 
000737dc ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
000737e0 ldr       x8, [x8]                                      ; &___objc_personality_v0
000737e4 stur      x8, [x29, #-0x48]                            
000737e8 bl        #0xa4704                                      ; _objc_retain
000737ec mov       x19, x0                                      
000737f0 bl        #0xa8dc0                                      ; objc_msgSend$isHidden
000737f4 tbz       w0, #0, #0x73800                             
000737f8 mov       x22, #0                                      
000737fc b         #0x738f4                                     
00073800 adrp      x0, #0xdc000                                 
00073804 add       x0, x0, #0x290                                ; @'CSProminentDisplayView'
00073808 bl        #0xa4064                                      ; _NSClassFromString
0007380c mov       x1, x0                                       
00073810 mov       x0, x19                                      
00073814 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00073818 tbz       w0, #0, #0x73840                             
0007381c mov       x0, x19                                      
00073820 bl        #0xa5160                                      ; objc_msgSend$alpha
00073824 adrp      x8, #0xbd000                                 
00073828 ldr       d1, [x8, #0x300]                             
0007382c fcmp      d0, d1                                       
00073830 csel      x0, x19, xzr, gt                             
00073834 bl        #0xa4704                                      ; _objc_retain
00073838 mov       x22, x0                                      
0007383c b         #0x738f4                                     
00073840 movi      v0.2d, #0000000000000000                     
00073844 stp       q0, q0, [sp, #0x20]                          
00073848 stp       q0, q0, [sp]                                 
0007384c mov       x0, x19                                      
00073850 bl        #0xb0720                                      ; objc_msgSend$subviews
00073854 mov       x29, x29                                     
00073858 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007385c mov       x20, x0                                      
00073860 mov       x2, sp                                       
00073864 add       x3, sp, #0x48                                
00073868 mov       w4, #0x10                                    
0007386c bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00073870 cbz       x0, #0x738dc                                 
00073874 mov       x21, x0                                      
00073878 ldr       x8, [sp, #0x10]                              
0007387c ldr       x23, [x8]                                    
00073880 mov       x24, #0                                      
00073884 ldr       x8, [sp, #0x10]                              
00073888 ldr       x8, [x8]                                     
0007388c cmp       x8, x23                                      
00073890 b.eq      #0x7389c                                     
00073894 mov       x0, x20                                      
00073898 bl        #0xa4634                                      ; _objc_enumerationMutation
0007389c ldr       x8, [sp, #8]                                 
000738a0 ldr       x0, [x8, x24, lsl #3]                        
000738a4 bl        #0x737b8                                     
000738a8 mov       x29, x29                                     
000738ac bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000738b0 cbnz      x0, #0x738e8                                 
000738b4 add       x24, x24, #1                                 
000738b8 cmp       x21, x24                                     
000738bc b.ne      #0x73884                                     
000738c0 mov       x2, sp                                       
000738c4 add       x3, sp, #0x48                                
000738c8 mov       x0, x20                                      
000738cc mov       w4, #0x10                                    
000738d0 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000738d4 mov       x21, x0                                      
000738d8 cbnz      x0, #0x73880                                 
000738dc mov       x0, x20                                      
000738e0 bl        #0xa46f4                                      ; _objc_release
000738e4 b         #0x737f8                                     
000738e8 mov       x22, x0                                      
000738ec mov       x0, x20                                      
000738f0 bl        #0xa46f4                                      ; _objc_release
000738f4 mov       x0, x19                                      
000738f8 bl        #0xa46f4                                      ; _objc_release
000738fc ldur      x8, [x29, #-0x48]                            
00073900 adrp      x9, #0xd4000                                 
00073904 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
00073908 ldr       x9, [x9]                                      ; &___objc_personality_v0
0007390c cmp       x9, x8                                       
00073910 b.ne      #0x73944                                     
00073914 mov       x0, x22                                      
00073918 ldp       x29, x30, [sp, #0x110]                       
0007391c ldp       x20, x19, [sp, #0x100]                       
00073920 ldp       x22, x21, [sp, #0xf0]                        
00073924 ldp       x24, x23, [sp, #0xe0]                        
00073928 ldp       x28, x27, [sp, #0xd0]                        
0007392c add       sp, sp, #0x120                               
00073930 autibsp                                                
00073934 eor       x16, x30, x30, lsl #1                        
00073938 tbz       x16, #0x3e, #0x73940                         
0007393c brk       #0xc471                                      
00073940 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
00073944 bl        #0xa41d4                                      ; ___stack_chk_fail
