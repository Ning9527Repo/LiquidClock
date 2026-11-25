# arm64e unslid VA 0x1c870..0x1cd74; FAT offset 0xfc000
0001c870 pacibsp                                                   
0001c874 sub       sp, sp, #0x50                                   
0001c878 stp       x22, x21, [sp, #0x20]                           
0001c87c stp       x20, x19, [sp, #0x30]                           
0001c880 stp       x29, x30, [sp, #0x40]                           
0001c884 add       x29, sp, #0x40                                  
0001c888 adrp      x0, #0xb7000                                    
0001c88c add       x0, x0, #0x4f2                                   ; 0xb74f2 | 'CCUIContentModuleContainerView'
0001c890 bl        #0xa4664                                         ; _objc_getClass
0001c894 mov       x21, x0                                         
0001c898 adrp      x8, #0xeb000                                    
0001c89c ldr       x19, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
0001c8a0 adrp      x3, #0xee000                                    
0001c8a4 add       x3, x3, #0xe68                                   ; 0xeee68
0001c8a8 adrp      x16, #0x1c000                                   
0001c8ac add       x16, x16, #0xd74                                 ; 0x1cd74
0001c8b0 paciza    x16                                             
0001c8b4 mov       x2, x16                                         
0001c8b8 mov       x1, x19                                         
0001c8bc bl        #0xa4054                                         ; _MSHookMessageEx
0001c8c0 adrp      x8, #0xeb000                                    
0001c8c4 ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
0001c8c8 adrp      x3, #0xee000                                    
0001c8cc add       x3, x3, #0xe70                                   ; 0xeee70
0001c8d0 adrp      x16, #0x1c000                                   
0001c8d4 add       x16, x16, #0xdb4                                 ; 0x1cdb4
0001c8d8 paciza    x16                                             
0001c8dc mov       x2, x16                                         
0001c8e0 mov       x0, x21                                         
0001c8e4 mov       x1, x20                                         
0001c8e8 bl        #0xa4054                                         ; _MSHookMessageEx
0001c8ec adrp      x0, #0xb7000                                    
0001c8f0 add       x0, x0, #0x511                                   ; 0xb7511 | 'CCUIContentModuleContentContainerView'
0001c8f4 bl        #0xa4664                                         ; _objc_getClass
0001c8f8 adrp      x3, #0xee000                                    
0001c8fc add       x3, x3, #0xe78                                   ; 0xeee78
0001c900 adrp      x16, #0x1c000                                   
0001c904 add       x16, x16, #0xdf4                                 ; 0x1cdf4
0001c908 paciza    x16                                             
0001c90c mov       x2, x16                                         
0001c910 mov       x1, x19                                         
0001c914 bl        #0xa4054                                         ; _MSHookMessageEx
0001c918 adrp      x0, #0xb7000                                    
0001c91c add       x0, x0, #0x537                                   ; 0xb7537 | 'CCUIContentModuleContentContainer'
0001c920 bl        #0xa4664                                         ; _objc_getClass
0001c924 adrp      x3, #0xee000                                    
0001c928 add       x3, x3, #0xe80                                   ; 0xeee80
0001c92c adrp      x16, #0x1c000                                   
0001c930 add       x16, x16, #0xe34                                 ; 0x1ce34
0001c934 paciza    x16                                             
0001c938 mov       x2, x16                                         
0001c93c mov       x1, x19                                         
0001c940 bl        #0xa4054                                         ; _MSHookMessageEx
0001c944 adrp      x0, #0xb7000                                    
0001c948 add       x0, x0, #0x559                                   ; 0xb7559 | 'CCUIButtonModuleView'
0001c94c bl        #0xa4664                                         ; _objc_getClass
0001c950 mov       x21, x0                                         
0001c954 adrp      x3, #0xee000                                    
0001c958 add       x3, x3, #0xe88                                   ; 0xeee88
0001c95c adrp      x16, #0x1c000                                   
0001c960 add       x16, x16, #0xe74                                 ; 0x1ce74
0001c964 paciza    x16                                             
0001c968 mov       x2, x16                                         
0001c96c mov       x1, x19                                         
0001c970 bl        #0xa4054                                         ; _MSHookMessageEx
0001c974 adrp      x3, #0xee000                                    
0001c978 add       x3, x3, #0xe90                                   ; 0xeee90
0001c97c adrp      x16, #0x1c000                                   
0001c980 add       x16, x16, #0xeb4                                 ; 0x1ceb4
0001c984 paciza    x16                                             
0001c988 mov       x2, x16                                         
0001c98c mov       x0, x21                                         
0001c990 mov       x1, x20                                         
0001c994 bl        #0xa4054                                         ; _MSHookMessageEx
0001c998 adrp      x0, #0xb7000                                    
0001c99c add       x0, x0, #0x56e                                   ; 0xb756e | 'CCUIContinuousSliderView'
0001c9a0 bl        #0xa4664                                         ; _objc_getClass
0001c9a4 mov       x21, x0                                         
0001c9a8 adrp      x3, #0xee000                                    
0001c9ac add       x3, x3, #0xe98                                   ; 0xeee98
0001c9b0 adrp      x16, #0x1c000                                   
0001c9b4 add       x16, x16, #0xef4                                 ; 0x1cef4
0001c9b8 paciza    x16                                             
0001c9bc mov       x2, x16                                         
0001c9c0 mov       x1, x19                                         
0001c9c4 bl        #0xa4054                                         ; _MSHookMessageEx
0001c9c8 adrp      x3, #0xee000                                    
0001c9cc add       x3, x3, #0xea0                                   ; 0xeeea0
0001c9d0 adrp      x16, #0x1c000                                   
0001c9d4 add       x16, x16, #0xf34                                 ; 0x1cf34
0001c9d8 paciza    x16                                             
0001c9dc mov       x2, x16                                         
0001c9e0 mov       x0, x21                                         
0001c9e4 mov       x1, x20                                         
0001c9e8 bl        #0xa4054                                         ; _MSHookMessageEx
0001c9ec adrp      x0, #0xb7000                                    
0001c9f0 add       x0, x0, #0x587                                   ; 0xb7587 | 'MRUContinuousSliderView'
0001c9f4 bl        #0xa4664                                         ; _objc_getClass
0001c9f8 mov       x21, x0                                         
0001c9fc adrp      x3, #0xee000                                    
0001ca00 add       x3, x3, #0xea8                                   ; 0xeeea8
0001ca04 adrp      x16, #0x1c000                                   
0001ca08 add       x16, x16, #0xf74                                 ; 0x1cf74
0001ca0c paciza    x16                                             
0001ca10 mov       x2, x16                                         
0001ca14 mov       x1, x19                                         
0001ca18 bl        #0xa4054                                         ; _MSHookMessageEx
0001ca1c adrp      x3, #0xee000                                    
0001ca20 add       x3, x3, #0xeb0                                   ; 0xeeeb0
0001ca24 adrp      x16, #0x1c000                                   
0001ca28 add       x16, x16, #0xfb4                                 ; 0x1cfb4
0001ca2c paciza    x16                                             
0001ca30 mov       x2, x16                                         
0001ca34 mov       x0, x21                                         
0001ca38 mov       x1, x20                                         
0001ca3c bl        #0xa4054                                         ; _MSHookMessageEx
0001ca40 adrp      x0, #0xb7000                                    
0001ca44 add       x0, x0, #0x59f                                   ; 0xb759f | 'CCUIModularControlCenterOverlayViewController'
0001ca48 bl        #0xa4664                                         ; _objc_getClass
0001ca4c mov       x20, x0                                         
0001ca50 adrp      x8, #0xec000                                    
0001ca54 ldr       x1, [x8, #0x130]                                 ; 0xec130 | SEL viewWillAppear:
0001ca58 adrp      x3, #0xee000                                    
0001ca5c add       x3, x3, #0xeb8                                   ; 0xeeeb8
0001ca60 adrp      x16, #0x1c000                                   
0001ca64 add       x16, x16, #0xff4                                 ; 0x1cff4
0001ca68 paciza    x16                                             
0001ca6c mov       x2, x16                                         
0001ca70 bl        #0xa4054                                         ; _MSHookMessageEx
0001ca74 adrp      x8, #0xeb000                                    
0001ca78 ldr       x1, [x8, #0xf88]                                 ; 0xebf88 | SEL viewDidAppear:
0001ca7c adrp      x3, #0xee000                                    
0001ca80 add       x3, x3, #0xec0                                   ; 0xeeec0
0001ca84 adrp      x16, #0x1d000                                   
0001ca88 add       x16, x16, #0x1ac                                 ; 0x1d1ac
0001ca8c paciza    x16                                             
0001ca90 mov       x2, x16                                         
0001ca94 mov       x0, x20                                         
0001ca98 bl        #0xa4054                                         ; _MSHookMessageEx
0001ca9c adrp      x8, #0xeb000                                    
0001caa0 ldr       x1, [x8, #0xf80]                                 ; 0xebf80 | SEL viewWillDisappear:
0001caa4 adrp      x3, #0xee000                                    
0001caa8 add       x3, x3, #0xec8                                   ; 0xeeec8
0001caac adrp      x16, #0x1d000                                   
0001cab0 add       x16, x16, #0x204                                 ; 0x1d204
0001cab4 paciza    x16                                             
0001cab8 mov       x2, x16                                         
0001cabc mov       x0, x20                                         
0001cac0 bl        #0xa4054                                         ; _MSHookMessageEx
0001cac4 adrp      x8, #0xeb000                                    
0001cac8 ldr       x1, [x8, #0xf90]                                 ; 0xebf90 | SEL viewDidLayoutSubviews
0001cacc adrp      x3, #0xee000                                    
0001cad0 add       x3, x3, #0xed0                                   ; 0xeeed0
0001cad4 adrp      x16, #0x1d000                                   
0001cad8 add       x16, x16, #0x25c                                 ; 0x1d25c
0001cadc paciza    x16                                             
0001cae0 mov       x2, x16                                         
0001cae4 mov       x0, x20                                         
0001cae8 bl        #0xa4054                                         ; _MSHookMessageEx
0001caec adrp      x0, #0xb6000                                    
0001caf0 add       x0, x0, #0xccd                                   ; 0xb6ccd | 'CAFilter'
0001caf4 bl        #0xa4664                                         ; _objc_getClass
0001caf8 mov       x22, x0                                         
0001cafc adrp      x8, #0xeb000                                    
0001cb00 ldr       x20, [x8, #0x380]                                ; 0xeb380 | SEL setValue:forKey:
0001cb04 adrp      x3, #0xee000                                    
0001cb08 add       x3, x3, #0xed8                                   ; 0xeeed8
0001cb0c adrp      x16, #0x1d000                                   
0001cb10 add       x16, x16, #0x2b4                                 ; 0x1d2b4
0001cb14 paciza    x16                                             
0001cb18 mov       x2, x16                                         
0001cb1c mov       x1, x20                                         
0001cb20 bl        #0xa4054                                         ; _MSHookMessageEx
0001cb24 adrp      x8, #0xec000                                    
0001cb28 ldr       x21, [x8, #0x138]                                ; 0xec138 | SEL setValue:forKeyPath:
0001cb2c adrp      x3, #0xee000                                    
0001cb30 add       x3, x3, #0xee0                                   ; 0xeeee0
0001cb34 adrp      x16, #0x1d000                                   
0001cb38 add       x16, x16, #0x3ec                                 ; 0x1d3ec
0001cb3c paciza    x16                                             
0001cb40 mov       x2, x16                                         
0001cb44 mov       x0, x22                                         
0001cb48 mov       x1, x21                                         
0001cb4c bl        #0xa4054                                         ; _MSHookMessageEx
0001cb50 adrp      x0, #0xb6000                                    
0001cb54 add       x0, x0, #0xc44                                   ; 0xb6c44 | 'CALayer'
0001cb58 bl        #0xa4664                                         ; _objc_getClass
0001cb5c mov       x22, x0                                         
0001cb60 adrp      x8, #0xea000                                    
0001cb64 ldr       x1, [x8, #0x6e0]                                 ; 0xea6e0 | SEL setCornerRadius:
0001cb68 adrp      x3, #0xee000                                    
0001cb6c add       x3, x3, #0xee8                                   ; 0xeeee8
0001cb70 adrp      x16, #0x1d000                                   
0001cb74 add       x16, x16, #0x58c                                 ; 0x1d58c
0001cb78 paciza    x16                                             
0001cb7c mov       x2, x16                                         
0001cb80 bl        #0xa4054                                         ; _MSHookMessageEx
0001cb84 adrp      x8, #0xea000                                    
0001cb88 ldr       x1, [x8, #0x8a8]                                 ; 0xea8a8 | SEL setFilters:
0001cb8c adrp      x3, #0xee000                                    
0001cb90 add       x3, x3, #0xef0                                   ; 0xeeef0
0001cb94 adrp      x16, #0x1d000                                   
0001cb98 add       x16, x16, #0x618                                 ; 0x1d618
0001cb9c paciza    x16                                             
0001cba0 mov       x2, x16                                         
0001cba4 mov       x0, x22                                         
0001cba8 bl        #0xa4054                                         ; _MSHookMessageEx
0001cbac adrp      x3, #0xee000                                    
0001cbb0 add       x3, x3, #0xef8                                   ; 0xeeef8
0001cbb4 adrp      x16, #0x1d000                                   
0001cbb8 add       x16, x16, #0x72c                                 ; 0x1d72c
0001cbbc paciza    x16                                             
0001cbc0 mov       x2, x16                                         
0001cbc4 mov       x0, x22                                         
0001cbc8 mov       x1, x20                                         
0001cbcc bl        #0xa4054                                         ; _MSHookMessageEx
0001cbd0 adrp      x3, #0xee000                                    
0001cbd4 add       x3, x3, #0xf00                                   ; 0xeef00
0001cbd8 adrp      x16, #0x1d000                                   
0001cbdc add       x16, x16, #0x870                                 ; 0x1d870
0001cbe0 paciza    x16                                             
0001cbe4 mov       x2, x16                                         
0001cbe8 mov       x0, x22                                         
0001cbec mov       x1, x21                                         
0001cbf0 bl        #0xa4054                                         ; _MSHookMessageEx
0001cbf4 adrp      x8, #0xe8000                                    
0001cbf8 ldr       x1, [x8, #0x8c0]                                 ; 0xe88c0 | SEL addAnimation:forKey:
0001cbfc adrp      x3, #0xee000                                    
0001cc00 add       x3, x3, #0xf08                                   ; 0xeef08
0001cc04 adrp      x16, #0x1d000                                   
0001cc08 add       x16, x16, #0x9b0                                 ; 0x1d9b0
0001cc0c paciza    x16                                             
0001cc10 mov       x2, x16                                         
0001cc14 mov       x0, x22                                         
0001cc18 bl        #0xa4054                                         ; _MSHookMessageEx
0001cc1c adrp      x8, #0xec000                                    
0001cc20 ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
0001cc24 bl        #0xaada0                                         ; objc_msgSend$processInfo
0001cc28 mov       x29, x29                                        
0001cc2c bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0001cc30 mov       x20, x0                                         
0001cc34 cbz       x0, #0x1cc58                                    
0001cc38 add       x8, sp, #8                                      
0001cc3c mov       x0, x20                                         
0001cc40 bl        #0xaa300                                         ; objc_msgSend$operatingSystemVersion
0001cc44 ldr       x8, [sp, #8]                                    
0001cc48 sub       x8, x8, #0xf                                    
0001cc4c cmp       x8, #3                                          
0001cc50 cset      w21, lo                                         
0001cc54 b         #0x1cc64                                        
0001cc58 mov       w21, #0                                         
0001cc5c stp       xzr, xzr, [sp, #8]                              
0001cc60 str       xzr, [sp, #0x18]                                
0001cc64 mov       x0, x20                                         
0001cc68 bl        #0xa46f4                                         ; _objc_release
0001cc6c bl        #0xa1be4                                         ; _LGIsSpringBoardProcess
0001cc70 cbz       w0, #0x1cd1c                                    
0001cc74 cbz       w21, #0x1cd1c                                   
0001cc78 adrp      x20, #0xec000                                   
0001cc7c ldr       x0, [x20, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0001cc80 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0001cc84 mov       x29, x29                                        
0001cc88 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0001cc8c adrp      x9, #0xee000                                    
0001cc90 ldr       x8, [x9, #0xf10]                                 ; 0xeef10
0001cc94 str       x0, [x9, #0xf10]                                 ; 0xeef10
0001cc98 mov       x0, x8                                          
0001cc9c bl        #0xa46f4                                         ; _objc_release
0001cca0 ldr       x0, [x20, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0001cca4 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0001cca8 mov       x29, x29                                        
0001ccac bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0001ccb0 adrp      x9, #0xee000                                    
0001ccb4 ldr       x8, [x9, #0xf18]                                 ; 0xeef18
0001ccb8 str       x0, [x9, #0xf18]                                 ; 0xeef18
0001ccbc mov       x0, x8                                          
0001ccc0 bl        #0xa46f4                                         ; _objc_release
0001ccc4 adrp      x0, #0xb7000                                    
0001ccc8 add       x0, x0, #0x5cd                                   ; 0xb75cd | 'MRUControlCenterView'
0001cccc bl        #0xa4664                                         ; _objc_getClass
0001ccd0 adrp      x3, #0xee000                                    
0001ccd4 add       x3, x3, #0xf20                                   ; 0xeef20
0001ccd8 adrp      x16, #0x1d000                                   
0001ccdc add       x16, x16, #0xd08                                 ; 0x1dd08
0001cce0 paciza    x16                                             
0001cce4 mov       x2, x16                                         
0001cce8 mov       x1, x19                                         
0001ccec bl        #0xa4054                                         ; _MSHookMessageEx
0001ccf0 adrp      x0, #0xb7000                                    
0001ccf4 add       x0, x0, #0x5e2                                   ; 0xb75e2 | 'MRUNowPlayingView'
0001ccf8 bl        #0xa4664                                         ; _objc_getClass
0001ccfc adrp      x3, #0xee000                                    
0001cd00 add       x3, x3, #0xf28                                   ; 0xeef28
0001cd04 adrp      x16, #0x1d000                                   
0001cd08 add       x16, x16, #0xd48                                 ; 0x1dd48
0001cd0c paciza    x16                                             
0001cd10 mov       x2, x16                                         
0001cd14 mov       x1, x19                                         
0001cd18 bl        #0xa4054                                         ; _MSHookMessageEx
0001cd1c adrp      x0, #0xd4000                                    
0001cd20 add       x0, x0, #0xff0                                   ; 0xd4ff0 | &__NSConcreteGlobalBlock
0001cd24 bl        #0x97e34                                         ; _lgObservePreferenceReload
0001cd28 adrp      x8, #0xd4000                                    
0001cd2c ldr       x8, [x8, #0x840]                                 ; 0xd4840 | &_UIEdgeInsetsZero
0001cd30 ldp       d0, d1, [x8]                                    
0001cd34 ldp       d2, d3, [x8, #0x10]                             
0001cd38 adrp      x0, #0xd8000                                    
0001cd3c add       x0, x0, #0xc90                                   ; 0xd8c90 | @'ControlCenter'
0001cd40 adrp      x2, #0xd5000                                    
0001cd44 add       x2, x2, #0x10                                    ; 0xd5010 | &__NSConcreteGlobalBlock
0001cd48 adrp      x3, #0xd5000                                    
0001cd4c add       x3, x3, #0x30                                    ; 0xd5030 | &__NSConcreteGlobalBlock
0001cd50 mov       w1, #0x6e                                       
0001cd54 mov       x4, #0                                          
0001cd58 mov       x5, #0                                          
0001cd5c bl        #0x983b4                                         ; _LGRegisterMaterialHost
0001cd60 ldp       x29, x30, [sp, #0x40]                           
0001cd64 ldp       x20, x19, [sp, #0x30]                           
0001cd68 ldp       x22, x21, [sp, #0x20]                           
0001cd6c add       sp, sp, #0x50                                   
0001cd70 retab                                                     
