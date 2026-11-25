; prefs arm64e unslid VA [0x1d058,0x1d274); slice_offset=0xa0000
0001d058 pacibsp                                                
0001d05c sub       sp, sp, #0x110                               
0001d060 stp       d11, d10, [sp, #0x90]                        
0001d064 stp       d9, d8, [sp, #0xa0]                          
0001d068 stp       x28, x27, [sp, #0xb0]                        
0001d06c stp       x26, x25, [sp, #0xc0]                        
0001d070 stp       x24, x23, [sp, #0xd0]                        
0001d074 stp       x22, x21, [sp, #0xe0]                        
0001d078 stp       x20, x19, [sp, #0xf0]                        
0001d07c stp       x29, x30, [sp, #0x100]                       
0001d080 add       x29, sp, #0x100                              
0001d084 mov       x19, x3                                      
0001d088 fmov      d8, d2                                       
0001d08c fmov      d9, d1                                       
0001d090 fmov      d10, d0                                      
0001d094 mov       x20, x1                                      
0001d098 mov       x23, x0                                      
0001d09c adrp      x8, #0x78000                                 
0001d0a0 ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001d0a4 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001d0a8 adrp      x9, #0x7b000                                 
0001d0ac add       x9, x9, #0x970                                ; @'type'
0001d0b0 adrp      x10, #0x7b000                                
0001d0b4 add       x10, x10, #0xf30                              ; @'slider'
0001d0b8 stur      x8, [x29, #-0x78]                            
0001d0bc adrp      x8, #0x7b000                                 
0001d0c0 add       x8, x8, #0x7b0                                ; @'key'
0001d0c4 stp       x9, x8, [sp, #8]                             
0001d0c8 stp       x10, x0, [sp, #0x48]                         
0001d0cc adrp      x8, #0x7b000                                 
0001d0d0 add       x8, x8, #0x9d0                                ; @'title'
0001d0d4 adrp      x9, #0x7b000                                 
0001d0d8 add       x9, x9, #0x9f0                                ; @'subtitle'
0001d0dc stp       x8, x9, [sp, #0x18]                          
0001d0e0 adrp      x8, #0x7a000                                 
0001d0e4 add       x8, x8, #0xfb0                                ; @''
0001d0e8 cmp       x2, #0                                       
0001d0ec csel      x8, x8, x2, eq                               
0001d0f0 stp       x1, x8, [sp, #0x58]                          
0001d0f4 adrp      x8, #0x7b000                                 
0001d0f8 add       x8, x8, #0xaf0                                ; @'default'
0001d0fc str       x8, [sp, #0x28]                              
0001d100 adrp      x26, #0x8b000                                
0001d104 ldr       x24, [x26, #0xbb0]                            ; &_OBJC_CLASS_$_NSNumber
0001d108 mov       x0, x2                                       
0001d10c bl        #0x58e14                                      ; _objc_retain
0001d110 mov       x21, x0                                      
0001d114 mov       x0, x20                                      
0001d118 bl        #0x58e14                                      ; _objc_retain
0001d11c mov       x22, x0                                      
0001d120 mov       x0, x23                                      
0001d124 bl        #0x58e14                                      ; _objc_retain
0001d128 mov       x23, x0                                      
0001d12c mov       x0, x24                                      
0001d130 fmov      d0, d10                                      
0001d134 bl        #0x5c900                                      ; objc_msgSend$numberWithDouble:
0001d138 mov       x29, x29                                     
0001d13c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d140 mov       x20, x0                                      
0001d144 str       x0, [sp, #0x68]                              
0001d148 adrp      x8, #0x7b000                                 
0001d14c add       x8, x8, #0xd10                                ; @'min'
0001d150 str       x8, [sp, #0x30]                              
0001d154 ldr       x0, [x26, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001d158 fmov      d0, d9                                       
0001d15c bl        #0x5c900                                      ; objc_msgSend$numberWithDouble:
0001d160 mov       x29, x29                                     
0001d164 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d168 mov       x24, x0                                      
0001d16c str       x0, [sp, #0x70]                              
0001d170 adrp      x8, #0x7b000                                 
0001d174 add       x8, x8, #0xd30                                ; @'max'
0001d178 str       x8, [sp, #0x38]                              
0001d17c ldr       x0, [x26, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001d180 fmov      d0, d8                                       
0001d184 bl        #0x5c900                                      ; objc_msgSend$numberWithDouble:
0001d188 mov       x29, x29                                     
0001d18c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d190 mov       x25, x0                                      
0001d194 str       x0, [sp, #0x78]                              
0001d198 adrp      x8, #0x7b000                                 
0001d19c add       x8, x8, #0xd50                                ; @'decimals'
0001d1a0 str       x8, [sp, #0x40]                              
0001d1a4 ldr       x0, [x26, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001d1a8 mov       x2, x19                                      
0001d1ac bl        #0x5c960                                      ; objc_msgSend$numberWithInteger:
0001d1b0 mov       x29, x29                                     
0001d1b4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d1b8 mov       x26, x0                                      
0001d1bc str       x0, [sp, #0x80]                              
0001d1c0 adrp      x8, #0x8b000                                 
0001d1c4 ldr       x0, [x8, #0xaf0]                              ; &_OBJC_CLASS_$_NSDictionary
0001d1c8 add       x2, sp, #0x48                                
0001d1cc add       x3, sp, #8                                   
0001d1d0 mov       w4, #8                                       
0001d1d4 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001d1d8 mov       x29, x29                                     
0001d1dc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d1e0 mov       x19, x0                                      
0001d1e4 mov       x0, x21                                      
0001d1e8 bl        #0x58e04                                      ; _objc_release
0001d1ec mov       x0, x22                                      
0001d1f0 bl        #0x58e04                                      ; _objc_release
0001d1f4 mov       x0, x23                                      
0001d1f8 bl        #0x58e04                                      ; _objc_release
0001d1fc mov       x0, x26                                      
0001d200 bl        #0x58e04                                      ; _objc_release
0001d204 mov       x0, x25                                      
0001d208 bl        #0x58e04                                      ; _objc_release
0001d20c mov       x0, x24                                      
0001d210 bl        #0x58e04                                      ; _objc_release
0001d214 mov       x0, x20                                      
0001d218 bl        #0x58e04                                      ; _objc_release
0001d21c ldur      x8, [x29, #-0x78]                            
0001d220 adrp      x9, #0x78000                                 
0001d224 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001d228 ldr       x9, [x9]                                      ; &___objc_personality_v0
0001d22c cmp       x9, x8                                       
0001d230 b.ne      #0x1d270                                     
0001d234 mov       x0, x19                                      
0001d238 ldp       x29, x30, [sp, #0x100]                       
0001d23c ldp       x20, x19, [sp, #0xf0]                        
0001d240 ldp       x22, x21, [sp, #0xe0]                        
0001d244 ldp       x24, x23, [sp, #0xd0]                        
0001d248 ldp       x26, x25, [sp, #0xc0]                        
0001d24c ldp       x28, x27, [sp, #0xb0]                        
0001d250 ldp       d9, d8, [sp, #0xa0]                          
0001d254 ldp       d11, d10, [sp, #0x90]                        
0001d258 add       sp, sp, #0x110                               
0001d25c autibsp                                                
0001d260 eor       x16, x30, x30, lsl #1                        
0001d264 tbz       x16, #0x3e, #0x1d26c                         
0001d268 brk       #0xc471                                      
0001d26c b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001d270 bl        #0x58a94                                      ; ___stack_chk_fail
