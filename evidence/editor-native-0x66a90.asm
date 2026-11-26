; Uploaded sample arm64e unslid VA 0x66a90..0x66d00
00066a90 bl        #0x7b778                                     
00066a94 mov       x0, x19                                      
00066a98 bl        #0xa46f4                                      ; _objc_release
00066a9c ldr       x19, [sp, #0x1a0]                            
00066aa0 ldr       x25, [sp, #0x148]                            
00066aa4 b         #0x679bc                                     
00066aa8 fmov      d12, d10                                     
00066aac str       d9, [sp, #0x150]                             
00066ab0 ldr       d11, [sp, #0x168]                            
00066ab4 ldr       x25, [sp, #0x148]                            
00066ab8 cbnz      x26, #0x66af8                                
00066abc fmov      d12, d10                                     
00066ac0 ldr       x8, [sp, #0x1b0]                             
00066ac4 cbz       x8, #0x66af8                                 
00066ac8 adrp      x8, #0xbd000                                 
00066acc ldr       d0, [x8, #0xdd0]                             
00066ad0 fmul      d8, d11, d0                                  
00066ad4 ldr       d0, [sp, #0x228]                             
00066ad8 fmul      d9, d11, d0                                  
00066adc ldr       x0, [sp, #0x1b0]                             
00066ae0 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
00066ae4 fsub      d1, d9, d8                                   
00066ae8 ldr       d9, [sp, #0x150]                             
00066aec fmadd     d0, d0, d1, d8                               
00066af0 fcmp      d10, d0                                      
00066af4 fcsel     d12, d10, d0, mi                             
00066af8 ldr       x8, [sp, #0x1d8]                             
00066afc ldr       x19, [sp, #0x1c0]                            
00066b00 ldr       d15, [sp, #0x160]                            
00066b04 cbz       w8, #0x66b44                                 
00066b08 adrp      x8, #0xbd000                                 
00066b0c ldr       d0, [x8, #0xdd0]                             
00066b10 fmul      d0, d11, d0                                  
00066b14 fcmp      d12, d0                                      
00066b18 fcsel     d8, d12, d0, mi                              
00066b1c adrp      x8, #0xef000                                 
00066b20 ldr       x8, [x8, #0x768]                             
00066b24 movi      d0, #0000000000000000                        
00066b28 cbnz      x8, #0x66b34                                 
00066b2c ldr       x0, [sp, #0x158]                             
00066b30 bl        #0x7c698                                     
00066b34 fsub      d0, d12, d0                                  
00066b38 fcmp      d8, d0                                       
00066b3c fmov      d10, d12                                     
00066b40 fcsel     d12, d0, d8, mi                              
00066b44 ldr       x8, [sp, #0x1e8]                             
00066b48 cbz       w8, #0x66bd4                                 
00066b4c mov       x0, x26                                      
00066b50 bl        #0x64600                                     
00066b54 mov       x29, x29                                     
00066b58 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00066b5c mov       x20, x0                                      
00066b60 mov       x0, x26                                      
00066b64 bl        #0xb0d00                                      ; objc_msgSend$timeReticleView
00066b68 mov       x29, x29                                     
00066b6c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00066b70 mov       x19, x0                                      
00066b74 mov       x0, x26                                      
00066b78 bl        #0xb0d00                                      ; objc_msgSend$timeReticleView
00066b7c mov       x29, x29                                     
00066b80 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00066b84 mov       x21, x0                                      
00066b88 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00066b8c mov       x0, x19                                      
00066b90 ldr       x2, [sp, #0x158]                             
00066b94 bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
00066b98 bl        #0xa3ec4                                      ; _CGRectGetMinY
00066b9c fmov      d12, d0                                      
00066ba0 fmov      d8, #10.00000000                             
00066ba4 mov       x0, x21                                      
00066ba8 bl        #0xa46f4                                      ; _objc_release
00066bac mov       x0, x19                                      
00066bb0 bl        #0xa46f4                                      ; _objc_release
00066bb4 mov       x0, x20                                      
00066bb8 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
00066bbc fcmp      d0, #0.0                                     
00066bc0 b.le      #0x66c5c                                     
00066bc4 mov       x0, x20                                      
00066bc8 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
00066bcc fmov      d11, d0                                      
00066bd0 b         #0x66c68                                     
00066bd4 mov       w21, #0                                      
00066bd8 ldr       x8, [sp, #0x1b8]                             
00066bdc cmp       x8, #0                                       
00066be0 ldr       x8, [sp, #0x1d8]                             
00066be4 csinc     w8, w8, wzr, eq                              
00066be8 cbz       x25, #0x66cc8                                
00066bec cbnz      w8, #0x66cc8                                 
00066bf0 adrp      x8, #0xec000                                 
00066bf4 ldr       x0, [x8, #0x568]                              ; &_OBJC_CLASS_$_UILabel
00066bf8 bl        #0xa46b4                                      ; _objc_opt_class
00066bfc mov       x1, x0                                       
00066c00 ldr       x0, [sp, #0x128]                             
00066c04 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00066c08 tbz       w0, #0, #0x66d54                             
00066c0c ldr       x0, [sp, #0x158]                             
00066c10 bl        #0xb1d40                                      ; objc_msgSend$window
00066c14 mov       x29, x29                                     
00066c18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00066c1c mov       x20, x0                                      
00066c20 bl        #0xa46b4                                      ; _objc_opt_class
00066c24 bl        #0xa40e4                                      ; _NSStringFromClass
00066c28 mov       x29, x29                                     
00066c2c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00066c30 mov       x19, x0                                      
00066c34 adrp      x2, #0xd7000                                 
00066c38 add       x2, x2, #0xad0                                ; @'SBCoverSheetWindow'
00066c3c bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
00066c40 mov       x21, x0                                      
00066c44 mov       x0, x19                                      
00066c48 ldr       x19, [sp, #0x1c0]                            
00066c4c bl        #0xa46f4                                      ; _objc_release
00066c50 b         #0x66cc0                                     
00066c54 fmov      d0, #8.00000000                              
00066c58 b         #0x668e0                                     
00066c5c adrp      x8, #0xbd000                                 
00066c60 ldr       d0, [x8, #0xdd0]                             
00066c64 fmul      d11, d11, d0                                 
00066c68 fadd      d8, d12, d8                                  
00066c6c movi      d9, #0000000000000000                        
00066c70 mov       x0, x20                                      
00066c74 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
00066c78 fcmp      d0, #0.0                                     
00066c7c ldr       x19, [sp, #0x1c0]                            
00066c80 b.le      #0x66c94                                     
00066c84 mov       x0, x20                                      
00066c88 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
00066c8c fmov      d12, d0                                      
00066c90 b         #0x66ca0                                     
00066c94 ldr       d0, [sp, #0x168]                             
00066c98 ldr       d1, [sp, #0x228]                             
00066c9c fmul      d12, d0, d1                                  
00066ca0 fmaxnm    d14, d8, d9                                  
00066ca4 mov       x0, x20                                      
00066ca8 bl        #0xa7080                                      ; objc_msgSend$displayProgress
00066cac mov       w21, #0                                      
00066cb0 fsub      d1, d12, d11                                 
00066cb4 fmadd     d12, d0, d1, d11                             
00066cb8 ldr       d9, [sp, #0x150]                             
00066cbc ldr       d11, [sp, #0x168]                            
00066cc0 mov       x0, x20                                      
00066cc4 bl        #0xa46f4                                      ; _objc_release
00066cc8 cbz       x19, #0x66ce4                                
00066ccc tbnz      w21, #0, #0x66ce4                            
00066cd0 ldr       x0, [sp, #0x158]                             
00066cd4 bl        #0x7b920                                     
00066cd8 mov       x0, x19                                      
00066cdc bl        #0xa46f4                                      ; _objc_release
00066ce0 mov       x19, #0                                      
00066ce4 cbz       w21, #0x66d18                                
00066ce8 mov       x8, x19                                      
00066cec adrp      x19, #0xef000                                
00066cf0 ldr       x21, [sp, #0x1d0]                            
00066cf4 mov       x20, x8                                      
00066cf8 cbnz      x8, #0x66d20                                 
00066cfc ldrb      w8, [x19, #0xad0]                            
