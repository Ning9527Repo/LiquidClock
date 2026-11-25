; prefs arm64e unslid VA [0x1cc78,0x1cd80); slice_offset=0xa0000
0001cc78 pacibsp                                                
0001cc7c sub       sp, sp, #0x70                                
0001cc80 stp       x22, x21, [sp, #0x40]                        
0001cc84 stp       x20, x19, [sp, #0x50]                        
0001cc88 stp       x29, x30, [sp, #0x60]                        
0001cc8c add       x29, sp, #0x60                               
0001cc90 mov       x19, x0                                      
0001cc94 adrp      x8, #0x78000                                 
0001cc98 ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001cc9c ldr       x8, [x8]                                      ; &___objc_personality_v0
0001cca0 stur      x8, [x29, #-0x28]                            
0001cca4 adrp      x8, #0x7b000                                 
0001cca8 add       x8, x8, #0x970                                ; @'type'
0001ccac adrp      x9, #0x7b000                                 
0001ccb0 add       x9, x9, #0x9b0                                ; @'section'
0001ccb4 adrp      x10, #0x7b000                                
0001ccb8 add       x10, x10, #0x9d0                              ; @'title'
0001ccbc stp       x8, x10, [sp, #8]                            
0001ccc0 adrp      x8, #0x7a000                                 
0001ccc4 add       x8, x8, #0xfb0                                ; @''
0001ccc8 cmp       x0, #0                                       
0001cccc csel      x10, x8, x0, eq                              
0001ccd0 stp       x9, x10, [sp, #0x20]                         
0001ccd4 adrp      x9, #0x7b000                                 
0001ccd8 add       x9, x9, #0x9f0                                ; @'subtitle'
0001ccdc str       x9, [sp, #0x18]                              
0001cce0 cmp       x1, #0                                       
0001cce4 csel      x8, x8, x1, eq                               
0001cce8 str       x8, [sp, #0x30]                              
0001ccec adrp      x8, #0x8b000                                 
0001ccf0 ldr       x20, [x8, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
0001ccf4 mov       x0, x1                                       
0001ccf8 bl        #0x58e14                                      ; _objc_retain
0001ccfc mov       x21, x0                                      
0001cd00 mov       x0, x19                                      
0001cd04 bl        #0x58e14                                      ; _objc_retain
0001cd08 mov       x22, x0                                      
0001cd0c add       x2, sp, #0x20                                
0001cd10 add       x3, sp, #8                                   
0001cd14 mov       x0, x20                                      
0001cd18 mov       w4, #3                                       
0001cd1c bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0001cd20 mov       x29, x29                                     
0001cd24 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001cd28 mov       x19, x0                                      
0001cd2c mov       x0, x21                                      
0001cd30 bl        #0x58e04                                      ; _objc_release
0001cd34 mov       x0, x22                                      
0001cd38 bl        #0x58e04                                      ; _objc_release
0001cd3c ldur      x8, [x29, #-0x28]                            
0001cd40 adrp      x9, #0x78000                                 
0001cd44 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001cd48 ldr       x9, [x9]                                      ; &___objc_personality_v0
0001cd4c cmp       x9, x8                                       
0001cd50 b.ne      #0x1cd7c                                     
0001cd54 mov       x0, x19                                      
0001cd58 ldp       x29, x30, [sp, #0x60]                        
0001cd5c ldp       x20, x19, [sp, #0x50]                        
0001cd60 ldp       x22, x21, [sp, #0x40]                        
0001cd64 add       sp, sp, #0x70                                
0001cd68 autibsp                                                
0001cd6c eor       x16, x30, x30, lsl #1                        
0001cd70 tbz       x16, #0x3e, #0x1cd78                         
0001cd74 brk       #0xc471                                      
0001cd78 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001cd7c bl        #0x58a94                                      ; ___stack_chk_fail
