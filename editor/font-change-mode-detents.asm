; font-change-mode-detents arm64e unslid VA [0x6a7e0,0x6adc8)
0006a7e0 pacibsp                                                
0006a7e4 stp       x22, x21, [sp, #-0x30]!                      
0006a7e8 stp       x20, x19, [sp, #0x10]                        
0006a7ec stp       x29, x30, [sp, #0x20]                        
0006a7f0 add       x29, sp, #0x20                               
0006a7f4 mov       x19, x0                                      
0006a7f8 mov       x0, x2                                       
0006a7fc bl        #0xaba00                                      ; objc_msgSend$selectedSegmentIndex
0006a800 cmp       x0, #1                                       
0006a804 cset      w20, eq                                      
0006a808 mov       x0, x19                                      
0006a80c bl        #0xb0220                                      ; objc_msgSend$state
0006a810 mov       x29, x29                                     
0006a814 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a818 mov       x21, x0                                      
0006a81c mov       x2, x20                                      
0006a820 bl        #0xadcc0                                      ; objc_msgSend$setModern:
0006a824 mov       x0, x21                                      
0006a828 bl        #0xa46f4                                      ; _objc_release
0006a82c mov       x0, x19                                      
0006a830 bl        #0xb0220                                      ; objc_msgSend$state
0006a834 mov       x29, x29                                     
0006a838 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a83c mov       x20, x0                                      
0006a840 bl        #0xb0060                                      ; objc_msgSend$stageProgress
0006a844 mov       x0, x20                                      
0006a848 bl        #0xa46f4                                      ; _objc_release
0006a84c mov       x0, x19                                      
0006a850 bl        #0xb0220                                      ; objc_msgSend$state
0006a854 mov       x29, x29                                     
0006a858 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a85c mov       x20, x0                                      
0006a860 bl        #0xaa860                                      ; objc_msgSend$persistProgress
0006a864 mov       x0, x20                                      
0006a868 bl        #0xa46f4                                      ; _objc_release
0006a86c mov       x0, x19                                      
0006a870 bl        #0xb0220                                      ; objc_msgSend$state
0006a874 mov       x29, x29                                     
0006a878 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a87c mov       x20, x0                                      
0006a880 bl        #0xa67e0                                      ; objc_msgSend$controller
0006a884 mov       x29, x29                                     
0006a888 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a88c mov       x21, x0                                      
0006a890 bl        #0x60224                                     
0006a894 mov       x0, x21                                      
0006a898 bl        #0xa46f4                                      ; _objc_release
0006a89c mov       x0, x20                                      
0006a8a0 bl        #0xa46f4                                      ; _objc_release
0006a8a4 bl        #0x60108                                     
0006a8a8 mov       x0, x19                                      
0006a8ac bl        #0xa9200                                      ; objc_msgSend$layout
0006a8b0 mov       x0, x19                                      
0006a8b4 ldp       x29, x30, [sp, #0x20]                        
0006a8b8 ldp       x20, x19, [sp, #0x10]                        
0006a8bc ldp       x22, x21, [sp], #0x30                        
0006a8c0 autibsp                                                
0006a8c4 eor       x16, x30, x30, lsl #1                        
0006a8c8 tbz       x16, #0x3e, #0x6a8d0                         
0006a8cc brk       #0xc471                                      
0006a8d0 b         #0xb1280                                      ; objc_msgSend$updateDetents
0006a8d4 pacibsp                                                
0006a8d8 stp       d9, d8, [sp, #-0x30]!                        
0006a8dc stp       x20, x19, [sp, #0x10]                        
0006a8e0 stp       x29, x30, [sp, #0x20]                        
0006a8e4 add       x29, sp, #0x20                               
0006a8e8 fmov      d8, d0                                       
0006a8ec mov       x19, x0                                      
0006a8f0 bl        #0xa9ea0                                      ; objc_msgSend$nativeFontController
0006a8f4 mov       x29, x29                                     
0006a8f8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a8fc mov       x20, x0                                      
0006a900 bl        #0xa75c0                                      ; objc_msgSend$estimatedHeight
0006a904 fmov      d9, d0                                       
0006a908 mov       x0, x20                                      
0006a90c bl        #0xa46f4                                      ; _objc_release
0006a910 mov       x8, #0x4046000000000000                      
0006a914 fmov      d0, x8                                       
0006a918 fadd      d8, d8, d0                                   
0006a91c mov       x0, x19                                      
0006a920 bl        #0xb0220                                      ; objc_msgSend$state
0006a924 mov       x29, x29                                     
0006a928 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a92c mov       x19, x0                                      
0006a930 bl        #0xa9d40                                      ; objc_msgSend$modern
0006a934 mov       x8, #0x406a000000000000                      
0006a938 fmov      d0, x8                                       
0006a93c fsub      d0, d0, d9                                   
0006a940 cmp       w0, #0                                       
0006a944 movi      d1, #0000000000000000                        
0006a948 fcsel     d0, d0, d1, ne                               
0006a94c fadd      d8, d8, d0                                   
0006a950 mov       x0, x19                                      
0006a954 bl        #0xa46f4                                      ; _objc_release
0006a958 fmov      d0, d8                                       
0006a95c ldp       x29, x30, [sp, #0x20]                        
0006a960 ldp       x20, x19, [sp, #0x10]                        
0006a964 ldp       d9, d8, [sp], #0x30                          
0006a968 retab                                                  
0006a96c pacibsp                                                
0006a970 sub       sp, sp, #0xc0                                
0006a974 stp       d9, d8, [sp, #0x70]                          
0006a978 stp       x24, x23, [sp, #0x80]                        
0006a97c stp       x22, x21, [sp, #0x90]                        
0006a980 stp       x20, x19, [sp, #0xa0]                        
0006a984 stp       x29, x30, [sp, #0xb0]                        
0006a988 add       x29, sp, #0xb0                               
0006a98c mov       x20, x0                                      
0006a990 mov       w0, #2                                       
0006a994 mov       w1, #0x10                                    
0006a998 mov       w2, #0                                       
0006a99c mov       w3, #0                                       
0006a9a0 bl        #0xa30c0                                     
0006a9a4 cbz       w0, #0x6aba8                                 
0006a9a8 mov       x0, x20                                      
0006a9ac bl        #0xaa8a0                                      ; objc_msgSend$picker
0006a9b0 mov       x29, x29                                     
0006a9b4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a9b8 mov       x21, x0                                      
0006a9bc bl        #0xa9ee0                                      ; objc_msgSend$navigationController
0006a9c0 mov       x29, x29                                     
0006a9c4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a9c8 mov       x22, x0                                      
0006a9cc bl        #0xafd80                                      ; objc_msgSend$sheetPresentationController
0006a9d0 mov       x29, x29                                     
0006a9d4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a9d8 mov       x19, x0                                      
0006a9dc mov       x0, x22                                      
0006a9e0 bl        #0xa46f4                                      ; _objc_release
0006a9e4 mov       x0, x21                                      
0006a9e8 bl        #0xa46f4                                      ; _objc_release
0006a9ec mov       x0, x20                                      
0006a9f0 bl        #0xaa8a0                                      ; objc_msgSend$picker
0006a9f4 mov       x29, x29                                     
0006a9f8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a9fc mov       x20, x0                                      
0006aa00 sub       x0, x29, #0x48                               
0006aa04 mov       x1, x20                                      
0006aa08 bl        #0xa4674                                      ; _objc_initWeak
0006aa0c mov       x0, x20                                      
0006aa10 bl        #0xa46f4                                      ; _objc_release
0006aa14 mov       x0, x19                                      
0006aa18 bl        #0xa6ea0                                      ; objc_msgSend$detents
0006aa1c mov       x29, x29                                     
0006aa20 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006aa24 mov       x21, x0                                      
0006aa28 bl        #0xa78a0                                      ; objc_msgSend$firstObject
0006aa2c mov       x29, x29                                     
0006aa30 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006aa34 mov       x22, x0                                      
0006aa38 bl        #0xa83c0                                      ; objc_msgSend$identifier
0006aa3c mov       x29, x29                                     
0006aa40 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006aa44 mov       x23, x0                                      
0006aa48 adrp      x8, #0xdb000                                 
0006aa4c add       x8, x8, #0xe70                                ; @'LGClockFontPicker'
0006aa50 cmp       x0, #0                                       
0006aa54 csel      x0, x8, x0, eq                               
0006aa58 bl        #0xa4704                                      ; _objc_retain
0006aa5c mov       x20, x0                                      
0006aa60 mov       x0, x23                                      
0006aa64 bl        #0xa46f4                                      ; _objc_release
0006aa68 mov       x0, x22                                      
0006aa6c bl        #0xa46f4                                      ; _objc_release
0006aa70 mov       x0, x21                                      
0006aa74 bl        #0xa46f4                                      ; _objc_release
0006aa78 adrp      x8, #0xec000                                 
0006aa7c ldr       x21, [x8, #0x7e8]                             ; &_OBJC_CLASS_$_UISheetPresentationControllerDetent
0006aa80 add       x23, sp, #0x40                               
0006aa84 adrp      x16, #0xd4000                                
0006aa88 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006aa8c mov       x17, x23                                     
0006aa90 movk      x17, #0x6ae1, lsl #48                        
0006aa94 pacda     x16, x17                                     
0006aa98 str       x16, [sp, #0x40]                             
0006aa9c adrp      x8, #0xbd000                                 
0006aaa0 ldr       d8, [x8, #0x268]                             
0006aaa4 str       d8, [sp, #0x48]                              
0006aaa8 add       x8, x23, #0x10                               
0006aaac adrp      x16, #0x6a000                                
0006aab0 add       x16, x16, #0xbf8                             
0006aab4 pacia     x16, x8                                      
0006aab8 adrp      x8, #0xd5000                                 
0006aabc add       x8, x8, #0xbc8                               
0006aac0 stp       x16, x8, [sp, #0x50]                         
0006aac4 add       x0, x23, #0x20                               
0006aac8 sub       x1, x29, #0x48                               
0006aacc bl        #0xa4604                                      ; _objc_copyWeak
0006aad0 add       x3, sp, #0x40                                
0006aad4 mov       x0, x21                                      
0006aad8 mov       x2, x20                                      
0006aadc bl        #0xa6bc0                                      ; objc_msgSend$customDetentWithIdentifier:resolver:
0006aae0 mov       x29, x29                                     
0006aae4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006aae8 mov       x21, x0                                      
0006aaec adrp      x8, #0xec000                                 
0006aaf0 ldr       x22, [x8, #0x560]                             ; &_OBJC_CLASS_$_UIView
0006aaf4 add       x24, sp, #8                                  
0006aaf8 adrp      x16, #0xd4000                                
0006aafc ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006ab00 mov       x17, x24                                     
0006ab04 movk      x17, #0x6ae1, lsl #48                        
0006ab08 pacda     x16, x17                                     
0006ab0c str       x16, [sp, #8]                                
0006ab10 str       d8, [sp, #0x10]                              
0006ab14 add       x8, x24, #0x10                               
0006ab18 adrp      x16, #0x6a000                                
0006ab1c add       x16, x16, #0xc50                             
0006ab20 pacia     x16, x8                                      
0006ab24 adrp      x8, #0xd5000                                 
0006ab28 add       x8, x8, #0xbf8                               
0006ab2c stp       x16, x8, [sp, #0x18]                         
0006ab30 mov       x0, x19                                      
0006ab34 bl        #0xa4704                                      ; _objc_retain
0006ab38 mov       x19, x0                                      
0006ab3c str       x0, [sp, #0x28]                              
0006ab40 mov       x0, x21                                      
0006ab44 bl        #0xa4704                                      ; _objc_retain
0006ab48 mov       x21, x0                                      
0006ab4c str       x0, [sp, #0x30]                              
0006ab50 add       x0, x24, #0x30                               
0006ab54 sub       x1, x29, #0x48                               
0006ab58 bl        #0xa4604                                      ; _objc_copyWeak
0006ab5c add       x2, sp, #8                                   
0006ab60 mov       x0, x22                                      
0006ab64 bl        #0xaa840                                      ; objc_msgSend$performWithoutAnimation:
0006ab68 add       x0, x24, #0x30                               
0006ab6c bl        #0xa4614                                      ; _objc_destroyWeak
0006ab70 ldr       x0, [sp, #0x30]                              
0006ab74 bl        #0xa46f4                                      ; _objc_release
0006ab78 ldr       x0, [sp, #0x28]                              
0006ab7c bl        #0xa46f4                                      ; _objc_release
0006ab80 mov       x0, x21                                      
0006ab84 bl        #0xa46f4                                      ; _objc_release
0006ab88 add       x0, x23, #0x20                               
0006ab8c bl        #0xa4614                                      ; _objc_destroyWeak
0006ab90 mov       x0, x20                                      
0006ab94 bl        #0xa46f4                                      ; _objc_release
0006ab98 sub       x0, x29, #0x48                               
0006ab9c bl        #0xa4614                                      ; _objc_destroyWeak
0006aba0 mov       x0, x19                                      
0006aba4 bl        #0xa46f4                                      ; _objc_release
0006aba8 ldp       x29, x30, [sp, #0xb0]                        
0006abac ldp       x20, x19, [sp, #0xa0]                        
0006abb0 ldp       x22, x21, [sp, #0x90]                        
0006abb4 ldp       x24, x23, [sp, #0x80]                        
0006abb8 ldp       d9, d8, [sp, #0x70]                          
0006abbc add       sp, sp, #0xc0                                
0006abc0 retab                                                  
0006abc4 mov       x19, x0                                      
0006abc8 add       x0, x24, #0x30                               
0006abcc bl        #0xa4614                                      ; _objc_destroyWeak
0006abd0 b         #0x6abd8                                     
0006abd4 mov       x19, x0                                      
0006abd8 add       x0, x23, #0x20                               
0006abdc bl        #0xa4614                                      ; _objc_destroyWeak
0006abe0 b         #0x6abe8                                     
0006abe4 mov       x19, x0                                      
0006abe8 sub       x0, x29, #0x48                               
0006abec bl        #0xa4614                                      ; _objc_destroyWeak
0006abf0 mov       x0, x19                                      
0006abf4 bl        #0xa4194                                      ; __Unwind_Resume
0006abf8 pacibsp                                                
0006abfc stp       d9, d8, [sp, #-0x30]!                        
0006ac00 stp       x20, x19, [sp, #0x10]                        
0006ac04 stp       x29, x30, [sp, #0x20]                        
0006ac08 add       x29, sp, #0x20                               
0006ac0c mov       x19, x0                                      
0006ac10 mov       x0, x1                                       
0006ac14 bl        #0xa9b00                                      ; objc_msgSend$maximumDetentValue
0006ac18 fmov      d8, d0                                       
0006ac1c add       x0, x19, #0x20                               
0006ac20 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006ac24 mov       x19, x0                                      
0006ac28 bl        #0xa6e20                                      ; objc_msgSend$desiredDetent
0006ac2c fmov      d9, d0                                       
0006ac30 mov       x0, x19                                      
0006ac34 bl        #0xa46f4                                      ; _objc_release
0006ac38 fcmp      d8, d9                                       
0006ac3c fcsel     d0, d8, d9, mi                               
0006ac40 ldp       x29, x30, [sp, #0x20]                        
0006ac44 ldp       x20, x19, [sp, #0x10]                        
0006ac48 ldp       d9, d8, [sp], #0x30                          
0006ac4c retab                                                  
0006ac50 pacibsp                                                
0006ac54 sub       sp, sp, #0x40                                
0006ac58 stp       x22, x21, [sp, #0x10]                        
0006ac5c stp       x20, x19, [sp, #0x20]                        
0006ac60 stp       x29, x30, [sp, #0x30]                        
0006ac64 add       x29, sp, #0x30                               
0006ac68 mov       x19, x0                                      
0006ac6c adrp      x8, #0xd4000                                 
0006ac70 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0006ac74 ldr       x8, [x8]                                      ; &___objc_personality_v0
0006ac78 str       x8, [sp, #8]                                 
0006ac7c ldr       x8, [x0, #0x28]                              
0006ac80 str       x8, [sp]                                     
0006ac84 adrp      x8, #0xec000                                 
0006ac88 ldr       x0, [x8, #0x5c8]                              ; &_OBJC_CLASS_$_NSArray
0006ac8c mov       x2, sp                                       
0006ac90 mov       w3, #1                                       
0006ac94 bl        #0xa55a0                                      ; objc_msgSend$arrayWithObjects:count:
0006ac98 mov       x29, x29                                     
0006ac9c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006aca0 mov       x20, x0                                      
0006aca4 ldr       x0, [x19, #0x20]                             
0006aca8 mov       x2, x20                                      
0006acac bl        #0xac8a0                                      ; objc_msgSend$setDetents:
0006acb0 mov       x0, x20                                      
0006acb4 bl        #0xa46f4                                      ; _objc_release
0006acb8 ldr       x0, [x19, #0x20]                             
0006acbc bl        #0xa8b00                                      ; objc_msgSend$invalidateDetents
0006acc0 add       x0, x19, #0x30                               
0006acc4 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006acc8 mov       x19, x0                                      
0006accc bl        #0xb1920                                      ; objc_msgSend$view
0006acd0 mov       x29, x29                                     
0006acd4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006acd8 mov       x20, x0                                      
0006acdc bl        #0xb1d40                                      ; objc_msgSend$window
0006ace0 mov       x29, x29                                     
0006ace4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ace8 mov       x21, x0                                      
0006acec bl        #0xa9280                                      ; objc_msgSend$layoutIfNeeded
0006acf0 mov       x0, x21                                      
0006acf4 bl        #0xa46f4                                      ; _objc_release
0006acf8 mov       x0, x20                                      
0006acfc bl        #0xa46f4                                      ; _objc_release
0006ad00 mov       x0, x19                                      
0006ad04 bl        #0xa46f4                                      ; _objc_release
0006ad08 ldr       x8, [sp, #8]                                 
0006ad0c adrp      x9, #0xd4000                                 
0006ad10 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006ad14 ldr       x9, [x9]                                      ; &___objc_personality_v0
0006ad18 cmp       x9, x8                                       
0006ad1c b.ne      #0x6ad34                                     
0006ad20 ldp       x29, x30, [sp, #0x30]                        
0006ad24 ldp       x20, x19, [sp, #0x20]                        
0006ad28 ldp       x22, x21, [sp, #0x10]                        
0006ad2c add       sp, sp, #0x40                                
0006ad30 retab                                                  
0006ad34 bl        #0xa41d4                                      ; ___stack_chk_fail
0006ad38 pacibsp                                                
0006ad3c stp       x20, x19, [sp, #-0x20]!                      
0006ad40 stp       x29, x30, [sp, #0x10]                        
0006ad44 add       x29, sp, #0x10                               
0006ad48 mov       x19, x1                                      
0006ad4c mov       x20, x0                                      
0006ad50 ldr       x0, [x1, #0x20]                              
0006ad54 bl        #0xa4704                                      ; _objc_retain
0006ad58 ldr       x0, [x19, #0x28]                             
0006ad5c bl        #0xa4704                                      ; _objc_retain
0006ad60 add       x0, x20, #0x30                               
0006ad64 add       x1, x19, #0x30                               
0006ad68 ldp       x29, x30, [sp, #0x10]                        
0006ad6c ldp       x20, x19, [sp], #0x20                        
0006ad70 autibsp                                                
0006ad74 eor       x16, x30, x30, lsl #1                        
0006ad78 tbz       x16, #0x3e, #0x6ad80                         
0006ad7c brk       #0xc471                                      
0006ad80 b         #0xa4604                                      ; _objc_copyWeak
0006ad84 pacibsp                                                
0006ad88 stp       x20, x19, [sp, #-0x20]!                      
0006ad8c stp       x29, x30, [sp, #0x10]                        
0006ad90 add       x29, sp, #0x10                               
0006ad94 mov       x19, x0                                      
0006ad98 add       x0, x0, #0x30                                
0006ad9c bl        #0xa4614                                      ; _objc_destroyWeak
0006ada0 ldr       x0, [x19, #0x28]                             
0006ada4 bl        #0xa46f4                                      ; _objc_release
0006ada8 ldr       x0, [x19, #0x20]                             
0006adac ldp       x29, x30, [sp, #0x10]                        
0006adb0 ldp       x20, x19, [sp], #0x20                        
0006adb4 autibsp                                                
0006adb8 eor       x16, x30, x30, lsl #1                        
0006adbc tbz       x16, #0x3e, #0x6adc4                         
0006adc0 brk       #0xc471                                      
0006adc4 b         #0xa46f4                                      ; _objc_release
