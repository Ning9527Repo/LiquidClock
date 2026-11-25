# arm64e unslid VA 0x754a0..0x75718; FAT offset 0xfc000
000754a0 pacibsp                                                   
000754a4 stp       x26, x25, [sp, #-0x50]!                         
000754a8 stp       x24, x23, [sp, #0x10]                           
000754ac stp       x22, x21, [sp, #0x20]                           
000754b0 stp       x20, x19, [sp, #0x30]                           
000754b4 stp       x29, x30, [sp, #0x40]                           
000754b8 add       x29, sp, #0x40                                  
000754bc adrp      x0, #0xdc000                                    
000754c0 add       x0, x0, #0x310                                   ; 0xdc310 | @'AegirPoster.AegirRenderingController'
000754c4 bl        #0xa4064                                         ; _NSClassFromString
000754c8 mov       x19, x0                                         
000754cc cbnz      x0, #0x754e0                                    
000754d0 adrp      x0, #0xdc000                                    
000754d4 add       x0, x0, #0x330                                   ; 0xdc330 | @'_TtC11AegirPoster24AegirRenderingController'
000754d8 bl        #0xa4064                                         ; _NSClassFromString
000754dc mov       x19, x0                                         
000754e0 adrp      x0, #0xdc000                                    
000754e4 add       x0, x0, #0x350                                   ; 0xdc350 | @'PRPosterEnvironmentImpl'
000754e8 bl        #0xa4064                                         ; _NSClassFromString
000754ec mov       x26, x0                                         
000754f0 adrp      x0, #0xdc000                                    
000754f4 add       x0, x0, #0x370                                   ; 0xdc370 | @'FBSSceneSettings'
000754f8 bl        #0xa4064                                         ; _NSClassFromString
000754fc mov       x25, x0                                         
00075500 adrp      x8, #0xec000                                    
00075504 ldr       x20, [x8, #0x380]                                ; 0xec380 | SEL renderer:didInitializeWithEnvironment:
00075508 mov       x0, x19                                         
0007550c mov       x2, x20                                         
00075510 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00075514 cbz       w0, #0x75700                                    
00075518 adrp      x8, #0xea000                                    
0007551c ldr       x21, [x8, #0x278]                                ; 0xea278 | SEL renderer:didUpdateEnvironment:withTransition:
00075520 mov       x0, x19                                         
00075524 mov       x2, x21                                         
00075528 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
0007552c cbz       w0, #0x75700                                    
00075530 adrp      x8, #0xec000                                    
00075534 ldr       x22, [x8, #0x388]                                ; 0xec388 | SEL rendererDidInvalidate:
00075538 mov       x0, x19                                         
0007553c mov       x2, x22                                         
00075540 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00075544 cbz       w0, #0x75700                                    
00075548 adrp      x8, #0xec000                                    
0007554c ldr       x23, [x8, #0x390]                                ; 0xec390 | SEL contentCutoutBounds
00075550 mov       x0, x26                                         
00075554 mov       x2, x23                                         
00075558 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
0007555c cbz       w0, #0x75700                                    
00075560 adrp      x8, #0xec000                                    
00075564 ldr       x24, [x8, #0x398]                                ; 0xec398 | SEL floatingObscurableBounds
00075568 mov       x0, x26                                         
0007556c mov       x2, x24                                         
00075570 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00075574 cbz       w0, #0x75700                                    
00075578 adrp      x8, #0xe9000                                    
0007557c ldr       x2, [x8, #0xff0]                                 ; 0xe9ff0 | SEL pr_usesEditingLayout
00075580 mov       x0, x25                                         
00075584 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00075588 cbz       w0, #0x75700                                    
0007558c adrp      x8, #0xe9000                                    
00075590 ldr       x26, [x8, #0xfd8]                                ; 0xe9fd8 | SEL pr_isComplicationRowConfigured
00075594 mov       x0, x25                                         
00075598 mov       x2, x26                                         
0007559c bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
000755a0 cbz       w0, #0x75700                                    
000755a4 adrp      x8, #0xe9000                                    
000755a8 ldr       x2, [x8, #0x408]                                 ; 0xe9408 | SEL frame
000755ac mov       x0, x25                                         
000755b0 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
000755b4 cbz       w0, #0x75700                                    
000755b8 adrp      x8, #0xec000                                    
000755bc ldr       x0, [x8, #0x6b8]                                 ; 0xec6b8 | &_OBJC_CLASS_$_NSMapTable
000755c0 bl        #0xb1a40                                         ; objc_msgSend$weakToWeakObjectsMapTable
000755c4 mov       x29, x29                                        
000755c8 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000755cc adrp      x9, #0xef000                                    
000755d0 ldr       x8, [x9, #0x858]                                 ; 0xef858
000755d4 str       x0, [x9, #0x858]                                 ; 0xef858
000755d8 mov       x0, x8                                          
000755dc bl        #0xa46f4                                         ; _objc_release
000755e0 bl        #0x6e60c                                         ; _LGClockSavedDockGeometryReload
000755e4 adrp      x0, #0xba000                                    
000755e8 add       x0, x0, #0x791                                   ; 0xba791 | 'FBSSceneSettings'
000755ec bl        #0xa4664                                         ; _objc_getClass
000755f0 adrp      x3, #0xef000                                    
000755f4 add       x3, x3, #0x860                                   ; 0xef860
000755f8 adrp      x16, #0x75000                                   
000755fc add       x16, x16, #0x718                                 ; 0x75718
00075600 paciza    x16                                             
00075604 mov       x2, x16                                         
00075608 mov       x1, x26                                         
0007560c bl        #0xa4054                                         ; _MSHookMessageEx
00075610 adrp      x0, #0xba000                                    
00075614 add       x0, x0, #0x829                                   ; 0xba829 | 'PRPosterEnvironmentImpl'
00075618 bl        #0xa4664                                         ; _objc_getClass
0007561c mov       x25, x0                                         
00075620 adrp      x3, #0xef000                                    
00075624 add       x3, x3, #0x868                                   ; 0xef868
00075628 adrp      x16, #0x75000                                   
0007562c add       x16, x16, #0x770                                 ; 0x75770
00075630 paciza    x16                                             
00075634 mov       x2, x16                                         
00075638 mov       x1, x23                                         
0007563c bl        #0xa4054                                         ; _MSHookMessageEx
00075640 adrp      x3, #0xef000                                    
00075644 add       x3, x3, #0x870                                   ; 0xef870
00075648 adrp      x16, #0x75000                                   
0007564c add       x16, x16, #0x7dc                                 ; 0x757dc
00075650 paciza    x16                                             
00075654 mov       x2, x16                                         
00075658 mov       x0, x25                                         
0007565c mov       x1, x24                                         
00075660 bl        #0xa4054                                         ; _MSHookMessageEx
00075664 adrp      x3, #0xef000                                    
00075668 add       x3, x3, #0x878                                   ; 0xef878
0007566c adrp      x16, #0x75000                                   
00075670 add       x16, x16, #0x848                                 ; 0x75848
00075674 paciza    x16                                             
00075678 mov       x2, x16                                         
0007567c mov       x0, x19                                         
00075680 mov       x1, x20                                         
00075684 bl        #0xa4054                                         ; _MSHookMessageEx
00075688 adrp      x3, #0xef000                                    
0007568c add       x3, x3, #0x880                                   ; 0xef880
00075690 adrp      x16, #0x75000                                   
00075694 add       x16, x16, #0x8e8                                 ; 0x758e8
00075698 paciza    x16                                             
0007569c mov       x2, x16                                         
000756a0 mov       x0, x19                                         
000756a4 mov       x1, x21                                         
000756a8 bl        #0xa4054                                         ; _MSHookMessageEx
000756ac adrp      x3, #0xef000                                    
000756b0 add       x3, x3, #0x888                                   ; 0xef888
000756b4 adrp      x16, #0x75000                                   
000756b8 add       x16, x16, #0x9a4                                 ; 0x759a4
000756bc paciza    x16                                             
000756c0 mov       x2, x16                                         
000756c4 mov       x0, x19                                         
000756c8 mov       x1, x22                                         
000756cc bl        #0xa4054                                         ; _MSHookMessageEx
000756d0 adrp      x0, #0xd5000                                    
000756d4 add       x0, x0, #0xd28                                   ; 0xd5d28 | &__NSConcreteGlobalBlock
000756d8 ldp       x29, x30, [sp, #0x40]                           
000756dc ldp       x20, x19, [sp, #0x30]                           
000756e0 ldp       x22, x21, [sp, #0x20]                           
000756e4 ldp       x24, x23, [sp, #0x10]                           
000756e8 ldp       x26, x25, [sp], #0x50                           
000756ec autibsp                                                   
000756f0 eor       x16, x30, x30, lsl #1                           
000756f4 tbz       x16, #0x3e, #0x756fc                            
000756f8 brk       #0xc471                                         
000756fc b         #0x6e6bc                                         ; _LGClockSavedDockGeometryObserve
00075700 ldp       x29, x30, [sp, #0x40]                           
00075704 ldp       x20, x19, [sp, #0x30]                           
00075708 ldp       x22, x21, [sp, #0x20]                           
0007570c ldp       x24, x23, [sp, #0x10]                           
00075710 ldp       x26, x25, [sp], #0x50                           
00075714 retab                                                     
