; prefs arm64e unslid VA [0x1cb18,0x1cc78); slice_offset=0xa0000
0001cb18 pacibsp                                                
0001cb1c sub       sp, sp, #0xa0                                
0001cb20 stp       x24, x23, [sp, #0x60]                        
0001cb24 stp       x22, x21, [sp, #0x70]                        
0001cb28 stp       x20, x19, [sp, #0x80]                        
0001cb2c stp       x29, x30, [sp, #0x90]                        
0001cb30 add       x29, sp, #0x90                               
0001cb34 mov       x19, x3                                      
0001cb38 mov       x20, x1                                      
0001cb3c mov       x21, x0                                      
0001cb40 adrp      x8, #0x78000                                 
0001cb44 ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001cb48 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001cb4c adrp      x9, #0x7b000                                 
0001cb50 add       x9, x9, #0x970                                ; @'type'
0001cb54 adrp      x10, #0x7b000                                
0001cb58 add       x10, x10, #0xeb0                              ; @'switch'
0001cb5c stur      x8, [x29, #-0x38]                            
0001cb60 adrp      x8, #0x7b000                                 
0001cb64 add       x8, x8, #0x7b0                                ; @'key'
0001cb68 stp       x9, x8, [sp, #8]                             
0001cb6c stp       x10, x0, [sp, #0x30]                         
0001cb70 adrp      x8, #0x7b000                                 
0001cb74 add       x8, x8, #0x9d0                                ; @'title'
0001cb78 adrp      x9, #0x7b000                                 
0001cb7c add       x9, x9, #0x9f0                                ; @'subtitle'
0001cb80 stp       x8, x9, [sp, #0x18]                          
0001cb84 adrp      x8, #0x7a000                                 
0001cb88 add       x8, x8, #0xfb0                                ; @''
0001cb8c cmp       x2, #0                                       
0001cb90 csel      x8, x8, x2, eq                               
0001cb94 stp       x1, x8, [sp, #0x40]                          
0001cb98 adrp      x8, #0x7b000                                 
0001cb9c add       x8, x8, #0xaf0                                ; @'default'
0001cba0 str       x8, [sp, #0x28]                              
0001cba4 adrp      x8, #0x8b000                                 
0001cba8 ldr       x22, [x8, #0xbb0]                             ; &_OBJC_CLASS_$_NSNumber
0001cbac mov       x0, x2                                       
0001cbb0 bl        #0x58e14                                      ; _objc_retain
0001cbb4 mov       x23, x0                                      
0001cbb8 mov       x0, x20                                      
0001cbbc bl        #0x58e14                                      ; _objc_retain
0001cbc0 mov       x20, x0                                      
0001cbc4 mov       x0, x21                                      
0001cbc8 bl        #0x58e14                                      ; _objc_retain
0001cbcc mov       x21, x0                                      
0001cbd0 mov       x0, x22                                      
0001cbd4 mov       x2, x19                                      
0001cbd8 bl        #0x5c8e0                                      ; objc_msgSend$numberWithBool:
0001cbdc mov       x29, x29                                     
0001cbe0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001cbe4 mov       x22, x0                                      
0001cbe8 str       x0, [sp, #0x50]                              
0001cbec adrp      x8, #0x8b000                                 
0001cbf0 ldr       x0, [x8, #0xaf0]                              ; &_OBJC_CLASS_$_NSDictionary
0001cbf4 add       x2, sp, #0x30                                
0001cbf8 add       x3, sp, #8                                   
0001cbfc mov       w4, #5                                       
0001cc00 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001cc04 mov       x29, x29                                     
0001cc08 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001cc0c mov       x19, x0                                      
0001cc10 mov       x0, x23                                      
0001cc14 bl        #0x58e04                                      ; _objc_release
0001cc18 mov       x0, x20                                      
0001cc1c bl        #0x58e04                                      ; _objc_release
0001cc20 mov       x0, x21                                      
0001cc24 bl        #0x58e04                                      ; _objc_release
0001cc28 mov       x0, x22                                      
0001cc2c bl        #0x58e04                                      ; _objc_release
0001cc30 ldur      x8, [x29, #-0x38]                            
0001cc34 adrp      x9, #0x78000                                 
0001cc38 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001cc3c ldr       x9, [x9]                                      ; &___objc_personality_v0
0001cc40 cmp       x9, x8                                       
0001cc44 b.ne      #0x1cc74                                     
0001cc48 mov       x0, x19                                      
0001cc4c ldp       x29, x30, [sp, #0x90]                        
0001cc50 ldp       x20, x19, [sp, #0x80]                        
0001cc54 ldp       x22, x21, [sp, #0x70]                        
0001cc58 ldp       x24, x23, [sp, #0x60]                        
0001cc5c add       sp, sp, #0xa0                                
0001cc60 autibsp                                                
0001cc64 eor       x16, x30, x30, lsl #1                        
0001cc68 tbz       x16, #0x3e, #0x1cc70                         
0001cc6c brk       #0xc471                                      
0001cc70 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001cc74 bl        #0x58a94                                      ; ___stack_chk_fail
