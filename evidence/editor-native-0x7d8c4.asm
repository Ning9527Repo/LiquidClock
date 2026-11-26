; Uploaded sample arm64e unslid VA 0x7d8c4..0x7da80
0007d8c4 pacibsp                                                
0007d8c8 sub       sp, sp, #0x80                                
0007d8cc stp       x24, x23, [sp, #0x40]                        
0007d8d0 stp       x22, x21, [sp, #0x50]                        
0007d8d4 stp       x20, x19, [sp, #0x60]                        
0007d8d8 stp       x29, x30, [sp, #0x70]                        
0007d8dc add       x29, sp, #0x70                               
0007d8e0 bl        #0xa4704                                      ; _objc_retain
0007d8e4 mov       x19, x0                                      
0007d8e8 bl        #0x7b534                                     
0007d8ec mov       x29, x29                                     
0007d8f0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d8f4 mov       x20, x0                                      
0007d8f8 adrp      x2, #0xdb000                                 
0007d8fc add       x2, x2, #0xb50                                ; @'dylv.liquidass.clock.resizeProgress'
0007d900 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
0007d904 mov       x29, x29                                     
0007d908 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d90c mov       x21, x0                                      
0007d910 bl        #0x7b5dc                                     
0007d914 mov       x29, x29                                     
0007d918 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d91c mov       x22, x0                                      
0007d920 mov       x0, x21                                      
0007d924 bl        #0xa46f4                                      ; _objc_release
0007d928 adrp      x2, #0xdb000                                 
0007d92c add       x2, x2, #0xb70                                ; @'dylv.liquidass.clock.style'
0007d930 mov       x0, x20                                      
0007d934 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
0007d938 mov       x29, x29                                     
0007d93c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d940 mov       x21, x0                                      
0007d944 bl        #0x62ff8                                     
0007d948 mov       x29, x29                                     
0007d94c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d950 mov       x23, x0                                      
0007d954 mov       x0, x21                                      
0007d958 bl        #0xa46f4                                      ; _objc_release
0007d95c mov       x8, sp                                       
0007d960 adrp      x16, #0xd4000                                
0007d964 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0007d968 mov       x17, x8                                      
0007d96c movk      x17, #0x6ae1, lsl #48                        
0007d970 pacda     x16, x17                                     
0007d974 str       x16, [sp]                                    
0007d978 adrp      x9, #0xbd000                                 
0007d97c ldr       d0, [x9, #0x268]                             
0007d980 str       d0, [sp, #8]                                 
0007d984 add       x8, x8, #0x10                                
0007d988 adrp      x16, #0x7d000                                
0007d98c add       x16, x16, #0xa80                             
0007d990 pacia     x16, x8                                      
0007d994 adrp      x8, #0xd4000                                 
0007d998 add       x8, x8, #0xd10                               
0007d99c stp       x16, x8, [sp, #0x10]                         
0007d9a0 mov       x0, x19                                      
0007d9a4 bl        #0xa4704                                      ; _objc_retain
0007d9a8 mov       x19, x0                                      
0007d9ac str       x0, [sp, #0x20]                              
0007d9b0 mov       x0, x20                                      
0007d9b4 bl        #0xa4704                                      ; _objc_retain
0007d9b8 mov       x20, x0                                      
0007d9bc str       x0, [sp, #0x28]                              
0007d9c0 mov       x0, x22                                      
0007d9c4 bl        #0xa4704                                      ; _objc_retain
0007d9c8 mov       x21, x0                                      
0007d9cc str       x0, [sp, #0x30]                              
0007d9d0 mov       x0, x23                                      
0007d9d4 bl        #0xa4704                                      ; _objc_retain
0007d9d8 mov       x22, x0                                      
0007d9dc str       x0, [sp, #0x38]                              
0007d9e0 mov       x0, sp                                       
0007d9e4 bl        #0xa4744                                      ; _objc_retainBlock
0007d9e8 mov       x23, x0                                      
0007d9ec adrp      x8, #0xec000                                 
0007d9f0 ldr       x0, [x8, #0x710]                              ; &_OBJC_CLASS_$_NSThread
0007d9f4 bl        #0xa8e40                                      ; objc_msgSend$isMainThread
0007d9f8 cbz       w0, #0x7da10                                 
0007d9fc mov       x8, x23                                      
0007da00 ldr       x9, [x8, #0x10]!                             
0007da04 mov       x0, x23                                      
0007da08 blraa     x9, x8                                       
0007da0c b         #0x7da20                                     
0007da10 adrp      x0, #0xd4000                                 
0007da14 ldr       x0, [x0, #0x940]                              ; &__dispatch_main_q
0007da18 mov       x1, x23                                      
0007da1c bl        #0xa42f4                                      ; _dispatch_async
0007da20 mov       x0, x23                                      
0007da24 bl        #0xa46f4                                      ; _objc_release
0007da28 ldr       x0, [sp, #0x38]                              
0007da2c bl        #0xa46f4                                      ; _objc_release
0007da30 ldr       x0, [sp, #0x30]                              
0007da34 bl        #0xa46f4                                      ; _objc_release
0007da38 ldr       x0, [sp, #0x28]                              
0007da3c bl        #0xa46f4                                      ; _objc_release
0007da40 ldr       x0, [sp, #0x20]                              
0007da44 bl        #0xa46f4                                      ; _objc_release
0007da48 mov       x0, x22                                      
0007da4c bl        #0xa46f4                                      ; _objc_release
0007da50 mov       x0, x21                                      
0007da54 bl        #0xa46f4                                      ; _objc_release
0007da58 mov       x0, x20                                      
0007da5c bl        #0xa46f4                                      ; _objc_release
0007da60 mov       x0, x19                                      
0007da64 bl        #0xa46f4                                      ; _objc_release
0007da68 ldp       x29, x30, [sp, #0x70]                        
0007da6c ldp       x20, x19, [sp, #0x60]                        
0007da70 ldp       x22, x21, [sp, #0x50]                        
0007da74 ldp       x24, x23, [sp, #0x40]                        
0007da78 add       sp, sp, #0x80                                
0007da7c retab                                                  
