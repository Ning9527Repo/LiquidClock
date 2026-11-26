; Uploaded sample arm64e unslid VA 0x670f0..0x67220
000670f0 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
000670f4 mov       x29, x29                                     
000670f8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000670fc mov       x19, x0                                      
00067100 adrp      x1, #0xdc000                                 
00067104 add       x1, x1, #0x930                                ; @'no-glass'
00067108 ldr       x0, [sp, #0x158]                             
0006710c mov       x2, x19                                      
00067110 bl        #0x7b778                                     
00067114 mov       x0, x19                                      
00067118 bl        #0xa46f4                                      ; _objc_release
0006711c mov       x0, x20                                      
00067120 bl        #0xa46f4                                      ; _objc_release
00067124 mov       x0, x21                                      
00067128 bl        #0xa91e0                                      ; objc_msgSend$layer
0006712c mov       x29, x29                                     
00067130 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00067134 mov       x20, x0                                      
00067138 mov       x0, x21                                      
0006713c bl        #0xab400                                      ; objc_msgSend$renderedText
00067140 mov       x29, x29                                     
00067144 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00067148 mov       x19, x0                                      
0006714c ldr       x2, [sp, #0x180]                             
00067150 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
00067154 str       w0, [sp, #0xb8]                              
00067158 mov       x0, x19                                      
0006715c bl        #0xa46f4                                      ; _objc_release
00067160 mov       x0, x21                                      
00067164 bl        #0xab380                                      ; objc_msgSend$renderedHeight
00067168 fabd      d0, d0, d12                                  
0006716c mov       x8, #0x3f90000000000000                      
00067170 fmov      d1, x8                                       
00067174 fcmp      d0, d1                                       
00067178 str       x21, [sp, #0x1d0]                            
0006717c str       x20, [sp, #0xd8]                             
00067180 str       d8, [sp, #0xa8]                              
00067184 b.gt      #0x671c8                                     
00067188 str       w25, [sp, #0xbc]                             
0006718c mov       x0, x21                                      
00067190 bl        #0xab4a0                                      ; objc_msgSend$renderedWidth
00067194 ldr       d1, [sp, #0x178]                             
00067198 fabd      d0, d0, d1                                   
0006719c mov       x8, #0x3f90000000000000                      
000671a0 fmov      d1, x8                                       
000671a4 fcmp      d0, d1                                       
000671a8 b.gt      #0x671c8                                     
000671ac mov       x0, x21                                      
000671b0 bl        #0xab460                                      ; objc_msgSend$renderedTop
000671b4 fabd      d0, d0, d14                                  
000671b8 mov       x8, #0x3f90000000000000                      
000671bc fmov      d1, x8                                       
000671c0 fcmp      d0, d1                                       
000671c4 b.le      #0x67c20                                     
000671c8 mov       w8, #1                                       
000671cc str       w8, [sp, #0xbc]                              
000671d0 ldr       x0, [sp, #0x180]                             
000671d4 bl        #0xa4704                                      ; _objc_retain
000671d8 mov       x27, x0                                      
000671dc fdiv      d0, d12, d11                                 
000671e0 adrp      x8, #0xbd000                                 
000671e4 ldr       d1, [x8, #0xdf0]                             
000671e8 fadd      d0, d0, d1                                   
000671ec adrp      x8, #0xbd000                                 
000671f0 ldr       d1, [x8, #0xdf8]                             
000671f4 fdiv      d0, d0, d1                                   
000671f8 movi      d1, #0000000000000000                        
000671fc fmaxnm    d0, d0, d1                                   
00067200 fmov      d1, #1.00000000                              
00067204 fcmp      d0, d1                                       
00067208 fcsel     d0, d1, d0, gt                               
0006720c adrp      x8, #0xbd000                                 
00067210 ldr       d1, [x8, #0xe00]                             
00067214 adrp      x8, #0xbd000                                 
00067218 ldr       d2, [x8, #0xe08]                             
0006721c fmadd     d0, d0, d2, d1                               
