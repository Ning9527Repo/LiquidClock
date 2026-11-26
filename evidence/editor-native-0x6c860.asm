; Uploaded sample arm64e unslid VA 0x6c860..0x6c9f0
0006c860 adrp      x9, #0xbd000                                 
0006c864 ldr       d4, [x9, #0x268]                             
0006c868 str       d4, [sp, #0x10]                              
0006c86c add       x8, x8, #0x10                                
0006c870 adrp      x16, #0x6c000                                
0006c874 add       x16, x16, #0xab8                             
0006c878 pacia     x16, x8                                      
0006c87c adrp      x8, #0xd5000                                 
0006c880 add       x8, x8, #0x100                               
0006c884 stp       x16, x8, [sp, #0x18]                         
0006c888 str       x19, [sp, #0x28]                             
0006c88c stp       d0, d1, [sp, #0x30]                          
0006c890 stp       d2, d3, [sp, #0x40]                          
0006c894 add       x2, sp, #8                                   
0006c898 bl        #0xaa840                                      ; objc_msgSend$performWithoutAnimation:
0006c89c mov       x0, x19                                      
0006c8a0 bl        #0xb0220                                      ; objc_msgSend$state
0006c8a4 mov       x29, x29                                     
0006c8a8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c8ac mov       x21, x0                                      
0006c8b0 bl        #0xab5a0                                      ; objc_msgSend$resizing
0006c8b4 mov       x22, x0                                      
0006c8b8 mov       x0, x21                                      
0006c8bc bl        #0xa46f4                                      ; _objc_release
0006c8c0 tbnz      w22, #0, #0x6c9ec                            
0006c8c4 mov       x0, x19                                      
0006c8c8 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006c8cc mov       x29, x29                                     
0006c8d0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c8d4 mov       x21, x0                                      
0006c8d8 bl        #0xb1d40                                      ; objc_msgSend$window
0006c8dc mov       x29, x29                                     
0006c8e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c8e4 mov       x22, x0                                      
0006c8e8 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006c8ec adrp      x8, #0xbd000                                 
0006c8f0 ldr       d0, [x8, #0xdc0]                             
0006c8f4 fdiv      d13, d2, d0                                  
0006c8f8 mov       x0, x22                                      
0006c8fc bl        #0xa46f4                                      ; _objc_release
0006c900 mov       x0, x21                                      
0006c904 bl        #0xa46f4                                      ; _objc_release
0006c908 adrp      x8, #0xbd000                                 
0006c90c ldr       d0, [x8, #0xdd8]                             
0006c910 fmul      d14, d13, d0                                 
0006c914 mov       x0, x19                                      
0006c918 bl        #0xb1920                                      ; objc_msgSend$view
0006c91c mov       x29, x29                                     
0006c920 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c924 mov       x21, x0                                      
0006c928 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006c92c fmov      d12, d3                                      
0006c930 fmov      d0, d8                                       
0006c934 fmov      d1, d9                                       
0006c938 fmov      d2, d10                                      
0006c93c fmov      d3, d11                                      
0006c940 bl        #0xa3ec4                                      ; _CGRectGetMinY
0006c944 fsub      d0, d12, d0                                  
0006c948 mov       x8, #-0x3fa8000000000000                     
0006c94c fmov      d1, x8                                       
0006c950 fadd      d8, d0, d1                                   
0006c954 mov       x0, x21                                      
0006c958 bl        #0xa46f4                                      ; _objc_release
0006c95c fcmp      d14, d8                                      
0006c960 fcsel     d0, d14, d8, mi                              
0006c964 fmov      d1, #1.00000000                              
0006c968 fmaxnm    d8, d0, d1                                   
0006c96c mov       x0, x19                                      
0006c970 bl        #0xb0220                                      ; objc_msgSend$state
0006c974 mov       x29, x29                                     
0006c978 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c97c mov       x21, x0                                      
0006c980 fmov      d0, d8                                       
0006c984 bl        #0xadaa0                                      ; objc_msgSend$setMaximumHeight:
0006c988 mov       x0, x21                                      
0006c98c bl        #0xa46f4                                      ; _objc_release
0006c990 mov       x0, x19                                      
0006c994 bl        #0xb0220                                      ; objc_msgSend$state
0006c998 mov       x29, x29                                     
0006c99c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c9a0 mov       x21, x0                                      
0006c9a4 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
0006c9a8 fmov      d8, d0                                       
0006c9ac mov       x0, x21                                      
0006c9b0 bl        #0xa46f4                                      ; _objc_release
0006c9b4 adrp      x8, #0xbd000                                 
0006c9b8 ldr       d0, [x8, #0xdd0]                             
0006c9bc fmul      d0, d13, d0                                  
0006c9c0 fcmp      d8, d0                                       
0006c9c4 fcsel     d8, d8, d0, mi                               
0006c9c8 mov       x0, x19                                      
0006c9cc bl        #0xb0220                                      ; objc_msgSend$state
0006c9d0 mov       x29, x29                                     
0006c9d4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c9d8 mov       x21, x0                                      
0006c9dc fmov      d0, d8                                       
0006c9e0 bl        #0xadba0                                      ; objc_msgSend$setMinimumHeight:
0006c9e4 mov       x0, x21                                      
0006c9e8 bl        #0xa46f4                                      ; _objc_release
0006c9ec adrp      x8, #0xec000                                 
