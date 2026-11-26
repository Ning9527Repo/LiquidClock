; Uploaded sample arm64e unslid VA 0x709a0..0x70c40
000709a0 pacibsp                                                
000709a4 sub       sp, sp, #0x80                                
000709a8 stp       x26, x25, [sp, #0x30]                        
000709ac stp       x24, x23, [sp, #0x40]                        
000709b0 stp       x22, x21, [sp, #0x50]                        
000709b4 stp       x20, x19, [sp, #0x60]                        
000709b8 stp       x29, x30, [sp, #0x70]                        
000709bc add       x29, sp, #0x70                               
000709c0 mov       x20, x3                                      
000709c4 mov       x21, x0                                      
000709c8 mov       x0, x2                                       
000709cc bl        #0xa4704                                      ; _objc_retain
000709d0 mov       x19, x0                                      
000709d4 mov       x0, x20                                      
000709d8 bl        #0xa4704                                      ; _objc_retain
000709dc mov       x20, x0                                      
000709e0 cbz       x19, #0x70bc8                                
000709e4 cbz       x20, #0x70bc8                                
000709e8 mov       x0, x19                                      
000709ec bl        #0xafce0                                      ; objc_msgSend$settings
000709f0 mov       x29, x29                                     
000709f4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000709f8 mov       x22, x0                                      
000709fc adrp      x8, #0xe9000                                 
00070a00 ldr       x1, [x8, #0xfe0]                              ; SEL pr_isDepthEffectDisallowed
00070a04 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00070a08 tbz       w0, #0, #0x70bc0                             
00070a0c adrp      x8, #0xeb000                                 
00070a10 ldr       x1, [x8, #0xa78]                              ; SEL updateSettings:withTransitionContext:
00070a14 mov       x0, x19                                      
00070a18 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00070a1c mov       x23, x0                                      
00070a20 mov       x0, x22                                      
00070a24 bl        #0xa46f4                                      ; _objc_release
00070a28 tbz       w23, #0, #0x70bc8                            
00070a2c mov       x0, x21                                      
00070a30 bl        #0xa6e00                                      ; objc_msgSend$depthSceneByReplica
00070a34 mov       x29, x29                                     
00070a38 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070a3c mov       x22, x0                                      
00070a40 mov       x2, x20                                      
00070a44 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00070a48 mov       x29, x29                                     
00070a4c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070a50 mov       x23, x0                                      
00070a54 cmp       x0, x19                                      
00070a58 b.eq      #0x70bf4                                     
00070a5c mov       x0, x23                                      
00070a60 bl        #0xa46f4                                      ; _objc_release
00070a64 mov       x0, x22                                      
00070a68 bl        #0xa46f4                                      ; _objc_release
00070a6c mov       x0, x21                                      
00070a70 bl        #0xa6e00                                      ; objc_msgSend$depthSceneByReplica
00070a74 mov       x29, x29                                     
00070a78 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070a7c mov       x22, x0                                      
00070a80 mov       x2, x19                                      
00070a84 mov       x3, x20                                      
00070a88 bl        #0xadea0                                      ; objc_msgSend$setObject:forKey:
00070a8c mov       x0, x22                                      
00070a90 bl        #0xa46f4                                      ; _objc_release
00070a94 mov       x0, x21                                      
00070a98 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00070a9c mov       x29, x29                                     
00070aa0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070aa4 mov       x22, x0                                      
00070aa8 mov       x2, x19                                      
00070aac bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00070ab0 mov       x29, x29                                     
00070ab4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070ab8 mov       x23, x0                                      
00070abc bl        #0xa46f4                                      ; _objc_release
00070ac0 mov       x0, x22                                      
00070ac4 bl        #0xa46f4                                      ; _objc_release
00070ac8 cbnz      x23, #0x70b40                                
00070acc mov       x0, x21                                      
00070ad0 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00070ad4 mov       x29, x29                                     
00070ad8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070adc mov       x22, x0                                      
00070ae0 adrp      x8, #0xec000                                 
00070ae4 ldr       x23, [x8, #0x4e8]                             ; &_OBJC_CLASS_$_NSNumber
00070ae8 mov       x0, x19                                      
00070aec bl        #0xafce0                                      ; objc_msgSend$settings
00070af0 mov       x29, x29                                     
00070af4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070af8 mov       x24, x0                                      
00070afc bl        #0xaaa60                                      ; objc_msgSend$pr_isDepthEffectDisallowed
00070b00 mov       x2, x0                                       
00070b04 mov       x0, x23                                      
00070b08 bl        #0xaa0e0                                      ; objc_msgSend$numberWithBool:
00070b0c mov       x29, x29                                     
00070b10 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070b14 mov       x23, x0                                      
00070b18 mov       x0, x22                                      
00070b1c mov       x2, x23                                      
00070b20 mov       x3, x19                                      
00070b24 bl        #0xadea0                                      ; objc_msgSend$setObject:forKey:
00070b28 mov       x0, x23                                      
00070b2c bl        #0xa46f4                                      ; _objc_release
00070b30 mov       x0, x24                                      
00070b34 bl        #0xa46f4                                      ; _objc_release
00070b38 mov       x0, x22                                      
00070b3c bl        #0xa46f4                                      ; _objc_release
00070b40 add       x0, sp, #0x28                                
00070b44 mov       x1, x21                                      
00070b48 bl        #0xa4674                                      ; _objc_initWeak
00070b4c mov       x21, sp                                      
00070b50 adrp      x16, #0xd4000                                
00070b54 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
00070b58 mov       x17, x21                                     
00070b5c movk      x17, #0x6ae1, lsl #48                        
00070b60 pacda     x16, x17                                     
00070b64 str       x16, [sp]                                    
00070b68 adrp      x8, #0xbd000                                 
00070b6c ldr       d0, [x8, #0x268]                             
00070b70 str       d0, [sp, #8]                                 
00070b74 add       x8, x21, #0x10                               
00070b78 adrp      x16, #0x70000                                
00070b7c add       x16, x16, #0xc40                             
00070b80 pacia     x16, x8                                      
00070b84 adrp      x8, #0xd5000                                 
00070b88 add       x8, x8, #0x80                                
00070b8c stp       x16, x8, [sp, #0x10]                         
00070b90 add       x0, x21, #0x20                               
00070b94 add       x1, sp, #0x28                                
00070b98 bl        #0xa4604                                      ; _objc_copyWeak
00070b9c adrp      x0, #0xd4000                                 
00070ba0 ldr       x0, [x0, #0x940]                              ; &__dispatch_main_q
00070ba4 mov       x1, sp                                       
00070ba8 bl        #0xa42f4                                      ; _dispatch_async
00070bac add       x0, x21, #0x20                               
00070bb0 bl        #0xa4614                                      ; _objc_destroyWeak
00070bb4 add       x0, sp, #0x28                                
00070bb8 bl        #0xa4614                                      ; _objc_destroyWeak
00070bbc b         #0x70bc8                                     
00070bc0 mov       x0, x22                                      
00070bc4 bl        #0xa46f4                                      ; _objc_release
00070bc8 mov       x0, x20                                      
00070bcc bl        #0xa46f4                                      ; _objc_release
00070bd0 mov       x0, x19                                      
00070bd4 bl        #0xa46f4                                      ; _objc_release
00070bd8 ldp       x29, x30, [sp, #0x70]                        
00070bdc ldp       x20, x19, [sp, #0x60]                        
00070be0 ldp       x22, x21, [sp, #0x50]                        
00070be4 ldp       x24, x23, [sp, #0x40]                        
00070be8 ldp       x26, x25, [sp, #0x30]                        
00070bec add       sp, sp, #0x80                                
00070bf0 retab                                                  
00070bf4 mov       x0, x21                                      
00070bf8 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00070bfc mov       x29, x29                                     
00070c00 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070c04 mov       x24, x0                                      
00070c08 mov       x2, x19                                      
00070c0c bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00070c10 mov       x29, x29                                     
00070c14 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070c18 mov       x25, x0                                      
00070c1c bl        #0xa46f4                                      ; _objc_release
00070c20 mov       x0, x24                                      
00070c24 bl        #0xa46f4                                      ; _objc_release
00070c28 mov       x0, x23                                      
00070c2c bl        #0xa46f4                                      ; _objc_release
00070c30 mov       x0, x22                                      
00070c34 bl        #0xa46f4                                      ; _objc_release
00070c38 cbnz      x25, #0x70bc8                                
00070c3c b         #0x70a6c                                     
