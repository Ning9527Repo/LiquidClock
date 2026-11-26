; Uploaded sample arm64e unslid VA 0x644c..0x65c0
0000644c pacibsp                                                
00006450 stp       d9, d8, [sp, #-0x70]!                        
00006454 stp       x28, x27, [sp, #0x10]                        
00006458 stp       x26, x25, [sp, #0x20]                        
0000645c stp       x24, x23, [sp, #0x30]                        
00006460 stp       x22, x21, [sp, #0x40]                        
00006464 stp       x20, x19, [sp, #0x50]                        
00006468 stp       x29, x30, [sp, #0x60]                        
0000646c add       x29, sp, #0x60                               
00006470 sub       sp, sp, #0x250                               
00006474 adrp      x8, #0xd4000                                 
00006478 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0000647c ldr       x8, [x8]                                      ; &___objc_personality_v0
00006480 stur      x8, [x29, #-0x78]                            
00006484 adrp      x0, #0xb6000                                 
00006488 add       x0, x0, #0x3ff                                ; '/var/mobile/Library/Accessibility/liquidass-backboardd-alert'
0000648c mov       w1, #0                                       
00006490 bl        #0xa4204                                      ; _access
00006494 mov       x20, x0                                      
00006498 cmp       w0, #0                                       
0000649c cset      w21, eq                                      
000064a0 bl        #0xa198c                                      ; _LGBackboardSafeModeActive
000064a4 mov       x19, x0                                      
000064a8 adrp      x22, #0xee000                                
000064ac ldr       x8, [x22, #0xa90]                            
000064b0 stp       x19, x8, [sp, #8]                            
000064b4 str       x21, [sp]                                    
000064b8 adrp      x0, #0xd7000                                 
000064bc add       x0, x0, #0xa50                                ; @'show requested pending=%d safeMode=%d existing=%@'
000064c0 bl        #0x7448                                      
000064c4 ldr       x8, [x22, #0xa90]                            
000064c8 cbz       w20, #0x691c                                 
000064cc cmp       x8, #0                                       
000064d0 csel      w8, wzr, w19, ne                             
000064d4 tbz       w8, #0, #0x6c94                              
000064d8 add       x8, sp, #0xf0                                
000064dc movi      v0.2d, #0000000000000000                     
000064e0 stp       q0, q0, [x8, #0x20]                          
000064e4 str       q0, [x8, #0x10]                              
000064e8 str       q0, [sp, #0xf0]                              
000064ec adrp      x8, #0xec000                                 
000064f0 ldr       x0, [x8, #0x4f8]                              ; &_OBJC_CLASS_$_UIApplication
000064f4 bl        #0xafd60                                      ; objc_msgSend$sharedApplication
000064f8 mov       x29, x29                                     
000064fc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00006500 mov       x19, x0                                      
00006504 bl        #0xa6460                                      ; objc_msgSend$connectedScenes
00006508 mov       x29, x29                                     
0000650c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00006510 mov       x22, x0                                      
00006514 mov       x0, x19                                      
00006518 bl        #0xa46f4                                      ; _objc_release
0000651c add       x2, sp, #0xf0                                
00006520 sub       x3, x29, #0xf8                               
00006524 mov       x0, x22                                      
00006528 mov       w4, #0x10                                    
0000652c bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00006530 cbz       x0, #0x6964                                  
00006534 mov       x26, x0                                      
00006538 mov       x28, #0                                      
0000653c ldr       x8, [sp, #0x100]                             
00006540 ldr       x23, [x8]                                    
00006544 adrp      x24, #0xd7000                                
00006548 add       x24, x24, #0xa90                              ; @'scene=%@ class=%@ state=%ld'
0000654c adrp      x27, #0xec000                                
00006550 stp       x23, x22, [sp, #0x38]                        
00006554 mov       x19, #0                                      
00006558 str       x26, [sp, #0x48]                             
0000655c ldr       x8, [sp, #0x100]                             
00006560 ldr       x8, [x8]                                     
00006564 cmp       x8, x23                                      
00006568 b.eq      #0x6574                                      
0000656c mov       x0, x22                                      
00006570 bl        #0xa4634                                      ; _objc_enumerationMutation
00006574 ldr       x8, [sp, #0xf8]                              
00006578 str       x19, [sp, #0x58]                             
0000657c ldr       x19, [x8, x19, lsl #3]                       
00006580 mov       x0, x19                                      
00006584 bl        #0xabae0                                      ; objc_msgSend$session
00006588 mov       x29, x29                                     
0000658c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00006590 mov       x20, x0                                      
00006594 bl        #0xaa880                                      ; objc_msgSend$persistentIdentifier
00006598 mov       x29, x29                                     
0000659c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000065a0 mov       x21, x0                                      
000065a4 mov       x0, x19                                      
000065a8 bl        #0xa46b4                                      ; _objc_opt_class
000065ac bl        #0xa40e4                                      ; _NSStringFromClass
000065b0 mov       x29, x29                                     
000065b4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000065b8 mov       x25, x0                                      
000065bc mov       x0, x19                                      
