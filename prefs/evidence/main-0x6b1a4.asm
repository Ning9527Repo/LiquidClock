; main arm64e unslid VA [0x6b1a4,0x6b300); slice_offset=0xfc000
0006b1a4 pacibsp                                                
0006b1a8 sub       sp, sp, #0x70                                
0006b1ac stp       x22, x21, [sp, #0x40]                        
0006b1b0 stp       x20, x19, [sp, #0x50]                        
0006b1b4 stp       x29, x30, [sp, #0x60]                        
0006b1b8 add       x29, sp, #0x60                               
0006b1bc mov       x19, x0                                      
0006b1c0 adrp      x8, #0xd4000                                 
0006b1c4 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0006b1c8 ldr       x8, [x8]                                      ; &___objc_personality_v0
0006b1cc stur      x8, [x29, #-0x28]                            
0006b1d0 adrp      x21, #0xec000                                
0006b1d4 ldr       x20, [x21, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
0006b1d8 bl        #0xaade0                                      ; objc_msgSend$progress
0006b1dc movi      d1, #0000000000000000                        
0006b1e0 fmaxnm    d0, d0, d1                                   
0006b1e4 fmov      d1, #1.00000000                              
0006b1e8 fcmp      d0, d1                                       
0006b1ec fcsel     d0, d1, d0, gt                               
0006b1f0 mov       x0, x20                                      
0006b1f4 bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
0006b1f8 mov       x29, x29                                     
0006b1fc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b200 adrp      x9, #0xef000                                 
0006b204 ldr       x8, [x9, #0x758]                             
0006b208 str       x0, [x9, #0x758]                             
0006b20c mov       x0, x8                                       
0006b210 bl        #0xa46f4                                      ; _objc_release
0006b214 adrp      x8, #0xdb000                                 
0006b218 add       x8, x8, #0xc30                                ; @'modern'
0006b21c adrp      x9, #0xd4000                                 
0006b220 ldr       x9, [x9, #0x808]                              ; &___kCFBooleanTrue
0006b224 str       x9, [sp, #0x20]                              
0006b228 adrp      x9, #0xdb000                                 
0006b22c add       x9, x9, #0xc50                                ; @'weight'
0006b230 stp       x8, x9, [sp, #8]                             
0006b234 ldr       x20, [x21, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
0006b238 mov       x0, x19                                      
0006b23c bl        #0xb1a60                                      ; objc_msgSend$weight
0006b240 mov       x0, x20                                      
0006b244 bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
0006b248 mov       x29, x29                                     
0006b24c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b250 mov       x20, x0                                      
0006b254 str       x0, [sp, #0x28]                              
0006b258 adrp      x8, #0xdb000                                 
0006b25c add       x8, x8, #0xc70                                ; @'softness'
0006b260 str       x8, [sp, #0x18]                              
0006b264 ldr       x21, [x21, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
0006b268 mov       x0, x19                                      
0006b26c bl        #0xafec0                                      ; objc_msgSend$softness
0006b270 mov       x0, x21                                      
0006b274 bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
0006b278 mov       x29, x29                                     
0006b27c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b280 mov       x19, x0                                      
0006b284 str       x0, [sp, #0x30]                              
0006b288 adrp      x8, #0xec000                                 
0006b28c ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
0006b290 add       x2, sp, #0x20                                
0006b294 add       x3, sp, #8                                   
0006b298 mov       w4, #3                                       
0006b29c bl        #0xa6f60                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0006b2a0 mov       x29, x29                                     
0006b2a4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b2a8 adrp      x9, #0xef000                                 
0006b2ac ldr       x8, [x9, #0x760]                             
0006b2b0 str       x0, [x9, #0x760]                             
0006b2b4 mov       x0, x8                                       
0006b2b8 bl        #0xa46f4                                      ; _objc_release
0006b2bc mov       x0, x19                                      
0006b2c0 bl        #0xa46f4                                      ; _objc_release
0006b2c4 mov       x0, x20                                      
0006b2c8 bl        #0xa46f4                                      ; _objc_release
0006b2cc bl        #0x60108                                     
0006b2d0 ldur      x8, [x29, #-0x28]                            
0006b2d4 adrp      x9, #0xd4000                                 
0006b2d8 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006b2dc ldr       x9, [x9]                                      ; &___objc_personality_v0
0006b2e0 cmp       x9, x8                                       
0006b2e4 b.ne      #0x6b2fc                                     
0006b2e8 ldp       x29, x30, [sp, #0x60]                        
0006b2ec ldp       x20, x19, [sp, #0x50]                        
0006b2f0 ldp       x22, x21, [sp, #0x40]                        
0006b2f4 add       sp, sp, #0x70                                
0006b2f8 retab                                                  
0006b2fc bl        #0xa41d4                                      ; ___stack_chk_fail
