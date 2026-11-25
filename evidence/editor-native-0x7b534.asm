; Local sample arm64e unslid VA 0x7b534..0x7b5dc
0007b534 pacibsp                                                
0007b538 stp       x22, x21, [sp, #-0x30]!                      
0007b53c stp       x20, x19, [sp, #0x10]                        
0007b540 stp       x29, x30, [sp, #0x20]                        
0007b544 add       x29, sp, #0x20                               
0007b548 bl        #0xa4704                                      ; _objc_retain
0007b54c mov       x19, x0                                      
0007b550 adrp      x8, #0xe9000                                 
0007b554 ldr       x1, [x8, #0xb28]                              ; SEL loadUserInfoWithError:
0007b558 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0007b55c tbz       w0, #0, #0x7b5ac                             
0007b560 mov       x0, x19                                      
0007b564 mov       x2, #0                                       
0007b568 bl        #0xa9780                                      ; objc_msgSend$loadUserInfoWithError:
0007b56c mov       x29, x29                                     
0007b570 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007b574 mov       x21, x0                                      
0007b578 adrp      x8, #0xec000                                 
0007b57c ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
0007b580 bl        #0xa46b4                                      ; _objc_opt_class
0007b584 mov       x1, x0                                       
0007b588 mov       x0, x21                                      
0007b58c bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0007b590 tst       w0, #1                                       
0007b594 csel      x0, x21, xzr, ne                             
0007b598 bl        #0xa4704                                      ; _objc_retain
0007b59c mov       x20, x0                                      
0007b5a0 mov       x0, x21                                      
0007b5a4 bl        #0xa46f4                                      ; _objc_release
0007b5a8 b         #0x7b5b0                                     
0007b5ac mov       x20, #0                                      
0007b5b0 mov       x0, x19                                      
0007b5b4 bl        #0xa46f4                                      ; _objc_release
0007b5b8 mov       x0, x20                                      
0007b5bc ldp       x29, x30, [sp, #0x20]                        
0007b5c0 ldp       x20, x19, [sp, #0x10]                        
0007b5c4 ldp       x22, x21, [sp], #0x30                        
0007b5c8 autibsp                                                
0007b5cc eor       x16, x30, x30, lsl #1                        
0007b5d0 tbz       x16, #0x3e, #0x7b5d8                         
0007b5d4 brk       #0xc471                                      
0007b5d8 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
