# arm64e unslid VA 0x5c1a8..0x5c5a0; FAT offset 0xfc000
0005c1a8 pacibsp                                                   
0005c1ac sub       sp, sp, #0x50                                   
0005c1b0 stp       x22, x21, [sp, #0x20]                           
0005c1b4 stp       x20, x19, [sp, #0x30]                           
0005c1b8 stp       x29, x30, [sp, #0x40]                           
0005c1bc add       x29, sp, #0x40                                  
0005c1c0 adrp      x0, #0xb6000                                    
0005c1c4 add       x0, x0, #0xbc1                                   ; 0xb6bc1 | 'MTMaterialView'
0005c1c8 bl        #0xa4664                                         ; _objc_getClass
0005c1cc mov       x21, x0                                         
0005c1d0 adrp      x8, #0xeb000                                    
0005c1d4 ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
0005c1d8 adrp      x3, #0xef000                                    
0005c1dc add       x3, x3, #0x6b8                                   ; 0xef6b8
0005c1e0 adrp      x16, #0x5c000                                   
0005c1e4 add       x16, x16, #0x5a0                                 ; 0x5c5a0
0005c1e8 paciza    x16                                             
0005c1ec mov       x2, x16                                         
0005c1f0 mov       x1, x20                                         
0005c1f4 bl        #0xa4054                                         ; _MSHookMessageEx
0005c1f8 adrp      x8, #0xeb000                                    
0005c1fc ldr       x19, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
0005c200 adrp      x3, #0xef000                                    
0005c204 add       x3, x3, #0x6c0                                   ; 0xef6c0
0005c208 adrp      x16, #0x5c000                                   
0005c20c add       x16, x16, #0x650                                 ; 0x5c650
0005c210 paciza    x16                                             
0005c214 mov       x2, x16                                         
0005c218 mov       x0, x21                                         
0005c21c mov       x1, x19                                         
0005c220 bl        #0xa4054                                         ; _MSHookMessageEx
0005c224 adrp      x8, #0xea000                                    
0005c228 ldr       x1, [x8, #0x9c0]                                 ; 0xea9c0 | SEL setHidden:
0005c22c adrp      x3, #0xef000                                    
0005c230 add       x3, x3, #0x6c8                                   ; 0xef6c8
0005c234 adrp      x16, #0x5c000                                   
0005c238 add       x16, x16, #0x6cc                                 ; 0x5c6cc
0005c23c paciza    x16                                             
0005c240 mov       x2, x16                                         
0005c244 mov       x0, x21                                         
0005c248 bl        #0xa4054                                         ; _MSHookMessageEx
0005c24c adrp      x0, #0xb9000                                    
0005c250 add       x0, x0, #0xe44                                   ; 0xb9e44 | 'CHUISAvocadoHostViewController'
0005c254 bl        #0xa4664                                         ; _objc_getClass
0005c258 mov       x21, x0                                         
0005c25c adrp      x8, #0xec000                                    
0005c260 ldr       x22, [x8, #0x290]                                ; 0xec290 | SEL _updateBackgroundMaterialAndColor
0005c264 adrp      x3, #0xef000                                    
0005c268 add       x3, x3, #0x6d0                                   ; 0xef6d0
0005c26c adrp      x16, #0x5c000                                   
0005c270 add       x16, x16, #0x760                                 ; 0x5c760
0005c274 paciza    x16                                             
0005c278 mov       x2, x16                                         
0005c27c mov       x1, x22                                         
0005c280 bl        #0xa4054                                         ; _MSHookMessageEx
0005c284 adrp      x8, #0xec000                                    
0005c288 ldr       x1, [x8, #0x298]                                 ; 0xec298 | SEL screenshotManager
0005c28c adrp      x3, #0xef000                                    
0005c290 add       x3, x3, #0x6d8                                   ; 0xef6d8
0005c294 adrp      x16, #0x5c000                                   
0005c298 add       x16, x16, #0x804                                 ; 0x5c804
0005c29c paciza    x16                                             
0005c2a0 mov       x2, x16                                         
0005c2a4 mov       x0, x21                                         
0005c2a8 bl        #0xa4054                                         ; _MSHookMessageEx
0005c2ac adrp      x0, #0xb9000                                    
0005c2b0 add       x0, x0, #0xe63                                   ; 0xb9e63 | 'CHUISWidgetHostViewController'
0005c2b4 bl        #0xa4664                                         ; _objc_getClass
0005c2b8 mov       x21, x0                                         
0005c2bc adrp      x3, #0xef000                                    
0005c2c0 add       x3, x3, #0x6e0                                   ; 0xef6e0
0005c2c4 adrp      x16, #0x5c000                                   
0005c2c8 add       x16, x16, #0x8a8                                 ; 0x5c8a8
0005c2cc paciza    x16                                             
0005c2d0 mov       x2, x16                                         
0005c2d4 mov       x1, x22                                         
0005c2d8 bl        #0xa4054                                         ; _MSHookMessageEx
0005c2dc adrp      x8, #0xec000                                    
0005c2e0 ldr       x1, [x8, #0x2a0]                                 ; 0xec2a0 | SEL _updatePersistedSnapshotContent
0005c2e4 adrp      x3, #0xef000                                    
0005c2e8 add       x3, x3, #0x6e8                                   ; 0xef6e8
0005c2ec adrp      x16, #0x5c000                                   
0005c2f0 add       x16, x16, #0x94c                                 ; 0x5c94c
0005c2f4 paciza    x16                                             
0005c2f8 mov       x2, x16                                         
0005c2fc mov       x0, x21                                         
0005c300 bl        #0xa4054                                         ; _MSHookMessageEx
0005c304 adrp      x8, #0xec000                                    
0005c308 ldr       x1, [x8, #0x2a8]                                 ; 0xec2a8 | SEL _updatePersistedSnapshotContentIfNecessary
0005c30c adrp      x3, #0xef000                                    
0005c310 add       x3, x3, #0x6f0                                   ; 0xef6f0
0005c314 adrp      x16, #0x5c000                                   
0005c318 add       x16, x16, #0x9f0                                 ; 0x5c9f0
0005c31c paciza    x16                                             
0005c320 mov       x2, x16                                         
0005c324 mov       x0, x21                                         
0005c328 bl        #0xa4054                                         ; _MSHookMessageEx
0005c32c adrp      x8, #0xec000                                    
0005c330 ldr       x1, [x8, #0x2b0]                                 ; 0xec2b0 | SEL _snapshotImageFromURL:
0005c334 adrp      x3, #0xef000                                    
0005c338 add       x3, x3, #0x6f8                                   ; 0xef6f8
0005c33c adrp      x16, #0x5c000                                   
0005c340 add       x16, x16, #0xa94                                 ; 0x5ca94
0005c344 paciza    x16                                             
0005c348 mov       x2, x16                                         
0005c34c mov       x0, x21                                         
0005c350 bl        #0xa4054                                         ; _MSHookMessageEx
0005c354 adrp      x0, #0xb9000                                    
0005c358 add       x0, x0, #0xe81                                   ; 0xb9e81 | 'BSUIScrollView'
0005c35c bl        #0xa4664                                         ; _objc_getClass
0005c360 mov       x21, x0                                         
0005c364 adrp      x3, #0xef000                                    
0005c368 add       x3, x3, #0x700                                   ; 0xef700
0005c36c adrp      x16, #0x5c000                                   
0005c370 add       x16, x16, #0xb5c                                 ; 0x5cb5c
0005c374 paciza    x16                                             
0005c378 mov       x2, x16                                         
0005c37c mov       x1, x20                                         
0005c380 bl        #0xa4054                                         ; _MSHookMessageEx
0005c384 adrp      x3, #0xef000                                    
0005c388 add       x3, x3, #0x708                                   ; 0xef708
0005c38c adrp      x16, #0x5c000                                   
0005c390 add       x16, x16, #0xbf8                                 ; 0x5cbf8
0005c394 paciza    x16                                             
0005c398 mov       x2, x16                                         
0005c39c mov       x0, x21                                         
0005c3a0 mov       x1, x19                                         
0005c3a4 bl        #0xa4054                                         ; _MSHookMessageEx
0005c3a8 bl        #0xa1be4                                         ; _LGIsSpringBoardProcess
0005c3ac cbz       w0, #0x5c58c                                    
0005c3b0 adrp      x8, #0xec000                                    
0005c3b4 ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
0005c3b8 bl        #0xaada0                                         ; objc_msgSend$processInfo
0005c3bc mov       x29, x29                                        
0005c3c0 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0005c3c4 cbz       x0, #0x5c58c                                    
0005c3c8 mov       x21, x0                                         
0005c3cc add       x8, sp, #8                                      
0005c3d0 bl        #0xaa300                                         ; objc_msgSend$operatingSystemVersion
0005c3d4 ldr       x22, [sp, #8]                                   
0005c3d8 mov       x0, x21                                         
0005c3dc bl        #0xa46f4                                         ; _objc_release
0005c3e0 cmp       x22, #0x11                                      
0005c3e4 b.eq      #0x5c49c                                        
0005c3e8 cmp       x22, #0xd                                       
0005c3ec b.ne      #0x5c58c                                        
0005c3f0 adrp      x21, #0xec000                                   
0005c3f4 ldr       x0, [x21, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0005c3f8 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0005c3fc mov       x29, x29                                        
0005c400 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0005c404 adrp      x9, #0xef000                                    
0005c408 ldr       x8, [x9, #0x710]                                 ; 0xef710
0005c40c str       x0, [x9, #0x710]                                 ; 0xef710
0005c410 mov       x0, x8                                          
0005c414 bl        #0xa46f4                                         ; _objc_release
0005c418 ldr       x0, [x21, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0005c41c bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0005c420 mov       x29, x29                                        
0005c424 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0005c428 adrp      x9, #0xef000                                    
0005c42c ldr       x8, [x9, #0x718]                                 ; 0xef718
0005c430 str       x0, [x9, #0x718]                                 ; 0xef718
0005c434 mov       x0, x8                                          
0005c438 bl        #0xa46f4                                         ; _objc_release
0005c43c adrp      x0, #0xb9000                                    
0005c440 add       x0, x0, #0xe90                                   ; 0xb9e90 | 'WGWidgetPlatterView'
0005c444 bl        #0xa4664                                         ; _objc_getClass
0005c448 mov       x21, x0                                         
0005c44c adrp      x3, #0xef000                                    
0005c450 add       x3, x3, #0x720                                   ; 0xef720
0005c454 adrp      x16, #0x5c000                                   
0005c458 add       x16, x16, #0xc58                                 ; 0x5cc58
0005c45c paciza    x16                                             
0005c460 mov       x2, x16                                         
0005c464 mov       x1, x20                                         
0005c468 bl        #0xa4054                                         ; _MSHookMessageEx
0005c46c adrp      x3, #0xef000                                    
0005c470 add       x3, x3, #0x728                                   ; 0xef728
0005c474 adrp      x16, #0x5c000                                   
0005c478 add       x16, x16, #0xca8                                 ; 0x5cca8
0005c47c paciza    x16                                             
0005c480 mov       x2, x16                                         
0005c484 mov       x0, x21                                         
0005c488 mov       x1, x19                                         
0005c48c bl        #0xa4054                                         ; _MSHookMessageEx
0005c490 adrp      x0, #0xd5000                                    
0005c494 add       x0, x0, #0xad8                                   ; 0xd5ad8 | &__NSConcreteGlobalBlock
0005c498 b         #0x5c588                                        
0005c49c adrp      x8, #0xec000                                    
0005c4a0 ldr       x0, [x8, #0x4b0]                                 ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0005c4a4 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0005c4a8 mov       x29, x29                                        
0005c4ac bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0005c4b0 adrp      x9, #0xef000                                    
0005c4b4 ldr       x8, [x9, #0x730]                                 ; 0xef730
0005c4b8 str       x0, [x9, #0x730]                                 ; 0xef730
0005c4bc mov       x0, x8                                          
0005c4c0 bl        #0xa46f4                                         ; _objc_release
0005c4c4 adrp      x8, #0xec000                                    
0005c4c8 ldr       x0, [x8, #0x6b8]                                 ; 0xec6b8 | &_OBJC_CLASS_$_NSMapTable
0005c4cc bl        #0xb1a40                                         ; objc_msgSend$weakToWeakObjectsMapTable
0005c4d0 mov       x29, x29                                        
0005c4d4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0005c4d8 adrp      x9, #0xef000                                    
0005c4dc ldr       x8, [x9, #0x738]                                 ; 0xef738
0005c4e0 str       x0, [x9, #0x738]                                 ; 0xef738
0005c4e4 mov       x0, x8                                          
0005c4e8 bl        #0xa46f4                                         ; _objc_release
0005c4ec adrp      x0, #0xb9000                                    
0005c4f0 add       x0, x0, #0xeac                                   ; 0xb9eac | 'CHUISWidgetHostViewControllerView'
0005c4f4 bl        #0xa4664                                         ; _objc_getClass
0005c4f8 mov       x21, x0                                         
0005c4fc adrp      x3, #0xef000                                    
0005c500 add       x3, x3, #0x740                                   ; 0xef740
0005c504 adrp      x16, #0x5d000                                   
0005c508 add       x16, x16, #0x788                                 ; 0x5d788
0005c50c paciza    x16                                             
0005c510 mov       x2, x16                                         
0005c514 mov       x1, x20                                         
0005c518 bl        #0xa4054                                         ; _MSHookMessageEx
0005c51c adrp      x3, #0xef000                                    
0005c520 add       x3, x3, #0x748                                   ; 0xef748
0005c524 adrp      x16, #0x5d000                                   
0005c528 add       x16, x16, #0x7d8                                 ; 0x5d7d8
0005c52c paciza    x16                                             
0005c530 mov       x2, x16                                         
0005c534 mov       x0, x21                                         
0005c538 mov       x1, x19                                         
0005c53c bl        #0xa4054                                         ; _MSHookMessageEx
0005c540 adrp      x0, #0xb9000                                    
0005c544 add       x0, x0, #0xece                                   ; 0xb9ece | 'SBIconListView'
0005c548 bl        #0xa4664                                         ; _objc_getClass
0005c54c adrp      x3, #0xef000                                    
0005c550 add       x3, x3, #0x750                                   ; 0xef750
0005c554 adrp      x16, #0x5d000                                   
0005c558 add       x16, x16, #0x818                                 ; 0x5d818
0005c55c paciza    x16                                             
0005c560 mov       x2, x16                                         
0005c564 mov       x1, x19                                         
0005c568 bl        #0xa4054                                         ; _MSHookMessageEx
0005c56c adrp      x0, #0xd4000                                    
0005c570 ldr       x0, [x0, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
0005c574 adrp      x1, #0xd5000                                    
0005c578 add       x1, x1, #0xaf8                                   ; 0xd5af8 | &__NSConcreteGlobalBlock
0005c57c bl        #0xa42f4                                         ; _dispatch_async
0005c580 adrp      x0, #0xd5000                                    
0005c584 add       x0, x0, #0xb18                                   ; 0xd5b18 | &__NSConcreteGlobalBlock
0005c588 bl        #0x97e34                                         ; _lgObservePreferenceReload
0005c58c ldp       x29, x30, [sp, #0x40]                           
0005c590 ldp       x20, x19, [sp, #0x30]                           
0005c594 ldp       x22, x21, [sp, #0x20]                           
0005c598 add       sp, sp, #0x50                                   
0005c59c retab                                                     
