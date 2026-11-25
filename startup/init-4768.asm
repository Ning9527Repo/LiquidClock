# arm64e unslid VA 0x4768..0x4c30; FAT offset 0xfc000
00004768 pacibsp                                                   
0000476c sub       sp, sp, #0x60                                   
00004770 stp       x24, x23, [sp, #0x20]                           
00004774 stp       x22, x21, [sp, #0x30]                           
00004778 stp       x20, x19, [sp, #0x40]                           
0000477c stp       x29, x30, [sp, #0x50]                           
00004780 add       x29, sp, #0x50                                  
00004784 bl        #0xa1be4                                         ; _LGIsSpringBoardProcess
00004788 cbz       w0, #0x47ec                                     
0000478c mov       w8, #0x1a4                                      
00004790 str       x8, [sp]                                        
00004794 adrp      x0, #0xb5000                                    
00004798 add       x0, x0, #0xf32                                   ; 0xb5f32 | '/var/mobile/Library/Accessibility/lg-springboard.log'
0000479c mov       w1, #0x601                                      
000047a0 movk      w1, #0x100, lsl #16                             
000047a4 bl        #0xa47f4                                         ; _open
000047a8 tbnz      w0, #0x1f, #0x47b4                              
000047ac bl        #0xa42b4                                         ; _close
000047b0 b         #0x47d0                                         
000047b4 bl        #0xa41a4                                         ; ___error
000047b8 ldr       w0, [x0]                                        
000047bc bl        #0xa4894                                         ; _strerror
000047c0 str       x0, [sp]                                        
000047c4 adrp      x0, #0xd7000                                    
000047c8 add       x0, x0, #0x910                                   ; 0xd7910 | @'[LiquidAss] cannot reset SpringBoard log: %s'
000047cc bl        #0xa4084                                         ; _NSLog
000047d0 bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
000047d4 adrp      x1, #0xd7000                                    
000047d8 add       x1, x1, #0x930                                   ; 0xd7930 | @'dylv.liquidass/ResetBackboardLog'
000047dc mov       x2, #0                                          
000047e0 mov       x3, #0                                          
000047e4 mov       w4, #1                                          
000047e8 bl        #0xa3ad4                                         ; _CFNotificationCenterPostNotification
000047ec adrp      x8, #0xec000                                    
000047f0 ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
000047f4 bl        #0xaada0                                         ; _objc_msgSend
000047f8 mov       x29, x29                                        
000047fc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00004800 mov       x19, x0                                         
00004804 cbz       x0, #0x482c                                     
00004808 add       x8, sp, #8                                      
0000480c mov       x0, x19                                         
00004810 bl        #0xaa300                                         ; _objc_msgSend
00004814 ldr       x8, [sp, #8]                                    
00004818 cmp       x8, #0x19                                       
0000481c b.le      #0x4834                                         
00004820 mov       x0, x19                                         
00004824 bl        #0xa46f4                                         ; _objc_release
00004828 b         #0x4b94                                         
0000482c stp       xzr, xzr, [sp, #8]                              
00004830 str       xzr, [sp, #0x18]                                
00004834 adrp      x0, #0xd7000                                    
00004838 add       x0, x0, #0x950                                   ; 0xd7950 | @'_UIBatteryView'
0000483c bl        #0xa4064                                         ; _NSClassFromString
00004840 mov       x20, x0                                         
00004844 mov       x0, x19                                         
00004848 bl        #0xa46f4                                         ; _objc_release
0000484c cbz       x20, #0x4b94                                    
00004850 adrp      x8, #0xec000                                    
00004854 ldr       x0, [x8, #0x4b0]                                 ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
00004858 bl        #0xb1a00                                         ; _objc_msgSend
0000485c mov       x29, x29                                        
00004860 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00004864 adrp      x9, #0xee000                                    
00004868 ldr       x8, [x9, #0xa98]                                 ; 0xeea98
0000486c str       x0, [x9, #0xa98]                                 ; 0xeea98
00004870 mov       x0, x8                                          
00004874 bl        #0xa46f4                                         ; _objc_release
00004878 adrp      x8, #0xec000                                    
0000487c ldr       x0, [x8, #0x4b8]                                 ; 0xec4b8 | &_OBJC_CLASS_$_UIBezierPath
00004880 adrp      x8, #0xe8000                                    
00004884 ldr       x1, [x8, #0x808]                                 ; 0xe8808 | SEL _continuousRoundedRectBezierPath:withRoundedCorners:cornerRadius:segments:
00004888 bl        #0xa46e4                                         ; _objc_opt_respondsToSelector
0000488c tbz       w0, #0, #0x48f0                                 
00004890 adrp      x0, #0xb5000                                    
00004894 add       x0, x0, #0xfc4                                   ; 0xb5fc4 | 'UIBezierPath'
00004898 bl        #0xa4664                                         ; _objc_getClass
0000489c bl        #0xa47d4                                         ; _object_getClass
000048a0 mov       x19, x0                                         
000048a4 adrp      x8, #0xe8000                                    
000048a8 ldr       x1, [x8, #0xbf0]                                 ; 0xe8bf0 | SEL bezierPathWithRoundedRect:cornerRadius:
000048ac adrp      x3, #0xee000                                    
000048b0 add       x3, x3, #0xaa0                                   ; 0xeeaa0
000048b4 adrp      x16, #0x4000                                    
000048b8 add       x16, x16, #0xc30                                 ; 0x4c30
000048bc paciza    x16                                             
000048c0 mov       x2, x16                                         
000048c4 bl        #0xa4054                                         ; _MSHookMessageEx
000048c8 adrp      x8, #0xe8000                                    
000048cc ldr       x1, [x8, #0xbe8]                                 ; 0xe8be8 | SEL bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:
000048d0 adrp      x3, #0xee000                                    
000048d4 add       x3, x3, #0xaa8                                   ; 0xeeaa8
000048d8 adrp      x16, #0x4000                                    
000048dc add       x16, x16, #0xcc0                                 ; 0x4cc0
000048e0 paciza    x16                                             
000048e4 mov       x2, x16                                         
000048e8 mov       x0, x19                                         
000048ec bl        #0xa4054                                         ; _MSHookMessageEx
000048f0 adrp      x0, #0xb5000                                    
000048f4 add       x0, x0, #0xfb5                                   ; 0xb5fb5 | '_UIBatteryView'
000048f8 bl        #0xa4664                                         ; _objc_getClass
000048fc mov       x23, x0                                         
00004900 adrp      x8, #0xeb000                                    
00004904 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
00004908 adrp      x3, #0xee000                                    
0000490c add       x3, x3, #0xab0                                   ; 0xeeab0
00004910 adrp      x16, #0x4000                                    
00004914 add       x16, x16, #0xd48                                 ; 0x4d48
00004918 paciza    x16                                             
0000491c mov       x2, x16                                         
00004920 bl        #0xa4054                                         ; _MSHookMessageEx
00004924 adrp      x8, #0xeb000                                    
00004928 ldr       x19, [x8, #0xf08]                                ; 0xebf08 | SEL _updateFillLayer
0000492c adrp      x3, #0xee000                                    
00004930 add       x3, x3, #0xab8                                   ; 0xeeab8
00004934 adrp      x16, #0x5000                                    
00004938 add       x16, x16, #0x9c0                                 ; 0x59c0
0000493c paciza    x16                                             
00004940 mov       x2, x16                                         
00004944 mov       x0, x23                                         
00004948 mov       x1, x19                                         
0000494c bl        #0xa4054                                         ; _MSHookMessageEx
00004950 adrp      x8, #0xeb000                                    
00004954 ldr       x20, [x8, #0xf10]                                ; 0xebf10 | SEL _updateBodyLayers
00004958 adrp      x3, #0xee000                                    
0000495c add       x3, x3, #0xac0                                   ; 0xeeac0
00004960 adrp      x16, #0x5000                                    
00004964 add       x16, x16, #0xa3c                                 ; 0x5a3c
00004968 paciza    x16                                             
0000496c mov       x2, x16                                         
00004970 mov       x0, x23                                         
00004974 mov       x1, x20                                         
00004978 bl        #0xa4054                                         ; _MSHookMessageEx
0000497c adrp      x8, #0xe8000                                    
00004980 ldr       x21, [x8, #0x840]                                ; 0xe8840 | SEL _updateBodyColors
00004984 adrp      x3, #0xee000                                    
00004988 add       x3, x3, #0xac8                                   ; 0xeeac8
0000498c adrp      x16, #0x5000                                    
00004990 add       x16, x16, #0xaa4                                 ; 0x5aa4
00004994 paciza    x16                                             
00004998 mov       x2, x16                                         
0000499c mov       x0, x23                                         
000049a0 mov       x1, x21                                         
000049a4 bl        #0xa4054                                         ; _MSHookMessageEx
000049a8 adrp      x8, #0xe9000                                    
000049ac ldr       x1, [x8, #0xf90]                                 ; 0xe9f90 | SEL pinColor
000049b0 adrp      x3, #0xee000                                    
000049b4 add       x3, x3, #0xad0                                   ; 0xeead0
000049b8 adrp      x16, #0x5000                                    
000049bc add       x16, x16, #0xae4                                 ; 0x5ae4
000049c0 paciza    x16                                             
000049c4 mov       x2, x16                                         
000049c8 mov       x0, x23                                         
000049cc bl        #0xa4054                                         ; _MSHookMessageEx
000049d0 adrp      x8, #0xeb000                                    
000049d4 ldr       x1, [x8, #0xf18]                                 ; 0xebf18 | SEL rounded
000049d8 adrp      x3, #0xee000                                    
000049dc add       x3, x3, #0xad8                                   ; 0xeead8
000049e0 adrp      x16, #0x5000                                    
000049e4 add       x16, x16, #0xca4                                 ; 0x5ca4
000049e8 paciza    x16                                             
000049ec mov       x2, x16                                         
000049f0 mov       x0, x23                                         
000049f4 bl        #0xa4054                                         ; _MSHookMessageEx
000049f8 adrp      x8, #0xeb000                                    
000049fc ldr       x22, [x8, #0xf20]                                ; 0xebf20 | SEL _percentageFontSizeForIconSize:
00004a00 adrp      x3, #0xee000                                    
00004a04 add       x3, x3, #0xae0                                   ; 0xeeae0
00004a08 adrp      x16, #0x5000                                    
00004a0c add       x16, x16, #0xd00                                 ; 0x5d00
00004a10 paciza    x16                                             
00004a14 mov       x2, x16                                         
00004a18 mov       x0, x23                                         
00004a1c mov       x1, x22                                         
00004a20 bl        #0xa4054                                         ; _MSHookMessageEx
00004a24 adrp      x8, #0xeb000                                    
00004a28 ldr       x1, [x8, #0xf28]                                 ; 0xebf28 | SEL _percentageFontSizeForTraitCollection:
00004a2c adrp      x3, #0xee000                                    
00004a30 add       x3, x3, #0xae8                                   ; 0xeeae8
00004a34 adrp      x16, #0x5000                                    
00004a38 add       x16, x16, #0xd78                                 ; 0x5d78
00004a3c paciza    x16                                             
00004a40 mov       x2, x16                                         
00004a44 mov       x0, x23                                         
00004a48 bl        #0xa4054                                         ; _MSHookMessageEx
00004a4c adrp      x8, #0xeb000                                    
00004a50 ldr       x1, [x8, #0xf30]                                 ; 0xebf30 | SEL _outsideCornerRadiusForTraitCollection:
00004a54 adrp      x3, #0xee000                                    
00004a58 add       x3, x3, #0xaf0                                   ; 0xeeaf0
00004a5c adrp      x16, #0x5000                                    
00004a60 add       x16, x16, #0xdf0                                 ; 0x5df0
00004a64 paciza    x16                                             
00004a68 mov       x2, x16                                         
00004a6c mov       x0, x23                                         
00004a70 bl        #0xa4054                                         ; _MSHookMessageEx
00004a74 adrp      x8, #0xeb000                                    
00004a78 ldr       x1, [x8, #0xf38]                                 ; 0xebf38 | SEL _insideCornerRadiusForTraitCollection:
00004a7c adrp      x3, #0xee000                                    
00004a80 add       x3, x3, #0xaf8                                   ; 0xeeaf8
00004a84 adrp      x16, #0x5000                                    
00004a88 add       x16, x16, #0xeec                                 ; 0x5eec
00004a8c paciza    x16                                             
00004a90 mov       x2, x16                                         
00004a94 mov       x0, x23                                         
00004a98 bl        #0xa4054                                         ; _MSHookMessageEx
00004a9c adrp      x8, #0xeb000                                    
00004aa0 ldr       x1, [x8, #0xf40]                                 ; 0xebf40 | SEL _fillLayerFrame:cornerRadius:
00004aa4 adrp      x3, #0xee000                                    
00004aa8 add       x3, x3, #0xb00                                   ; 0xeeb00
00004aac adrp      x16, #0x5000                                    
00004ab0 add       x16, x16, #0xf6c                                 ; 0x5f6c
00004ab4 paciza    x16                                             
00004ab8 mov       x2, x16                                         
00004abc mov       x0, x23                                         
00004ac0 bl        #0xa4054                                         ; _MSHookMessageEx
00004ac4 adrp      x0, #0xd7000                                    
00004ac8 add       x0, x0, #0x970                                   ; 0xd7970 | @'_UIStaticBatteryView'
00004acc bl        #0xa4064                                         ; _NSClassFromString
00004ad0 cbz       x0, #0x4b4c                                     
00004ad4 adrp      x0, #0xb5000                                    
00004ad8 add       x0, x0, #0xfd1                                   ; 0xb5fd1 | '_UIStaticBatteryView'
00004adc bl        #0xa4664                                         ; _objc_getClass
00004ae0 mov       x23, x0                                         
00004ae4 adrp      x3, #0xee000                                    
00004ae8 add       x3, x3, #0xb08                                   ; 0xeeb08
00004aec adrp      x16, #0x6000                                    
00004af0 add       x16, x16, #0x188                                 ; 0x6188
00004af4 paciza    x16                                             
00004af8 mov       x2, x16                                         
00004afc mov       x1, x19                                         
00004b00 bl        #0xa4054                                         ; _MSHookMessageEx
00004b04 adrp      x3, #0xee000                                    
00004b08 add       x3, x3, #0xb10                                   ; 0xeeb10
00004b0c adrp      x16, #0x6000                                    
00004b10 add       x16, x16, #0x204                                 ; 0x6204
00004b14 paciza    x16                                             
00004b18 mov       x2, x16                                         
00004b1c mov       x0, x23                                         
00004b20 mov       x1, x20                                         
00004b24 bl        #0xa4054                                         ; _MSHookMessageEx
00004b28 adrp      x3, #0xee000                                    
00004b2c add       x3, x3, #0xb18                                   ; 0xeeb18
00004b30 adrp      x16, #0x6000                                    
00004b34 add       x16, x16, #0x26c                                 ; 0x626c
00004b38 paciza    x16                                             
00004b3c mov       x2, x16                                         
00004b40 mov       x0, x23                                         
00004b44 mov       x1, x21                                         
00004b48 bl        #0xa4054                                         ; _MSHookMessageEx
00004b4c adrp      x0, #0xd7000                                    
00004b50 add       x0, x0, #0x990                                   ; 0xd7990 | @'STUIStatusBarStaticBatteryView'
00004b54 bl        #0xa4064                                         ; _NSClassFromString
00004b58 cbz       x0, #0x4b88                                     
00004b5c adrp      x0, #0xb5000                                    
00004b60 add       x0, x0, #0xfe6                                   ; 0xb5fe6 | 'STUIStatusBarStaticBatteryView'
00004b64 bl        #0xa4664                                         ; _objc_getClass
00004b68 adrp      x3, #0xee000                                    
00004b6c add       x3, x3, #0xb20                                   ; 0xeeb20
00004b70 adrp      x16, #0x6000                                    
00004b74 add       x16, x16, #0x2ac                                 ; 0x62ac
00004b78 paciza    x16                                             
00004b7c mov       x2, x16                                         
00004b80 mov       x1, x22                                         
00004b84 bl        #0xa4054                                         ; _MSHookMessageEx
00004b88 adrp      x0, #0xd4000                                    
00004b8c add       x0, x0, #0x9b8                                   ; 0xd49b8 | &__NSConcreteGlobalBlock
00004b90 bl        #0xa1f54                                         ; _LGObservePreferenceChanges
00004b94 bl        #0xa1be4                                         ; _LGIsSpringBoardProcess
00004b98 cbz       w0, #0x4c18                                     
00004b9c bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
00004ba0 adrp      x3, #0xd7000                                    
00004ba4 add       x3, x3, #0x8d0                                   ; 0xd78d0 | @'dylv.liquidassprefs/Respring'
00004ba8 adrp      x16, #0x6000                                    
00004bac add       x16, x16, #0x420                                 ; 0x6420
00004bb0 paciza    x16                                             
00004bb4 mov       x2, x16                                         
00004bb8 mov       x1, #0                                          
00004bbc mov       x4, #0                                          
00004bc0 mov       w5, #2                                          
00004bc4 bl        #0xa3ab4                                         ; _CFNotificationCenterAddObserver
00004bc8 bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
00004bcc adrp      x3, #0xd7000                                    
00004bd0 add       x3, x3, #0x8f0                                   ; 0xd78f0 | @'dylv.liquidass/BackboarddSafeMode'
00004bd4 adrp      x16, #0x6000                                    
00004bd8 add       x16, x16, #0x434                                 ; 0x6434
00004bdc paciza    x16                                             
00004be0 mov       x2, x16                                         
00004be4 mov       x1, #0                                          
00004be8 mov       x4, #0                                          
00004bec mov       w5, #4                                          
00004bf0 bl        #0xa3ab4                                         ; _CFNotificationCenterAddObserver
00004bf4 mov       x0, #0                                          
00004bf8 mov       w1, #0xca00                                     
00004bfc movk      w1, #0x3b9a, lsl #16                            
00004c00 bl        #0xa4354                                         ; _dispatch_time
00004c04 adrp      x1, #0xd4000                                    
00004c08 ldr       x1, [x1, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
00004c0c adrp      x2, #0xd4000                                    
00004c10 add       x2, x2, #0x9d8                                   ; 0xd49d8 | &__NSConcreteGlobalBlock
00004c14 bl        #0xa42d4                                         ; _dispatch_after
00004c18 ldp       x29, x30, [sp, #0x50]                           
00004c1c ldp       x20, x19, [sp, #0x40]                           
00004c20 ldp       x22, x21, [sp, #0x30]                           
00004c24 ldp       x24, x23, [sp, #0x20]                           
00004c28 add       sp, sp, #0x60                                   
00004c2c retab                                                     
