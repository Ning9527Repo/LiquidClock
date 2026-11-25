; prefs arm64e unslid VA [0x1ceb8,0x1d058); slice_offset=0xa0000
0001ceb8 pacibsp                                                
0001cebc sub       sp, sp, #0xc0                                
0001cec0 stp       x26, x25, [sp, #0x70]                        
0001cec4 stp       x24, x23, [sp, #0x80]                        
0001cec8 stp       x22, x21, [sp, #0x90]                        
0001cecc stp       x20, x19, [sp, #0xa0]                        
0001ced0 stp       x29, x30, [sp, #0xb0]                        
0001ced4 add       x29, sp, #0xb0                               
0001ced8 mov       x22, x3                                      
0001cedc mov       x21, x2                                      
0001cee0 mov       x20, x1                                      
0001cee4 mov       x19, x0                                      
0001cee8 adrp      x8, #0x78000                                 
0001ceec ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001cef0 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001cef4 stur      x8, [x29, #-0x48]                            
0001cef8 adrp      x8, #0x7b000                                 
0001cefc add       x8, x8, #0x970                                ; @'type'
0001cf00 adrp      x9, #0x7b000                                 
0001cf04 add       x9, x9, #0xe70                                ; @'menu'
0001cf08 adrp      x10, #0x7b000                                
0001cf0c add       x10, x10, #0x7b0                              ; @'key'
0001cf10 stp       x8, x10, [sp, #8]                            
0001cf14 adrp      x8, #0x7a000                                 
0001cf18 add       x8, x8, #0xfb0                                ; @''
0001cf1c cmp       x0, #0                                       
0001cf20 csel      x10, x8, x0, eq                              
0001cf24 stp       x9, x10, [sp, #0x38]                         
0001cf28 adrp      x9, #0x7b000                                 
0001cf2c add       x9, x9, #0x9d0                                ; @'title'
0001cf30 adrp      x10, #0x7b000                                
0001cf34 add       x10, x10, #0x9f0                              ; @'subtitle'
0001cf38 cmp       x1, #0                                       
0001cf3c stp       x9, x10, [sp, #0x18]                         
0001cf40 csel      x9, x8, x1, eq                               
0001cf44 cmp       x2, #0                                       
0001cf48 csel      x10, x8, x2, eq                              
0001cf4c stp       x9, x10, [sp, #0x48]                         
0001cf50 adrp      x9, #0x7b000                                 
0001cf54 add       x9, x9, #0xaf0                                ; @'default'
0001cf58 adrp      x10, #0x7b000                                
0001cf5c add       x10, x10, #0xc50                              ; @'choices'
0001cf60 cmp       x3, #0                                       
0001cf64 stp       x9, x10, [sp, #0x28]                         
0001cf68 csel      x8, x8, x3, eq                               
0001cf6c adrp      x9, #0x78000                                 
0001cf70 ldr       x9, [x9, #0x4e0]                              ; &___NSArray0__struct
0001cf74 cmp       x4, #0                                       
0001cf78 csel      x9, x9, x4, eq                               
0001cf7c stp       x8, x9, [sp, #0x58]                          
0001cf80 adrp      x8, #0x8b000                                 
0001cf84 ldr       x23, [x8, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001cf88 mov       x0, x4                                       
0001cf8c bl        #0x58e14                                      ; _objc_retain
0001cf90 mov       x24, x0                                      
0001cf94 mov       x0, x22                                      
0001cf98 bl        #0x58e14                                      ; _objc_retain
0001cf9c mov       x22, x0                                      
0001cfa0 mov       x0, x21                                      
0001cfa4 bl        #0x58e14                                      ; _objc_retain
0001cfa8 mov       x21, x0                                      
0001cfac mov       x0, x20                                      
0001cfb0 bl        #0x58e14                                      ; _objc_retain
0001cfb4 mov       x20, x0                                      
0001cfb8 mov       x0, x19                                      
0001cfbc bl        #0x58e14                                      ; _objc_retain
0001cfc0 mov       x25, x0                                      
0001cfc4 add       x2, sp, #0x38                                
0001cfc8 add       x3, sp, #8                                   
0001cfcc mov       x0, x23                                      
0001cfd0 mov       w4, #6                                       
0001cfd4 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001cfd8 mov       x29, x29                                     
0001cfdc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001cfe0 mov       x19, x0                                      
0001cfe4 mov       x0, x24                                      
0001cfe8 bl        #0x58e04                                      ; _objc_release
0001cfec mov       x0, x22                                      
0001cff0 bl        #0x58e04                                      ; _objc_release
0001cff4 mov       x0, x21                                      
0001cff8 bl        #0x58e04                                      ; _objc_release
0001cffc mov       x0, x20                                      
0001d000 bl        #0x58e04                                      ; _objc_release
0001d004 mov       x0, x25                                      
0001d008 bl        #0x58e04                                      ; _objc_release
0001d00c ldur      x8, [x29, #-0x48]                            
0001d010 adrp      x9, #0x78000                                 
0001d014 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001d018 ldr       x9, [x9]                                      ; &___objc_personality_v0
0001d01c cmp       x9, x8                                       
0001d020 b.ne      #0x1d054                                     
0001d024 mov       x0, x19                                      
0001d028 ldp       x29, x30, [sp, #0xb0]                        
0001d02c ldp       x20, x19, [sp, #0xa0]                        
0001d030 ldp       x22, x21, [sp, #0x90]                        
0001d034 ldp       x24, x23, [sp, #0x80]                        
0001d038 ldp       x26, x25, [sp, #0x70]                        
0001d03c add       sp, sp, #0xc0                                
0001d040 autibsp                                                
0001d044 eor       x16, x30, x30, lsl #1                        
0001d048 tbz       x16, #0x3e, #0x1d050                         
0001d04c brk       #0xc471                                      
0001d050 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001d054 bl        #0x58a94                                      ; ___stack_chk_fail
