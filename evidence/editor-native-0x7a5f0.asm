; Uploaded sample arm64e unslid VA 0x7a5f0..0x7a77c
0007a5f0 pacibsp                                                
0007a5f4 stp       d13, d12, [sp, #-0x60]!                      
0007a5f8 stp       d11, d10, [sp, #0x10]                        
0007a5fc stp       d9, d8, [sp, #0x20]                          
0007a600 stp       x22, x21, [sp, #0x30]                        
0007a604 stp       x20, x19, [sp, #0x40]                        
0007a608 stp       x29, x30, [sp, #0x50]                        
0007a60c add       x29, sp, #0x50                               
0007a610 mov       x19, x0                                      
0007a614 adrp      x8, #0xef000                                 
0007a618 ldr       x8, [x8, #0xa88]                             
0007a61c blraaz    x8                                           
0007a620 fmov      d8, d0                                       
0007a624 fmov      d9, d1                                       
0007a628 mov       x0, x19                                      
0007a62c bl        #0xa4704                                      ; _objc_retain
0007a630 mov       x19, x0                                      
0007a634 adrp      x8, #0xef000                                 
0007a638 ldrb      w8, [x8, #0xb81]                             
0007a63c cmp       w8, #1                                       
0007a640 b.ne      #0x7a750                                     
0007a644 adrp      x0, #0xef000                                 
0007a648 add       x0, x0, #0x770                               
0007a64c bl        #0xa4684                                      ; _objc_loadWeakRetained
0007a650 mov       x20, x0                                      
0007a654 bl        #0xa9f80                                      ; objc_msgSend$notificationListScrollView
0007a658 mov       x29, x29                                     
0007a65c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007a660 mov       x21, x0                                      
0007a664 bl        #0xa46f4                                      ; _objc_release
0007a668 mov       x0, x20                                      
0007a66c bl        #0xa46f4                                      ; _objc_release
0007a670 cmp       x21, x19                                     
0007a674 b.ne      #0x7a750                                     
0007a678 mov       x0, x19                                      
0007a67c bl        #0xa6580                                      ; objc_msgSend$contentInset
0007a680 adrp      x8, #0xef000                                 
0007a684 ldr       x8, [x8, #0x768]                             
0007a688 cbz       x8, #0x7a69c                                 
0007a68c mov       x0, x19                                      
0007a690 bl        #0xa6580                                      ; objc_msgSend$contentInset
0007a694 fneg      d9, d0                                       
0007a698 b         #0x7a750                                     
0007a69c fadd      d0, d9, d0                                   
0007a6a0 movi      d10, #0000000000000000                       
0007a6a4 fmaxnm    d11, d0, d10                                 
0007a6a8 adrp      x0, #0xef000                                 
0007a6ac add       x0, x0, #0x770                               
0007a6b0 bl        #0xa4684                                      ; _objc_loadWeakRetained
0007a6b4 mov       x20, x0                                      
0007a6b8 bl        #0x6dca4                                     
0007a6bc mov       x29, x29                                     
0007a6c0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007a6c4 mov       x21, x0                                      
0007a6c8 mov       x0, x20                                      
0007a6cc bl        #0xa46f4                                      ; _objc_release
0007a6d0 adrp      x8, #0xee000                                 
0007a6d4 ldr       x1, [x8, #0x860]                             
0007a6d8 mov       x0, x21                                      
0007a6dc bl        #0xa4654                                      ; _objc_getAssociatedObject
0007a6e0 mov       x29, x29                                     
0007a6e4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007a6e8 mov       x20, x0                                      
0007a6ec mov       x0, x21                                      
0007a6f0 bl        #0xb1d40                                      ; objc_msgSend$window
0007a6f4 mov       x29, x29                                     
0007a6f8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007a6fc mov       x22, x0                                      
0007a700 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0007a704 adrp      x8, #0xbd000                                 
0007a708 ldr       d0, [x8, #0xdf0]                             
0007a70c fmul      d0, d2, d0                                   
0007a710 adrp      x8, #0xbd000                                 
0007a714 ldr       d1, [x8, #0xdc0]                             
0007a718 fdiv      d12, d0, d1                                  
0007a71c mov       x0, x22                                      
0007a720 bl        #0xa46f4                                      ; _objc_release
0007a724 mov       x0, x20                                      
0007a728 bl        #0xab3a0                                      ; objc_msgSend$renderedMaximumHeight
0007a72c fadd      d0, d0, d12                                  
0007a730 fmaxnm    d10, d0, d10                                 
0007a734 mov       x0, x20                                      
0007a738 bl        #0xa46f4                                      ; _objc_release
0007a73c mov       x0, x21                                      
0007a740 bl        #0xa46f4                                      ; _objc_release
0007a744 fcmp      d11, d10                                     
0007a748 fcsel     d0, d11, d10, mi                             
0007a74c fsub      d9, d9, d0                                   
0007a750 mov       x0, x19                                      
0007a754 bl        #0xa46f4                                      ; _objc_release
0007a758 fmov      d0, d8                                       
0007a75c fmov      d1, d9                                       
0007a760 ldp       x29, x30, [sp, #0x50]                        
0007a764 ldp       x20, x19, [sp, #0x40]                        
0007a768 ldp       x22, x21, [sp, #0x30]                        
0007a76c ldp       d9, d8, [sp, #0x20]                          
0007a770 ldp       d11, d10, [sp, #0x10]                        
0007a774 ldp       d13, d12, [sp], #0x60                        
0007a778 retab                                                  
