; Uploaded sample arm64e unslid VA 0x7a18c..0x7a1ec
0007a18c pacibsp                                                
0007a190 stp       x20, x19, [sp, #-0x20]!                      
0007a194 stp       x29, x30, [sp, #0x10]                        
0007a198 add       x29, sp, #0x10                               
0007a19c mov       x19, x0                                      
0007a1a0 adrp      x8, #0xef000                                 
0007a1a4 ldr       x8, [x8, #0xa50]                             
0007a1a8 blraaz    x8                                           
0007a1ac adrp      x1, #0xbb000                                 
0007a1b0 add       x1, x1, #0x3af                                ; '_configuration'
0007a1b4 mov       x0, x19                                      
0007a1b8 bl        #0x633b0                                     
0007a1bc mov       x29, x29                                     
0007a1c0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007a1c4 mov       x19, x0                                      
0007a1c8 bl        #0x7d8c4                                     
0007a1cc mov       x0, x19                                      
0007a1d0 ldp       x29, x30, [sp, #0x10]                        
0007a1d4 ldp       x20, x19, [sp], #0x20                        
0007a1d8 autibsp                                                
0007a1dc eor       x16, x30, x30, lsl #1                        
0007a1e0 tbz       x16, #0x3e, #0x7a1e8                         
0007a1e4 brk       #0xc471                                      
0007a1e8 b         #0xa46f4                                      ; _objc_release
