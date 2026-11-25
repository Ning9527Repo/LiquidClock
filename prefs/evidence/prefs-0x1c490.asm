; prefs arm64e unslid VA [0x1c490,0x1cb18); slice_offset=0xa0000
0001c490 pacibsp                                                
0001c494 stp       x22, x21, [sp, #-0x30]!                      
0001c498 stp       x20, x19, [sp, #0x10]                        
0001c49c stp       x29, x30, [sp, #0x20]                        
0001c4a0 add       x29, sp, #0x20                               
0001c4a4 mov       x19, x0                                      
0001c4a8 mov       x0, x1                                       
0001c4ac bl        #0x58e14                                      ; _objc_retain
0001c4b0 mov       x20, x0                                      
0001c4b4 mov       x0, x19                                      
0001c4b8 mov       x1, x20                                      
0001c4bc bl        #0x1c518                                      ; _LGReadPreferenceObject
0001c4c0 mov       x29, x29                                     
0001c4c4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c4c8 mov       x19, x0                                      
0001c4cc adrp      x8, #0x8b000                                 
0001c4d0 ldr       x0, [x8, #0xbb0]                              ; &_OBJC_CLASS_$_NSNumber
0001c4d4 bl        #0x58dc4                                      ; _objc_opt_class
0001c4d8 mov       x1, x0                                       
0001c4dc mov       x0, x19                                      
0001c4e0 bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
0001c4e4 tst       w0, #1                                       
0001c4e8 csel      x21, x19, x20, ne                            
0001c4ec mov       x0, x21                                      
0001c4f0 bl        #0x58e34                                      ; _objc_retainAutoreleaseReturnValue
0001c4f4 mov       x0, x20                                      
0001c4f8 bl        #0x58e04                                      ; _objc_release
0001c4fc mov       x0, x19                                      
0001c500 bl        #0x58e04                                      ; _objc_release
0001c504 mov       x0, x21                                      
0001c508 ldp       x29, x30, [sp, #0x20]                        
0001c50c ldp       x20, x19, [sp, #0x10]                        
0001c510 ldp       x22, x21, [sp], #0x30                        
0001c514 retab                                                  
0001c518 pacibsp                                                
0001c51c stp       x22, x21, [sp, #-0x30]!                      
0001c520 stp       x20, x19, [sp, #0x10]                        
0001c524 stp       x29, x30, [sp, #0x20]                        
0001c528 add       x29, sp, #0x20                               
0001c52c mov       x20, x1                                      
0001c530 bl        #0x58e14                                      ; _objc_retain
0001c534 mov       x19, x0                                      
0001c538 mov       x0, x20                                      
0001c53c bl        #0x58e14                                      ; _objc_retain
0001c540 mov       x20, x0                                      
0001c544 adrp      x8, #0x8c000                                 
0001c548 ldr       x8, [x8, #0xef8]                             
0001c54c cmn       x8, #1                                       
0001c550 b.ne      #0x1c618                                     
0001c554 adrp      x22, #0x8c000                                
0001c558 ldr       x0, [x22, #0xee0]                            
0001c55c mov       x2, x19                                      
0001c560 bl        #0x5c9c0                                      ; objc_msgSend$objectForKey:
0001c564 mov       x29, x29                                     
0001c568 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c56c mov       x21, x0                                      
0001c570 bl        #0x58e04                                      ; _objc_release
0001c574 cbz       x21, #0x1c590                                
0001c578 ldr       x0, [x22, #0xee0]                            
0001c57c mov       x2, x19                                      
0001c580 bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
0001c584 mov       x29, x29                                     
0001c588 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c58c b         #0x1c5ac                                     
0001c590 adrp      x8, #0x8c000                                 
0001c594 ldr       x0, [x8, #0xee8]                             
0001c598 mov       x2, x19                                      
0001c59c bl        #0x5a1c0                                      ; objc_msgSend$containsObject:
0001c5a0 cbz       w0, #0x1c5e4                                 
0001c5a4 mov       x0, x20                                      
0001c5a8 bl        #0x58e14                                      ; _objc_retain
0001c5ac mov       x21, x0                                      
0001c5b0 mov       x0, x20                                      
0001c5b4 bl        #0x58e04                                      ; _objc_release
0001c5b8 mov       x0, x19                                      
0001c5bc bl        #0x58e04                                      ; _objc_release
0001c5c0 mov       x0, x21                                      
0001c5c4 ldp       x29, x30, [sp, #0x20]                        
0001c5c8 ldp       x20, x19, [sp, #0x10]                        
0001c5cc ldp       x22, x21, [sp], #0x30                        
0001c5d0 autibsp                                                
0001c5d4 eor       x16, x30, x30, lsl #1                        
0001c5d8 tbz       x16, #0x3e, #0x1c5e0                         
0001c5dc brk       #0xc471                                      
0001c5e0 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001c5e4 adrp      x8, #0x79000                                 
0001c5e8 add       x8, x8, #0xe78                                ; _LGPrefsDomain
0001c5ec ldr       x1, [x8]                                      ; _LGPrefsDomain
0001c5f0 mov       x0, x19                                      
0001c5f4 bl        #0x587a4                                      ; _CFPreferencesCopyAppValue
0001c5f8 mov       x22, x0                                      
0001c5fc cmp       x0, #0                                       
0001c600 csel      x0, x20, x0, eq                              
0001c604 bl        #0x58e14                                      ; _objc_retain
0001c608 mov       x21, x0                                      
0001c60c mov       x0, x22                                      
0001c610 bl        #0x58e04                                      ; _objc_release
0001c614 b         #0x1c5b0                                     
0001c618 bl        #0x58540                                     
0001c61c b         #0x1c554                                     
0001c620 b         #0x1c624                                      ; _LGWritePreferenceObject
0001c624 pacibsp                                                
0001c628 sub       sp, sp, #0x40                                
0001c62c stp       x22, x21, [sp, #0x10]                        
0001c630 stp       x20, x19, [sp, #0x20]                        
0001c634 stp       x29, x30, [sp, #0x30]                        
0001c638 add       x29, sp, #0x30                               
0001c63c mov       x20, x1                                      
0001c640 bl        #0x58e14                                      ; _objc_retain
0001c644 mov       x19, x0                                      
0001c648 mov       x0, x20                                      
0001c64c bl        #0x58e14                                      ; _objc_retain
0001c650 mov       x20, x0                                      
0001c654 mov       x0, x19                                      
0001c658 bl        #0x5bf00                                      ; objc_msgSend$length
0001c65c cbz       x20, #0x1c6ec                                
0001c660 cbz       x0, #0x1c6ec                                 
0001c664 bl        #0x1bdc8                                      ; _LGHasPendingPreferences
0001c668 mov       x21, x0                                      
0001c66c adrp      x8, #0x8c000                                 
0001c670 ldr       x8, [x8, #0xef8]                             
0001c674 cmn       x8, #1                                       
0001c678 b.ne      #0x1c71c                                     
0001c67c adrp      x8, #0x8c000                                 
0001c680 ldr       x0, [x8, #0xee0]                             
0001c684 mov       x2, x20                                      
0001c688 mov       x3, x19                                      
0001c68c bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
0001c690 adrp      x8, #0x8c000                                 
0001c694 ldr       x0, [x8, #0xee8]                             
0001c698 mov       x2, x19                                      
0001c69c bl        #0x5d360                                      ; objc_msgSend$removeObject:
0001c6a0 mov       x0, x19                                      
0001c6a4 bl        #0x1c724                                     
0001c6a8 stp       x19, x20, [sp]                               
0001c6ac adrp      x0, #0x7c000                                 
0001c6b0 add       x0, x0, #0x1b0                                ; @'[prefs-pending] staged %@=%@'
0001c6b4 bl        #0x44c64                                      ; _LGLog
0001c6b8 tbnz      w21, #0, #0x1c6ec                            
0001c6bc adrp      x8, #0x8b000                                 
0001c6c0 ldr       x0, [x8, #0xac8]                              ; &_OBJC_CLASS_$_NSNotificationCenter
0001c6c4 bl        #0x5a740                                      ; objc_msgSend$defaultCenter
0001c6c8 mov       x29, x29                                     
0001c6cc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c6d0 mov       x21, x0                                      
0001c6d4 adrp      x2, #0x7c000                                 
0001c6d8 add       x2, x2, #0x30                                 ; @'LGPrefsPendingChangedNotification'
0001c6dc mov       x3, #0                                       
0001c6e0 bl        #0x5cd40                                      ; objc_msgSend$postNotificationName:object:
0001c6e4 mov       x0, x21                                      
0001c6e8 bl        #0x58e04                                      ; _objc_release
0001c6ec mov       x0, x20                                      
0001c6f0 bl        #0x58e04                                      ; _objc_release
0001c6f4 mov       x0, x19                                      
0001c6f8 ldp       x29, x30, [sp, #0x30]                        
0001c6fc ldp       x20, x19, [sp, #0x20]                        
0001c700 ldp       x22, x21, [sp, #0x10]                        
0001c704 add       sp, sp, #0x40                                
0001c708 autibsp                                                
0001c70c eor       x16, x30, x30, lsl #1                        
0001c710 tbz       x16, #0x3e, #0x1c718                         
0001c714 brk       #0xc471                                      
0001c718 b         #0x58e04                                      ; _objc_release
0001c71c bl        #0x58554                                     
0001c720 b         #0x1c67c                                     
0001c724 pacibsp                                                
0001c728 sub       sp, sp, #0x140                               
0001c72c stp       x28, x27, [sp, #0xe0]                        
0001c730 stp       x26, x25, [sp, #0xf0]                        
0001c734 stp       x24, x23, [sp, #0x100]                       
0001c738 stp       x22, x21, [sp, #0x110]                       
0001c73c stp       x20, x19, [sp, #0x120]                       
0001c740 stp       x29, x30, [sp, #0x130]                       
0001c744 add       x29, sp, #0x130                              
0001c748 adrp      x8, #0x78000                                 
0001c74c ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001c750 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001c754 stur      x8, [x29, #-0x60]                            
0001c758 bl        #0x58e14                                      ; _objc_retain
0001c75c mov       x19, x0                                      
0001c760 adrp      x2, #0x7d000                                 
0001c764 add       x2, x2, #0x430                                ; @'CustomViews.Rule.'
0001c768 bl        #0x5b3a0                                      ; objc_msgSend$hasPrefix:
0001c76c cbz       w0, #0x1c9fc                                 
0001c770 adrp      x2, #0x7d000                                 
0001c774 add       x2, x2, #0xbb0                                ; @'.'
0001c778 mov       x0, x19                                      
0001c77c mov       w3, #4                                       
0001c780 bl        #0x5d0e0                                      ; objc_msgSend$rangeOfString:options:
0001c784 mov       x8, #0x7fffffffffffffff                      
0001c788 cmp       x0, x8                                       
0001c78c b.eq      #0x1c9fc                                     
0001c790 mov       x21, x0                                      
0001c794 adrp      x0, #0x7d000                                 
0001c798 add       x0, x0, #0x430                                ; @'CustomViews.Rule.'
0001c79c bl        #0x5bf00                                      ; objc_msgSend$length
0001c7a0 cmp       x21, x0                                      
0001c7a4 b.lo      #0x1c9fc                                     
0001c7a8 adrp      x22, #0x7d000                                
0001c7ac add       x22, x22, #0x430                              ; @'CustomViews.Rule.'
0001c7b0 mov       x0, x22                                      
0001c7b4 bl        #0x5bf00                                      ; objc_msgSend$length
0001c7b8 mov       x20, x0                                      
0001c7bc mov       x0, x22                                      
0001c7c0 bl        #0x5bf00                                      ; objc_msgSend$length
0001c7c4 sub       x3, x21, x0                                  
0001c7c8 mov       x0, x19                                      
0001c7cc mov       x2, x20                                      
0001c7d0 bl        #0x60860                                      ; objc_msgSend$substringWithRange:
0001c7d4 mov       x29, x29                                     
0001c7d8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c7dc mov       x20, x0                                      
0001c7e0 add       x2, x21, #1                                  
0001c7e4 mov       x0, x19                                      
0001c7e8 bl        #0x60820                                      ; objc_msgSend$substringFromIndex:
0001c7ec mov       x29, x29                                     
0001c7f0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c7f4 mov       x21, x0                                      
0001c7f8 mov       x0, x22                                      
0001c7fc mov       x2, x20                                      
0001c800 bl        #0x605c0                                      ; objc_msgSend$stringByAppendingString:
0001c804 mov       x29, x29                                     
0001c808 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c80c mov       x22, x0                                      
0001c810 mov       x0, x20                                      
0001c814 bl        #0x5bf00                                      ; objc_msgSend$length
0001c818 cbz       x0, #0x1c9e4                                 
0001c81c adrp      x2, #0x7d000                                 
0001c820 add       x2, x2, #0xbd0                                ; @'API'
0001c824 mov       x0, x21                                      
0001c828 bl        #0x5b3a0                                      ; objc_msgSend$hasPrefix:
0001c82c tbnz      w0, #0, #0x1c9e4                             
0001c830 adrp      x2, #0x7d000                                 
0001c834 add       x2, x2, #0xbf0                                ; @'.APIManaged'
0001c838 mov       x0, x22                                      
0001c83c bl        #0x605c0                                      ; objc_msgSend$stringByAppendingString:
0001c840 mov       x29, x29                                     
0001c844 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c848 mov       x23, x0                                      
0001c84c adrp      x1, #0x78000                                 
0001c850 ldr       x1, [x1, #0x4f0]                              ; &___kCFBooleanFalse
0001c854 bl        #0x1c518                                      ; _LGReadPreferenceObject
0001c858 mov       x29, x29                                     
0001c85c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c860 mov       x24, x0                                      
0001c864 bl        #0x59ac0                                      ; objc_msgSend$boolValue
0001c868 mov       x25, x0                                      
0001c86c mov       x0, x24                                      
0001c870 bl        #0x58e04                                      ; _objc_release
0001c874 mov       x0, x23                                      
0001c878 bl        #0x58e04                                      ; _objc_release
0001c87c cbz       w25, #0x1c9e4                                
0001c880 adrp      x2, #0x7d000                                 
0001c884 add       x2, x2, #0xc10                                ; @'.APIUserOverrides'
0001c888 str       x22, [sp, #8]                                
0001c88c mov       x0, x22                                      
0001c890 bl        #0x605c0                                      ; objc_msgSend$stringByAppendingString:
0001c894 mov       x29, x29                                     
0001c898 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c89c mov       x22, x0                                      
0001c8a0 adrp      x8, #0x8b000                                 
0001c8a4 ldr       x0, [x8, #0xa90]                              ; &_OBJC_CLASS_$_NSMutableOrderedSet
0001c8a8 bl        #0x5cae0                                      ; objc_msgSend$orderedSet
0001c8ac mov       x29, x29                                     
0001c8b0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c8b4 mov       x24, x0                                      
0001c8b8 movi      v0.2d, #0000000000000000                     
0001c8bc stp       q0, q0, [sp, #0x10]                          
0001c8c0 stp       q0, q0, [sp, #0x30]                          
0001c8c4 adrp      x1, #0x78000                                 
0001c8c8 ldr       x1, [x1, #0x4e0]                              ; &___NSArray0__struct
0001c8cc str       x22, [sp]                                    
0001c8d0 mov       x0, x22                                      
0001c8d4 bl        #0x1c518                                      ; _LGReadPreferenceObject
0001c8d8 mov       x29, x29                                     
0001c8dc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c8e0 mov       x25, x0                                      
0001c8e4 add       x2, sp, #0x10                                
0001c8e8 add       x3, sp, #0x50                                
0001c8ec mov       w4, #0x10                                    
0001c8f0 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001c8f4 cbz       x0, #0x1c978                                 
0001c8f8 mov       x26, x0                                      
0001c8fc ldr       x8, [sp, #0x20]                              
0001c900 ldr       x28, [x8]                                    
0001c904 adrp      x23, #0x8b000                                
0001c908 mov       x22, #0                                      
0001c90c ldr       x8, [sp, #0x20]                              
0001c910 ldr       x8, [x8]                                     
0001c914 cmp       x8, x28                                      
0001c918 b.eq      #0x1c924                                     
0001c91c mov       x0, x25                                      
0001c920 bl        #0x58d54                                      ; _objc_enumerationMutation
0001c924 ldr       x8, [sp, #0x18]                              
0001c928 ldr       x27, [x8, x22, lsl #3]                       
0001c92c ldr       x0, [x23, #0xb30]                             ; &_OBJC_CLASS_$_NSString
0001c930 bl        #0x58dc4                                      ; _objc_opt_class
0001c934 mov       x1, x0                                       
0001c938 mov       x0, x27                                      
0001c93c bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
0001c940 tbz       w0, #0, #0x1c950                             
0001c944 mov       x0, x24                                      
0001c948 mov       x2, x27                                      
0001c94c bl        #0x593e0                                      ; objc_msgSend$addObject:
0001c950 add       x22, x22, #1                                 
0001c954 cmp       x26, x22                                     
0001c958 b.ne      #0x1c90c                                     
0001c95c add       x2, sp, #0x10                                
0001c960 add       x3, sp, #0x50                                
0001c964 mov       x0, x25                                      
0001c968 mov       w4, #0x10                                    
0001c96c bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001c970 mov       x26, x0                                      
0001c974 cbnz      x0, #0x1c908                                 
0001c978 mov       x0, x25                                      
0001c97c bl        #0x58e04                                      ; _objc_release
0001c980 mov       x0, x24                                      
0001c984 mov       x2, x21                                      
0001c988 bl        #0x593e0                                      ; objc_msgSend$addObject:
0001c98c mov       x0, x24                                      
0001c990 bl        #0x59840                                      ; objc_msgSend$array
0001c994 mov       x29, x29                                     
0001c998 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001c99c mov       x25, x0                                      
0001c9a0 adrp      x8, #0x8c000                                 
0001c9a4 ldr       x0, [x8, #0xee0]                             
0001c9a8 mov       x2, x25                                      
0001c9ac ldr       x22, [sp]                                    
0001c9b0 mov       x3, x22                                      
0001c9b4 bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
0001c9b8 mov       x0, x25                                      
0001c9bc bl        #0x58e04                                      ; _objc_release
0001c9c0 adrp      x8, #0x8c000                                 
0001c9c4 ldr       x0, [x8, #0xee8]                             
0001c9c8 mov       x2, x22                                      
0001c9cc bl        #0x5d360                                      ; objc_msgSend$removeObject:
0001c9d0 mov       x0, x24                                      
0001c9d4 bl        #0x58e04                                      ; _objc_release
0001c9d8 mov       x0, x22                                      
0001c9dc bl        #0x58e04                                      ; _objc_release
0001c9e0 ldr       x22, [sp, #8]                                
0001c9e4 mov       x0, x22                                      
0001c9e8 bl        #0x58e04                                      ; _objc_release
0001c9ec mov       x0, x21                                      
0001c9f0 bl        #0x58e04                                      ; _objc_release
0001c9f4 mov       x0, x20                                      
0001c9f8 bl        #0x58e04                                      ; _objc_release
0001c9fc mov       x0, x19                                      
0001ca00 bl        #0x58e04                                      ; _objc_release
0001ca04 ldur      x8, [x29, #-0x60]                            
0001ca08 adrp      x9, #0x78000                                 
0001ca0c ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001ca10 ldr       x9, [x9]                                      ; &___objc_personality_v0
0001ca14 cmp       x9, x8                                       
0001ca18 b.ne      #0x1ca3c                                     
0001ca1c ldp       x29, x30, [sp, #0x130]                       
0001ca20 ldp       x20, x19, [sp, #0x120]                       
0001ca24 ldp       x22, x21, [sp, #0x110]                       
0001ca28 ldp       x24, x23, [sp, #0x100]                       
0001ca2c ldp       x26, x25, [sp, #0xf0]                        
0001ca30 ldp       x28, x27, [sp, #0xe0]                        
0001ca34 add       sp, sp, #0x140                               
0001ca38 retab                                                  
0001ca3c bl        #0x58a94                                      ; ___stack_chk_fail
0001ca40 b         #0x1c624                                      ; _LGWritePreferenceObject
0001ca44 pacibsp                                                
0001ca48 sub       sp, sp, #0x30                                
0001ca4c stp       x20, x19, [sp, #0x10]                        
0001ca50 stp       x29, x30, [sp, #0x20]                        
0001ca54 add       x29, sp, #0x20                               
0001ca58 bl        #0x58e14                                      ; _objc_retain
0001ca5c mov       x19, x0                                      
0001ca60 bl        #0x5bf00                                      ; objc_msgSend$length
0001ca64 cbz       x0, #0x1caec                                 
0001ca68 bl        #0x1bdc8                                      ; _LGHasPendingPreferences
0001ca6c mov       x20, x0                                      
0001ca70 adrp      x8, #0x8c000                                 
0001ca74 ldr       x8, [x8, #0xef8]                             
0001ca78 cmn       x8, #1                                       
0001ca7c b.ne      #0x1cb10                                     
0001ca80 mov       x0, x19                                      
0001ca84 bl        #0x1c724                                     
0001ca88 adrp      x8, #0x8c000                                 
0001ca8c ldr       x0, [x8, #0xee0]                             
0001ca90 mov       x2, x19                                      
0001ca94 bl        #0x5d380                                      ; objc_msgSend$removeObjectForKey:
0001ca98 adrp      x8, #0x8c000                                 
0001ca9c ldr       x0, [x8, #0xee8]                             
0001caa0 mov       x2, x19                                      
0001caa4 bl        #0x593e0                                      ; objc_msgSend$addObject:
0001caa8 str       x19, [sp]                                    
0001caac adrp      x0, #0x7c000                                 
0001cab0 add       x0, x0, #0x1d0                                ; @'[prefs-pending] staged removal %@'
0001cab4 bl        #0x44c64                                      ; _LGLog
0001cab8 tbnz      w20, #0, #0x1caec                            
0001cabc adrp      x8, #0x8b000                                 
0001cac0 ldr       x0, [x8, #0xac8]                              ; &_OBJC_CLASS_$_NSNotificationCenter
0001cac4 bl        #0x5a740                                      ; objc_msgSend$defaultCenter
0001cac8 mov       x29, x29                                     
0001cacc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001cad0 mov       x20, x0                                      
0001cad4 adrp      x2, #0x7c000                                 
0001cad8 add       x2, x2, #0x30                                 ; @'LGPrefsPendingChangedNotification'
0001cadc mov       x3, #0                                       
0001cae0 bl        #0x5cd40                                      ; objc_msgSend$postNotificationName:object:
0001cae4 mov       x0, x20                                      
0001cae8 bl        #0x58e04                                      ; _objc_release
0001caec mov       x0, x19                                      
0001caf0 ldp       x29, x30, [sp, #0x20]                        
0001caf4 ldp       x20, x19, [sp, #0x10]                        
0001caf8 add       sp, sp, #0x30                                
0001cafc autibsp                                                
0001cb00 eor       x16, x30, x30, lsl #1                        
0001cb04 tbz       x16, #0x3e, #0x1cb0c                         
0001cb08 brk       #0xc471                                      
0001cb0c b         #0x58e04                                      ; _objc_release
0001cb10 bl        #0x58568                                     
0001cb14 b         #0x1ca80                                     
