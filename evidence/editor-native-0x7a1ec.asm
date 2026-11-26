; Uploaded sample arm64e unslid VA 0x7a1ec..0x7a24c
0007a1ec pacibsp                                                
0007a1f0 stp       x20, x19, [sp, #-0x20]!                      
0007a1f4 stp       x29, x30, [sp, #0x10]                        
0007a1f8 add       x29, sp, #0x10                               
0007a1fc mov       x19, x0                                      
0007a200 adrp      x8, #0xef000                                 
0007a204 ldr       x8, [x8, #0xa58]                             
0007a208 blraaz    x8                                           
0007a20c adrp      x1, #0xbb000                                 
0007a210 add       x1, x1, #0x3af                                ; '_configuration'
0007a214 mov       x0, x19                                      
0007a218 bl        #0x633b0                                     
0007a21c mov       x29, x29                                     
0007a220 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007a224 mov       x19, x0                                      
0007a228 bl        #0x7d8c4                                     
0007a22c mov       x0, x19                                      
0007a230 ldp       x29, x30, [sp, #0x10]                        
0007a234 ldp       x20, x19, [sp], #0x20                        
0007a238 autibsp                                                
0007a23c eor       x16, x30, x30, lsl #1                        
0007a240 tbz       x16, #0x3e, #0x7a248                         
0007a244 brk       #0xc471                                      
0007a248 b         #0xa46f4                                      ; _objc_release
