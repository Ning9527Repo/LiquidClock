; lite-load arm64e unslid VA [0x6b694,0x6c550)
0006b694 pacibsp                                                
0006b698 stp       d13, d12, [sp, #-0x90]!                      
0006b69c stp       d11, d10, [sp, #0x10]                        
0006b6a0 stp       d9, d8, [sp, #0x20]                          
0006b6a4 stp       x28, x27, [sp, #0x30]                        
0006b6a8 stp       x26, x25, [sp, #0x40]                        
0006b6ac stp       x24, x23, [sp, #0x50]                        
0006b6b0 stp       x22, x21, [sp, #0x60]                        
0006b6b4 stp       x20, x19, [sp, #0x70]                        
0006b6b8 stp       x29, x30, [sp, #0x80]                        
0006b6bc add       x29, sp, #0x80                               
0006b6c0 sub       sp, sp, #0x190                               
0006b6c4 adrp      x8, #0xd4000                                 
0006b6c8 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0006b6cc ldr       x8, [x8]                                      ; &___objc_personality_v0
0006b6d0 stur      x8, [x29, #-0x90]                            
0006b6d4 adrp      x8, #0xec000                                 
0006b6d8 ldr       x8, [x8, #0x9c0]                              ; &LGClockLiteEditorController
0006b6dc str       x0, [sp, #0x28]                              
0006b6e0 stp       x0, x8, [sp, #0xf0]                          
0006b6e4 adrp      x8, #0xec000                                 
0006b6e8 ldr       x1, [x8, #0xe0]                               ; SEL viewDidLoad
0006b6ec add       x0, sp, #0xf0                                
0006b6f0 bl        #0xa46a4                                      ; _objc_msgSendSuper2
0006b6f4 adrp      x8, #0xec000                                 
0006b6f8 ldr       x0, [x8, #0x4e0]                              ; &_OBJC_CLASS_$_UIColor
0006b6fc bl        #0xa5f40                                      ; objc_msgSend$clearColor
0006b700 mov       x29, x29                                     
0006b704 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b708 mov       x20, x0                                      
0006b70c ldr       x0, [sp, #0x28]                              
0006b710 bl        #0xb1920                                      ; objc_msgSend$view
0006b714 mov       x29, x29                                     
0006b718 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b71c mov       x21, x0                                      
0006b720 mov       x2, x20                                      
0006b724 bl        #0xabec0                                      ; objc_msgSend$setBackgroundColor:
0006b728 mov       x0, x21                                      
0006b72c bl        #0xa46f4                                      ; _objc_release
0006b730 mov       x0, x20                                      
0006b734 bl        #0xa46f4                                      ; _objc_release
0006b738 adrp      x19, #0xec000                                
0006b73c ldr       x0, [x19, #0x6b8]                             ; &_OBJC_CLASS_$_NSMapTable
0006b740 bl        #0xb1a20                                      ; objc_msgSend$weakToStrongObjectsMapTable
0006b744 mov       x29, x29                                     
0006b748 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b74c mov       x20, x0                                      
0006b750 ldr       x0, [sp, #0x28]                              
0006b754 mov       x2, x20                                      
0006b758 bl        #0xad200                                      ; objc_msgSend$setHiddenViews:
0006b75c mov       x0, x20                                      
0006b760 bl        #0xa46f4                                      ; _objc_release
0006b764 ldr       x0, [x19, #0x6b8]                             ; &_OBJC_CLASS_$_NSMapTable
0006b768 bl        #0xb1a20                                      ; objc_msgSend$weakToStrongObjectsMapTable
0006b76c mov       x29, x29                                     
0006b770 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b774 mov       x20, x0                                      
0006b778 ldr       x0, [sp, #0x28]                              
0006b77c mov       x2, x20                                      
0006b780 bl        #0xacfc0                                      ; objc_msgSend$setGestures:
0006b784 mov       x0, x20                                      
0006b788 bl        #0xa46f4                                      ; _objc_release
0006b78c adrp      x22, #0xef000                                
0006b790 ldr       x2, [x22, #0x760]                             ; x2 memory 0xef760
0006b794 ldr       x0, [sp, #0x28]                              
0006b798 bl        #0xae5c0                                      ; objc_msgSend$setPreviousStyle:
0006b79c adrp      x19, #0xef000                                
0006b7a0 ldr       x2, [x19, #0x758]                             ; x2 memory 0xef758
0006b7a4 ldr       x0, [sp, #0x28]                              
0006b7a8 bl        #0xae5a0                                      ; objc_msgSend$setPreviousProgress:
0006b7ac adrp      x8, #0xec000                                 
0006b7b0 ldr       x0, [x8, #0x800]                              ; &LGClockLiteState
0006b7b4 bl        #0xa46d4                                      ; _objc_opt_new
0006b7b8 mov       x20, x0                                      
0006b7bc ldr       x0, [sp, #0x28]                              
0006b7c0 mov       x2, x20                                      
0006b7c4 bl        #0xaefc0                                      ; objc_msgSend$setState:
0006b7c8 mov       x0, x20                                      
0006b7cc bl        #0xa46f4                                      ; _objc_release
0006b7d0 ldr       x0, [sp, #0x28]                              
0006b7d4 bl        #0xb0220                                      ; objc_msgSend$state
0006b7d8 mov       x29, x29                                     
0006b7dc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b7e0 mov       x20, x0                                      
0006b7e4 mov       w2, #1                                       
0006b7e8 bl        #0xadcc0                                      ; objc_msgSend$setModern:
0006b7ec mov       x0, x20                                      
0006b7f0 bl        #0xa46f4                                      ; _objc_release
0006b7f4 ldr       x0, [sp, #0x28]                              
0006b7f8 bl        #0xb0220                                      ; objc_msgSend$state
0006b7fc mov       x29, x29                                     
0006b800 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b804 mov       x20, x0                                      
0006b808 ldr       x2, [sp, #0x28]                              
0006b80c bl        #0xac620                                      ; objc_msgSend$setController:
0006b810 mov       x0, x20                                      
0006b814 bl        #0xa46f4                                      ; _objc_release
0006b818 ldr       x0, [x19, #0x758]                            
0006b81c cbz       x0, #0x6b82c                                 
0006b820 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0006b824 fmov      d8, d0                                       
0006b828 b         #0x6b830                                     
0006b82c fmov      d8, #1.00000000                              
0006b830 ldr       x0, [sp, #0x28]                              
0006b834 bl        #0xb0220                                      ; objc_msgSend$state
0006b838 mov       x29, x29                                     
0006b83c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b840 mov       x20, x0                                      
0006b844 fmov      d0, d8                                       
0006b848 bl        #0xae640                                      ; objc_msgSend$setProgress:
0006b84c mov       x0, x20                                      
0006b850 bl        #0xa46f4                                      ; _objc_release
0006b854 ldr       x21, [x22, #0x760]                           
0006b858 cbz       x21, #0x6b884                                
0006b85c adrp      x2, #0xdb000                                 
0006b860 add       x2, x2, #0xc50                                ; @'weight'
0006b864 mov       x0, x21                                      
0006b868 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
0006b86c mov       x29, x29                                     
0006b870 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b874 mov       x20, x0                                      
0006b878 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0006b87c fmov      d8, d0                                       
0006b880 b         #0x6b88c                                     
0006b884 adrp      x8, #0xbd000                                 
0006b888 ldr       d8, [x8, #0xde8]                             
0006b88c cmp       x21, #0                                      
0006b890 cset      w19, eq                                      
0006b894 ldr       x0, [sp, #0x28]                              
0006b898 bl        #0xb0220                                      ; objc_msgSend$state
0006b89c mov       x29, x29                                     
0006b8a0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b8a4 mov       x21, x0                                      
0006b8a8 fmov      d0, d8                                       
0006b8ac bl        #0xafa20                                      ; objc_msgSend$setWeight:
0006b8b0 mov       x0, x21                                      
0006b8b4 bl        #0xa46f4                                      ; _objc_release
0006b8b8 tbnz      w19, #0, #0x6b8c4                            
0006b8bc mov       x0, x20                                      
0006b8c0 bl        #0xa46f4                                      ; _objc_release
0006b8c4 ldr       x21, [x22, #0x760]                           
0006b8c8 cbz       x21, #0x6b8f4                                
0006b8cc adrp      x2, #0xdb000                                 
0006b8d0 add       x2, x2, #0xc70                                ; @'softness'
0006b8d4 mov       x0, x21                                      
0006b8d8 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
0006b8dc mov       x29, x29                                     
0006b8e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b8e4 mov       x20, x0                                      
0006b8e8 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0006b8ec fmov      d8, d0                                       
0006b8f0 b         #0x6b8fc                                     
0006b8f4 mov       x8, #0x404e000000000000                      
0006b8f8 fmov      d8, x8                                       
0006b8fc cmp       x21, #0                                      
0006b900 cset      w19, eq                                      
0006b904 ldr       x0, [sp, #0x28]                              
0006b908 bl        #0xb0220                                      ; objc_msgSend$state
0006b90c mov       x29, x29                                     
0006b910 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b914 mov       x21, x0                                      
0006b918 fmov      d0, d8                                       
0006b91c bl        #0xaed80                                      ; objc_msgSend$setSoftness:
0006b920 mov       x0, x21                                      
0006b924 bl        #0xa46f4                                      ; _objc_release
0006b928 tbnz      w19, #0, #0x6b934                            
0006b92c mov       x0, x20                                      
0006b930 bl        #0xa46f4                                      ; _objc_release
0006b934 ldr       x0, [sp, #0x28]                              
0006b938 bl        #0xb0220                                      ; objc_msgSend$state
0006b93c mov       x29, x29                                     
0006b940 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b944 adrp      x9, #0xef000                                 
0006b948 ldr       x8, [x9, #0x768]                             
0006b94c str       x0, [x9, #0x768]                             
0006b950 mov       x0, x8                                       
0006b954 bl        #0xa46f4                                      ; _objc_release
0006b958 adrp      x0, #0xef000                                 
0006b95c add       x0, x0, #0x770                               
0006b960 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006b964 mov       x20, x0                                      
0006b968 bl        #0xa9f80                                      ; objc_msgSend$notificationListScrollView
0006b96c mov       x29, x29                                     
0006b970 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b974 str       x0, [sp]                                     
0006b978 mov       x0, x20                                      
0006b97c bl        #0xa46f4                                      ; _objc_release
0006b980 ldr       x0, [sp]                                     
0006b984 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006b988 fmov      d8, d1                                       
0006b98c ldr       x0, [sp]                                     
0006b990 bl        #0xa6580                                      ; objc_msgSend$contentInset
0006b994 fadd      d0, d8, d0                                   
0006b998 ldr       x0, [sp, #0x28]                              
0006b99c bl        #0xaeb00                                      ; objc_msgSend$setScrollTravel:
0006b9a0 ldr       x0, [sp]                                     
0006b9a4 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006b9a8 fmov      d8, d0                                       
0006b9ac ldr       x0, [sp]                                     
0006b9b0 bl        #0xa6580                                      ; objc_msgSend$contentInset
0006b9b4 fneg      d1, d0                                       
0006b9b8 ldr       x0, [sp]                                     
0006b9bc fmov      d0, d8                                       
0006b9c0 mov       w2, #0                                       
0006b9c4 bl        #0xac4a0                                      ; objc_msgSend$setContentOffset:animated:
0006b9c8 adrp      x0, #0xef000                                 
0006b9cc add       x0, x0, #0x770                               
0006b9d0 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006b9d4 mov       x20, x0                                      
0006b9d8 bl        #0xb1960                                      ; objc_msgSend$viewIfLoaded
0006b9dc mov       x29, x29                                     
0006b9e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006b9e4 mov       x21, x0                                      
0006b9e8 ldr       x0, [sp, #0x28]                              
0006b9ec mov       x2, x21                                      
0006b9f0 bl        #0xa82a0                                      ; objc_msgSend$hideView:
0006b9f4 mov       x0, x21                                      
0006b9f8 bl        #0xa46f4                                      ; _objc_release
0006b9fc mov       x0, x20                                      
0006ba00 bl        #0xa46f4                                      ; _objc_release
0006ba04 adrp      x8, #0xec000                                 
0006ba08 ldr       x21, [x8, #0x520]                             ; &_OBJC_CLASS_$_NSMutableArray
0006ba0c ldr       x0, [sp, #0x28]                              
0006ba10 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006ba14 mov       x29, x29                                     
0006ba18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ba1c mov       x20, x0                                      
0006ba20 bl        #0xb1d40                                      ; objc_msgSend$window
0006ba24 mov       x29, x29                                     
0006ba28 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ba2c mov       x22, x0                                      
0006ba30 mov       x0, x21                                      
0006ba34 mov       x2, x22                                      
0006ba38 bl        #0xa5580                                      ; objc_msgSend$arrayWithObject:
0006ba3c mov       x29, x29                                     
0006ba40 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ba44 str       x0, [sp, #0x18]                              
0006ba48 mov       x0, x22                                      
0006ba4c bl        #0xa46f4                                      ; _objc_release
0006ba50 mov       x0, x20                                      
0006ba54 bl        #0xa46f4                                      ; _objc_release
0006ba58 ldr       x0, [sp, #0x18]                              
0006ba5c bl        #0xa6a00                                      ; objc_msgSend$count
0006ba60 adrp      x21, #0xec000                                
0006ba64 cbz       x0, #0x6bc54                                 
0006ba68 mov       w8, #0x4b0                                   
0006ba6c adrp      x25, #0xec000                                
0006ba70 adrp      x22, #0xec000                                
0006ba74 cbz       x8, #0x6bc54                                 
0006ba78 str       x8, [sp, #8]                                 
0006ba7c ldr       x0, [sp, #0x18]                              
0006ba80 bl        #0xa9100                                      ; objc_msgSend$lastObject
0006ba84 mov       x29, x29                                     
0006ba88 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ba8c str       x0, [sp, #0x20]                              
0006ba90 ldr       x0, [sp, #0x18]                              
0006ba94 bl        #0xab240                                      ; objc_msgSend$removeLastObject
0006ba98 ldr       x0, [sp, #0x20]                              
0006ba9c bl        #0xa46b4                                      ; _objc_opt_class
0006baa0 bl        #0xa40e4                                      ; _NSStringFromClass
0006baa4 mov       x29, x29                                     
0006baa8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006baac str       x0, [sp, #0x10]                              
0006bab0 ldr       x0, [sp, #0x10]                              
0006bab4 adrp      x2, #0xdb000                                 
0006bab8 add       x2, x2, #0xed0                                ; @'SBUICallToActionLabel'
0006babc bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
0006bac0 tbnz      w0, #0, #0x6bad8                             
0006bac4 ldr       x0, [sp, #0x10]                              
0006bac8 adrp      x2, #0xdb000                                 
0006bacc add       x2, x2, #0xef0                                ; @'CSQuickActionsView'
0006bad0 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
0006bad4 cbz       w0, #0x6bae0                                 
0006bad8 ldp       x2, x0, [sp, #0x20]                          
0006badc bl        #0xa82a0                                      ; objc_msgSend$hideView:
0006bae0 movi      v0.2d, #0000000000000000                     
0006bae4 stp       q0, q0, [sp, #0xd0]                          
0006bae8 stp       q0, q0, [sp, #0xb0]                          
0006baec ldr       x0, [sp, #0x20]                              
0006baf0 bl        #0xa7c80                                      ; objc_msgSend$gestureRecognizers
0006baf4 mov       x29, x29                                     
0006baf8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bafc mov       x26, x0                                      
0006bb00 add       x2, sp, #0xb0                                
0006bb04 add       x3, sp, #0x100                               
0006bb08 mov       w4, #0x10                                    
0006bb0c bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006bb10 mov       x27, x0                                      
0006bb14 cbz       x0, #0x6bc00                                 
0006bb18 ldr       x8, [sp, #0xc0]                              
0006bb1c ldr       x24, [x8]                                    
0006bb20 mov       x19, #0                                      
0006bb24 ldr       x8, [sp, #0xc0]                              
0006bb28 ldr       x8, [x8]                                     
0006bb2c cmp       x8, x24                                      
0006bb30 b.eq      #0x6bb3c                                     
0006bb34 mov       x0, x26                                      
0006bb38 bl        #0xa4634                                      ; _objc_enumerationMutation
0006bb3c ldr       x8, [sp, #0xb8]                              
0006bb40 ldr       x28, [x8, x19, lsl #3]                       
0006bb44 ldr       x0, [x21, #0x7c8]                             ; &_OBJC_CLASS_$_UIPanGestureRecognizer
0006bb48 bl        #0xa46b4                                      ; _objc_opt_class
0006bb4c mov       x1, x0                                       
0006bb50 mov       x0, x28                                      
0006bb54 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0006bb58 tbnz      w0, #0, #0x6bb74                             
0006bb5c ldr       x0, [x22, #0x808]                             ; &_OBJC_CLASS_$_UISwipeGestureRecognizer
0006bb60 bl        #0xa46b4                                      ; _objc_opt_class
0006bb64 mov       x1, x0                                       
0006bb68 mov       x0, x28                                      
0006bb6c bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0006bb70 tbz       w0, #0, #0x6bbd8                             
0006bb74 ldr       x0, [sp, #0x28]                              
0006bb78 bl        #0xa7d00                                      ; objc_msgSend$gestures
0006bb7c mov       x29, x29                                     
0006bb80 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bb84 mov       x20, x0                                      
0006bb88 ldr       x23, [x25, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
0006bb8c mov       x0, x28                                      
0006bb90 bl        #0xa8c80                                      ; objc_msgSend$isEnabled
0006bb94 mov       x2, x0                                       
0006bb98 mov       x0, x23                                      
0006bb9c bl        #0xaa0e0                                      ; objc_msgSend$numberWithBool:
0006bba0 mov       x29, x29                                     
0006bba4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bba8 mov       x23, x0                                      
0006bbac mov       x0, x20                                      
0006bbb0 mov       x2, x23                                      
0006bbb4 mov       x3, x28                                      
0006bbb8 bl        #0xadea0                                      ; objc_msgSend$setObject:forKey:
0006bbbc mov       x0, x23                                      
0006bbc0 bl        #0xa46f4                                      ; _objc_release
0006bbc4 mov       x0, x20                                      
0006bbc8 bl        #0xa46f4                                      ; _objc_release
0006bbcc mov       x0, x28                                      
0006bbd0 mov       w2, #0                                       
0006bbd4 bl        #0xacb40                                      ; objc_msgSend$setEnabled:
0006bbd8 add       x19, x19, #1                                 
0006bbdc cmp       x27, x19                                     
0006bbe0 b.ne      #0x6bb24                                     
0006bbe4 add       x2, sp, #0xb0                                
0006bbe8 add       x3, sp, #0x100                               
0006bbec mov       x0, x26                                      
0006bbf0 mov       w4, #0x10                                    
0006bbf4 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0006bbf8 mov       x27, x0                                      
0006bbfc cbnz      x0, #0x6bb20                                 
0006bc00 mov       x0, x26                                      
0006bc04 bl        #0xa46f4                                      ; _objc_release
0006bc08 ldr       x0, [sp, #0x20]                              
0006bc0c bl        #0xb0720                                      ; objc_msgSend$subviews
0006bc10 mov       x29, x29                                     
0006bc14 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bc18 mov       x20, x0                                      
0006bc1c ldr       x0, [sp, #0x18]                              
0006bc20 mov       x2, x20                                      
0006bc24 bl        #0xa4f00                                      ; objc_msgSend$addObjectsFromArray:
0006bc28 mov       x0, x20                                      
0006bc2c bl        #0xa46f4                                      ; _objc_release
0006bc30 ldr       x0, [sp, #0x10]                              
0006bc34 bl        #0xa46f4                                      ; _objc_release
0006bc38 ldr       x0, [sp, #0x20]                              
0006bc3c bl        #0xa46f4                                      ; _objc_release
0006bc40 ldr       x0, [sp, #0x18]                              
0006bc44 bl        #0xa6a00                                      ; objc_msgSend$count
0006bc48 ldr       x8, [sp, #8]                                 
0006bc4c sub       x8, x8, #1                                   
0006bc50 cbnz      x0, #0x6ba74                                 
0006bc54 adrp      x8, #0xec000                                 
0006bc58 ldr       x0, [x8, #0x680]                              ; &_OBJC_CLASS_$_UIButton
0006bc5c mov       x2, #0                                       
0006bc60 bl        #0xa5cc0                                      ; objc_msgSend$buttonWithType:
0006bc64 mov       x29, x29                                     
0006bc68 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bc6c mov       x20, x0                                      
0006bc70 ldr       x0, [sp, #0x28]                              
0006bc74 mov       x2, x20                                      
0006bc78 bl        #0xac0c0                                      ; objc_msgSend$setBox:
0006bc7c mov       x0, x20                                      
0006bc80 bl        #0xa46f4                                      ; _objc_release
0006bc84 ldr       x0, [sp, #0x28]                              
0006bc88 bl        #0xa5be0                                      ; objc_msgSend$box
0006bc8c mov       x29, x29                                     
0006bc90 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bc94 mov       x20, x0                                      
0006bc98 bl        #0xa91e0                                      ; objc_msgSend$layer
0006bc9c mov       x29, x29                                     
0006bca0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bca4 mov       x22, x0                                      
0006bca8 adrp      x8, #0xbd000                                 
0006bcac ldr       d0, [x8, #0xe30]                             
0006bcb0 bl        #0xac660                                      ; objc_msgSend$setCornerRadius:
0006bcb4 mov       x0, x22                                      
0006bcb8 bl        #0xa46f4                                      ; _objc_release
0006bcbc mov       x0, x20                                      
0006bcc0 bl        #0xa46f4                                      ; _objc_release
0006bcc4 ldr       x0, [sp, #0x28]                              
0006bcc8 bl        #0xa5be0                                      ; objc_msgSend$box
0006bccc mov       x29, x29                                     
0006bcd0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bcd4 mov       x20, x0                                      
0006bcd8 bl        #0xa91e0                                      ; objc_msgSend$layer
0006bcdc mov       x29, x29                                     
0006bce0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bce4 mov       x22, x0                                      
0006bce8 adrp      x8, #0xd4000                                 
0006bcec ldr       x8, [x8, #0x898]                              ; &_kCACornerCurveContinuous
0006bcf0 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
0006bcf4 bl        #0xac640                                      ; objc_msgSend$setCornerCurve:
0006bcf8 mov       x0, x22                                      
0006bcfc bl        #0xa46f4                                      ; _objc_release
0006bd00 mov       x0, x20                                      
0006bd04 bl        #0xa46f4                                      ; _objc_release
0006bd08 ldr       x0, [sp, #0x28]                              
0006bd0c bl        #0xa5be0                                      ; objc_msgSend$box
0006bd10 mov       x29, x29                                     
0006bd14 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bd18 mov       x20, x0                                      
0006bd1c bl        #0xa91e0                                      ; objc_msgSend$layer
0006bd20 mov       x29, x29                                     
0006bd24 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bd28 mov       x22, x0                                      
0006bd2c fmov      d0, #1.00000000                              
0006bd30 bl        #0xac080                                      ; objc_msgSend$setBorderWidth:
0006bd34 mov       x0, x22                                      
0006bd38 bl        #0xa46f4                                      ; _objc_release
0006bd3c mov       x0, x20                                      
0006bd40 bl        #0xa46f4                                      ; _objc_release
0006bd44 adrp      x8, #0xec000                                 
0006bd48 ldr       x0, [x8, #0x4e0]                              ; &_OBJC_CLASS_$_UIColor
0006bd4c adrp      x8, #0xbd000                                 
0006bd50 ldr       d1, [x8, #0x3b0]                             
0006bd54 fmov      d0, #1.00000000                              
0006bd58 bl        #0xa61c0                                      ; objc_msgSend$colorWithWhite:alpha:
0006bd5c mov       x29, x29                                     
0006bd60 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bd64 mov       x22, x0                                      
0006bd68 bl        #0xa4714                                      ; _objc_retainAutorelease
0006bd6c mov       x0, x22                                      
0006bd70 bl        #0xa4980                                      ; objc_msgSend$CGColor
0006bd74 mov       x23, x0                                      
0006bd78 ldr       x0, [sp, #0x28]                              
0006bd7c bl        #0xa5be0                                      ; objc_msgSend$box
0006bd80 mov       x29, x29                                     
0006bd84 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bd88 mov       x20, x0                                      
0006bd8c bl        #0xa91e0                                      ; objc_msgSend$layer
0006bd90 mov       x29, x29                                     
0006bd94 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bd98 mov       x24, x0                                      
0006bd9c mov       x2, x23                                      
0006bda0 bl        #0xac060                                      ; objc_msgSend$setBorderColor:
0006bda4 mov       x0, x24                                      
0006bda8 bl        #0xa46f4                                      ; _objc_release
0006bdac mov       x0, x20                                      
0006bdb0 bl        #0xa46f4                                      ; _objc_release
0006bdb4 mov       x0, x22                                      
0006bdb8 bl        #0xa46f4                                      ; _objc_release
0006bdbc adrp      x8, #0xec000                                 
0006bdc0 ldr       x0, [x8, #0x4e0]                              ; &_OBJC_CLASS_$_UIColor
0006bdc4 adrp      x8, #0xbd000                                 
0006bdc8 ldr       d1, [x8, #0xe48]                             
0006bdcc fmov      d0, #1.00000000                              
0006bdd0 bl        #0xa61c0                                      ; objc_msgSend$colorWithWhite:alpha:
0006bdd4 mov       x29, x29                                     
0006bdd8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bddc mov       x20, x0                                      
0006bde0 ldr       x0, [sp, #0x28]                              
0006bde4 bl        #0xa5be0                                      ; objc_msgSend$box
0006bde8 mov       x29, x29                                     
0006bdec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bdf0 mov       x22, x0                                      
0006bdf4 mov       x2, x20                                      
0006bdf8 bl        #0xabec0                                      ; objc_msgSend$setBackgroundColor:
0006bdfc mov       x0, x22                                      
0006be00 bl        #0xa46f4                                      ; _objc_release
0006be04 mov       x0, x20                                      
0006be08 bl        #0xa46f4                                      ; _objc_release
0006be0c ldr       x0, [sp, #0x28]                              
0006be10 bl        #0xa5be0                                      ; objc_msgSend$box
0006be14 mov       x29, x29                                     
0006be18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006be1c mov       x20, x0                                      
0006be20 adrp      x2, #0xdb000                                 
0006be24 add       x2, x2, #0xf10                                ; @'Clock font and appearance'
0006be28 bl        #0xabb40                                      ; objc_msgSend$setAccessibilityLabel:
0006be2c mov       x0, x20                                      
0006be30 bl        #0xa46f4                                      ; _objc_release
0006be34 ldr       x0, [sp, #0x28]                              
0006be38 bl        #0xa5be0                                      ; objc_msgSend$box
0006be3c mov       x29, x29                                     
0006be40 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006be44 mov       x20, x0                                      
0006be48 adrp      x8, #0xec000                                 
0006be4c ldr       x3, [x8, #0x2d0]                              ; SEL showFontPanel
0006be50 ldr       x2, [sp, #0x28]                              
0006be54 mov       w4, #0x40                                    
0006be58 bl        #0xa4fc0                                      ; objc_msgSend$addTarget:action:forControlEvents:
0006be5c mov       x0, x20                                      
0006be60 bl        #0xa46f4                                      ; _objc_release
0006be64 ldr       x0, [sp, #0x28]                              
0006be68 bl        #0xb1920                                      ; objc_msgSend$view
0006be6c mov       x29, x29                                     
0006be70 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006be74 mov       x20, x0                                      
0006be78 ldr       x0, [sp, #0x28]                              
0006be7c bl        #0xa5be0                                      ; objc_msgSend$box
0006be80 mov       x29, x29                                     
0006be84 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006be88 mov       x22, x0                                      
0006be8c mov       x0, x20                                      
0006be90 mov       x2, x22                                      
0006be94 bl        #0xa4f80                                      ; objc_msgSend$addSubview:
0006be98 mov       x0, x22                                      
0006be9c bl        #0xa46f4                                      ; _objc_release
0006bea0 mov       x0, x20                                      
0006bea4 bl        #0xa46f4                                      ; _objc_release
0006bea8 adrp      x8, #0xec000                                 
0006beac ldr       x0, [x8, #0x810]                              ; &LGClockResizeHandle
0006beb0 bl        #0xa4594                                      ; _objc_alloc
0006beb4 mov       x8, #0x4048000000000000                      
0006beb8 fmov      d2, x8                                       
0006bebc movi      d0, #0000000000000000                        
0006bec0 movi      d1, #0000000000000000                        
0006bec4 fmov      d3, d2                                       
0006bec8 bl        #0xa86a0                                      ; objc_msgSend$initWithFrame:
0006becc mov       x20, x0                                      
0006bed0 ldr       x0, [sp, #0x28]                              
0006bed4 mov       x2, x20                                      
0006bed8 bl        #0xad0e0                                      ; objc_msgSend$setHandle:
0006bedc mov       x0, x20                                      
0006bee0 bl        #0xa46f4                                      ; _objc_release
0006bee4 ldr       x0, [sp, #0x28]                              
0006bee8 bl        #0xa7fa0                                      ; objc_msgSend$handle
0006beec mov       x29, x29                                     
0006bef0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bef4 mov       x22, x0                                      
0006bef8 ldr       x0, [x21, #0x7c8]                             ; &_OBJC_CLASS_$_UIPanGestureRecognizer
0006befc bl        #0xa4594                                      ; _objc_alloc
0006bf00 adrp      x8, #0xec000                                 
0006bf04 ldr       x3, [x8, #0x2d8]                              ; SEL resize:
0006bf08 ldr       x2, [sp, #0x28]                              
0006bf0c bl        #0xa8860                                      ; objc_msgSend$initWithTarget:action:
0006bf10 mov       x20, x0                                      
0006bf14 mov       x0, x22                                      
0006bf18 mov       x2, x20                                      
0006bf1c bl        #0xa4ec0                                      ; objc_msgSend$addGestureRecognizer:
0006bf20 mov       x0, x20                                      
0006bf24 bl        #0xa46f4                                      ; _objc_release
0006bf28 mov       x0, x22                                      
0006bf2c bl        #0xa46f4                                      ; _objc_release
0006bf30 add       x0, sp, #0xa8                                
0006bf34 ldr       x1, [sp, #0x28]                              
0006bf38 bl        #0xa4674                                      ; _objc_initWeak
0006bf3c add       x21, sp, #0x80                               
0006bf40 adrp      x16, #0xd4000                                
0006bf44 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006bf48 mov       x17, x21                                     
0006bf4c movk      x17, #0x6ae1, lsl #48                        
0006bf50 pacda     x16, x17                                     
0006bf54 str       x16, [sp, #0x80]                             
0006bf58 adrp      x8, #0xbd000                                 
0006bf5c ldr       d12, [x8, #0x268]                            
0006bf60 str       d12, [sp, #0x88]                             
0006bf64 add       x8, x21, #0x10                                ; SEL _loadGesturesMenuItems
0006bf68 adrp      x16, #0x6c000                                
0006bf6c add       x16, x16, #0x410                             
0006bf70 pacia     x16, x8                                      
0006bf74 adrp      x8, #0xd5000                                 
0006bf78 add       x8, x8, #0xc28                               
0006bf7c stp       x16, x8, [sp, #0x90]                         
0006bf80 add       x0, x21, #0x20                                ; SEL _loadScrollMenuItems
0006bf84 add       x1, sp, #0xa8                                
0006bf88 bl        #0xa4604                                      ; _objc_copyWeak
0006bf8c ldr       x0, [sp, #0x28]                              
0006bf90 bl        #0xa7fa0                                      ; objc_msgSend$handle
0006bf94 mov       x29, x29                                     
0006bf98 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bf9c mov       x20, x0                                      
0006bfa0 add       x2, sp, #0x80                                
0006bfa4 bl        #0xabc20                                      ; objc_msgSend$setAdjust:
0006bfa8 mov       x0, x20                                      
0006bfac bl        #0xa46f4                                      ; _objc_release
0006bfb0 ldr       x0, [sp, #0x28]                              
0006bfb4 bl        #0xb1920                                      ; objc_msgSend$view
0006bfb8 mov       x29, x29                                     
0006bfbc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bfc0 mov       x20, x0                                      
0006bfc4 ldr       x0, [sp, #0x28]                              
0006bfc8 bl        #0xa7fa0                                      ; objc_msgSend$handle
0006bfcc mov       x29, x29                                     
0006bfd0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006bfd4 mov       x22, x0                                      
0006bfd8 mov       x0, x20                                      
0006bfdc mov       x2, x22                                      
0006bfe0 bl        #0xa4f80                                      ; objc_msgSend$addSubview:
0006bfe4 mov       x0, x22                                      
0006bfe8 bl        #0xa46f4                                      ; _objc_release
0006bfec mov       x0, x20                                      
0006bff0 bl        #0xa46f4                                      ; _objc_release
0006bff4 adrp      x19, #0xec000                                
0006bff8 ldr       x0, [x19, #0x698]                             ; &LGButtonView
0006bffc bl        #0xa4594                                      ; _objc_alloc
0006c000 adrp      x8, #0xd4000                                 
0006c004 ldr       x8, [x8, #0x918]                              ; &_CGRectZero
0006c008 ldp       d8, d9, [x8]                                 
0006c00c ldp       d10, d11, [x8, #0x10]                        
0006c010 adrp      x2, #0xdb000                                 
0006c014 add       x2, x2, #0xe30                                ; @'Cancel'
0006c018 fmov      d4, #8.00000000                              
0006c01c fmov      d0, d8                                       
0006c020 fmov      d1, d9                                       
0006c024 fmov      d2, d10                                      
0006c028 fmov      d3, d11                                      
0006c02c bl        #0xa8740                                      ; objc_msgSend$initWithFrame:title:blurRadius:
0006c030 mov       x20, x0                                      
0006c034 ldr       x0, [sp, #0x28]                              
0006c038 mov       x2, x20                                      
0006c03c bl        #0xac140                                      ; objc_msgSend$setCancelButton:
0006c040 mov       x0, x20                                      
0006c044 bl        #0xa46f4                                      ; _objc_release
0006c048 ldr       x0, [x19, #0x698]                             ; &LGButtonView
0006c04c bl        #0xa4594                                      ; _objc_alloc
0006c050 adrp      x2, #0xdb000                                 
0006c054 add       x2, x2, #0xf30                                ; @'Done'
0006c058 fmov      d4, #8.00000000                              
0006c05c fmov      d0, d8                                       
0006c060 fmov      d1, d9                                       
0006c064 fmov      d2, d10                                      
0006c068 fmov      d3, d11                                      
0006c06c bl        #0xa8740                                      ; objc_msgSend$initWithFrame:title:blurRadius:
0006c070 mov       x20, x0                                      
0006c074 ldr       x0, [sp, #0x28]                              
0006c078 mov       x2, x20                                      
0006c07c bl        #0xaca00                                      ; objc_msgSend$setDoneButton:
0006c080 mov       x0, x20                                      
0006c084 bl        #0xa46f4                                      ; _objc_release
0006c088 adrp      x19, #0xec000                                
0006c08c ldr       x0, [x19, #0x588]                             ; &_OBJC_CLASS_$_UIFont
0006c090 adrp      x8, #0xd4000                                 
0006c094 ldr       x8, [x8, #0x850]                              ; &_UIFontWeightRegular
0006c098 ldr       d1, [x8]                                      ; &___objc_personality_v0
0006c09c fmov      d0, #17.00000000                             
0006c0a0 bl        #0xb0880                                      ; objc_msgSend$systemFontOfSize:weight:
0006c0a4 mov       x29, x29                                     
0006c0a8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c0ac mov       x22, x0                                      
0006c0b0 ldr       x0, [sp, #0x28]                              
0006c0b4 bl        #0xa5d80                                      ; objc_msgSend$cancelButton
0006c0b8 mov       x29, x29                                     
0006c0bc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c0c0 mov       x20, x0                                      
0006c0c4 bl        #0xb0de0                                      ; objc_msgSend$titleLabel
0006c0c8 mov       x29, x29                                     
0006c0cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c0d0 mov       x23, x0                                      
0006c0d4 mov       x2, x22                                      
0006c0d8 bl        #0xace20                                      ; objc_msgSend$setFont:
0006c0dc mov       x0, x23                                      
0006c0e0 bl        #0xa46f4                                      ; _objc_release
0006c0e4 mov       x0, x20                                      
0006c0e8 bl        #0xa46f4                                      ; _objc_release
0006c0ec mov       x0, x22                                      
0006c0f0 bl        #0xa46f4                                      ; _objc_release
0006c0f4 ldr       x0, [x19, #0x588]                             ; &_OBJC_CLASS_$_UIFont
0006c0f8 adrp      x8, #0xd4000                                 
0006c0fc ldr       x8, [x8, #0x858]                              ; &_UIFontWeightSemibold
0006c100 ldr       d1, [x8]                                      ; &___objc_personality_v0
0006c104 fmov      d0, #17.00000000                             
0006c108 bl        #0xb0880                                      ; objc_msgSend$systemFontOfSize:weight:
0006c10c mov       x29, x29                                     
0006c110 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c114 mov       x22, x0                                      
0006c118 ldr       x0, [sp, #0x28]                              
0006c11c bl        #0xa71c0                                      ; objc_msgSend$doneButton
0006c120 mov       x29, x29                                     
0006c124 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c128 mov       x20, x0                                      
0006c12c bl        #0xb0de0                                      ; objc_msgSend$titleLabel
0006c130 mov       x29, x29                                     
0006c134 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c138 mov       x23, x0                                      
0006c13c mov       x2, x22                                      
0006c140 bl        #0xace20                                      ; objc_msgSend$setFont:
0006c144 mov       x0, x23                                      
0006c148 bl        #0xa46f4                                      ; _objc_release
0006c14c mov       x0, x20                                      
0006c150 bl        #0xa46f4                                      ; _objc_release
0006c154 mov       x0, x22                                      
0006c158 bl        #0xa46f4                                      ; _objc_release
0006c15c add       x23, sp, #0x58                               
0006c160 adrp      x16, #0xd4000                                
0006c164 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006c168 mov       x17, x23                                     
0006c16c movk      x17, #0x6ae1, lsl #48                        
0006c170 pacda     x16, x17                                     
0006c174 str       x16, [sp, #0x58]                             
0006c178 str       d12, [sp, #0x60]                             
0006c17c add       x8, x23, #0x10                               
0006c180 adrp      x16, #0x6c000                                
0006c184 add       x16, x16, #0x4d0                             
0006c188 pacia     x16, x8                                      
0006c18c adrp      x19, #0xd5000                                
0006c190 add       x19, x19, #0x80                              
0006c194 stp       x16, x19, [sp, #0x68]                        
0006c198 add       x0, x23, #0x20                               
0006c19c add       x1, sp, #0xa8                                
0006c1a0 bl        #0xa4604                                      ; _objc_copyWeak
0006c1a4 ldr       x0, [sp, #0x28]                              
0006c1a8 bl        #0xa5d80                                      ; objc_msgSend$cancelButton
0006c1ac mov       x29, x29                                     
0006c1b0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c1b4 mov       x20, x0                                      
0006c1b8 add       x2, sp, #0x58                                
0006c1bc bl        #0xabba0                                      ; objc_msgSend$setActionHandler:
0006c1c0 mov       x0, x20                                      
0006c1c4 bl        #0xa46f4                                      ; _objc_release
0006c1c8 add       x24, sp, #0x30                               
0006c1cc adrp      x16, #0xd4000                                
0006c1d0 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006c1d4 mov       x17, x24                                     
0006c1d8 movk      x17, #0x6ae1, lsl #48                        
0006c1dc pacda     x16, x17                                     
0006c1e0 str       x16, [sp, #0x30]                             
0006c1e4 str       d12, [sp, #0x38]                             
0006c1e8 add       x8, x24, #0x10                               
0006c1ec adrp      x16, #0x6c000                                
0006c1f0 add       x16, x16, #0x510                             
0006c1f4 pacia     x16, x8                                      
0006c1f8 stp       x16, x19, [sp, #0x40]                        
0006c1fc add       x0, x24, #0x20                               
0006c200 add       x1, sp, #0xa8                                
0006c204 bl        #0xa4604                                      ; _objc_copyWeak
0006c208 ldr       x0, [sp, #0x28]                              
0006c20c bl        #0xa71c0                                      ; objc_msgSend$doneButton
0006c210 mov       x29, x29                                     
0006c214 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c218 mov       x20, x0                                      
0006c21c add       x2, sp, #0x30                                
0006c220 bl        #0xabba0                                      ; objc_msgSend$setActionHandler:
0006c224 mov       x0, x20                                      
0006c228 bl        #0xa46f4                                      ; _objc_release
0006c22c ldr       x0, [sp, #0x28]                              
0006c230 bl        #0xa5d80                                      ; objc_msgSend$cancelButton
0006c234 mov       x29, x29                                     
0006c238 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c23c mov       x20, x0                                      
0006c240 adrp      x2, #0xdb000                                 
0006c244 add       x2, x2, #0xf50                                ; @'Cancel clock changes'
0006c248 bl        #0xabb40                                      ; objc_msgSend$setAccessibilityLabel:
0006c24c mov       x0, x20                                      
0006c250 bl        #0xa46f4                                      ; _objc_release
0006c254 ldr       x0, [sp, #0x28]                              
0006c258 bl        #0xa71c0                                      ; objc_msgSend$doneButton
0006c25c mov       x29, x29                                     
0006c260 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c264 mov       x20, x0                                      
0006c268 adrp      x2, #0xdb000                                 
0006c26c add       x2, x2, #0xf70                                ; @'Save clock changes'
0006c270 bl        #0xabb40                                      ; objc_msgSend$setAccessibilityLabel:
0006c274 mov       x0, x20                                      
0006c278 bl        #0xa46f4                                      ; _objc_release
0006c27c ldr       x0, [sp, #0x28]                              
0006c280 bl        #0xb1920                                      ; objc_msgSend$view
0006c284 mov       x29, x29                                     
0006c288 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c28c mov       x20, x0                                      
0006c290 ldr       x0, [sp, #0x28]                              
0006c294 bl        #0xa5d80                                      ; objc_msgSend$cancelButton
0006c298 mov       x29, x29                                     
0006c29c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c2a0 mov       x22, x0                                      
0006c2a4 mov       x0, x20                                      
0006c2a8 mov       x2, x22                                      
0006c2ac bl        #0xa4f80                                      ; objc_msgSend$addSubview:
0006c2b0 mov       x0, x22                                      
0006c2b4 bl        #0xa46f4                                      ; _objc_release
0006c2b8 mov       x0, x20                                      
0006c2bc bl        #0xa46f4                                      ; _objc_release
0006c2c0 ldr       x0, [sp, #0x28]                              
0006c2c4 bl        #0xb1920                                      ; objc_msgSend$view
0006c2c8 mov       x29, x29                                     
0006c2cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c2d0 mov       x20, x0                                      
0006c2d4 ldr       x0, [sp, #0x28]                              
0006c2d8 bl        #0xa71c0                                      ; objc_msgSend$doneButton
0006c2dc mov       x29, x29                                     
0006c2e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c2e4 mov       x22, x0                                      
0006c2e8 mov       x0, x20                                      
0006c2ec mov       x2, x22                                      
0006c2f0 bl        #0xa4f80                                      ; objc_msgSend$addSubview:
0006c2f4 mov       x0, x22                                      
0006c2f8 bl        #0xa46f4                                      ; _objc_release
0006c2fc mov       x0, x20                                      
0006c300 bl        #0xa46f4                                      ; _objc_release
0006c304 ldr       x0, [sp, #0x28]                              
0006c308 bl        #0xb0220                                      ; objc_msgSend$state
0006c30c mov       x29, x29                                     
0006c310 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c314 mov       x20, x0                                      
0006c318 bl        #0xb0060                                      ; objc_msgSend$stageProgress
0006c31c mov       x0, x20                                      
0006c320 bl        #0xa46f4                                      ; _objc_release
0006c324 ldr       x0, [sp, #0x28]                              
0006c328 bl        #0xb0d20                                      ; objc_msgSend$timeView
0006c32c mov       x29, x29                                     
0006c330 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c334 mov       x19, x0                                      
0006c338 bl        #0x64aa4                                     
0006c33c mov       x0, x19                                      
0006c340 bl        #0xa46f4                                      ; _objc_release
0006c344 add       x0, x24, #0x20                               
0006c348 bl        #0xa4614                                      ; _objc_destroyWeak
0006c34c add       x0, x23, #0x20                               
0006c350 bl        #0xa4614                                      ; _objc_destroyWeak
0006c354 add       x0, x21, #0x20                                ; SEL _loadScrollMenuItems
0006c358 bl        #0xa4614                                      ; _objc_destroyWeak
0006c35c add       x0, sp, #0xa8                                
0006c360 bl        #0xa4614                                      ; _objc_destroyWeak
0006c364 ldr       x0, [sp, #0x18]                              
0006c368 bl        #0xa46f4                                      ; _objc_release
0006c36c ldr       x0, [sp]                                     
0006c370 bl        #0xa46f4                                      ; _objc_release
0006c374 ldur      x8, [x29, #-0x90]                            
0006c378 adrp      x9, #0xd4000                                 
0006c37c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006c380 ldr       x9, [x9]                                      ; &___objc_personality_v0
0006c384 cmp       x9, x8                                       
0006c388 b.ne      #0x6c3b8                                     
0006c38c add       sp, sp, #0x190                               
0006c390 ldp       x29, x30, [sp, #0x80]                        
0006c394 ldp       x20, x19, [sp, #0x70]                        
0006c398 ldp       x22, x21, [sp, #0x60]                        
0006c39c ldp       x24, x23, [sp, #0x50]                        
0006c3a0 ldp       x26, x25, [sp, #0x40]                        
0006c3a4 ldp       x28, x27, [sp, #0x30]                        
0006c3a8 ldp       d9, d8, [sp, #0x20]                          
0006c3ac ldp       d11, d10, [sp, #0x10]                        
0006c3b0 ldp       d13, d12, [sp], #0x90                        
0006c3b4 retab                                                  
0006c3b8 bl        #0xa41d4                                      ; ___stack_chk_fail
0006c3bc b         #0x6c3d4                                     
0006c3c0 mov       x19, x0                                      
0006c3c4 add       x0, x23, #0x20                               
0006c3c8 bl        #0xa4614                                      ; _objc_destroyWeak
0006c3cc b         #0x6c3f0                                     
0006c3d0 b         #0x6c3ec                                     
0006c3d4 mov       x19, x0                                      
0006c3d8 add       x0, x24, #0x20                               
0006c3dc bl        #0xa4614                                      ; _objc_destroyWeak
0006c3e0 add       x0, x23, #0x20                               
0006c3e4 bl        #0xa4614                                      ; _objc_destroyWeak
0006c3e8 b         #0x6c3f0                                     
0006c3ec mov       x19, x0                                      
0006c3f0 add       x0, x21, #0x20                                ; SEL _loadScrollMenuItems
0006c3f4 bl        #0xa4614                                      ; _objc_destroyWeak
0006c3f8 add       x0, sp, #0xa8                                
0006c3fc bl        #0xa4614                                      ; _objc_destroyWeak
0006c400 b         #0x6c408                                     
0006c404 mov       x19, x0                                      
0006c408 mov       x0, x19                                      
0006c40c bl        #0xa4194                                      ; __Unwind_Resume
0006c410 pacibsp                                                
0006c414 stp       d9, d8, [sp, #-0x30]!                        
0006c418 stp       x20, x19, [sp, #0x10]                        
0006c41c stp       x29, x30, [sp, #0x20]                        
0006c420 add       x29, sp, #0x20                               
0006c424 fmov      d8, d0                                       
0006c428 add       x0, x0, #0x20                                
0006c42c bl        #0xa4684                                      ; _objc_loadWeakRetained
0006c430 mov       x19, x0                                      
0006c434 bl        #0xb0220                                      ; objc_msgSend$state
0006c438 mov       x29, x29                                     
0006c43c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c440 mov       x20, x0                                      
0006c444 bl        #0xaade0                                      ; objc_msgSend$progress
0006c448 fadd      d8, d0, d8                                   
0006c44c mov       x0, x20                                      
0006c450 bl        #0xa46f4                                      ; _objc_release
0006c454 movi      d0, #0000000000000000                        
0006c458 fmaxnm    d0, d8, d0                                   
0006c45c fmov      d1, #1.00000000                              
0006c460 fcmp      d0, d1                                       
0006c464 fcsel     d8, d1, d0, gt                               
0006c468 mov       x0, x19                                      
0006c46c bl        #0xb0220                                      ; objc_msgSend$state
0006c470 mov       x29, x29                                     
0006c474 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c478 mov       x20, x0                                      
0006c47c fmov      d0, d8                                       
0006c480 bl        #0xae640                                      ; objc_msgSend$setProgress:
0006c484 mov       x0, x20                                      
0006c488 bl        #0xa46f4                                      ; _objc_release
0006c48c mov       x0, x19                                      
0006c490 bl        #0xb0220                                      ; objc_msgSend$state
0006c494 mov       x29, x29                                     
0006c498 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006c49c mov       x20, x0                                      
0006c4a0 bl        #0xb0060                                      ; objc_msgSend$stageProgress
0006c4a4 mov       x0, x20                                      
0006c4a8 bl        #0xa46f4                                      ; _objc_release
0006c4ac mov       x0, x19                                      
0006c4b0 ldp       x29, x30, [sp, #0x20]                        
0006c4b4 ldp       x20, x19, [sp, #0x10]                        
0006c4b8 ldp       d9, d8, [sp], #0x30                          
0006c4bc autibsp                                                
0006c4c0 eor       x16, x30, x30, lsl #1                        
0006c4c4 tbz       x16, #0x3e, #0x6c4cc                         
0006c4c8 brk       #0xc471                                      
0006c4cc b         #0xa46f4                                      ; _objc_release
0006c4d0 pacibsp                                                
0006c4d4 stp       x20, x19, [sp, #-0x20]!                      
0006c4d8 stp       x29, x30, [sp, #0x10]                        
0006c4dc add       x29, sp, #0x10                               
0006c4e0 add       x0, x0, #0x20                                
0006c4e4 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006c4e8 mov       x19, x0                                      
0006c4ec bl        #0xa5d60                                      ; objc_msgSend$cancel
0006c4f0 mov       x0, x19                                      
0006c4f4 ldp       x29, x30, [sp, #0x10]                        
0006c4f8 ldp       x20, x19, [sp], #0x20                        
0006c4fc autibsp                                                
0006c500 eor       x16, x30, x30, lsl #1                        
0006c504 tbz       x16, #0x3e, #0x6c50c                         
0006c508 brk       #0xc471                                      
0006c50c b         #0xa46f4                                      ; _objc_release
0006c510 pacibsp                                                
0006c514 stp       x20, x19, [sp, #-0x20]!                      
0006c518 stp       x29, x30, [sp, #0x10]                        
0006c51c add       x29, sp, #0x10                               
0006c520 add       x0, x0, #0x20                                
0006c524 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006c528 mov       x19, x0                                      
0006c52c bl        #0xa71a0                                      ; objc_msgSend$done
0006c530 mov       x0, x19                                      
0006c534 ldp       x29, x30, [sp, #0x10]                        
0006c538 ldp       x20, x19, [sp], #0x20                        
0006c53c autibsp                                                
0006c540 eor       x16, x30, x30, lsl #1                        
0006c544 tbz       x16, #0x3e, #0x6c54c                         
0006c548 brk       #0xc471                                      
0006c54c b         #0xa46f4                                      ; _objc_release
