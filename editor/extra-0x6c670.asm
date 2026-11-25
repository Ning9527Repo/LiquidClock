; arm64e unslid VA [0x6c670,0x6cab8)
0006c670 pacibsp                                                
0006c674 sub       sp, sp, #0x1a0                               
0006c678 stp       d15, d14, [sp, #0x120]                       
0006c67c stp       d13, d12, [sp, #0x130]                       
0006c680 stp       d11, d10, [sp, #0x140]                       
0006c684 stp       d9, d8, [sp, #0x150]                         
0006c688 stp       x24, x23, [sp, #0x160]                       
0006c68c stp       x22, x21, [sp, #0x170]                       
0006c690 stp       x20, x19, [sp, #0x180]                       
0006c694 stp       x29, x30, [sp, #0x190]                       
0006c698 add       x29, sp, #0x190                              
0006c69c mov       x19, x0                                      
0006c6a0 adrp      x8, #0xd4000                                 
0006c6a4 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0006c6a8 ldr       x8, [x8]                                      ; &___objc_personality_v0
0006c6ac stur      x8, [x29, #-0x78]                            
0006c6b0 bl        #0xa6020                                      ; objc_msgSend$closing
0006c6b4 tbnz      w0, #0, #0x6ca74                             
0006c6b8 mov       x0, x19                                      
0006c6bc bl        #0xa9000                                      ; objc_msgSend$isViewLoaded
0006c6c0 cbz       w0, #0x6ca74                                 
0006c6c4 movi      v0.2d, #0000000000000000                     
0006c6c8 stp       q0, q0, [sp, #0x70]                          
0006c6cc stp       q0, q0, [sp, #0x50]                          
0006c6d0 mov       x0, x19                                      
0006c6d4 bl        #0xa8220                                      ; objc_msgSend$hiddenViews
0006c6d8 mov       x29, x29                                     
0006c6dc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c6e0 mov       x21, x0                                      
0006c6e4 bl        #0xa9040                                      ; objc_msgSend$keyEnumerator
0006c6e8 mov       x29, x29                                     
0006c6ec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c6f0 mov       x20, x0                                      
0006c6f4 mov       x0, x21                                      
0006c6f8 bl        #0xa46f4                                      ; _objc_release
0006c6fc add       x2, sp, #0x50                                
0006c700 add       x3, sp, #0x98                                
0006c704 mov       x0, x20                                      
0006c708 mov       w4, #0x10                                    
0006c70c bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006c710 cbz       x0, #0x6c774                                 
0006c714 mov       x21, x0                                      
0006c718 ldr       x8, [sp, #0x60]                              
0006c71c ldr       x22, [x8]                                    
0006c720 mov       x23, #0                                      
0006c724 ldr       x8, [sp, #0x60]                              
0006c728 ldr       x8, [x8]                                     
0006c72c cmp       x8, x22                                      
0006c730 b.eq      #0x6c73c                                     
0006c734 mov       x0, x20                                      
0006c738 bl        #0xa4634                                      ; _objc_enumerationMutation
0006c73c ldr       x8, [sp, #0x58]                              
0006c740 ldr       x0, [x8, x23, lsl #3]                        
0006c744 mov       w2, #1                                       
0006c748 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
0006c74c add       x23, x23, #1                                 
0006c750 cmp       x21, x23                                     
0006c754 b.ne      #0x6c724                                     
0006c758 add       x2, sp, #0x50                                
0006c75c add       x3, sp, #0x98                                
0006c760 mov       x0, x20                                      
0006c764 mov       w4, #0x10                                    
0006c768 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006c76c mov       x21, x0                                      
0006c770 cbnz      x0, #0x6c720                                 
0006c774 mov       x0, x20                                      
0006c778 bl        #0xa46f4                                      ; _objc_release
0006c77c mov       x0, x19                                      
0006c780 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006c784 mov       x29, x29                                     
0006c788 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c78c mov       x21, x0                                      
0006c790 adrp      x8, #0xee000                                 
0006c794 ldr       x1, [x8, #0x860]                             
0006c798 bl        #0xa4654                                      ; _objc_getAssociatedObject
0006c79c mov       x29, x29                                     
0006c7a0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c7a4 mov       x20, x0                                      
0006c7a8 mov       x0, x21                                      
0006c7ac bl        #0xa46f4                                      ; _objc_release
0006c7b0 cbz       x20, #0x6ca6c                                
0006c7b4 mov       x0, x20                                      
0006c7b8 bl        #0xab460                                      ; objc_msgSend$renderedTop
0006c7bc fmov      d8, d0                                       
0006c7c0 mov       x0, x20                                      
0006c7c4 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006c7c8 fmov      d9, d2                                       
0006c7cc mov       x0, x20                                      
0006c7d0 bl        #0xab380                                      ; objc_msgSend$renderedHeight
0006c7d4 fmov      d10, d0                                      
0006c7d8 mov       x0, x19                                      
0006c7dc bl        #0xb1920                                      ; objc_msgSend$view
0006c7e0 mov       x29, x29                                     
0006c7e4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c7e8 mov       x21, x0                                      
0006c7ec movi      d0, #0000000000000000                        
0006c7f0 mov       x0, x20                                      
0006c7f4 fmov      d1, d8                                       
0006c7f8 fmov      d2, d9                                       
0006c7fc fmov      d3, d10                                      
0006c800 mov       x2, x21                                      
0006c804 bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
0006c808 fmov      d8, d0                                       
0006c80c fmov      d9, d1                                       
0006c810 fmov      d10, d2                                      
0006c814 fmov      d11, d3                                      
0006c818 mov       x0, x21                                      
0006c81c bl        #0xa46f4                                      ; _objc_release
0006c820 fmov      d4, #-8.00000000                             
0006c824 fmov      d5, #-8.00000000                             
0006c828 fmov      d0, d8                                       
0006c82c fmov      d1, d9                                       
0006c830 fmov      d2, d10                                      
0006c834 fmov      d3, d11                                      
0006c838 bl        #0xa3ee4                                      ; _CGRectInset
0006c83c adrp      x8, #0xec000                                 
0006c840 ldr       x0, [x8, #0x560]                              ; &_OBJC_CLASS_$_UIView
0006c844 add       x8, sp, #8                                   
0006c848 adrp      x16, #0xd4000                                
0006c84c ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006c850 mov       x17, x8                                      
0006c854 movk      x17, #0x6ae1, lsl #48                        
0006c858 pacda     x16, x17                                     
0006c85c str       x16, [sp, #8]                                
0006c860 adrp      x9, #0xbd000                                 
0006c864 ldr       d4, [x9, #0x268]                             
0006c868 str       d4, [sp, #0x10]                              
0006c86c add       x8, x8, #0x10                                 ; SEL _loadGesturesMenuItems
0006c870 adrp      x16, #0x6c000                                
0006c874 add       x16, x16, #0xab8                             
0006c878 pacia     x16, x8                                      
0006c87c adrp      x8, #0xd5000                                 
0006c880 add       x8, x8, #0x100                               
0006c884 stp       x16, x8, [sp, #0x18]                         
0006c888 str       x19, [sp, #0x28]                             
0006c88c stp       d0, d1, [sp, #0x30]                          
0006c890 stp       d2, d3, [sp, #0x40]                          
0006c894 add       x2, sp, #8                                   
0006c898 bl        #0xaa840                                      ; objc_msgSend$performWithoutAnimation:
0006c89c mov       x0, x19                                      
0006c8a0 bl        #0xb0220                                      ; objc_msgSend$state
0006c8a4 mov       x29, x29                                     
0006c8a8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c8ac mov       x21, x0                                      
0006c8b0 bl        #0xab5a0                                      ; objc_msgSend$resizing
0006c8b4 mov       x22, x0                                      
0006c8b8 mov       x0, x21                                      
0006c8bc bl        #0xa46f4                                      ; _objc_release
0006c8c0 tbnz      w22, #0, #0x6c9ec                            
0006c8c4 mov       x0, x19                                      
0006c8c8 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006c8cc mov       x29, x29                                     
0006c8d0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c8d4 mov       x21, x0                                      
0006c8d8 bl        #0xb1d40                                      ; objc_msgSend$window
0006c8dc mov       x29, x29                                     
0006c8e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c8e4 mov       x22, x0                                      
0006c8e8 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006c8ec adrp      x8, #0xbd000                                 
0006c8f0 ldr       d0, [x8, #0xdc0]                             
0006c8f4 fdiv      d13, d2, d0                                  
0006c8f8 mov       x0, x22                                      
0006c8fc bl        #0xa46f4                                      ; _objc_release
0006c900 mov       x0, x21                                      
0006c904 bl        #0xa46f4                                      ; _objc_release
0006c908 adrp      x8, #0xbd000                                 
0006c90c ldr       d0, [x8, #0xdd8]                             
0006c910 fmul      d14, d13, d0                                 
0006c914 mov       x0, x19                                      
0006c918 bl        #0xb1920                                      ; objc_msgSend$view
0006c91c mov       x29, x29                                     
0006c920 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c924 mov       x21, x0                                      
0006c928 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006c92c fmov      d12, d3                                      
0006c930 fmov      d0, d8                                       
0006c934 fmov      d1, d9                                       
0006c938 fmov      d2, d10                                      
0006c93c fmov      d3, d11                                      
0006c940 bl        #0xa3ec4                                      ; _CGRectGetMinY
0006c944 fsub      d0, d12, d0                                  
0006c948 mov       x8, #-0x3fa8000000000000                     
0006c94c fmov      d1, x8                                       
0006c950 fadd      d8, d0, d1                                   
0006c954 mov       x0, x21                                      
0006c958 bl        #0xa46f4                                      ; _objc_release
0006c95c fcmp      d14, d8                                      
0006c960 fcsel     d0, d14, d8, mi                              
0006c964 fmov      d1, #1.00000000                              
0006c968 fmaxnm    d8, d0, d1                                   
0006c96c mov       x0, x19                                      
0006c970 bl        #0xb0220                                      ; objc_msgSend$state
0006c974 mov       x29, x29                                     
0006c978 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c97c mov       x21, x0                                      
0006c980 fmov      d0, d8                                       
0006c984 bl        #0xadaa0                                      ; objc_msgSend$setMaximumHeight:
0006c988 mov       x0, x21                                      
0006c98c bl        #0xa46f4                                      ; _objc_release
0006c990 mov       x0, x19                                      
0006c994 bl        #0xb0220                                      ; objc_msgSend$state
0006c998 mov       x29, x29                                     
0006c99c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c9a0 mov       x21, x0                                      
0006c9a4 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
0006c9a8 fmov      d8, d0                                       
0006c9ac mov       x0, x21                                      
0006c9b0 bl        #0xa46f4                                      ; _objc_release
0006c9b4 adrp      x8, #0xbd000                                 
0006c9b8 ldr       d0, [x8, #0xdd0]                             
0006c9bc fmul      d0, d13, d0                                  
0006c9c0 fcmp      d8, d0                                       
0006c9c4 fcsel     d8, d8, d0, mi                               
0006c9c8 mov       x0, x19                                      
0006c9cc bl        #0xb0220                                      ; objc_msgSend$state
0006c9d0 mov       x29, x29                                     
0006c9d4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c9d8 mov       x21, x0                                      
0006c9dc fmov      d0, d8                                       
0006c9e0 bl        #0xadba0                                      ; objc_msgSend$setMinimumHeight:
0006c9e4 mov       x0, x21                                      
0006c9e8 bl        #0xa46f4                                      ; _objc_release
0006c9ec adrp      x8, #0xec000                                 
0006c9f0 ldr       x21, [x8, #0x518]                             ; &_OBJC_CLASS_$_NSString
0006c9f4 mov       x0, x19                                      
0006c9f8 bl        #0xb0220                                      ; objc_msgSend$state
0006c9fc mov       x29, x29                                     
0006ca00 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ca04 mov       x22, x0                                      
0006ca08 bl        #0xaade0                                      ; objc_msgSend$progress
0006ca0c mov       x8, #0x4059000000000000                      
0006ca10 fmov      d1, x8                                       
0006ca14 fmul      d0, d0, d1                                   
0006ca18 str       d0, [sp]                                     
0006ca1c adrp      x2, #0xdb000                                 
0006ca20 add       x2, x2, #0xf90                                ; @'%.0f percent'
0006ca24 mov       x0, x21                                      
0006ca28 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
0006ca2c mov       x29, x29                                     
0006ca30 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ca34 mov       x21, x0                                      
0006ca38 mov       x0, x19                                      
0006ca3c bl        #0xa7fa0                                      ; objc_msgSend$handle
0006ca40 mov       x29, x29                                     
0006ca44 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ca48 mov       x19, x0                                      
0006ca4c mov       x2, x21                                      
0006ca50 bl        #0xabb80                                      ; objc_msgSend$setAccessibilityValue:
0006ca54 mov       x0, x19                                      
0006ca58 bl        #0xa46f4                                      ; _objc_release
0006ca5c mov       x0, x21                                      
0006ca60 bl        #0xa46f4                                      ; _objc_release
0006ca64 mov       x0, x22                                      
0006ca68 bl        #0xa46f4                                      ; _objc_release
0006ca6c mov       x0, x20                                      
0006ca70 bl        #0xa46f4                                      ; _objc_release
0006ca74 ldur      x8, [x29, #-0x78]                            
0006ca78 adrp      x9, #0xd4000                                 
0006ca7c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006ca80 ldr       x9, [x9]                                      ; &___objc_personality_v0
0006ca84 cmp       x9, x8                                       
0006ca88 b.ne      #0x6cab4                                     
0006ca8c ldp       x29, x30, [sp, #0x190]                       
0006ca90 ldp       x20, x19, [sp, #0x180]                       
0006ca94 ldp       x22, x21, [sp, #0x170]                       
0006ca98 ldp       x24, x23, [sp, #0x160]                       
0006ca9c ldp       d9, d8, [sp, #0x150]                         
0006caa0 ldp       d11, d10, [sp, #0x140]                       
0006caa4 ldp       d13, d12, [sp, #0x130]                       
0006caa8 ldp       d15, d14, [sp, #0x120]                       
0006caac add       sp, sp, #0x1a0                               
0006cab0 retab                                                  
0006cab4 bl        #0xa41d4                                      ; ___stack_chk_fail
