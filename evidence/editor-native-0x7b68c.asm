; Local sample arm64e unslid VA 0x7b68c..0x7b714
0007b68c pacibsp                                                
0007b690 stp       x20, x19, [sp, #-0x20]!                      
0007b694 stp       x29, x30, [sp, #0x10]                        
0007b698 add       x29, sp, #0x10                               
0007b69c bl        #0xa4704                                      ; _objc_retain
0007b6a0 mov       x19, x0                                      
0007b6a4 adrp      x8, #0xec000                                 
0007b6a8 ldr       x0, [x8, #0x4e8]                              ; &_OBJC_CLASS_$_NSNumber
0007b6ac bl        #0xa46b4                                      ; _objc_opt_class
0007b6b0 mov       x1, x0                                       
0007b6b4 mov       x0, x19                                      
0007b6b8 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0007b6bc tbz       w0, #0, #0x7b6e8                             
0007b6c0 mov       x0, x19                                      
0007b6c4 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0007b6c8 fmov      d1, #1.00000000                              
0007b6cc fcmp      d0, d1                                       
0007b6d0 movi      d1, #0000000000000000                        
0007b6d4 fccmp     d0, d1, #4, ne                               
0007b6d8 csel      x0, x19, xzr, eq                             
0007b6dc bl        #0xa4704                                      ; _objc_retain
0007b6e0 mov       x20, x0                                      
0007b6e4 b         #0x7b6ec                                     
0007b6e8 mov       x20, #0                                      
0007b6ec mov       x0, x19                                      
0007b6f0 bl        #0xa46f4                                      ; _objc_release
0007b6f4 mov       x0, x20                                      
0007b6f8 ldp       x29, x30, [sp, #0x10]                        
0007b6fc ldp       x20, x19, [sp], #0x20                        
0007b700 autibsp                                                
0007b704 eor       x16, x30, x30, lsl #1                        
0007b708 tbz       x16, #0x3e, #0x7b710                         
0007b70c brk       #0xc471                                      
0007b710 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
