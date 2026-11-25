# arm64e unslid VA 0x45874..0x45b88; FAT offset 0xfc000
00045874 pacibsp                                                   
00045878 sub       sp, sp, #0x170                                  
0004587c stp       x28, x27, [sp, #0x110]                          
00045880 stp       x26, x25, [sp, #0x120]                          
00045884 stp       x24, x23, [sp, #0x130]                          
00045888 stp       x22, x21, [sp, #0x140]                          
0004588c stp       x20, x19, [sp, #0x150]                          
00045890 stp       x29, x30, [sp, #0x160]                          
00045894 add       x29, sp, #0x160                                 
00045898 adrp      x8, #0xd4000                                    
0004589c ldr       x8, [x8, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
000458a0 ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
000458a4 stur      x8, [x29, #-0x60]                               
000458a8 adrp      x8, #0xec000                                    
000458ac ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
000458b0 bl        #0xaada0                                         ; objc_msgSend$processInfo
000458b4 mov       x29, x29                                        
000458b8 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000458bc mov       x19, x0                                         
000458c0 stp       xzr, xzr, [sp, #0x50]                           
000458c4 mov       w8, #0x10                                       
000458c8 str       x8, [sp, #0x48]                                 
000458cc add       x2, sp, #0x48                                   
000458d0 bl        #0xa8ee0                                         ; objc_msgSend$isOperatingSystemAtLeastVersion:
000458d4 mov       x20, x0                                         
000458d8 mov       x0, x19                                         
000458dc bl        #0xa46f4                                         ; _objc_release
000458e0 cbz       w20, #0x45b4c                                   
000458e4 adrp      x0, #0xb9000                                    
000458e8 add       x0, x0, #0x1b                                    ; 0xb901b | 'SPUIHeaderBlurView'
000458ec bl        #0xa4664                                         ; _objc_getClass
000458f0 mov       x19, x0                                         
000458f4 adrp      x8, #0xeb000                                    
000458f8 ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
000458fc adrp      x3, #0xef000                                    
00045900 add       x3, x3, #0x510                                   ; 0xef510
00045904 adrp      x16, #0x45000                                   
00045908 add       x16, x16, #0xb88                                 ; 0x45b88
0004590c paciza    x16                                             
00045910 mov       x2, x16                                         
00045914 mov       x1, x20                                         
00045918 bl        #0xa4054                                         ; _MSHookMessageEx
0004591c adrp      x8, #0xeb000                                    
00045920 ldr       x21, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
00045924 adrp      x3, #0xef000                                    
00045928 add       x3, x3, #0x518                                   ; 0xef518
0004592c adrp      x16, #0x45000                                   
00045930 add       x16, x16, #0xbc8                                 ; 0x45bc8
00045934 paciza    x16                                             
00045938 mov       x2, x16                                         
0004593c mov       x0, x19                                         
00045940 mov       x1, x21                                         
00045944 bl        #0xa4054                                         ; _MSHookMessageEx
00045948 adrp      x8, #0xea000                                    
0004594c ldr       x1, [x8, #0x9c0]                                 ; 0xea9c0 | SEL setHidden:
00045950 adrp      x3, #0xef000                                    
00045954 add       x3, x3, #0x520                                   ; 0xef520
00045958 adrp      x16, #0x45000                                   
0004595c add       x16, x16, #0xc08                                 ; 0x45c08
00045960 paciza    x16                                             
00045964 mov       x2, x16                                         
00045968 mov       x0, x19                                         
0004596c bl        #0xa4054                                         ; _MSHookMessageEx
00045970 adrp      x0, #0xb9000                                    
00045974 add       x0, x0, #0x2e                                    ; 0xb902e | 'SPUITextField'
00045978 bl        #0xa4664                                         ; _objc_getClass
0004597c mov       x19, x0                                         
00045980 adrp      x3, #0xef000                                    
00045984 add       x3, x3, #0x528                                   ; 0xef528
00045988 adrp      x16, #0x45000                                   
0004598c add       x16, x16, #0xc6c                                 ; 0x45c6c
00045990 paciza    x16                                             
00045994 mov       x2, x16                                         
00045998 mov       x1, x20                                         
0004599c bl        #0xa4054                                         ; _MSHookMessageEx
000459a0 adrp      x3, #0xef000                                    
000459a4 add       x3, x3, #0x530                                   ; 0xef530
000459a8 adrp      x16, #0x45000                                   
000459ac add       x16, x16, #0xcac                                 ; 0x45cac
000459b0 paciza    x16                                             
000459b4 mov       x2, x16                                         
000459b8 mov       x0, x19                                         
000459bc mov       x1, x21                                         
000459c0 bl        #0xa4054                                         ; _MSHookMessageEx
000459c4 adrp      x8, #0xec000                                    
000459c8 ldr       x0, [x8, #0x688]                                 ; 0xec688 | &_OBJC_CLASS_$_NSBundle
000459cc bl        #0xa9920                                         ; objc_msgSend$mainBundle
000459d0 mov       x29, x29                                        
000459d4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000459d8 mov       x19, x0                                         
000459dc bl        #0xa5ca0                                         ; objc_msgSend$bundleIdentifier
000459e0 mov       x29, x29                                        
000459e4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000459e8 mov       x20, x0                                         
000459ec adrp      x2, #0xda000                                    
000459f0 add       x2, x2, #0xcb0                                   ; 0xdacb0 | @'com.apple.Spotlight'
000459f4 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
000459f8 mov       x21, x0                                         
000459fc mov       x0, x20                                         
00045a00 bl        #0xa46f4                                         ; _objc_release
00045a04 mov       x0, x19                                         
00045a08 bl        #0xa46f4                                         ; _objc_release
00045a0c cbz       w21, #0x45b4c                                   
00045a10 movi      v0.2d, #0000000000000000                        
00045a14 stp       q0, q0, [sp, #0x20]                             
00045a18 stp       q0, q0, [sp]                                    
00045a1c adrp      x8, #0xd4000                                    
00045a20 ldr       x8, [x8, #0x870]                                 ; 0xd4870 | &_UIKeyboardDidShowNotification
00045a24 ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
00045a28 adrp      x9, #0xd4000                                    
00045a2c ldr       x9, [x9, #0x868]                                 ; 0xd4868 | &_UIKeyboardDidHideNotification
00045a30 ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
00045a34 stp       x8, x9, [sp, #0x60]                             
00045a38 adrp      x8, #0xd4000                                    
00045a3c ldr       x8, [x8, #0x860]                                 ; 0xd4860 | &_UIKeyboardDidChangeFrameNotification
00045a40 ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
00045a44 adrp      x9, #0xda000                                    
00045a48 add       x9, x9, #0xcd0                                   ; 0xdacd0 | @'LGLiveBackdropViewFilterDidAttach'
00045a4c stp       x8, x9, [sp, #0x70]                             
00045a50 adrp      x8, #0xec000                                    
00045a54 ldr       x0, [x8, #0x5c8]                                 ; 0xec5c8 | &_OBJC_CLASS_$_NSArray
00045a58 add       x2, sp, #0x60                                   
00045a5c mov       w3, #4                                          
00045a60 bl        #0xa55a0                                         ; objc_msgSend$arrayWithObjects:count:
00045a64 mov       x29, x29                                        
00045a68 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00045a6c mov       x19, x0                                         
00045a70 mov       x2, sp                                          
00045a74 add       x3, sp, #0x80                                   
00045a78 mov       w4, #0x10                                       
00045a7c bl        #0xa6a20                                         ; objc_msgSend$countByEnumeratingWithState:objects:count:
00045a80 cbz       x0, #0x45b44                                    
00045a84 mov       x21, x0                                         
00045a88 ldr       x8, [sp, #0x10]                                 
00045a8c ldr       x25, [x8]                                       
00045a90 adrp      x26, #0xec000                                   
00045a94 adrp      x27, #0xec000                                   
00045a98 adrp      x20, #0xd5000                                   
00045a9c add       x20, x20, #0x758                                 ; 0xd5758 | &__NSConcreteGlobalBlock
00045aa0 mov       x28, #0                                         
00045aa4 ldr       x8, [sp, #0x10]                                 
00045aa8 ldr       x8, [x8]                                        
00045aac cmp       x8, x25                                         
00045ab0 b.eq      #0x45abc                                        
00045ab4 mov       x0, x19                                         
00045ab8 bl        #0xa4634                                         ; _objc_enumerationMutation
00045abc ldr       x8, [sp, #8]                                    
00045ac0 ldr       x22, [x8, x28, lsl #3]                          
00045ac4 ldr       x0, [x26, #0x760]                                ; 0xec760 | &_OBJC_CLASS_$_NSNotificationCenter
00045ac8 bl        #0xa6d40                                         ; objc_msgSend$defaultCenter
00045acc mov       x29, x29                                        
00045ad0 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00045ad4 mov       x23, x0                                         
00045ad8 ldr       x0, [x27, #0x768]                                ; 0xec768 | &_OBJC_CLASS_$_NSOperationQueue
00045adc bl        #0xa9960                                         ; objc_msgSend$mainQueue
00045ae0 mov       x29, x29                                        
00045ae4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00045ae8 mov       x24, x0                                         
00045aec mov       x0, x23                                         
00045af0 mov       x2, x22                                         
00045af4 mov       x3, #0                                          
00045af8 mov       x4, x24                                         
00045afc mov       x5, x20                                         
00045b00 bl        #0xa4f40                                         ; objc_msgSend$addObserverForName:object:queue:usingBlock:
00045b04 mov       x29, x29                                        
00045b08 bl        #0xa47c4                                         ; _objc_unsafeClaimAutoreleasedReturnValue
00045b0c mov       x0, x24                                         
00045b10 bl        #0xa46f4                                         ; _objc_release
00045b14 mov       x0, x23                                         
00045b18 bl        #0xa46f4                                         ; _objc_release
00045b1c add       x28, x28, #1                                    
00045b20 cmp       x21, x28                                        
00045b24 b.ne      #0x45aa4                                        
00045b28 mov       x2, sp                                          
00045b2c add       x3, sp, #0x80                                   
00045b30 mov       x0, x19                                         
00045b34 mov       w4, #0x10                                       
00045b38 bl        #0xa6a20                                         ; objc_msgSend$countByEnumeratingWithState:objects:count:
00045b3c mov       x21, x0                                         
00045b40 cbnz      x0, #0x45aa0                                    
00045b44 mov       x0, x19                                         
00045b48 bl        #0xa46f4                                         ; _objc_release
00045b4c ldur      x8, [x29, #-0x60]                               
00045b50 adrp      x9, #0xd4000                                    
00045b54 ldr       x9, [x9, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
00045b58 ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
00045b5c cmp       x9, x8                                          
00045b60 b.ne      #0x45b84                                        
00045b64 ldp       x29, x30, [sp, #0x160]                          
00045b68 ldp       x20, x19, [sp, #0x150]                          
00045b6c ldp       x22, x21, [sp, #0x140]                          
00045b70 ldp       x24, x23, [sp, #0x130]                          
00045b74 ldp       x26, x25, [sp, #0x120]                          
00045b78 ldp       x28, x27, [sp, #0x110]                          
00045b7c add       sp, sp, #0x170                                  
00045b80 retab                                                     
00045b84 bl        #0xa41d4                                         ; ___stack_chk_fail
