; Local sample arm64e unslid VA 0x7b5dc..0x7b68c
0007b5dc pacibsp                                                
0007b5e0 stp       x20, x19, [sp, #-0x20]!                      
0007b5e4 stp       x29, x30, [sp, #0x10]                        
0007b5e8 add       x29, sp, #0x10                               
0007b5ec bl        #0xa4704                                      ; _objc_retain
0007b5f0 mov       x19, x0                                      
0007b5f4 adrp      x8, #0xec000                                 
0007b5f8 ldr       x0, [x8, #0x4e8]                              ; &_OBJC_CLASS_$_NSNumber
0007b5fc bl        #0xa46b4                                      ; _objc_opt_class
0007b600 mov       x1, x0                                       
0007b604 mov       x0, x19                                      
0007b608 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0007b60c tbz       w0, #0, #0x7b660                             
0007b610 mov       x0, x19                                      
0007b614 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0007b618 fmov      x8, d0                                       
0007b61c sub       x9, x8, #1                                   
0007b620 and       x10, x8, #0x7fffffffffffffff                 
0007b624 mov       x11, #-0x10000000000000                      
0007b628 add       x11, x10, x11                                
0007b62c lsr       x11, x11, #0x35                              
0007b630 cmn       x8, #1                                       
0007b634 mov       w8, #0x3ff                                   
0007b638 ccmp      x11, x8, #2, gt                              
0007b63c mov       x8, #0xfffffffffffff                         
0007b640 ccmp      x9, x8, #0, hs                               
0007b644 ccmp      x10, #0, #4, hs                              
0007b648 fmov      d1, #1.00000000                              
0007b64c fccmp     d0, d1, #2, eq                               
0007b650 csel      x0, x19, xzr, ls                             
0007b654 bl        #0xa4704                                      ; _objc_retain
0007b658 mov       x20, x0                                      
0007b65c b         #0x7b664                                     
0007b660 mov       x20, #0                                      
0007b664 mov       x0, x19                                      
0007b668 bl        #0xa46f4                                      ; _objc_release
0007b66c mov       x0, x20                                      
0007b670 ldp       x29, x30, [sp, #0x10]                        
0007b674 ldp       x20, x19, [sp], #0x20                        
0007b678 autibsp                                                
0007b67c eor       x16, x30, x30, lsl #1                        
0007b680 tbz       x16, #0x3e, #0x7b688                         
0007b684 brk       #0xc471                                      
0007b688 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
