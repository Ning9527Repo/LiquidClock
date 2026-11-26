; Uploaded sample arm64e unslid VA 0x6721c..0x67320
0006721c fmadd     d0, d0, d2, d1                               
00067220 adrp      x8, #0xbe000                                 
00067224 add       x8, x8, #0x958                               
00067228 mov       w9, #8                                       
0006722c adrp      x10, #0xbd000                                
00067230 ldr       q1, [x10, #0xe80]                            
00067234 str       q1, [sp, #0x1f0]                             
00067238 ldur      d1, [x8, #-8]                                
0006723c fcmp      d0, d1                                       
00067240 b.le      #0x67254                                     
00067244 add       x8, x8, #0x18                                
00067248 subs      x9, x9, #1                                   
0006724c b.ne      #0x67238                                     
00067250 b         #0x67278                                     
00067254 ldur      d2, [x8, #-0x20]                             
00067258 fsub      d0, d0, d2                                   
0006725c fsub      d1, d1, d2                                   
00067260 fdiv      d0, d0, d1                                   
00067264 ldur      q2, [x8, #-0x18]                             
00067268 ldr       q1, [x8]                                     
0006726c fsub      v1.2d, v1.2d, v2.2d                          
00067270 fmla      v2.2d, v1.2d, v0.d[0]                        
00067274 str       q2, [sp, #0x1f0]                             
00067278 adrp      x8, #0xef000                                 
0006727c ldr       x8, [x8, #0xb28]                             
00067280 cmn       x8, #1                                       
00067284 str       d14, [sp, #0x98]                             
00067288 str       d12, [sp, #0xf0]                             
0006728c b.ne      #0x6891c                                     
00067290 adrp      x8, #0xec000                                 
00067294 ldr       x0, [x8, #0x518]                              ; &_OBJC_CLASS_$_NSString
00067298 stp       d9, d15, [sp, #0x18]                         
0006729c ldr       d0, [sp, #0x178]                             
000672a0 stp       d0, d11, [sp, #8]                            
000672a4 str       x27, [sp]                                    
000672a8 adrp      x2, #0xdc000                                 
000672ac add       x2, x2, #0xd10                                ; @'%@|%.4f|%.4f|%.2f|%.2f'
000672b0 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
000672b4 mov       x29, x29                                     
000672b8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000672bc mov       x20, x0                                      
000672c0 adrp      x22, #0xef000                                
000672c4 ldr       x0, [x22, #0xb20]                            
000672c8 mov       x2, x20                                      
000672cc bl        #0xaa260                                      ; objc_msgSend$objectForKey:
000672d0 mov       x29, x29                                     
000672d4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000672d8 mov       x21, x0                                      
000672dc cbnz      x0, #0x67470                                 
000672e0 adrp      x8, #0xbd000                                 
000672e4 ldr       d0, [x8, #0xe10]                             
000672e8 str       d0, [sp, #0x228]                             
000672ec fmul      d0, d11, d0                                  
000672f0 mov       x8, #0x4059000000000000                      
000672f4 fmov      d1, x8                                       
000672f8 fmov      d2, d1                                       
000672fc fmov      d3, d9                                       
00067300 fmov      d4, d15                                      
00067304 bl        #0x7c888                                     
00067308 mov       x29, x29                                     
0006730c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00067310 mov       x19, x0                                      
00067314 mov       x0, x27                                      
00067318 mov       x1, x19                                      
0006731c bl        #0x7c764                                     
