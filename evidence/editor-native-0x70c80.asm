; Uploaded sample arm64e unslid VA 0x70c80..0x70e54
00070c80 pacibsp                                                
00070c84 sub       sp, sp, #0x130                               
00070c88 stp       x28, x27, [sp, #0xd0]                        
00070c8c stp       x26, x25, [sp, #0xe0]                        
00070c90 stp       x24, x23, [sp, #0xf0]                        
00070c94 stp       x22, x21, [sp, #0x100]                       
00070c98 stp       x20, x19, [sp, #0x110]                       
00070c9c stp       x29, x30, [sp, #0x120]                       
00070ca0 add       x29, sp, #0x120                              
00070ca4 mov       x21, x0                                      
00070ca8 adrp      x8, #0xd4000                                 
00070cac ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
00070cb0 ldr       x8, [x8]                                      ; &___objc_personality_v0
00070cb4 stur      x8, [x29, #-0x58]                            
00070cb8 mov       x0, x2                                       
00070cbc bl        #0xa4704                                      ; _objc_retain
00070cc0 mov       x19, x0                                      
00070cc4 mov       x0, x21                                      
00070cc8 bl        #0xa6a40                                      ; objc_msgSend$coverSheetViewController
00070ccc mov       x29, x29                                     
00070cd0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070cd4 mov       x22, x0                                      
00070cd8 bl        #0xb1960                                      ; objc_msgSend$viewIfLoaded
00070cdc mov       x29, x29                                     
00070ce0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070ce4 mov       x20, x0                                      
00070ce8 mov       x0, x22                                      
00070cec bl        #0xa46f4                                      ; _objc_release
00070cf0 adrp      x8, #0xeb000                                 
00070cf4 ldr       x1, [x8, #0xbb8]                              ; SEL wallpaperFloatingLayerContainerView
00070cf8 mov       x0, x20                                      
00070cfc bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00070d00 tbz       w0, #0, #0x70df0                             
00070d04 movi      v0.2d, #0000000000000000                     
00070d08 stp       q0, q0, [sp, #0x20]                          
00070d0c stp       q0, q0, [sp]                                 
00070d10 mov       x0, x20                                      
00070d14 bl        #0xb19c0                                      ; objc_msgSend$wallpaperFloatingLayerContainerView
00070d18 mov       x29, x29                                     
00070d1c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070d20 mov       x23, x0                                      
00070d24 bl        #0xb0720                                      ; objc_msgSend$subviews
00070d28 mov       x29, x29                                     
00070d2c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070d30 mov       x22, x0                                      
00070d34 mov       x0, x23                                      
00070d38 bl        #0xa46f4                                      ; _objc_release
00070d3c mov       x2, sp                                       
00070d40 add       x3, sp, #0x48                                
00070d44 mov       x0, x22                                      
00070d48 mov       w4, #0x10                                    
00070d4c bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00070d50 cbz       x0, #0x70de8                                 
00070d54 mov       x23, x0                                      
00070d58 ldr       x8, [sp, #0x10]                              
00070d5c ldr       x26, [x8]                                    
00070d60 mov       x27, #0                                      
00070d64 ldr       x8, [sp, #0x10]                              
00070d68 ldr       x8, [x8]                                     
00070d6c cmp       x8, x26                                      
00070d70 b.eq      #0x70d7c                                     
00070d74 mov       x0, x22                                      
00070d78 bl        #0xa4634                                      ; _objc_enumerationMutation
00070d7c ldr       x8, [sp, #8]                                 
00070d80 ldr       x24, [x8, x27, lsl #3]                       
00070d84 mov       x0, x21                                      
00070d88 bl        #0xa6e00                                      ; objc_msgSend$depthSceneByReplica
00070d8c mov       x29, x29                                     
00070d90 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070d94 mov       x25, x0                                      
00070d98 mov       x2, x24                                      
00070d9c bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00070da0 mov       x29, x29                                     
00070da4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070da8 mov       x24, x0                                      
00070dac bl        #0xa46f4                                      ; _objc_release
00070db0 mov       x0, x25                                      
00070db4 bl        #0xa46f4                                      ; _objc_release
00070db8 cmp       x24, x19                                     
00070dbc b.eq      #0x70df8                                     
00070dc0 add       x27, x27, #1                                 
00070dc4 cmp       x23, x27                                     
00070dc8 b.ne      #0x70d64                                     
00070dcc mov       x2, sp                                       
00070dd0 add       x3, sp, #0x48                                
00070dd4 mov       x0, x22                                      
00070dd8 mov       w4, #0x10                                    
00070ddc bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00070de0 mov       x23, x0                                      
00070de4 cbnz      x0, #0x70d60                                 
00070de8 mov       w21, #0                                      
00070dec b         #0x70dfc                                     
00070df0 mov       w21, #0                                      
00070df4 b         #0x70e04                                     
00070df8 mov       w21, #1                                      
00070dfc mov       x0, x22                                      
00070e00 bl        #0xa46f4                                      ; _objc_release
00070e04 mov       x0, x20                                      
00070e08 bl        #0xa46f4                                      ; _objc_release
00070e0c mov       x0, x19                                      
00070e10 bl        #0xa46f4                                      ; _objc_release
00070e14 ldur      x8, [x29, #-0x58]                            
00070e18 adrp      x9, #0xd4000                                 
00070e1c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
00070e20 ldr       x9, [x9]                                      ; &___objc_personality_v0
00070e24 cmp       x9, x8                                       
00070e28 b.ne      #0x70e50                                     
00070e2c mov       x0, x21                                      
00070e30 ldp       x29, x30, [sp, #0x120]                       
00070e34 ldp       x20, x19, [sp, #0x110]                       
00070e38 ldp       x22, x21, [sp, #0x100]                       
00070e3c ldp       x24, x23, [sp, #0xf0]                        
00070e40 ldp       x26, x25, [sp, #0xe0]                        
00070e44 ldp       x28, x27, [sp, #0xd0]                        
00070e48 add       sp, sp, #0x130                               
00070e4c retab                                                  
00070e50 bl        #0xa41d4                                      ; ___stack_chk_fail
