# arm64e unslid VA 0x3f198..0x3f598; FAT offset 0xfc000
0003f198 pacibsp                                                   
0003f19c sub       sp, sp, #0x60                                   
0003f1a0 stp       x24, x23, [sp, #0x20]                           
0003f1a4 stp       x22, x21, [sp, #0x30]                           
0003f1a8 stp       x20, x19, [sp, #0x40]                           
0003f1ac stp       x29, x30, [sp, #0x50]                           
0003f1b0 add       x29, sp, #0x50                                  
0003f1b4 adrp      x0, #0xb8000                                    
0003f1b8 add       x0, x0, #0xb13                                   ; 0xb8b13 | 'UIKBBackdropView'
0003f1bc bl        #0xa4664                                         ; _objc_getClass
0003f1c0 mov       x21, x0                                         
0003f1c4 adrp      x8, #0xeb000                                    
0003f1c8 ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
0003f1cc adrp      x3, #0xef000                                    
0003f1d0 add       x3, x3, #0x3d8                                   ; 0xef3d8
0003f1d4 adrp      x16, #0x3f000                                   
0003f1d8 add       x16, x16, #0x598                                 ; 0x3f598
0003f1dc paciza    x16                                             
0003f1e0 mov       x2, x16                                         
0003f1e4 mov       x1, x20                                         
0003f1e8 bl        #0xa4054                                         ; _MSHookMessageEx
0003f1ec adrp      x8, #0xeb000                                    
0003f1f0 ldr       x19, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
0003f1f4 adrp      x3, #0xef000                                    
0003f1f8 add       x3, x3, #0x3e0                                   ; 0xef3e0
0003f1fc adrp      x16, #0x3f000                                   
0003f200 add       x16, x16, #0x640                                 ; 0x3f640
0003f204 paciza    x16                                             
0003f208 mov       x2, x16                                         
0003f20c mov       x0, x21                                         
0003f210 mov       x1, x19                                         
0003f214 bl        #0xa4054                                         ; _MSHookMessageEx
0003f218 adrp      x8, #0xea000                                    
0003f21c ldr       x1, [x8, #0x8e0]                                 ; 0xea8e0 | SEL setFrame:
0003f220 adrp      x3, #0xef000                                    
0003f224 add       x3, x3, #0x3e8                                   ; 0xef3e8
0003f228 adrp      x16, #0x3f000                                   
0003f22c add       x16, x16, #0x680                                 ; 0x3f680
0003f230 paciza    x16                                             
0003f234 mov       x2, x16                                         
0003f238 mov       x0, x21                                         
0003f23c bl        #0xa4054                                         ; _MSHookMessageEx
0003f240 adrp      x8, #0xea000                                    
0003f244 ldr       x1, [x8, #0x570]                                 ; 0xea570 | SEL setBounds:
0003f248 adrp      x3, #0xef000                                    
0003f24c add       x3, x3, #0x3f0                                   ; 0xef3f0
0003f250 adrp      x16, #0x3f000                                   
0003f254 add       x16, x16, #0x6c0                                 ; 0x3f6c0
0003f258 paciza    x16                                             
0003f25c mov       x2, x16                                         
0003f260 mov       x0, x21                                         
0003f264 bl        #0xa4054                                         ; _MSHookMessageEx
0003f268 adrp      x8, #0xea000                                    
0003f26c ldr       x22, [x8, #0x9c0]                                ; 0xea9c0 | SEL setHidden:
0003f270 adrp      x3, #0xef000                                    
0003f274 add       x3, x3, #0x3f8                                   ; 0xef3f8
0003f278 adrp      x16, #0x3f000                                   
0003f27c add       x16, x16, #0x700                                 ; 0x3f700
0003f280 paciza    x16                                             
0003f284 mov       x2, x16                                         
0003f288 mov       x0, x21                                         
0003f28c mov       x1, x22                                         
0003f290 bl        #0xa4054                                         ; _MSHookMessageEx
0003f294 adrp      x8, #0xea000                                    
0003f298 ldr       x1, [x8, #0x478]                                 ; 0xea478 | SEL setAlpha:
0003f29c adrp      x3, #0xef000                                    
0003f2a0 add       x3, x3, #0x400                                   ; 0xef400
0003f2a4 adrp      x16, #0x3f000                                   
0003f2a8 add       x16, x16, #0x870                                 ; 0x3f870
0003f2ac paciza    x16                                             
0003f2b0 mov       x2, x16                                         
0003f2b4 mov       x0, x21                                         
0003f2b8 bl        #0xa4054                                         ; _MSHookMessageEx
0003f2bc adrp      x0, #0xb8000                                    
0003f2c0 add       x0, x0, #0xb24                                   ; 0xb8b24 | 'UIKBVisualEffectView'
0003f2c4 bl        #0xa4664                                         ; _objc_getClass
0003f2c8 mov       x21, x0                                         
0003f2cc adrp      x3, #0xef000                                    
0003f2d0 add       x3, x3, #0x408                                   ; 0xef408
0003f2d4 adrp      x16, #0x3f000                                   
0003f2d8 add       x16, x16, #0x8e0                                 ; 0x3f8e0
0003f2dc paciza    x16                                             
0003f2e0 mov       x2, x16                                         
0003f2e4 mov       x1, x20                                         
0003f2e8 bl        #0xa4054                                         ; _MSHookMessageEx
0003f2ec adrp      x3, #0xef000                                    
0003f2f0 add       x3, x3, #0x410                                   ; 0xef410
0003f2f4 adrp      x16, #0x3f000                                   
0003f2f8 add       x16, x16, #0x930                                 ; 0x3f930
0003f2fc paciza    x16                                             
0003f300 mov       x2, x16                                         
0003f304 mov       x0, x21                                         
0003f308 mov       x1, x19                                         
0003f30c bl        #0xa4054                                         ; _MSHookMessageEx
0003f310 adrp      x3, #0xef000                                    
0003f314 add       x3, x3, #0x418                                   ; 0xef418
0003f318 adrp      x16, #0x3f000                                   
0003f31c add       x16, x16, #0x970                                 ; 0x3f970
0003f320 paciza    x16                                             
0003f324 mov       x2, x16                                         
0003f328 mov       x0, x21                                         
0003f32c mov       x1, x22                                         
0003f330 bl        #0xa4054                                         ; _MSHookMessageEx
0003f334 adrp      x0, #0xb8000                                    
0003f338 add       x0, x0, #0xb39                                   ; 0xb8b39 | 'UIKBRenderer'
0003f33c bl        #0xa4664                                         ; _objc_getClass
0003f340 adrp      x8, #0xec000                                    
0003f344 ldr       x1, [x8, #0x228]                                 ; 0xec228 | SEL renderBackgroundTraits:allowCaching:
0003f348 adrp      x3, #0xef000                                    
0003f34c add       x3, x3, #0x420                                   ; 0xef420
0003f350 adrp      x16, #0x3f000                                   
0003f354 add       x16, x16, #0xa64                                 ; 0x3fa64
0003f358 paciza    x16                                             
0003f35c mov       x2, x16                                         
0003f360 bl        #0xa4054                                         ; _MSHookMessageEx
0003f364 adrp      x0, #0xb8000                                    
0003f368 add       x0, x0, #0xb46                                   ; 0xb8b46 | 'UIKeyboard'
0003f36c bl        #0xa4664                                         ; _objc_getClass
0003f370 mov       x20, x0                                         
0003f374 bl        #0xa47d4                                         ; _object_getClass
0003f378 mov       x21, x0                                         
0003f37c adrp      x3, #0xef000                                    
0003f380 add       x3, x3, #0x428                                   ; 0xef428
0003f384 adrp      x16, #0x3f000                                   
0003f388 add       x16, x16, #0xc4c                                 ; 0x3fc4c
0003f38c paciza    x16                                             
0003f390 mov       x2, x16                                         
0003f394 mov       x0, x20                                         
0003f398 mov       x1, x19                                         
0003f39c bl        #0xa4054                                         ; _MSHookMessageEx
0003f3a0 adrp      x8, #0xec000                                    
0003f3a4 ldr       x1, [x8, #0x230]                                 ; 0xec230 | SEL sizeForInterfaceOrientation:ignoreInputView:
0003f3a8 adrp      x3, #0xef000                                    
0003f3ac add       x3, x3, #0x430                                   ; 0xef430
0003f3b0 adrp      x16, #0x3f000                                   
0003f3b4 add       x16, x16, #0xc7c                                 ; 0x3fc7c
0003f3b8 paciza    x16                                             
0003f3bc mov       x2, x16                                         
0003f3c0 mov       x0, x21                                         
0003f3c4 bl        #0xa4054                                         ; _MSHookMessageEx
0003f3c8 adrp      x8, #0xe9000                                    
0003f3cc ldr       x1, [x8, #0x7f8]                                 ; 0xe97f8 | SEL intrinsicContentSize
0003f3d0 adrp      x3, #0xef000                                    
0003f3d4 add       x3, x3, #0x438                                   ; 0xef438
0003f3d8 adrp      x16, #0x3f000                                   
0003f3dc add       x16, x16, #0xce0                                 ; 0x3fce0
0003f3e0 paciza    x16                                             
0003f3e4 mov       x2, x16                                         
0003f3e8 mov       x0, x20                                         
0003f3ec bl        #0xa4054                                         ; _MSHookMessageEx
0003f3f0 adrp      x0, #0xb8000                                    
0003f3f4 add       x0, x0, #0xb51                                   ; 0xb8b51 | 'UIKeyboardLayoutStar'
0003f3f8 bl        #0xa4664                                         ; _objc_getClass
0003f3fc adrp      x3, #0xef000                                    
0003f400 add       x3, x3, #0x440                                   ; 0xef440
0003f404 adrp      x16, #0x3f000                                   
0003f408 add       x16, x16, #0xd44                                 ; 0x3fd44
0003f40c paciza    x16                                             
0003f410 mov       x2, x16                                         
0003f414 mov       x1, x19                                         
0003f418 bl        #0xa4054                                         ; _MSHookMessageEx
0003f41c adrp      x0, #0xb8000                                    
0003f420 add       x0, x0, #0xb66                                   ; 0xb8b66 | 'UIKBTextStyle'
0003f424 bl        #0xa4664                                         ; _objc_getClass
0003f428 adrp      x8, #0xe9000                                    
0003f42c ldr       x1, [x8, #0x3d0]                                 ; 0xe93d0 | SEL fontName
0003f430 adrp      x3, #0xef000                                    
0003f434 add       x3, x3, #0x448                                   ; 0xef448
0003f438 adrp      x16, #0x3f000                                   
0003f43c add       x16, x16, #0xd88                                 ; 0x3fd88
0003f440 paciza    x16                                             
0003f444 mov       x2, x16                                         
0003f448 bl        #0xa4054                                         ; _MSHookMessageEx
0003f44c adrp      x0, #0xd4000                                    
0003f450 ldr       x0, [x0, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
0003f454 adrp      x1, #0xd5000                                    
0003f458 add       x1, x1, #0x540                                   ; 0xd5540 | &__NSConcreteGlobalBlock
0003f45c bl        #0xa42f4                                         ; _dispatch_async
0003f460 adrp      x19, #0xec000                                   
0003f464 ldr       x0, [x19, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0003f468 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0003f46c mov       x29, x29                                        
0003f470 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0003f474 adrp      x9, #0xef000                                    
0003f478 ldr       x8, [x9, #0x450]                                 ; 0xef450
0003f47c str       x0, [x9, #0x450]                                 ; 0xef450
0003f480 mov       x0, x8                                          
0003f484 bl        #0xa46f4                                         ; _objc_release
0003f488 ldr       x0, [x19, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
0003f48c bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
0003f490 mov       x29, x29                                        
0003f494 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0003f498 adrp      x9, #0xef000                                    
0003f49c ldr       x8, [x9, #0x458]                                 ; 0xef458
0003f4a0 str       x0, [x9, #0x458]                                 ; 0xef458
0003f4a4 mov       x0, x8                                          
0003f4a8 bl        #0xa46f4                                         ; _objc_release
0003f4ac adrp      x8, #0xec000                                    
0003f4b0 ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
0003f4b4 bl        #0xaada0                                         ; objc_msgSend$processInfo
0003f4b8 mov       x29, x29                                        
0003f4bc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0003f4c0 mov       x19, x0                                         
0003f4c4 bl        #0xaadc0                                         ; objc_msgSend$processName
0003f4c8 mov       x29, x29                                        
0003f4cc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0003f4d0 mov       x20, x0                                         
0003f4d4 adrp      x8, #0xec000                                    
0003f4d8 ldr       x0, [x8, #0x688]                                 ; 0xec688 | &_OBJC_CLASS_$_NSBundle
0003f4dc bl        #0xa9920                                         ; objc_msgSend$mainBundle
0003f4e0 mov       x29, x29                                        
0003f4e4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0003f4e8 mov       x21, x0                                         
0003f4ec bl        #0xa5ca0                                         ; objc_msgSend$bundleIdentifier
0003f4f0 mov       x29, x29                                        
0003f4f4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0003f4f8 mov       x22, x0                                         
0003f4fc adrp      x8, #0xd8000                                    
0003f500 add       x8, x8, #0xbd0                                   ; 0xd8bd0 | @'(nil)'
0003f504 cmp       x0, #0                                          
0003f508 csel      x23, x8, x0, eq                                 
0003f50c adrp      x0, #0xda000                                    
0003f510 add       x0, x0, #0x650                                   ; 0xda650 | @'UIKBBackdropView'
0003f514 bl        #0xa4064                                         ; _NSClassFromString
0003f518 cmp       x0, #0                                          
0003f51c cset      w24, ne                                         
0003f520 adrp      x0, #0xda000                                    
0003f524 add       x0, x0, #0x670                                   ; 0xda670 | @'UIKBVisualEffectView'
0003f528 bl        #0xa4064                                         ; _NSClassFromString
0003f52c cmp       x0, #0                                          
0003f530 cset      w8, ne                                          
0003f534 stp       x20, x23, [sp]                                  
0003f538 stp       x24, x8, [sp, #0x10]                            
0003f53c adrp      x0, #0xda000                                    
0003f540 add       x0, x0, #0x630                                   ; 0xda630 | @'[keyboard] ctor process=%@ bundle=%@ backdrop=%d visualEffect=%d'
0003f544 bl        #0xa23b8                                         ; _LGLog
0003f548 mov       x0, x22                                         
0003f54c bl        #0xa46f4                                         ; _objc_release
0003f550 mov       x0, x21                                         
0003f554 bl        #0xa46f4                                         ; _objc_release
0003f558 mov       x0, x20                                         
0003f55c bl        #0xa46f4                                         ; _objc_release
0003f560 mov       x0, x19                                         
0003f564 bl        #0xa46f4                                         ; _objc_release
0003f568 adrp      x0, #0xd5000                                    
0003f56c add       x0, x0, #0x560                                   ; 0xd5560 | &__NSConcreteGlobalBlock
0003f570 ldp       x29, x30, [sp, #0x50]                           
0003f574 ldp       x20, x19, [sp, #0x40]                           
0003f578 ldp       x22, x21, [sp, #0x30]                           
0003f57c ldp       x24, x23, [sp, #0x20]                           
0003f580 add       sp, sp, #0x60                                   
0003f584 autibsp                                                   
0003f588 eor       x16, x30, x30, lsl #1                           
0003f58c tbz       x16, #0x3e, #0x3f594                            
0003f590 brk       #0xc471                                         
0003f594 b         #0x97e34                                         ; _lgObservePreferenceReload
