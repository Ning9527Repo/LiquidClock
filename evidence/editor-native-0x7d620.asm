; Uploaded sample arm64e unslid VA 0x7d620..0x7d6d8
0007d620 pacibsp                                                
0007d624 stp       d9, d8, [sp, #-0x30]!                        
0007d628 stp       x20, x19, [sp, #0x10]                        
0007d62c stp       x29, x30, [sp, #0x20]                        
0007d630 add       x29, sp, #0x20                               
0007d634 bl        #0x6dca4                                     
0007d638 mov       x29, x29                                     
0007d63c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d640 mov       x19, x0                                      
0007d644 adrp      x8, #0xee000                                 
0007d648 ldr       x1, [x8, #0x860]                             
0007d64c bl        #0xa4654                                      ; _objc_getAssociatedObject
0007d650 mov       x29, x29                                     
0007d654 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007d658 mov       x20, x0                                      
0007d65c cbz       x0, #0x7d6b0                                 
0007d660 adrp      x8, #0xef000                                 
0007d664 ldr       x8, [x8, #0x768]                             
0007d668 cbz       x8, #0x7d67c                                 
0007d66c adrp      x8, #0xee000                                 
0007d670 ldr       d8, [x8, #0x938]                             
0007d674 fcmp      d8, #0.0                                     
0007d678 b.ge      #0x7d6b4                                     
0007d67c mov       x0, x20                                      
0007d680 bl        #0xab460                                      ; objc_msgSend$renderedTop
0007d684 fmov      d8, d0                                       
0007d688 mov       x0, x20                                      
0007d68c bl        #0xab3a0                                      ; objc_msgSend$renderedMaximumHeight
0007d690 fadd      d8, d8, d0                                   
0007d694 mov       x0, x19                                      
0007d698 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0007d69c bl        #0xa3e64                                      ; _CGRectGetHeight
0007d6a0 fsub      d0, d8, d0                                   
0007d6a4 movi      d1, #0000000000000000                        
0007d6a8 fmaxnm    d8, d0, d1                                   
0007d6ac b         #0x7d6b4                                     
0007d6b0 movi      d8, #0000000000000000                        
0007d6b4 mov       x0, x20                                      
0007d6b8 bl        #0xa46f4                                      ; _objc_release
0007d6bc mov       x0, x19                                      
0007d6c0 bl        #0xa46f4                                      ; _objc_release
0007d6c4 fmov      d0, d8                                       
0007d6c8 ldp       x29, x30, [sp, #0x20]                        
0007d6cc ldp       x20, x19, [sp, #0x10]                        
0007d6d0 ldp       d9, d8, [sp], #0x30                          
0007d6d4 retab                                                  
