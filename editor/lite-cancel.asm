; lite-cancel arm64e unslid VA [0x6d290,0x6d320)
0006d290 pacibsp                                                
0006d294 stp       x20, x19, [sp, #-0x20]!                      
0006d298 stp       x29, x30, [sp, #0x10]                        
0006d29c add       x29, sp, #0x10                               
0006d2a0 mov       x19, x0                                      
0006d2a4 bl        #0xa6020                                      ; objc_msgSend$closing
0006d2a8 tbz       w0, #0, #0x6d2b8                             
0006d2ac ldp       x29, x30, [sp, #0x10]                        
0006d2b0 ldp       x20, x19, [sp], #0x20                        
0006d2b4 retab                                                  
0006d2b8 mov       x0, x19                                      
0006d2bc bl        #0xaad00                                      ; objc_msgSend$previousStyle
0006d2c0 mov       x29, x29                                     
0006d2c4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d2c8 adrp      x9, #0xef000                                 
0006d2cc ldr       x8, [x9, #0x760]                             
0006d2d0 str       x0, [x9, #0x760]                             
0006d2d4 mov       x0, x8                                       
0006d2d8 bl        #0xa46f4                                      ; _objc_release
0006d2dc mov       x0, x19                                      
0006d2e0 bl        #0xaace0                                      ; objc_msgSend$previousProgress
0006d2e4 mov       x29, x29                                     
0006d2e8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d2ec adrp      x9, #0xef000                                 
0006d2f0 ldr       x8, [x9, #0x758]                             
0006d2f4 str       x0, [x9, #0x758]                             
0006d2f8 mov       x0, x8                                       
0006d2fc bl        #0xa46f4                                      ; _objc_release
0006d300 mov       x0, x19                                      
0006d304 ldp       x29, x30, [sp, #0x10]                        
0006d308 ldp       x20, x19, [sp], #0x20                        
0006d30c autibsp                                                
0006d310 eor       x16, x30, x30, lsl #1                        
0006d314 tbz       x16, #0x3e, #0x6d31c                         
0006d318 brk       #0xc471                                      
0006d31c b         #0xa7820                                      ; objc_msgSend$finish
