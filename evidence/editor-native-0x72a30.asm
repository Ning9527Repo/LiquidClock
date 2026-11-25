; Local sample arm64e unslid VA 0x72a30..0x72c48
00072a30 pacibsp                                                
00072a34 sub       sp, sp, #0x140                               
00072a38 stp       x28, x27, [sp, #0xe0]                        
00072a3c stp       x26, x25, [sp, #0xf0]                        
00072a40 stp       x24, x23, [sp, #0x100]                       
00072a44 stp       x22, x21, [sp, #0x110]                       
00072a48 stp       x20, x19, [sp, #0x120]                       
00072a4c stp       x29, x30, [sp, #0x130]                       
00072a50 add       x29, sp, #0x130                              
00072a54 mov       x0, x2                                       
00072a58 adrp      x8, #0xd4000                                 
00072a5c ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
00072a60 ldr       x8, [x8]                                      ; &___objc_personality_v0
00072a64 stur      x8, [x29, #-0x60]                            
00072a68 bl        #0xa4704                                      ; _objc_retain
00072a6c adrp      x8, #0xee000                                 
00072a70 ldr       x1, [x8, #0x8e0]                             
00072a74 str       x0, [sp, #8]                                 
00072a78 bl        #0xa4654                                      ; _objc_getAssociatedObject
00072a7c mov       x29, x29                                     
00072a80 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072a84 mov       x20, x0                                      
00072a88 movi      v0.2d, #0000000000000000                     
00072a8c stp       q0, q0, [sp, #0x10]                          
00072a90 stp       q0, q0, [sp, #0x30]                          
00072a94 bl        #0xa9a40                                      ; objc_msgSend$masks
00072a98 mov       x29, x29                                     
00072a9c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072aa0 mov       x22, x0                                      
00072aa4 bl        #0xa9040                                      ; objc_msgSend$keyEnumerator
00072aa8 mov       x29, x29                                     
00072aac bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072ab0 mov       x23, x0                                      
00072ab4 bl        #0xa5100                                      ; objc_msgSend$allObjects
00072ab8 mov       x29, x29                                     
00072abc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072ac0 mov       x21, x0                                      
00072ac4 mov       x0, x23                                      
00072ac8 bl        #0xa46f4                                      ; _objc_release
00072acc mov       x0, x22                                      
00072ad0 bl        #0xa46f4                                      ; _objc_release
00072ad4 add       x2, sp, #0x10                                
00072ad8 add       x3, sp, #0x50                                
00072adc mov       x0, x21                                      
00072ae0 mov       w4, #0x10                                    
00072ae4 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00072ae8 cbz       x0, #0x72bd8                                 
00072aec mov       x22, x0                                      
00072af0 ldr       x8, [sp, #0x20]                              
00072af4 ldr       x28, [x8]                                    
00072af8 mov       x19, #0                                      
00072afc ldr       x8, [sp, #0x20]                              
00072b00 ldr       x8, [x8]                                     
00072b04 cmp       x8, x28                                      
00072b08 b.eq      #0x72b14                                     
00072b0c mov       x0, x21                                      
00072b10 bl        #0xa4634                                      ; _objc_enumerationMutation
00072b14 ldr       x8, [sp, #0x18]                              
00072b18 ldr       x23, [x8, x19, lsl #3]                       
00072b1c mov       x0, x23                                      
00072b20 bl        #0xa91e0                                      ; objc_msgSend$layer
00072b24 mov       x29, x29                                     
00072b28 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072b2c mov       x24, x0                                      
00072b30 bl        #0xa9a00                                      ; objc_msgSend$mask
00072b34 mov       x29, x29                                     
00072b38 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072b3c mov       x25, x0                                      
00072b40 mov       x0, x20                                      
00072b44 bl        #0xa9a40                                      ; objc_msgSend$masks
00072b48 mov       x29, x29                                     
00072b4c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072b50 mov       x26, x0                                      
00072b54 mov       x2, x23                                      
00072b58 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00072b5c mov       x29, x29                                     
00072b60 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072b64 mov       x27, x0                                      
00072b68 bl        #0xa46f4                                      ; _objc_release
00072b6c mov       x0, x26                                      
00072b70 bl        #0xa46f4                                      ; _objc_release
00072b74 mov       x0, x25                                      
00072b78 bl        #0xa46f4                                      ; _objc_release
00072b7c mov       x0, x24                                      
00072b80 bl        #0xa46f4                                      ; _objc_release
00072b84 cmp       x25, x27                                     
00072b88 b.ne      #0x72bb0                                     
00072b8c mov       x0, x23                                      
00072b90 bl        #0xa91e0                                      ; objc_msgSend$layer
00072b94 mov       x29, x29                                     
00072b98 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072b9c mov       x23, x0                                      
00072ba0 mov       x2, #0                                       
00072ba4 bl        #0xad9a0                                      ; objc_msgSend$setMask:
00072ba8 mov       x0, x23                                      
00072bac bl        #0xa46f4                                      ; _objc_release
00072bb0 add       x19, x19, #1                                 
00072bb4 cmp       x22, x19                                     
00072bb8 b.ne      #0x72afc                                     
00072bbc add       x2, sp, #0x10                                
00072bc0 add       x3, sp, #0x50                                
00072bc4 mov       x0, x21                                      
00072bc8 mov       w4, #0x10                                    
00072bcc bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00072bd0 mov       x22, x0                                      
00072bd4 cbnz      x0, #0x72af8                                 
00072bd8 mov       x0, x21                                      
00072bdc bl        #0xa46f4                                      ; _objc_release
00072be0 adrp      x8, #0xee000                                 
00072be4 ldr       x1, [x8, #0x8e0]                             
00072be8 ldr       x19, [sp, #8]                                
00072bec mov       x0, x19                                      
00072bf0 mov       x2, #0                                       
00072bf4 mov       w3, #1                                       
00072bf8 bl        #0xa4754                                      ; _objc_setAssociatedObject
00072bfc mov       x0, x20                                      
00072c00 bl        #0xa46f4                                      ; _objc_release
00072c04 mov       x0, x19                                      
00072c08 bl        #0xa46f4                                      ; _objc_release
00072c0c ldur      x8, [x29, #-0x60]                            
00072c10 adrp      x9, #0xd4000                                 
00072c14 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
00072c18 ldr       x9, [x9]                                      ; &___objc_personality_v0
00072c1c cmp       x9, x8                                       
00072c20 b.ne      #0x72c44                                     
00072c24 ldp       x29, x30, [sp, #0x130]                       
00072c28 ldp       x20, x19, [sp, #0x120]                       
00072c2c ldp       x22, x21, [sp, #0x110]                       
00072c30 ldp       x24, x23, [sp, #0x100]                       
00072c34 ldp       x26, x25, [sp, #0xf0]                        
00072c38 ldp       x28, x27, [sp, #0xe0]                        
00072c3c add       sp, sp, #0x140                               
00072c40 retab                                                  
00072c44 bl        #0xa41d4                                      ; ___stack_chk_fail
