; prefs arm64e unslid VA [0x4658c,0x469f4); slice_offset=0xa0000
0004658c pacibsp                                                
00046590 sub       sp, sp, #0x90                                
00046594 stp       d11, d10, [sp, #0x30]                        
00046598 stp       d9, d8, [sp, #0x40]                          
0004659c stp       x24, x23, [sp, #0x50]                        
000465a0 stp       x22, x21, [sp, #0x60]                        
000465a4 stp       x20, x19, [sp, #0x70]                        
000465a8 stp       x29, x30, [sp, #0x80]                        
000465ac add       x29, sp, #0x80                               
000465b0 mov       x20, x3                                      
000465b4 fmov      d8, d3                                       
000465b8 fmov      d9, d2                                       
000465bc fmov      d10, d1                                      
000465c0 fmov      d11, d0                                      
000465c4 mov       x21, x0                                      
000465c8 mov       x0, x2                                       
000465cc bl        #0x58e14                                      ; _objc_retain
000465d0 mov       x19, x0                                      
000465d4 mov       x0, x20                                      
000465d8 bl        #0x58e14                                      ; _objc_retain
000465dc mov       x20, x0                                      
000465e0 adrp      x8, #0x8b000                                 
000465e4 ldr       x8, [x8, #0xe58]                              ; &LGLiveBackdropView
000465e8 stp       x21, x8, [sp, #0x20]                         
000465ec adrp      x8, #0x89000                                 
000465f0 ldr       x1, [x8, #0xb30]                              ; SEL initWithFrame:
000465f4 add       x0, sp, #0x20                                
000465f8 fmov      d0, d11                                      
000465fc fmov      d1, d10                                      
00046600 fmov      d2, d9                                       
00046604 fmov      d3, d8                                       
00046608 bl        #0x58db4                                      ; _objc_msgSendSuper2
0004660c mov       x21, x0                                      
00046610 cbz       x0, #0x469b0                                 
00046614 adrp      x8, #0x8c000                                 
00046618 ldrsw     x8, [x8, #0x108]                             
0004661c mov       x9, #-1                                      
00046620 str       x9, [x21, x8]                                
00046624 adrp      x8, #0x8c000                                 
00046628 ldrsw     x8, [x8, #0x114]                             
0004662c mov       x9, #-0x4010000000000000                     
00046630 str       x9, [x21, x8]                                
00046634 adrp      x8, #0x8c000                                 
00046638 ldrsw     x8, [x8, #0x118]                             
0004663c add       x8, x21, x8                                  
00046640 adrp      x9, #0x78000                                 
00046644 ldr       x9, [x9, #0x5d0]                              ; &_CGRectNull
00046648 ldp       q1, q0, [x9]                                 
0004664c stp       q1, q0, [x8]                                 
00046650 mov       x0, x20                                      
00046654 bl        #0x5a4e0                                      ; objc_msgSend$copy
00046658 adrp      x8, #0x8c000                                 
0004665c ldrsw     x9, [x8, #0x100]                             
00046660 ldr       x8, [x21, x9]                                
00046664 str       x0, [x21, x9]                                
00046668 mov       x0, x8                                       
0004666c bl        #0x58e04                                      ; _objc_release
00046670 adrp      x8, #0x8c000                                 
00046674 add       x8, x8, #0xfd0                               
00046678 mov       w9, #1                                       
0004667c ldaddal   w9, w8, [x8]                                 
00046680 add       w8, w8, #1                                   
00046684 adrp      x9, #0x8c000                                 
00046688 ldrsw     x23, [x9, #0x11c]                            
0004668c str       w8, [x21, x23]                               
00046690 mov       x0, x19                                      
00046694 bl        #0x5bf00                                      ; objc_msgSend$length
00046698 cbz       x0, #0x466a8                                 
0004669c mov       x0, x19                                      
000466a0 bl        #0x5a4e0                                      ; objc_msgSend$copy
000466a4 b         #0x466f0                                     
000466a8 adrp      x8, #0x8c000                                 
000466ac ldr       x8, [x8, #0xfd8]                             
000466b0 cmn       x8, #1                                       
000466b4 b.ne      #0x469ec                                     
000466b8 adrp      x8, #0x8b000                                 
000466bc ldr       x22, [x8, #0xb30]                             ; &_OBJC_CLASS_$_NSString
000466c0 bl        #0x58c54                                      ; _getpid
000466c4 adrp      x8, #0x8c000                                 
000466c8 ldr       w9, [x21, x23]                               
000466cc ldr       w8, [x8, #0xfd4]                             
000466d0 stp       x8, x9, [sp, #8]                             
000466d4 str       x0, [sp]                                     
000466d8 adrp      x2, #0x80000                                 
000466dc add       x2, x2, #0x2f0                                ; @'dylv.liquidglass.p%d.%08x.g%u'
000466e0 mov       x0, x22                                      
000466e4 bl        #0x60740                                      ; objc_msgSend$stringWithFormat:
000466e8 mov       x29, x29                                     
000466ec bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000466f0 adrp      x8, #0x8c000                                 
000466f4 ldrsw     x9, [x8, #0x120]                             
000466f8 ldr       x8, [x21, x9]                                
000466fc str       x0, [x21, x9]                                
00046700 mov       x0, x8                                       
00046704 bl        #0x58e04                                      ; _objc_release
00046708 mov       x0, x21                                      
0004670c mov       w2, #0                                       
00046710 bl        #0x60020                                      ; objc_msgSend$setUserInteractionEnabled:
00046714 adrp      x8, #0x8b000                                 
00046718 ldr       x0, [x8, #0xaa0]                              ; &_OBJC_CLASS_$_UIColor
0004671c bl        #0x59de0                                      ; objc_msgSend$clearColor
00046720 mov       x29, x29                                     
00046724 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00046728 mov       x22, x0                                      
0004672c mov       x0, x21                                      
00046730 mov       x2, x22                                      
00046734 bl        #0x5dbe0                                      ; objc_msgSend$setBackgroundColor:
00046738 mov       x0, x22                                      
0004673c bl        #0x58e04                                      ; _objc_release
00046740 mov       x0, x21                                      
00046744 mov       w2, #0                                       
00046748 bl        #0x5f200                                      ; objc_msgSend$setOpaque:
0004674c adrp      x0, #0x80000                                 
00046750 add       x0, x0, #0x310                                ; @'CABackdropLayer'
00046754 bl        #0x58964                                      ; _NSClassFromString
00046758 mov       x22, x0                                      
0004675c cbnz      x0, #0x46770                                 
00046760 adrp      x8, #0x8b000                                 
00046764 ldr       x0, [x8, #0xd50]                              ; &_OBJC_CLASS_$_CALayer
00046768 bl        #0x58dc4                                      ; _objc_opt_class
0004676c mov       x22, x0                                      
00046770 mov       x0, x21                                      
00046774 bl        #0x5bea0                                      ; objc_msgSend$layer
00046778 mov       x29, x29                                     
0004677c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00046780 mov       x23, x0                                      
00046784 mov       x1, x22                                      
00046788 bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
0004678c tbz       w0, #0, #0x467d4                             
00046790 adrp      x8, #0x8b000                                 
00046794 ldr       x0, [x8, #0xd50]                              ; &_OBJC_CLASS_$_CALayer
00046798 bl        #0x58dc4                                      ; _objc_opt_class
0004679c mov       x24, x0                                      
000467a0 mov       x0, x23                                      
000467a4 bl        #0x58e04                                      ; _objc_release
000467a8 cmp       x22, x24                                     
000467ac b.eq      #0x467dc                                     
000467b0 mov       x0, x21                                      
000467b4 bl        #0x5bea0                                      ; objc_msgSend$layer
000467b8 mov       x29, x29                                     
000467bc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000467c0 adrp      x8, #0x8c000                                 
000467c4 ldrsw     x8, [x8, #0x110]                             
000467c8 ldr       x22, [x21, x8]                               
000467cc str       x0, [x21, x8]                                
000467d0 b         #0x46830                                     
000467d4 mov       x0, x23                                      
000467d8 bl        #0x58e04                                      ; _objc_release
000467dc mov       x0, x22                                      
000467e0 bl        #0x5bea0                                      ; objc_msgSend$layer
000467e4 mov       x29, x29                                     
000467e8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000467ec adrp      x8, #0x8c000                                 
000467f0 ldrsw     x23, [x8, #0x110]                            
000467f4 ldr       x8, [x21, x23]                               
000467f8 str       x0, [x21, x23]                               
000467fc mov       x0, x8                                       
00046800 bl        #0x58e04                                      ; _objc_release
00046804 mov       x0, x21                                      
00046808 bl        #0x59b20                                      ; objc_msgSend$bounds
0004680c ldr       x0, [x21, x23]                               
00046810 bl        #0x5e7e0                                      ; objc_msgSend$setFrame:
00046814 mov       x0, x21                                      
00046818 bl        #0x5bea0                                      ; objc_msgSend$layer
0004681c mov       x29, x29                                     
00046820 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00046824 mov       x22, x0                                      
00046828 ldr       x2, [x21, x23]                               
0004682c bl        #0x59480                                      ; objc_msgSend$addSublayer:
00046830 mov       x0, x22                                      
00046834 bl        #0x58e04                                      ; _objc_release
00046838 mov       x0, x21                                      
0004683c mov       w2, #0x12                                    
00046840 bl        #0x5dba0                                      ; objc_msgSend$setAutoresizingMask:
00046844 adrp      x22, #0x8c000                                
00046848 ldr       x8, [x22, #0xfc8]                            
0004684c cbnz      x8, #0x46874                                 
00046850 adrp      x8, #0x8b000                                 
00046854 ldr       x0, [x8, #0xd88]                              ; &_OBJC_CLASS_$_NSHashTable
00046858 bl        #0x614e0                                      ; objc_msgSend$weakObjectsHashTable
0004685c mov       x29, x29                                     
00046860 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00046864 ldr       x8, [x22, #0xfc8]                            
00046868 str       x0, [x22, #0xfc8]                            
0004686c mov       x0, x8                                       
00046870 bl        #0x58e04                                      ; _objc_release
00046874 adrp      x8, #0x8d000                                 
00046878 ldrb      w9, [x8, #0x10]                              
0004687c tbnz      w9, #0, #0x468e0                             
00046880 mov       w9, #1                                       
00046884 strb      w9, [x8, #0x10]                              
00046888 bl        #0x58774                                      ; _CFNotificationCenterGetDarwinNotifyCenter
0004688c adrp      x3, #0x80000                                 
00046890 add       x3, x3, #0x570                                ; @'dylv.liquidglass/ParametersReloaded'
00046894 adrp      x16, #0x4c000                                
00046898 add       x16, x16, #0x160                             
0004689c paciza    x16                                          
000468a0 mov       x2, x16                                      
000468a4 mov       x1, #0                                       
000468a8 mov       x4, #0                                       
000468ac mov       w5, #4                                       
000468b0 bl        #0x58764                                      ; _CFNotificationCenterAddObserver
000468b4 bl        #0x58774                                      ; _CFNotificationCenterGetDarwinNotifyCenter
000468b8 adrp      x3, #0x80000                                 
000468bc add       x3, x3, #0x590                                ; @'dylv.liquidglass/SpecularTypeChanged'
000468c0 adrp      x16, #0x4c000                                
000468c4 add       x16, x16, #0x174                             
000468c8 paciza    x16                                          
000468cc mov       x2, x16                                      
000468d0 mov       x1, #0                                       
000468d4 mov       x4, #0                                       
000468d8 mov       w5, #4                                       
000468dc bl        #0x58764                                      ; _CFNotificationCenterAddObserver
000468e0 ldr       x0, [x22, #0xfc8]                            
000468e4 mov       x2, x21                                      
000468e8 bl        #0x593e0                                      ; objc_msgSend$addObject:
000468ec adrp      x23, #0x8d000                                
000468f0 ldrb      w8, [x23, #0x12]                             
000468f4 adrp      x22, #0x8c000                                
000468f8 tbnz      w8, #0, #0x46994                             
000468fc bl        #0x4c750                                     
00046900 cbz       w0, #0x46994                                 
00046904 ldr       x8, [x22, #0xfe0]                            
00046908 cbnz      x8, #0x46930                                 
0004690c adrp      x8, #0x8b000                                 
00046910 ldr       x0, [x8, #0xd88]                              ; &_OBJC_CLASS_$_NSHashTable
00046914 bl        #0x614e0                                      ; objc_msgSend$weakObjectsHashTable
00046918 mov       x29, x29                                     
0004691c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00046920 ldr       x8, [x22, #0xfe0]                            
00046924 str       x0, [x22, #0xfe0]                            
00046928 mov       x0, x8                                       
0004692c bl        #0x58e04                                      ; _objc_release
00046930 adrp      x24, #0x8c000                                
00046934 ldr       x8, [x24, #0xfe8]                            
00046938 cbnz      x8, #0x46958                                 
0004693c adrp      x8, #0x8b000                                 
00046940 ldr       x0, [x8, #0xd98]                              ; &_OBJC_CLASS_$_CMMotionManager
00046944 bl        #0x58de4                                      ; _objc_opt_new
00046948 ldr       x8, [x24, #0xfe8]                            
0004694c str       x0, [x24, #0xfe8]                            
00046950 mov       x0, x8                                       
00046954 bl        #0x58e04                                      ; _objc_release
00046958 mov       w8, #1                                       
0004695c strb      w8, [x23, #0x12]                             
00046960 bl        #0x58774                                      ; _CFNotificationCenterGetDarwinNotifyCenter
00046964 adrp      x3, #0x7f000                                 
00046968 add       x3, x3, #0xcf0                                ; @'dylv.liquidassprefs/Reload'
0004696c adrp      x16, #0x4c000                                
00046970 add       x16, x16, #0x908                             
00046974 paciza    x16                                          
00046978 mov       x2, x16                                      
0004697c mov       x1, #0                                       
00046980 mov       x4, #0                                       
00046984 mov       w5, #4                                       
00046988 bl        #0x58764                                      ; _CFNotificationCenterAddObserver
0004698c bl        #0x4c3d8                                     
00046990 bl        #0x4c51c                                     
00046994 ldr       x0, [x22, #0xfe0]                            
00046998 mov       x2, x21                                      
0004699c bl        #0x593e0                                      ; objc_msgSend$addObject:
000469a0 mov       x0, x21                                      
000469a4 bl        #0x597a0                                      ; objc_msgSend$applyFilters
000469a8 mov       x0, x21                                      
000469ac bl        #0x58e14                                      ; _objc_retain
000469b0 mov       x0, x20                                      
000469b4 bl        #0x58e04                                      ; _objc_release
000469b8 mov       x0, x19                                      
000469bc bl        #0x58e04                                      ; _objc_release
000469c0 mov       x0, x21                                      
000469c4 bl        #0x58e04                                      ; _objc_release
000469c8 mov       x0, x21                                      
000469cc ldp       x29, x30, [sp, #0x80]                        
000469d0 ldp       x20, x19, [sp, #0x70]                        
000469d4 ldp       x22, x21, [sp, #0x60]                        
000469d8 ldp       x24, x23, [sp, #0x50]                        
000469dc ldp       d9, d8, [sp, #0x40]                          
000469e0 ldp       d11, d10, [sp, #0x30]                        
000469e4 add       sp, sp, #0x90                                
000469e8 retab                                                  
000469ec bl        #0x58694                                     
000469f0 b         #0x466b8                                     
