# arm64e unslid VA 0x75b90..0x76f68; FAT offset 0xfc000
00075b90 pacibsp                                                   
00075b94 sub       sp, sp, #0x1b0                                  
00075b98 stp       x28, x27, [sp, #0x150]                          
00075b9c stp       x26, x25, [sp, #0x160]                          
00075ba0 stp       x24, x23, [sp, #0x170]                          
00075ba4 stp       x22, x21, [sp, #0x180]                          
00075ba8 stp       x20, x19, [sp, #0x190]                          
00075bac stp       x29, x30, [sp, #0x1a0]                          
00075bb0 add       x29, sp, #0x1a0                                 
00075bb4 adrp      x8, #0xd4000                                    
00075bb8 ldr       x8, [x8, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
00075bbc ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
00075bc0 stur      x8, [x29, #-0x60]                               
00075bc4 adrp      x22, #0xec000                                   
00075bc8 ldr       x0, [x22, #0x688]                                ; 0xec688 | &_OBJC_CLASS_$_NSBundle
00075bcc bl        #0xa9920                                         ; objc_msgSend$mainBundle
00075bd0 mov       x29, x29                                        
00075bd4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075bd8 mov       x20, x0                                         
00075bdc bl        #0xa5ca0                                         ; objc_msgSend$bundleIdentifier
00075be0 mov       x29, x29                                        
00075be4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075be8 mov       x19, x0                                         
00075bec mov       x0, x20                                         
00075bf0 bl        #0xa46f4                                         ; _objc_release
00075bf4 adrp      x0, #0xdc000                                    
00075bf8 add       x0, x0, #0x390                                   ; 0xdc390 | @'MediaRemoteUI.CoverSheetBackgroundViewController'
00075bfc bl        #0xa4064                                         ; _NSClassFromString
00075c00 mov       x20, x0                                         
00075c04 adrp      x2, #0xdc000                                    
00075c08 add       x2, x2, #0x3b0                                   ; 0xdc3b0 | @'com.apple.MediaRemoteUI'
00075c0c mov       x0, x19                                         
00075c10 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
00075c14 cmp       w0, #0                                          
00075c18 ccmp      x20, #0, #4, ne                                 
00075c1c b.eq      #0x75c80                                        
00075c20 mov       w0, #0                                          
00075c24 bl        #0x76f68                                        
00075c28 adrp      x8, #0xec000                                    
00075c2c ldr       x1, [x8, #0x3a0]                                 ; 0xec3a0 | SEL setArtworkVisible:
00075c30 adrp      x3, #0xef000                                    
00075c34 add       x3, x3, #0x890                                   ; 0xef890
00075c38 adrp      x16, #0x76000                                   
00075c3c add       x16, x16, #0xff8                                 ; 0x76ff8
00075c40 paciza    x16                                             
00075c44 mov       x2, x16                                         
00075c48 mov       x0, x20                                         
00075c4c bl        #0xa4054                                         ; _MSHookMessageEx
00075c50 adrp      x0, #0xba000                                    
00075c54 add       x0, x0, #0x88a                                   ; 0xba88a | 'dealloc'
00075c58 bl        #0xa4864                                         ; _sel_registerName
00075c5c mov       x1, x0                                          
00075c60 adrp      x3, #0xef000                                    
00075c64 add       x3, x3, #0x898                                   ; 0xef898
00075c68 adrp      x16, #0x77000                                   
00075c6c add       x16, x16, #0x38                                  ; 0x77038
00075c70 paciza    x16                                             
00075c74 mov       x2, x16                                         
00075c78 mov       x0, x20                                         
00075c7c bl        #0xa4054                                         ; _MSHookMessageEx
00075c80 adrp      x2, #0xd9000                                    
00075c84 add       x2, x2, #0xb0                                    ; 0xd90b0 | @'com.apple.springboard'
00075c88 mov       x0, x19                                         
00075c8c bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
00075c90 cbz       w0, #0x75ce8                                    
00075c94 adrp      x0, #0xbb000                                    
00075c98 add       x0, x0, #0x4e2                                   ; 0xbb4e2 | 'dylv.liquidass.clock.artwork-visible'
00075c9c adrp      x1, #0xef000                                    
00075ca0 add       x1, x1, #0xb5c                                   ; 0xefb5c
00075ca4 adrp      x2, #0xd4000                                    
00075ca8 ldr       x2, [x2, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
00075cac adrp      x3, #0xd5000                                    
00075cb0 add       x3, x3, #0xfd8                                   ; 0xd5fd8 | &__NSConcreteGlobalBlock
00075cb4 bl        #0xa4574                                         ; _notify_register_dispatch
00075cb8 cbnz      w0, #0x75ce8                                    
00075cbc str       xzr, [sp, #0xb8]                                
00075cc0 adrp      x8, #0xef000                                    
00075cc4 ldr       w0, [x8, #0xb5c]                                 ; 0xefb5c
00075cc8 add       x1, sp, #0xb8                                   
00075ccc bl        #0xa4544                                         ; _notify_get_state
00075cd0 cbnz      w0, #0x75ce8                                    
00075cd4 ldr       x8, [sp, #0xb8]                                 
00075cd8 cmp       x8, #0                                          
00075cdc cset      w8, ne                                          
00075ce0 adrp      x9, #0xef000                                    
00075ce4 strb      w8, [x9, #0xad0]                                 ; 0xefad0
00075ce8 adrp      x2, #0xdc000                                    
00075cec add       x2, x2, #0x3d0                                   ; 0xdc3d0 | @'com.apple.PosterBoard'
00075cf0 str       x19, [sp, #0x68]                                
00075cf4 mov       x0, x19                                         
00075cf8 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
00075cfc adrp      x25, #0xef000                                   
00075d00 strb      w0, [x25, #0x8a0]                                ; 0xef8a0
00075d04 cbz       w0, #0x75f44                                    
00075d08 adrp      x0, #0xdc000                                    
00075d0c add       x0, x0, #0x3f0                                   ; 0xdc3f0 | @'PREditingSceneViewController'
00075d10 bl        #0xa4064                                         ; _NSClassFromString
00075d14 adrp      x8, #0xec000                                    
00075d18 ldr       x20, [x8, #0x3a8]                                ; 0xec3a8 | SEL _shouldAllowAddComplicationsTapGestureForLocation:
00075d1c mov       x2, x20                                         
00075d20 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00075d24 adrp      x8, #0xef000                                    
00075d28 strb      w0, [x8, #0x8a1]                                 ; 0xef8a1
00075d2c adrp      x0, #0xbb000                                    
00075d30 add       x0, x0, #0x421                                   ; 0xbb421 | 'dylv.liquidass.clock.widget-drag'
00075d34 adrp      x1, #0xee000                                    
00075d38 add       x1, x1, #0x868                                   ; 0xee868
00075d3c bl        #0xa4564                                         ; _notify_register_check
00075d40 adrp      x8, #0xec000                                    
00075d44 ldr       x0, [x8, #0x4b0]                                 ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
00075d48 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
00075d4c mov       x29, x29                                        
00075d50 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075d54 adrp      x9, #0xef000                                    
00075d58 ldr       x8, [x9, #0x8a8]                                 ; 0xef8a8
00075d5c str       x0, [x9, #0x8a8]                                 ; 0xef8a8
00075d60 mov       x0, x8                                          
00075d64 bl        #0xa46f4                                         ; _objc_release
00075d68 adrp      x0, #0xbb000                                    
00075d6c add       x0, x0, #0x507                                   ; 0xbb507 | 'dylv.liquidass.clock.widget-layout'
00075d70 adrp      x1, #0xef000                                    
00075d74 add       x1, x1, #0x8b0                                   ; 0xef8b0
00075d78 adrp      x21, #0xd4000                                   
00075d7c ldr       x21, [x21, #0x940]                               ; 0xd4940 | &__dispatch_main_q
00075d80 adrp      x3, #0xd5000                                    
00075d84 add       x3, x3, #0xd68                                   ; 0xd5d68 | &__NSConcreteGlobalBlock
00075d88 mov       x2, x21                                         
00075d8c bl        #0xa4574                                         ; _notify_register_dispatch
00075d90 adrp      x0, #0xba000                                    
00075d94 add       x0, x0, #0xcab                                   ; 0xbacab | 'dylv.liquidass.clock.widget-add'
00075d98 adrp      x1, #0xef000                                    
00075d9c add       x1, x1, #0x8b4                                   ; 0xef8b4
00075da0 adrp      x3, #0xd5000                                    
00075da4 add       x3, x3, #0xd88                                   ; 0xd5d88 | &__NSConcreteGlobalBlock
00075da8 mov       x2, x21                                         
00075dac bl        #0xa4574                                         ; _notify_register_dispatch
00075db0 mov       x0, x21                                         
00075db4 bl        #0xa46f4                                         ; _objc_release
00075db8 adrp      x0, #0xdc000                                    
00075dbc add       x0, x0, #0x410                                   ; 0xdc410 | @'PosterBoard.LockScreenPosterCollectionViewCell'
00075dc0 bl        #0xa4064                                         ; _NSClassFromString
00075dc4 adrp      x8, #0xec000                                    
00075dc8 ldr       x1, [x8, #0x3b0]                                 ; 0xec3b0 | SEL descriptorsDidChangeForDescriptorProvider:
00075dcc adrp      x3, #0xef000                                    
00075dd0 add       x3, x3, #0x8b8                                   ; 0xef8b8
00075dd4 adrp      x16, #0x77000                                   
00075dd8 add       x16, x16, #0xa90                                 ; 0x77a90
00075ddc paciza    x16                                             
00075de0 mov       x2, x16                                         
00075de4 bl        #0xa4054                                         ; _MSHookMessageEx
00075de8 adrp      x0, #0xba000                                    
00075dec add       x0, x0, #0x8a8                                   ; 0xba8a8 | 'PREditingSceneViewController'
00075df0 bl        #0xa4664                                         ; _objc_getClass
00075df4 mov       x21, x0                                         
00075df8 adrp      x8, #0xec000                                    
00075dfc ldr       x1, [x8, #0x3b8]                                 ; 0xec3b8 | SEL setFocusedElement:
00075e00 adrp      x3, #0xef000                                    
00075e04 add       x3, x3, #0x8c0                                   ; 0xef8c0
00075e08 adrp      x16, #0x77000                                   
00075e0c add       x16, x16, #0xb04                                 ; 0x77b04
00075e10 paciza    x16                                             
00075e14 mov       x2, x16                                         
00075e18 bl        #0xa4054                                         ; _MSHookMessageEx
00075e1c adrp      x8, #0xe8000                                    
00075e20 ldr       x1, [x8, #0x828]                                 ; 0xe8828 | SEL _presentComplicationGallery
00075e24 adrp      x3, #0xef000                                    
00075e28 add       x3, x3, #0x8c8                                   ; 0xef8c8
00075e2c adrp      x16, #0x77000                                   
00075e30 add       x16, x16, #0xba4                                 ; 0x77ba4
00075e34 paciza    x16                                             
00075e38 mov       x2, x16                                         
00075e3c mov       x0, x21                                         
00075e40 bl        #0xa4054                                         ; _MSHookMessageEx
00075e44 adrp      x8, #0xec000                                    
00075e48 ldr       x1, [x8, #0x3c0]                                 ; 0xec3c0 | SEL _shouldAllowAddComplicationsTapGesture
00075e4c adrp      x3, #0xef000                                    
00075e50 add       x3, x3, #0x8d0                                   ; 0xef8d0
00075e54 adrp      x16, #0x77000                                   
00075e58 add       x16, x16, #0xc38                                 ; 0x77c38
00075e5c paciza    x16                                             
00075e60 mov       x2, x16                                         
00075e64 mov       x0, x21                                         
00075e68 bl        #0xa4054                                         ; _MSHookMessageEx
00075e6c adrp      x3, #0xef000                                    
00075e70 add       x3, x3, #0x8d8                                   ; 0xef8d8
00075e74 adrp      x16, #0x77000                                   
00075e78 add       x16, x16, #0xcb0                                 ; 0x77cb0
00075e7c paciza    x16                                             
00075e80 mov       x2, x16                                         
00075e84 mov       x0, x21                                         
00075e88 mov       x1, x20                                         
00075e8c bl        #0xa4054                                         ; _MSHookMessageEx
00075e90 adrp      x8, #0xeb000                                    
00075e94 ldr       x20, [x8, #0xf90]                                ; 0xebf90 | SEL viewDidLayoutSubviews
00075e98 adrp      x3, #0xef000                                    
00075e9c add       x3, x3, #0x8e0                                   ; 0xef8e0
00075ea0 adrp      x16, #0x77000                                   
00075ea4 add       x16, x16, #0xd3c                                 ; 0x77d3c
00075ea8 paciza    x16                                             
00075eac mov       x2, x16                                         
00075eb0 mov       x0, x21                                         
00075eb4 mov       x1, x20                                         
00075eb8 bl        #0xa4054                                         ; _MSHookMessageEx
00075ebc adrp      x0, #0xba000                                    
00075ec0 add       x0, x0, #0x929                                   ; 0xba929 | 'PRGraphicComplicationContainerViewController'
00075ec4 bl        #0xa4664                                         ; _objc_getClass
00075ec8 mov       x21, x0                                         
00075ecc adrp      x8, #0xec000                                    
00075ed0 ldr       x1, [x8, #0x3c8]                                 ; 0xec3c8 | SEL setFocused:animationSettings:
00075ed4 adrp      x3, #0xef000                                    
00075ed8 add       x3, x3, #0x8e8                                   ; 0xef8e8
00075edc adrp      x16, #0x77000                                   
00075ee0 add       x16, x16, #0xd8c                                 ; 0x77d8c
00075ee4 paciza    x16                                             
00075ee8 mov       x2, x16                                         
00075eec bl        #0xa4054                                         ; _MSHookMessageEx
00075ef0 adrp      x8, #0xec000                                    
00075ef4 ldr       x1, [x8, #0x3d0]                                 ; 0xec3d0 | SEL _tapGestureRecognized:
00075ef8 adrp      x3, #0xef000                                    
00075efc add       x3, x3, #0x8f0                                   ; 0xef8f0
00075f00 adrp      x16, #0x78000                                   
00075f04 add       x16, x16, #0x94                                  ; 0x78094
00075f08 paciza    x16                                             
00075f0c mov       x2, x16                                         
00075f10 mov       x0, x21                                         
00075f14 bl        #0xa4054                                         ; _MSHookMessageEx
00075f18 adrp      x0, #0xba000                                    
00075f1c add       x0, x0, #0x6bb                                   ; 0xba6bb | 'PRComplicationContainerViewController'
00075f20 bl        #0xa4664                                         ; _objc_getClass
00075f24 adrp      x3, #0xef000                                    
00075f28 add       x3, x3, #0x8f8                                   ; 0xef8f8
00075f2c adrp      x16, #0x78000                                   
00075f30 add       x16, x16, #0x208                                 ; 0x78208
00075f34 paciza    x16                                             
00075f38 mov       x2, x16                                         
00075f3c mov       x1, x20                                         
00075f40 bl        #0xa4054                                         ; _MSHookMessageEx
00075f44 ldr       x0, [x22, #0x688]                                ; 0xec688 | &_OBJC_CLASS_$_NSBundle
00075f48 bl        #0xa9920                                         ; objc_msgSend$mainBundle
00075f4c mov       x29, x29                                        
00075f50 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075f54 mov       x21, x0                                         
00075f58 bl        #0xa8540                                         ; objc_msgSend$infoDictionary
00075f5c mov       x29, x29                                        
00075f60 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075f64 mov       x22, x0                                         
00075f68 adrp      x2, #0xdc000                                    
00075f6c add       x2, x2, #0x430                                   ; 0xdc430 | @'NSExtension'
00075f70 bl        #0xaa280                                         ; objc_msgSend$objectForKeyedSubscript:
00075f74 mov       x29, x29                                        
00075f78 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075f7c mov       x19, x0                                         
00075f80 mov       x0, x22                                         
00075f84 bl        #0xa46f4                                         ; _objc_release
00075f88 mov       x0, x21                                         
00075f8c bl        #0xa46f4                                         ; _objc_release
00075f90 adrp      x2, #0xdc000                                    
00075f94 add       x2, x2, #0x450                                   ; 0xdc450 | @'NSExtensionPointIdentifier'
00075f98 str       x19, [sp, #0x60]                                
00075f9c mov       x0, x19                                         
00075fa0 bl        #0xaa280                                         ; objc_msgSend$objectForKeyedSubscript:
00075fa4 mov       x29, x29                                        
00075fa8 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075fac mov       x21, x0                                         
00075fb0 adrp      x2, #0xdc000                                    
00075fb4 add       x2, x2, #0x470                                   ; 0xdc470 | @'com.apple.posterkit.provider'
00075fb8 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
00075fbc adrp      x19, #0xef000                                   
00075fc0 strb      w0, [x19, #0x900]                                ; 0xef900
00075fc4 mov       x0, x21                                         
00075fc8 bl        #0xa46f4                                         ; _objc_release
00075fcc adrp      x8, #0xec000                                    
00075fd0 ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
00075fd4 bl        #0xaada0                                         ; objc_msgSend$processInfo
00075fd8 mov       x29, x29                                        
00075fdc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075fe0 mov       x21, x0                                         
00075fe4 bl        #0xaadc0                                         ; objc_msgSend$processName
00075fe8 mov       x29, x29                                        
00075fec bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00075ff0 mov       x22, x0                                         
00075ff4 adrp      x8, #0xec000                                    
00075ff8 ldr       x0, [x8, #0x598]                                 ; 0xec598 | &_OBJC_CLASS_$_UIDevice
00075ffc bl        #0xa6ac0                                         ; objc_msgSend$currentDevice
00076000 mov       x29, x29                                        
00076004 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076008 mov       x23, x0                                         
0007600c bl        #0xb0960                                         ; objc_msgSend$systemVersion
00076010 mov       x29, x29                                        
00076014 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076018 mov       x24, x0                                         
0007601c ldrb      w20, [x25, #0x8a0]                               ; 0xef8a0
00076020 ldrb      w19, [x19, #0x900]                               ; 0xef900
00076024 adrp      x0, #0xda000                                    
00076028 add       x0, x0, #0xb10                                   ; 0xdab10 | @'CSProminentTimeView'
0007602c bl        #0xa4064                                         ; _NSClassFromString
00076030 mov       x25, x0                                         
00076034 adrp      x0, #0xdc000                                    
00076038 add       x0, x0, #0x290                                   ; 0xdc290 | @'CSProminentDisplayView'
0007603c bl        #0xa4064                                         ; _NSClassFromString
00076040 mov       x26, x0                                         
00076044 adrp      x0, #0xda000                                    
00076048 add       x0, x0, #0xb30                                   ; 0xdab30 | @'SBFLockScreenDateView'
0007604c bl        #0xa4064                                         ; _NSClassFromString
00076050 mov       x27, x0                                         
00076054 adrp      x0, #0xdc000                                    
00076058 add       x0, x0, #0x4b0                                   ; 0xdc4b0 | @'CSProminentSubtitleDateView'
0007605c bl        #0xa4064                                         ; _NSClassFromString
00076060 mov       x28, x0                                         
00076064 adrp      x0, #0xdc000                                    
00076068 add       x0, x0, #0x4d0                                   ; 0xdc4d0 | @'BSUIVibrancyView'
0007606c bl        #0xa4064                                         ; _NSClassFromString
00076070 stp       x28, x0, [sp, #0x40]                            
00076074 stp       x26, x27, [sp, #0x30]                           
00076078 stp       x19, x25, [sp, #0x20]                           
0007607c stp       x24, x20, [sp, #0x10]                           
00076080 adrp      x0, #0xdc000                                    
00076084 add       x0, x0, #0x490                                   ; 0xdc490 | @'[ClockInject] ctor bundle=%@ process=%@ os=%@ poster=%d provider=%d prominentTime=%@ prominentDisplay=%@ legacyDate=%@ subtitle=%@ vibrancy=%@'
00076088 ldr       x19, [sp, #0x68]                                
0007608c stp       x19, x22, [sp]                                  
00076090 bl        #0xa23b8                                         ; _LGLog
00076094 mov       x0, x24                                         
00076098 bl        #0xa46f4                                         ; _objc_release
0007609c mov       x0, x23                                         
000760a0 bl        #0xa46f4                                         ; _objc_release
000760a4 mov       x0, x22                                         
000760a8 bl        #0xa46f4                                         ; _objc_release
000760ac mov       x0, x21                                         
000760b0 bl        #0xa46f4                                         ; _objc_release
000760b4 adrp      x2, #0xd9000                                    
000760b8 add       x2, x2, #0xb0                                    ; 0xd90b0 | @'com.apple.springboard'
000760bc mov       x0, x19                                         
000760c0 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
000760c4 tbnz      w0, #0, #0x760e4                                
000760c8 adrp      x8, #0xef000                                    
000760cc ldrb      w8, [x8, #0x900]                                 ; 0xef900
000760d0 tbnz      w8, #0, #0x760e4                                
000760d4 adrp      x8, #0xef000                                    
000760d8 ldrb      w8, [x8, #0x8a0]                                 ; 0xef8a0
000760dc cmp       w8, #1                                          
000760e0 b.ne      #0x76cac                                        
000760e4 adrp      x0, #0xba000                                    
000760e8 add       x0, x0, #0xa29                                   ; 0xbaa29 | 'CSProminentSubtitleDateView'
000760ec bl        #0xa4664                                         ; _objc_getClass
000760f0 adrp      x8, #0xeb000                                    
000760f4 ldr       x23, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
000760f8 adrp      x3, #0xef000                                    
000760fc add       x3, x3, #0x908                                   ; 0xef908
00076100 adrp      x16, #0x78000                                   
00076104 add       x16, x16, #0x358                                 ; 0x78358
00076108 paciza    x16                                             
0007610c mov       x2, x16                                         
00076110 mov       x1, x23                                         
00076114 bl        #0xa4054                                         ; _MSHookMessageEx
00076118 adrp      x0, #0xb8000                                    
0007611c add       x0, x0, #0xf36                                   ; 0xb8f36 | 'CSProminentTimeView'
00076120 bl        #0xa4664                                         ; _objc_getClass
00076124 mov       x25, x0                                         
00076128 adrp      x3, #0xef000                                    
0007612c add       x3, x3, #0x910                                   ; 0xef910
00076130 adrp      x16, #0x78000                                   
00076134 add       x16, x16, #0x398                                 ; 0x78398
00076138 paciza    x16                                             
0007613c mov       x2, x16                                         
00076140 mov       x1, x23                                         
00076144 bl        #0xa4054                                         ; _MSHookMessageEx
00076148 adrp      x8, #0xea000                                    
0007614c ldr       x27, [x8, #0x478]                                ; 0xea478 | SEL setAlpha:
00076150 adrp      x3, #0xef000                                    
00076154 add       x3, x3, #0x918                                   ; 0xef918
00076158 adrp      x16, #0x78000                                   
0007615c add       x16, x16, #0x3ec                                 ; 0x783ec
00076160 paciza    x16                                             
00076164 mov       x2, x16                                         
00076168 mov       x0, x25                                         
0007616c mov       x1, x27                                         
00076170 bl        #0xa4054                                         ; _MSHookMessageEx
00076174 adrp      x8, #0xea000                                    
00076178 ldr       x28, [x8, #0x9c0]                                ; 0xea9c0 | SEL setHidden:
0007617c adrp      x3, #0xef000                                    
00076180 add       x3, x3, #0x920                                   ; 0xef920
00076184 adrp      x16, #0x78000                                   
00076188 add       x16, x16, #0x4a0                                 ; 0x784a0
0007618c paciza    x16                                             
00076190 mov       x2, x16                                         
00076194 mov       x0, x25                                         
00076198 mov       x1, x28                                         
0007619c bl        #0xa4054                                         ; _MSHookMessageEx
000761a0 adrp      x8, #0xeb000                                    
000761a4 ldr       x24, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
000761a8 adrp      x3, #0xef000                                    
000761ac add       x3, x3, #0x928                                   ; 0xef928
000761b0 adrp      x16, #0x78000                                   
000761b4 add       x16, x16, #0x554                                 ; 0x78554
000761b8 paciza    x16                                             
000761bc mov       x2, x16                                         
000761c0 mov       x0, x25                                         
000761c4 mov       x1, x24                                         
000761c8 bl        #0xa4054                                         ; _MSHookMessageEx
000761cc adrp      x8, #0xea000                                    
000761d0 ldr       x26, [x8, #0x720]                                ; 0xea720 | SEL setDate:
000761d4 adrp      x3, #0xef000                                    
000761d8 add       x3, x3, #0x930                                   ; 0xef930
000761dc adrp      x16, #0x78000                                   
000761e0 add       x16, x16, #0x594                                 ; 0x78594
000761e4 paciza    x16                                             
000761e8 mov       x2, x16                                         
000761ec mov       x0, x25                                         
000761f0 mov       x1, x26                                         
000761f4 bl        #0xa4054                                         ; _MSHookMessageEx
000761f8 adrp      x0, #0xb8000                                    
000761fc add       x0, x0, #0xf4a                                   ; 0xb8f4a | 'SBFLockScreenDateView'
00076200 bl        #0xa4664                                         ; _objc_getClass
00076204 mov       x25, x0                                         
00076208 adrp      x3, #0xef000                                    
0007620c add       x3, x3, #0x938                                   ; 0xef938
00076210 adrp      x16, #0x78000                                   
00076214 add       x16, x16, #0x5d4                                 ; 0x785d4
00076218 paciza    x16                                             
0007621c mov       x2, x16                                         
00076220 mov       x1, x24                                         
00076224 bl        #0xa4054                                         ; _MSHookMessageEx
00076228 adrp      x3, #0xef000                                    
0007622c add       x3, x3, #0x940                                   ; 0xef940
00076230 adrp      x16, #0x78000                                   
00076234 add       x16, x16, #0x624                                 ; 0x78624
00076238 paciza    x16                                             
0007623c mov       x2, x16                                         
00076240 mov       x0, x25                                         
00076244 mov       x1, x23                                         
00076248 bl        #0xa4054                                         ; _MSHookMessageEx
0007624c adrp      x3, #0xef000                                    
00076250 add       x3, x3, #0x948                                   ; 0xef948
00076254 adrp      x16, #0x78000                                   
00076258 add       x16, x16, #0x674                                 ; 0x78674
0007625c paciza    x16                                             
00076260 mov       x2, x16                                         
00076264 mov       x0, x25                                         
00076268 mov       x1, x26                                         
0007626c bl        #0xa4054                                         ; _MSHookMessageEx
00076270 adrp      x0, #0xba000                                    
00076274 add       x0, x0, #0xa56                                   ; 0xbaa56 | 'SBFLockScreenDateSubtitleDateView'
00076278 bl        #0xa4664                                         ; _objc_getClass
0007627c adrp      x3, #0xef000                                    
00076280 add       x3, x3, #0x950                                   ; 0xef950
00076284 adrp      x16, #0x78000                                   
00076288 add       x16, x16, #0x6cc                                 ; 0x786cc
0007628c paciza    x16                                             
00076290 mov       x2, x16                                         
00076294 mov       x1, x23                                         
00076298 bl        #0xa4054                                         ; _MSHookMessageEx
0007629c adrp      x0, #0xb8000                                    
000762a0 add       x0, x0, #0xf60                                   ; 0xb8f60 | 'NCNotificationListView'
000762a4 bl        #0xa4664                                         ; _objc_getClass
000762a8 mov       x25, x0                                         
000762ac adrp      x3, #0xef000                                    
000762b0 add       x3, x3, #0x958                                   ; 0xef958
000762b4 adrp      x16, #0x78000                                   
000762b8 add       x16, x16, #0x730                                 ; 0x78730
000762bc paciza    x16                                             
000762c0 mov       x2, x16                                         
000762c4 mov       x1, x23                                         
000762c8 bl        #0xa4054                                         ; _MSHookMessageEx
000762cc adrp      x8, #0xec000                                    
000762d0 ldr       x1, [x8, #0x3d8]                                 ; 0xec3d8 | SEL setContentOffset:
000762d4 adrp      x3, #0xef000                                    
000762d8 add       x3, x3, #0x960                                   ; 0xef960
000762dc adrp      x16, #0x78000                                   
000762e0 add       x16, x16, #0x784                                 ; 0x78784
000762e4 paciza    x16                                             
000762e8 mov       x2, x16                                         
000762ec mov       x0, x25                                         
000762f0 bl        #0xa4054                                         ; _MSHookMessageEx
000762f4 adrp      x0, #0xba000                                    
000762f8 add       x0, x0, #0xa78                                   ; 0xbaa78 | 'CSScrollView'
000762fc bl        #0xa4664                                         ; _objc_getClass
00076300 adrp      x3, #0xef000                                    
00076304 add       x3, x3, #0x968                                   ; 0xef968
00076308 adrp      x16, #0x78000                                   
0007630c add       x16, x16, #0x7b4                                 ; 0x787b4
00076310 paciza    x16                                             
00076314 mov       x2, x16                                         
00076318 mov       x1, x23                                         
0007631c bl        #0xa4054                                         ; _MSHookMessageEx
00076320 adrp      x0, #0xba000                                    
00076324 add       x0, x0, #0xa85                                   ; 0xbaa85 | 'NCNotificationListHeaderTitleView'
00076328 bl        #0xa4664                                         ; _objc_getClass
0007632c mov       x25, x0                                         
00076330 adrp      x3, #0xef000                                    
00076334 add       x3, x3, #0x970                                   ; 0xef970
00076338 adrp      x16, #0x78000                                   
0007633c add       x16, x16, #0x804                                 ; 0x78804
00076340 paciza    x16                                             
00076344 mov       x2, x16                                         
00076348 mov       x1, x24                                         
0007634c bl        #0xa4054                                         ; _MSHookMessageEx
00076350 adrp      x3, #0xef000                                    
00076354 add       x3, x3, #0x978                                   ; 0xef978
00076358 adrp      x16, #0x78000                                   
0007635c add       x16, x16, #0x834                                 ; 0x78834
00076360 paciza    x16                                             
00076364 mov       x2, x16                                         
00076368 mov       x0, x25                                         
0007636c mov       x1, x23                                         
00076370 bl        #0xa4054                                         ; _MSHookMessageEx
00076374 adrp      x0, #0xba000                                    
00076378 add       x0, x0, #0xaa7                                   ; 0xbaaa7 | 'NCNotificationListSectionRevealHintView'
0007637c bl        #0xa4664                                         ; _objc_getClass
00076380 mov       x25, x0                                         
00076384 adrp      x3, #0xef000                                    
00076388 add       x3, x3, #0x980                                   ; 0xef980
0007638c adrp      x16, #0x78000                                   
00076390 add       x16, x16, #0x864                                 ; 0x78864
00076394 paciza    x16                                             
00076398 mov       x2, x16                                         
0007639c mov       x1, x24                                         
000763a0 bl        #0xa4054                                         ; _MSHookMessageEx
000763a4 adrp      x3, #0xef000                                    
000763a8 add       x3, x3, #0x988                                   ; 0xef988
000763ac adrp      x16, #0x78000                                   
000763b0 add       x16, x16, #0x894                                 ; 0x78894
000763b4 paciza    x16                                             
000763b8 mov       x2, x16                                         
000763bc mov       x0, x25                                         
000763c0 mov       x1, x23                                         
000763c4 bl        #0xa4054                                         ; _MSHookMessageEx
000763c8 bl        #0x788c4                                        
000763cc adrp      x16, #0x78000                                   
000763d0 add       x16, x16, #0xa4c                                 ; 0x78a4c
000763d4 paciza    x16                                             
000763d8 mov       x0, x16                                         
000763dc bl        #0xa41f4                                         ; __dyld_register_func_for_add_image
000763e0 bl        #0x78aa8                                        
000763e4 adrp      x22, #0xec000                                   
000763e8 adrp      x21, #0xec000                                   
000763ec tbz       w0, #0, #0x76974                                
000763f0 adrp      x8, #0xef000                                    
000763f4 ldrb      w8, [x8, #0x900]                                 ; 0xef900
000763f8 cmp       w8, #1                                          
000763fc b.ne      #0x76aa8                                        
00076400 stp       x28, x27, [sp, #0x50]                           
00076404 adrp      x0, #0xdc000                                    
00076408 add       x0, x0, #0x4f0                                   ; 0xdc4f0 | @'PREditorRootViewController'
0007640c bl        #0xa4064                                         ; _NSClassFromString
00076410 mov       x24, x0                                         
00076414 movi      v0.2d, #0000000000000000                        
00076418 stp       q0, q0, [sp, #0x70]                             
0007641c stp       q0, q0, [sp, #0x90]                             
00076420 adrp      x0, #0xdf000                                    
00076424 add       x0, x0, #0xa80                                   ; 0xdfa80 | &_OBJC_CLASS_$_NSConstantDictionary
00076428 add       x2, sp, #0x70                                   
0007642c add       x3, sp, #0xc0                                   
00076430 mov       w4, #0x10                                       
00076434 bl        #0xa6a20                                         ; objc_msgSend$countByEnumeratingWithState:objects:count:
00076438 cbz       x0, #0x7651c                                    
0007643c mov       x26, x0                                         
00076440 ldr       x8, [sp, #0x80]                                 
00076444 ldr       x21, [x8]                                       
00076448 adrp      x25, #0xdf000                                   
0007644c add       x25, x25, #0xa80                                 ; 0xdfa80 | &_OBJC_CLASS_$_NSConstantDictionary
00076450 mov       x22, #0                                         
00076454 ldr       x8, [sp, #0x80]                                 
00076458 ldr       x8, [x8]                                        
0007645c cmp       x8, x21                                         
00076460 b.eq      #0x7646c                                        
00076464 mov       x0, x25                                         
00076468 bl        #0xa4634                                         ; _objc_enumerationMutation
0007646c ldr       x8, [sp, #0x78]                                 
00076470 ldr       x28, [x8, x22, lsl #3]                          
00076474 mov       x0, x28                                         
00076478 bl        #0xa4094                                         ; _NSSelectorFromString
0007647c mov       x27, x0                                         
00076480 mov       x0, x25                                         
00076484 mov       x2, x28                                         
00076488 bl        #0xaa280                                         ; objc_msgSend$objectForKeyedSubscript:
0007648c mov       x29, x29                                        
00076490 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076494 mov       x20, x0                                         
00076498 bl        #0xa4094                                         ; _NSSelectorFromString
0007649c mov       x1, x0                                          
000764a0 mov       x0, x24                                         
000764a4 bl        #0xa4284                                         ; _class_getInstanceMethod
000764a8 mov       x28, x0                                         
000764ac mov       x0, x20                                         
000764b0 bl        #0xa46f4                                         ; _objc_release
000764b4 mov       x0, x24                                         
000764b8 mov       x1, x27                                         
000764bc bl        #0xa4284                                         ; _class_getInstanceMethod
000764c0 cmp       x0, #0                                          
000764c4 ccmp      x28, #0, #4, eq                                 
000764c8 b.eq      #0x764f4                                        
000764cc mov       x0, x28                                         
000764d0 bl        #0xa4504                                         ; _method_getImplementation
000764d4 mov       x20, x0                                         
000764d8 mov       x0, x28                                         
000764dc bl        #0xa4514                                         ; _method_getTypeEncoding
000764e0 mov       x3, x0                                          
000764e4 mov       x0, x24                                         
000764e8 mov       x1, x27                                         
000764ec mov       x2, x20                                         
000764f0 bl        #0xa4254                                         ; _class_addMethod
000764f4 add       x22, x22, #1                                     ; 0xec001
000764f8 cmp       x26, x22                                        
000764fc b.ne      #0x76454                                        
00076500 add       x2, sp, #0x70                                   
00076504 add       x3, sp, #0xc0                                   
00076508 mov       x0, x25                                         
0007650c mov       w4, #0x10                                       
00076510 bl        #0xa6a20                                         ; objc_msgSend$countByEnumeratingWithState:objects:count:
00076514 mov       x26, x0                                         
00076518 cbnz      x0, #0x76450                                    
0007651c adrp      x0, #0xdc000                                    
00076520 add       x0, x0, #0x610                                   ; 0xdc610 | @'PREditingFontAndContentStylePickerViewController'
00076524 bl        #0xa4064                                         ; _NSClassFromString
00076528 mov       x25, x0                                         
0007652c cbnz      x0, #0x76540                                    
00076530 adrp      x0, #0xdc000                                    
00076534 add       x0, x0, #0x630                                   ; 0xdc630 | @'PREditingFontAndColorPickerViewController'
00076538 bl        #0xa4064                                         ; _NSClassFromString
0007653c mov       x25, x0                                         
00076540 adrp      x8, #0xeb000                                    
00076544 ldr       x24, [x8, #0xf90]                                ; 0xebf90 | SEL viewDidLayoutSubviews
00076548 adrp      x3, #0xef000                                    
0007654c add       x3, x3, #0x990                                   ; 0xef990
00076550 adrp      x16, #0x78000                                   
00076554 add       x16, x16, #0xae8                                 ; 0x78ae8
00076558 paciza    x16                                             
0007655c mov       x2, x16                                         
00076560 mov       x0, x25                                         
00076564 mov       x1, x24                                         
00076568 bl        #0xa4054                                         ; _MSHookMessageEx
0007656c adrp      x8, #0xe9000                                    
00076570 ldr       x1, [x8, #0xd0]                                  ; 0xe90d0 | SEL desiredDetent
00076574 adrp      x3, #0xef000                                    
00076578 add       x3, x3, #0x998                                   ; 0xef998
0007657c adrp      x16, #0x78000                                   
00076580 add       x16, x16, #0xbd4                                 ; 0x78bd4
00076584 paciza    x16                                             
00076588 mov       x2, x16                                         
0007658c mov       x0, x25                                         
00076590 bl        #0xa4054                                         ; _MSHookMessageEx
00076594 adrp      x0, #0xba000                                    
00076598 add       x0, x0, #0xa45                                   ; 0xbaa45 | 'BSUIVibrancyView'
0007659c bl        #0xa4664                                         ; _objc_getClass
000765a0 adrp      x8, #0xea000                                    
000765a4 ldr       x1, [x8, #0x648]                                 ; 0xea648 | SEL setConfiguration:
000765a8 adrp      x3, #0xef000                                    
000765ac add       x3, x3, #0x9a0                                   ; 0xef9a0
000765b0 adrp      x16, #0x78000                                   
000765b4 add       x16, x16, #0xda8                                 ; 0x78da8
000765b8 paciza    x16                                             
000765bc mov       x2, x16                                         
000765c0 bl        #0xa4054                                         ; _MSHookMessageEx
000765c4 adrp      x0, #0xb6000                                    
000765c8 add       x0, x0, #0x5dc                                   ; 0xb65dc | 'UILabel'
000765cc bl        #0xa4664                                         ; _objc_getClass
000765d0 mov       x20, x0                                         
000765d4 adrp      x8, #0xeb000                                    
000765d8 ldr       x1, [x8, #0x248]                                 ; 0xeb248 | SEL setTextColor:
000765dc adrp      x3, #0xef000                                    
000765e0 add       x3, x3, #0x9a8                                   ; 0xef9a8
000765e4 adrp      x16, #0x78000                                   
000765e8 add       x16, x16, #0xe70                                 ; 0x78e70
000765ec paciza    x16                                             
000765f0 mov       x2, x16                                         
000765f4 bl        #0xa4054                                         ; _MSHookMessageEx
000765f8 adrp      x8, #0xea000                                    
000765fc ldr       x1, [x8, #0x4c8]                                 ; 0xea4c8 | SEL setAttributedText:
00076600 adrp      x3, #0xef000                                    
00076604 add       x3, x3, #0x9b0                                   ; 0xef9b0
00076608 adrp      x16, #0x78000                                   
0007660c add       x16, x16, #0xfa0                                 ; 0x78fa0
00076610 paciza    x16                                             
00076614 mov       x2, x16                                         
00076618 mov       x0, x20                                         
0007661c bl        #0xa4054                                         ; _MSHookMessageEx
00076620 adrp      x8, #0xea000                                    
00076624 ldr       x26, [x8, #0x8e0]                                ; 0xea8e0 | SEL setFrame:
00076628 adrp      x3, #0xef000                                    
0007662c add       x3, x3, #0x9b8                                   ; 0xef9b8
00076630 adrp      x16, #0x79000                                   
00076634 add       x16, x16, #0xd0                                  ; 0x790d0
00076638 paciza    x16                                             
0007663c mov       x2, x16                                         
00076640 mov       x0, x20                                         
00076644 mov       x1, x26                                         
00076648 bl        #0xa4054                                         ; _MSHookMessageEx
0007664c adrp      x8, #0xea000                                    
00076650 ldr       x25, [x8, #0x5b0]                                ; 0xea5b0 | SEL setCenter:
00076654 adrp      x3, #0xef000                                    
00076658 add       x3, x3, #0x9c0                                   ; 0xef9c0
0007665c adrp      x16, #0x79000                                   
00076660 add       x16, x16, #0x180                                 ; 0x79180
00076664 paciza    x16                                             
00076668 mov       x2, x16                                         
0007666c mov       x0, x20                                         
00076670 mov       x1, x25                                         
00076674 bl        #0xa4054                                         ; _MSHookMessageEx
00076678 adrp      x0, #0xba000                                    
0007667c add       x0, x0, #0xbfe                                   ; 0xbabfe | 'PRMutablePosterConfiguration'
00076680 bl        #0xa4664                                         ; _objc_getClass
00076684 mov       x20, x0                                         
00076688 adrp      x8, #0xeb000                                    
0007668c ldr       x1, [x8, #0x648]                                 ; 0xeb648 | SEL storeUserInfo:error:
00076690 adrp      x3, #0xef000                                    
00076694 add       x3, x3, #0x9c8                                   ; 0xef9c8
00076698 adrp      x16, #0x79000                                   
0007669c add       x16, x16, #0x214                                 ; 0x79214
000766a0 paciza    x16                                             
000766a4 mov       x2, x16                                         
000766a8 bl        #0xa4054                                         ; _MSHookMessageEx
000766ac adrp      x8, #0xec000                                    
000766b0 ldr       x1, [x8, #0x3e0]                                 ; 0xec3e0 | SEL storeConfiguredProperties:error:
000766b4 adrp      x3, #0xef000                                    
000766b8 add       x3, x3, #0x9d0                                   ; 0xef9d0
000766bc adrp      x16, #0x79000                                   
000766c0 add       x16, x16, #0x430                                 ; 0x79430
000766c4 paciza    x16                                             
000766c8 mov       x2, x16                                         
000766cc mov       x0, x20                                         
000766d0 bl        #0xa4054                                         ; _MSHookMessageEx
000766d4 adrp      x0, #0xba000                                    
000766d8 add       x0, x0, #0xc1b                                   ; 0xbac1b | 'PREditingReticleView'
000766dc bl        #0xa4664                                         ; _objc_getClass
000766e0 mov       x27, x0                                         
000766e4 adrp      x3, #0xef000                                    
000766e8 add       x3, x3, #0x9d8                                   ; 0xef9d8
000766ec adrp      x16, #0x79000                                   
000766f0 add       x16, x16, #0x5b0                                 ; 0x795b0
000766f4 paciza    x16                                             
000766f8 mov       x2, x16                                         
000766fc ldr       x1, [sp, #0x58]                                 
00076700 bl        #0xa4054                                         ; _MSHookMessageEx
00076704 adrp      x3, #0xef000                                    
00076708 add       x3, x3, #0x9e0                                   ; 0xef9e0
0007670c adrp      x16, #0x79000                                   
00076710 add       x16, x16, #0x620                                 ; 0x79620
00076714 paciza    x16                                             
00076718 mov       x2, x16                                         
0007671c mov       x0, x27                                         
00076720 ldr       x1, [sp, #0x50]                                 
00076724 bl        #0xa4054                                         ; _MSHookMessageEx
00076728 adrp      x3, #0xef000                                    
0007672c add       x3, x3, #0x9e8                                   ; 0xef9e8
00076730 adrp      x16, #0x79000                                   
00076734 add       x16, x16, #0x688                                 ; 0x79688
00076738 paciza    x16                                             
0007673c mov       x2, x16                                         
00076740 mov       x0, x27                                         
00076744 mov       x1, x26                                         
00076748 bl        #0xa4054                                         ; _MSHookMessageEx
0007674c adrp      x8, #0xea000                                    
00076750 ldr       x20, [x8, #0x570]                                ; 0xea570 | SEL setBounds:
00076754 adrp      x3, #0xef000                                    
00076758 add       x3, x3, #0x9f0                                   ; 0xef9f0
0007675c adrp      x16, #0x79000                                   
00076760 add       x16, x16, #0x740                                 ; 0x79740
00076764 paciza    x16                                             
00076768 mov       x2, x16                                         
0007676c mov       x0, x27                                         
00076770 mov       x1, x20                                         
00076774 bl        #0xa4054                                         ; _MSHookMessageEx
00076778 adrp      x3, #0xef000                                    
0007677c add       x3, x3, #0x9f8                                   ; 0xef9f8
00076780 adrp      x16, #0x79000                                   
00076784 add       x16, x16, #0x7f0                                 ; 0x797f0
00076788 paciza    x16                                             
0007678c mov       x2, x16                                         
00076790 mov       x0, x27                                         
00076794 mov       x1, x25                                         
00076798 bl        #0xa4054                                         ; _MSHookMessageEx
0007679c adrp      x3, #0xef000                                    
000767a0 add       x3, x3, #0xa00                                   ; 0xefa00
000767a4 adrp      x16, #0x79000                                   
000767a8 add       x16, x16, #0x898                                 ; 0x79898
000767ac paciza    x16                                             
000767b0 mov       x2, x16                                         
000767b4 mov       x0, x27                                         
000767b8 mov       x1, x23                                         
000767bc bl        #0xa4054                                         ; _MSHookMessageEx
000767c0 adrp      x0, #0xba000                                    
000767c4 add       x0, x0, #0x63e                                   ; 0xba63e | 'BSUIVibrancyEffectView'
000767c8 bl        #0xa4664                                         ; _objc_getClass
000767cc mov       x21, x0                                         
000767d0 adrp      x3, #0xef000                                    
000767d4 add       x3, x3, #0xa08                                   ; 0xefa08
000767d8 adrp      x16, #0x79000                                   
000767dc add       x16, x16, #0x9e8                                 ; 0x799e8
000767e0 paciza    x16                                             
000767e4 mov       x2, x16                                         
000767e8 mov       x1, x26                                         
000767ec bl        #0xa4054                                         ; _MSHookMessageEx
000767f0 adrp      x3, #0xef000                                    
000767f4 add       x3, x3, #0xa10                                   ; 0xefa10
000767f8 adrp      x16, #0x79000                                   
000767fc add       x16, x16, #0xaf0                                 ; 0x79af0
00076800 paciza    x16                                             
00076804 mov       x2, x16                                         
00076808 mov       x0, x21                                         
0007680c mov       x1, x20                                         
00076810 bl        #0xa4054                                         ; _MSHookMessageEx
00076814 adrp      x3, #0xef000                                    
00076818 add       x3, x3, #0xa18                                   ; 0xefa18
0007681c adrp      x16, #0x79000                                   
00076820 add       x16, x16, #0xbd8                                 ; 0x79bd8
00076824 paciza    x16                                             
00076828 mov       x2, x16                                         
0007682c mov       x0, x21                                         
00076830 mov       x1, x25                                         
00076834 bl        #0xa4054                                         ; _MSHookMessageEx
00076838 adrp      x0, #0xba000                                    
0007683c add       x0, x0, #0xacf                                   ; 0xbaacf | 'PREditorRootViewController'
00076840 bl        #0xa4664                                         ; _objc_getClass
00076844 mov       x20, x0                                         
00076848 adrp      x8, #0xec000                                    
0007684c ldr       x1, [x8, #0x3e8]                                 ; 0xec3e8 | SEL setPresentingModalViewController:
00076850 adrp      x3, #0xef000                                    
00076854 add       x3, x3, #0xa20                                   ; 0xefa20
00076858 adrp      x16, #0x79000                                   
0007685c add       x16, x16, #0xc80                                 ; 0x79c80
00076860 paciza    x16                                             
00076864 mov       x2, x16                                         
00076868 bl        #0xa4054                                         ; _MSHookMessageEx
0007686c adrp      x8, #0xec000                                    
00076870 ldr       x1, [x8, #0x3f0]                                 ; 0xec3f0 | SEL setFocusedComplicationElement:
00076874 adrp      x3, #0xef000                                    
00076878 add       x3, x3, #0xa28                                   ; 0xefa28
0007687c adrp      x16, #0x79000                                   
00076880 add       x16, x16, #0xd14                                 ; 0x79d14
00076884 paciza    x16                                             
00076888 mov       x2, x16                                         
0007688c mov       x0, x20                                         
00076890 bl        #0xa4054                                         ; _MSHookMessageEx
00076894 adrp      x0, #0xba000                                    
00076898 add       x0, x0, #0xc30                                   ; 0xbac30 | 'PREditorCombinedRootViewController'
0007689c bl        #0xa4664                                         ; _objc_getClass
000768a0 mov       x20, x0                                         
000768a4 adrp      x3, #0xef000                                    
000768a8 add       x3, x3, #0xa30                                   ; 0xefa30
000768ac adrp      x16, #0x79000                                   
000768b0 add       x16, x16, #0xda8                                 ; 0x79da8
000768b4 paciza    x16                                             
000768b8 mov       x2, x16                                         
000768bc mov       x1, x24                                         
000768c0 bl        #0xa4054                                         ; _MSHookMessageEx
000768c4 adrp      x8, #0xec000                                    
000768c8 ldr       x21, [x8, #0x3f8]                                ; 0xec3f8 | SEL updateReticlesIfNeeded
000768cc adrp      x3, #0xef000                                    
000768d0 add       x3, x3, #0xa38                                   ; 0xefa38
000768d4 adrp      x16, #0x79000                                   
000768d8 add       x16, x16, #0xdec                                 ; 0x79dec
000768dc paciza    x16                                             
000768e0 mov       x2, x16                                         
000768e4 mov       x0, x20                                         
000768e8 mov       x1, x21                                         
000768ec bl        #0xa4054                                         ; _MSHookMessageEx
000768f0 adrp      x0, #0xba000                                    
000768f4 add       x0, x0, #0xc53                                   ; 0xbac53 | 'PREditorSeparatedRootViewController'
000768f8 bl        #0xa4664                                         ; _objc_getClass
000768fc mov       x20, x0                                         
00076900 adrp      x3, #0xef000                                    
00076904 add       x3, x3, #0xa40                                   ; 0xefa40
00076908 adrp      x16, #0x79000                                   
0007690c add       x16, x16, #0xe30                                 ; 0x79e30
00076910 paciza    x16                                             
00076914 mov       x2, x16                                         
00076918 mov       x1, x24                                         
0007691c bl        #0xa4054                                         ; _MSHookMessageEx
00076920 adrp      x3, #0xef000                                    
00076924 add       x3, x3, #0xa48                                   ; 0xefa48
00076928 adrp      x16, #0x79000                                   
0007692c add       x16, x16, #0xe74                                 ; 0x79e74
00076930 paciza    x16                                             
00076934 mov       x2, x16                                         
00076938 mov       x0, x20                                         
0007693c mov       x1, x21                                         
00076940 bl        #0xa4054                                         ; _MSHookMessageEx
00076944 adrp      x0, #0xbb000                                    
00076948 add       x0, x0, #0x421                                   ; 0xbb421 | 'dylv.liquidass.clock.widget-drag'
0007694c adrp      x1, #0xee000                                    
00076950 add       x1, x1, #0x868                                   ; 0xee868
00076954 adrp      x2, #0xd4000                                    
00076958 ldr       x2, [x2, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
0007695c adrp      x3, #0xd5000                                    
00076960 add       x3, x3, #0xda8                                   ; 0xd5da8 | &__NSConcreteGlobalBlock
00076964 bl        #0xa4574                                         ; _notify_register_dispatch
00076968 adrp      x21, #0xec000                                   
0007696c adrp      x22, #0xec000                                   
00076970 b         #0x76c40                                        
00076974 adrp      x20, #0xec000                                   
00076978 ldr       x0, [x20, #0x688]                                ; 0xec688 | &_OBJC_CLASS_$_NSBundle
0007697c bl        #0xa9920                                         ; objc_msgSend$mainBundle
00076980 mov       x29, x29                                        
00076984 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076988 mov       x24, x0                                         
0007698c bl        #0xa5ca0                                         ; objc_msgSend$bundleIdentifier
00076990 mov       x29, x29                                        
00076994 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076998 mov       x25, x0                                         
0007699c adrp      x2, #0xd9000                                    
000769a0 add       x2, x2, #0xb0                                    ; 0xd90b0 | @'com.apple.springboard'
000769a4 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
000769a8 mov       x26, x0                                         
000769ac mov       x0, x25                                         
000769b0 bl        #0xa46f4                                         ; _objc_release
000769b4 mov       x0, x24                                         
000769b8 bl        #0xa46f4                                         ; _objc_release
000769bc cbz       w26, #0x76cf4                                   
000769c0 adrp      x8, #0xec000                                    
000769c4 ldr       x0, [x8, #0x828]                                 ; 0xec828 | &_OBJC_CLASS_$_LGClockSavedDockCoordinator
000769c8 bl        #0xa8f80                                         ; objc_msgSend$isSupported
000769cc cbz       w0, #0x763f0                                    
000769d0 bl        #0x74400                                         ; _LGClockSavedDockInstallHooks
000769d4 adrp      x0, #0xba000                                    
000769d8 add       x0, x0, #0x791                                   ; 0xba791 | 'FBSSceneSettings'
000769dc bl        #0xa4664                                         ; _objc_getClass
000769e0 adrp      x8, #0xe9000                                    
000769e4 ldr       x2, [x8, #0xfe0]                                 ; 0xe9fe0 | SEL pr_isDepthEffectDisallowed
000769e8 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
000769ec cbz       w0, #0x76a5c                                    
000769f0 adrp      x0, #0xba000                                    
000769f4 add       x0, x0, #0x7a2                                   ; 0xba7a2 | 'PBUIPosterLockViewController'
000769f8 bl        #0xa4664                                         ; _objc_getClass
000769fc adrp      x8, #0xec000                                    
00076a00 ldr       x2, [x8, #0x368]                                 ; 0xec368 | SEL portalSourceForReplicaView:
00076a04 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076a08 cbz       w0, #0x76a5c                                    
00076a0c bl        #0x74e28                                         ; _LGClockSavedSavedDepthEffectInstallHooks
00076a10 adrp      x0, #0xba000                                    
00076a14 add       x0, x0, #0x7bf                                   ; 0xba7bf | 'PBUIPosterViewController'
00076a18 bl        #0xa4664                                         ; _objc_getClass
00076a1c adrp      x8, #0xec000                                    
00076a20 ldr       x24, [x8, #0x370]                                ; 0xec370 | SEL scene:willUpdateSettings:withTransitionContext:
00076a24 mov       x2, x24                                         
00076a28 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076a2c cbz       w0, #0x76a5c                                    
00076a30 adrp      x0, #0xba000                                    
00076a34 add       x0, x0, #0x7bf                                   ; 0xba7bf | 'PBUIPosterViewController'
00076a38 bl        #0xa4664                                         ; _objc_getClass
00076a3c adrp      x3, #0xef000                                    
00076a40 add       x3, x3, #0x830                                   ; 0xef830
00076a44 adrp      x16, #0x75000                                   
00076a48 add       x16, x16, #0x164                                 ; 0x75164
00076a4c paciza    x16                                             
00076a50 mov       x2, x16                                         
00076a54 mov       x1, x24                                         
00076a58 bl        #0xa4054                                         ; _MSHookMessageEx
00076a5c adrp      x0, #0xb8000                                    
00076a60 add       x0, x0, #0xf60                                   ; 0xb8f60 | 'NCNotificationListView'
00076a64 bl        #0xa4664                                         ; _objc_getClass
00076a68 adrp      x8, #0xec000                                    
00076a6c ldr       x24, [x8, #0x350]                                ; 0xec350 | SEL _layoutOverlayFooterViewIfNecessary
00076a70 mov       x2, x24                                         
00076a74 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076a78 cbz       w0, #0x76dfc                                    
00076a7c adrp      x0, #0xb8000                                    
00076a80 add       x0, x0, #0xf60                                   ; 0xb8f60 | 'NCNotificationListView'
00076a84 bl        #0xa4664                                         ; _objc_getClass
00076a88 adrp      x3, #0xef000                                    
00076a8c add       x3, x3, #0x7f0                                   ; 0xef7f0
00076a90 adrp      x16, #0x74000                                   
00076a94 add       x16, x16, #0xa90                                 ; 0x74a90
00076a98 paciza    x16                                             
00076a9c mov       x2, x16                                         
00076aa0 mov       x1, x24                                         
00076aa4 b         #0x76e40                                        
00076aa8 adrp      x8, #0xef000                                    
00076aac ldrb      w8, [x8, #0x8a0]                                 ; 0xef8a0
00076ab0 tbnz      w8, #0, #0x76c40                                
00076ab4 adrp      x0, #0xba000                                    
00076ab8 add       x0, x0, #0x7bf                                   ; 0xba7bf | 'PBUIPosterViewController'
00076abc bl        #0xa4664                                         ; _objc_getClass
00076ac0 mov       x20, x0                                         
00076ac4 adrp      x8, #0xec000                                    
00076ac8 ldr       x1, [x8, #0xe0]                                  ; 0xec0e0 | SEL viewDidLoad
00076acc adrp      x3, #0xef000                                    
00076ad0 add       x3, x3, #0xa50                                   ; 0xefa50
00076ad4 adrp      x16, #0x7a000                                   
00076ad8 add       x16, x16, #0x18c                                 ; 0x7a18c
00076adc paciza    x16                                             
00076ae0 mov       x2, x16                                         
00076ae4 bl        #0xa4054                                         ; _MSHookMessageEx
00076ae8 adrp      x8, #0xec000                                    
00076aec ldr       x1, [x8, #0x400]                                 ; 0xec400 | SEL updateConfiguration:
00076af0 adrp      x3, #0xef000                                    
00076af4 add       x3, x3, #0xa58                                   ; 0xefa58
00076af8 adrp      x16, #0x7a000                                   
00076afc add       x16, x16, #0x1ec                                 ; 0x7a1ec
00076b00 paciza    x16                                             
00076b04 mov       x2, x16                                         
00076b08 mov       x0, x20                                         
00076b0c bl        #0xa4054                                         ; _MSHookMessageEx
00076b10 adrp      x0, #0xda000                                    
00076b14 add       x0, x0, #0xb10                                   ; 0xdab10 | @'CSProminentTimeView'
00076b18 bl        #0xa4064                                         ; _NSClassFromString
00076b1c cbnz      x0, #0x76c40                                    
00076b20 bl        #0x7a24c                                        
00076b24 adrp      x0, #0xba000                                    
00076b28 add       x0, x0, #0x774                                   ; 0xba774 | 'CSCombinedListViewController'
00076b2c bl        #0xa4664                                         ; _objc_getClass
00076b30 mov       x20, x0                                         
00076b34 adrp      x8, #0xec000                                    
00076b38 ldr       x1, [x8, #0x408]                                 ; 0xec408 | SEL scrollViewDidScroll:
00076b3c adrp      x3, #0xef000                                    
00076b40 add       x3, x3, #0xa60                                   ; 0xefa60
00076b44 adrp      x16, #0x7a000                                   
00076b48 add       x16, x16, #0x334                                 ; 0x7a334
00076b4c paciza    x16                                             
00076b50 mov       x2, x16                                         
00076b54 bl        #0xa4054                                         ; _MSHookMessageEx
00076b58 adrp      x8, #0xec000                                    
00076b5c ldr       x1, [x8, #0x410]                                 ; 0xec410 | SEL _listViewDefaultContentInsets
00076b60 adrp      x3, #0xef000                                    
00076b64 add       x3, x3, #0xa68                                   ; 0xefa68
00076b68 adrp      x16, #0x7a000                                   
00076b6c add       x16, x16, #0x41c                                 ; 0x7a41c
00076b70 paciza    x16                                             
00076b74 mov       x2, x16                                         
00076b78 mov       x0, x20                                         
00076b7c bl        #0xa4054                                         ; _MSHookMessageEx
00076b80 adrp      x8, #0xeb000                                    
00076b84 ldr       x1, [x8, #0xf90]                                 ; 0xebf90 | SEL viewDidLayoutSubviews
00076b88 adrp      x3, #0xef000                                    
00076b8c add       x3, x3, #0xa70                                   ; 0xefa70
00076b90 adrp      x16, #0x7a000                                   
00076b94 add       x16, x16, #0x480                                 ; 0x7a480
00076b98 paciza    x16                                             
00076b9c mov       x2, x16                                         
00076ba0 mov       x0, x20                                         
00076ba4 bl        #0xa4054                                         ; _MSHookMessageEx
00076ba8 adrp      x0, #0xb6000                                    
00076bac add       x0, x0, #0x14a                                   ; 0xb614a | 'SBCoverSheetWindow'
00076bb0 bl        #0xa4664                                         ; _objc_getClass
00076bb4 mov       x20, x0                                         
00076bb8 adrp      x3, #0xef000                                    
00076bbc add       x3, x3, #0xa78                                   ; 0xefa78
00076bc0 adrp      x16, #0x7a000                                   
00076bc4 add       x16, x16, #0x4f4                                 ; 0x7a4f4
00076bc8 paciza    x16                                             
00076bcc mov       x2, x16                                         
00076bd0 mov       x1, x28                                         
00076bd4 bl        #0xa4054                                         ; _MSHookMessageEx
00076bd8 adrp      x3, #0xef000                                    
00076bdc add       x3, x3, #0xa80                                   ; 0xefa80
00076be0 adrp      x16, #0x7a000                                   
00076be4 add       x16, x16, #0x580                                 ; 0x7a580
00076be8 paciza    x16                                             
00076bec mov       x2, x16                                         
00076bf0 mov       x0, x20                                         
00076bf4 mov       x1, x27                                         
00076bf8 bl        #0xa4054                                         ; _MSHookMessageEx
00076bfc adrp      x0, #0xb8000                                    
00076c00 add       x0, x0, #0xf60                                   ; 0xb8f60 | 'NCNotificationListView'
00076c04 bl        #0xa4664                                         ; _objc_getClass
00076c08 adrp      x8, #0xe8000                                    
00076c0c ldr       x1, [x8, #0xec0]                                 ; 0xe8ec0 | SEL contentOffset
00076c10 adrp      x3, #0xef000                                    
00076c14 add       x3, x3, #0xa88                                   ; 0xefa88
00076c18 adrp      x16, #0x7a000                                   
00076c1c add       x16, x16, #0x5f0                                 ; 0x7a5f0
00076c20 paciza    x16                                             
00076c24 mov       x2, x16                                         
00076c28 bl        #0xa4054                                         ; _MSHookMessageEx
00076c2c adrp      x0, #0xd4000                                    
00076c30 ldr       x0, [x0, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
00076c34 adrp      x1, #0xd5000                                    
00076c38 add       x1, x1, #0xdc8                                   ; 0xd5dc8 | &__NSConcreteGlobalBlock
00076c3c bl        #0xa42f4                                         ; _dispatch_async
00076c40 adrp      x0, #0xd5000                                    
00076c44 add       x0, x0, #0xde8                                   ; 0xd5de8 | &__NSConcreteGlobalBlock
00076c48 bl        #0xa1f54                                         ; _LGObservePreferenceChanges
00076c4c ldr       x0, [x22, #0x760]                                ; 0xec760 | &_OBJC_CLASS_$_NSNotificationCenter
00076c50 bl        #0xa6d40                                         ; objc_msgSend$defaultCenter
00076c54 mov       x29, x29                                        
00076c58 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076c5c mov       x20, x0                                         
00076c60 ldr       x0, [x21, #0x768]                                ; 0xec768 | &_OBJC_CLASS_$_NSOperationQueue
00076c64 bl        #0xa9960                                         ; objc_msgSend$mainQueue
00076c68 mov       x29, x29                                        
00076c6c bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076c70 mov       x21, x0                                         
00076c74 adrp      x2, #0xda000                                    
00076c78 add       x2, x2, #0xcd0                                   ; 0xdacd0 | @'LGLiveBackdropViewFilterDidAttach'
00076c7c adrp      x5, #0xd5000                                    
00076c80 add       x5, x5, #0xe08                                   ; 0xd5e08 | &__NSConcreteGlobalBlock
00076c84 mov       x0, x20                                         
00076c88 mov       x3, #0                                          
00076c8c mov       x4, x21                                         
00076c90 bl        #0xa4f40                                         ; objc_msgSend$addObserverForName:object:queue:usingBlock:
00076c94 mov       x29, x29                                        
00076c98 bl        #0xa47c4                                         ; _objc_unsafeClaimAutoreleasedReturnValue
00076c9c mov       x0, x21                                         
00076ca0 bl        #0xa46f4                                         ; _objc_release
00076ca4 mov       x0, x20                                         
00076ca8 bl        #0xa46f4                                         ; _objc_release
00076cac ldr       x0, [sp, #0x60]                                 
00076cb0 bl        #0xa46f4                                         ; _objc_release
00076cb4 mov       x0, x19                                         
00076cb8 bl        #0xa46f4                                         ; _objc_release
00076cbc ldur      x8, [x29, #-0x60]                               
00076cc0 adrp      x9, #0xd4000                                    
00076cc4 ldr       x9, [x9, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
00076cc8 ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
00076ccc cmp       x9, x8                                          
00076cd0 b.ne      #0x76f64                                        
00076cd4 ldp       x29, x30, [sp, #0x1a0]                          
00076cd8 ldp       x20, x19, [sp, #0x190]                          
00076cdc ldp       x22, x21, [sp, #0x180]                          
00076ce0 ldp       x24, x23, [sp, #0x170]                          
00076ce4 ldp       x26, x25, [sp, #0x160]                          
00076ce8 ldp       x28, x27, [sp, #0x150]                          
00076cec add       sp, sp, #0x1b0                                  
00076cf0 retab                                                     
00076cf4 ldr       x0, [x20, #0x688]                                ; 0xec688 | &_OBJC_CLASS_$_NSBundle
00076cf8 bl        #0xa9920                                         ; objc_msgSend$mainBundle
00076cfc mov       x29, x29                                        
00076d00 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076d04 mov       x24, x0                                         
00076d08 bl        #0xa5ca0                                         ; objc_msgSend$bundleIdentifier
00076d0c mov       x29, x29                                        
00076d10 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076d14 mov       x25, x0                                         
00076d18 adrp      x2, #0xdc000                                    
00076d1c add       x2, x2, #0xdf0                                   ; 0xdcdf0 | @'com.apple.NanoUniverse.AegirProxyApp.AegirPoster'
00076d20 bl        #0xa8d60                                         ; objc_msgSend$isEqualToString:
00076d24 mov       x26, x0                                         
00076d28 mov       x0, x25                                         
00076d2c bl        #0xa46f4                                         ; _objc_release
00076d30 mov       x0, x24                                         
00076d34 bl        #0xa46f4                                         ; _objc_release
00076d38 cbz       w26, #0x76d44                                   
00076d3c bl        #0x754a0                                         ; _LGClockSavedAstronomyInstallHooks
00076d40 b         #0x763f0                                        
00076d44 adrp      x8, #0xec000                                    
00076d48 ldr       x0, [x8, #0x888]                                 ; 0xec888 | &_OBJC_CLASS_$_LGClockSavedPosterLayout
00076d4c bl        #0xa8f80                                         ; objc_msgSend$isSupported
00076d50 cbz       w0, #0x763f0                                    
00076d54 bl        #0x75348                                         ; _LGClockSavedLiquidAssPosterInstallHooks
00076d58 adrp      x0, #0xd6000                                    
00076d5c add       x0, x0, #0x18                                    ; 0xd6018 | &__NSConcreteGlobalBlock
00076d60 bl        #0x6e6bc                                         ; _LGClockSavedDockGeometryObserve
00076d64 adrp      x8, #0xef000                                    
00076d68 ldrb      w8, [x8, #0x8a0]                                 ; 0xef8a0
00076d6c cmp       w8, #1                                          
00076d70 b.ne      #0x763f0                                        
00076d74 bl        #0x7e0fc                                        
00076d78 tbnz      w0, #0, #0x763f0                                
00076d7c ldr       x0, [x22, #0x760]                                ; 0xec760 | &_OBJC_CLASS_$_NSNotificationCenter
00076d80 bl        #0xa6d40                                         ; objc_msgSend$defaultCenter
00076d84 mov       x29, x29                                        
00076d88 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076d8c mov       x24, x0                                         
00076d90 adrp      x8, #0xd4000                                    
00076d94 ldr       x8, [x8, #0x838]                                 ; 0xd4838 | &_UIApplicationDidFinishLaunchingNotification
00076d98 ldr       x25, [x8]                                        ; 0xd4000 | &___objc_personality_v0
00076d9c ldr       x0, [x21, #0x768]                                ; 0xec768 | &_OBJC_CLASS_$_NSOperationQueue
00076da0 bl        #0xa9960                                         ; objc_msgSend$mainQueue
00076da4 mov       x29, x29                                        
00076da8 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076dac mov       x26, x0                                         
00076db0 adrp      x5, #0xd6000                                    
00076db4 add       x5, x5, #0x38                                    ; 0xd6038 | &__NSConcreteGlobalBlock
00076db8 mov       x0, x24                                         
00076dbc mov       x2, x25                                         
00076dc0 mov       x3, #0                                          
00076dc4 mov       x4, x26                                         
00076dc8 bl        #0xa4f40                                         ; objc_msgSend$addObserverForName:object:queue:usingBlock:
00076dcc mov       x29, x29                                        
00076dd0 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00076dd4 adrp      x9, #0xef000                                    
00076dd8 ldr       x8, [x9, #0xa98]                                 ; 0xefa98
00076ddc str       x0, [x9, #0xa98]                                 ; 0xefa98
00076de0 mov       x0, x8                                          
00076de4 bl        #0xa46f4                                         ; _objc_release
00076de8 mov       x0, x26                                         
00076dec bl        #0xa46f4                                         ; _objc_release
00076df0 mov       x0, x24                                         
00076df4 bl        #0xa46f4                                         ; _objc_release
00076df8 b         #0x763f0                                        
00076dfc adrp      x0, #0xba000                                    
00076e00 add       x0, x0, #0x5bc                                   ; 0xba5bc | 'NCNotificationStructuredListView'
00076e04 bl        #0xa4664                                         ; _objc_getClass
00076e08 adrp      x8, #0xe9000                                    
00076e0c ldr       x2, [x8, #0x400]                                 ; 0xe9400 | SEL footerView
00076e10 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076e14 cbz       w0, #0x76e44                                    
00076e18 adrp      x0, #0xba000                                    
00076e1c add       x0, x0, #0x5bc                                   ; 0xba5bc | 'NCNotificationStructuredListView'
00076e20 bl        #0xa4664                                         ; _objc_getClass
00076e24 adrp      x3, #0xef000                                    
00076e28 add       x3, x3, #0x7f8                                   ; 0xef7f8
00076e2c adrp      x16, #0x74000                                   
00076e30 add       x16, x16, #0xb40                                 ; 0x74b40
00076e34 paciza    x16                                             
00076e38 mov       x2, x16                                         
00076e3c mov       x1, x23                                         
00076e40 bl        #0xa4054                                         ; _MSHookMessageEx
00076e44 adrp      x0, #0xba000                                    
00076e48 add       x0, x0, #0x733                                   ; 0xba733 | 'CSComplicationContainerViewController'
00076e4c bl        #0xa4664                                         ; _objc_getClass
00076e50 adrp      x8, #0xec000                                    
00076e54 ldr       x24, [x8, #0x358]                                ; 0xec358 | SEL setWidgetDescriptors:
00076e58 mov       x2, x24                                         
00076e5c bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076e60 cbz       w0, #0x76e88                                    
00076e64 adrp      x0, #0xba000                                    
00076e68 add       x0, x0, #0x733                                   ; 0xba733 | 'CSComplicationContainerViewController'
00076e6c bl        #0xa4664                                         ; _objc_getClass
00076e70 adrp      x3, #0xef000                                    
00076e74 add       x3, x3, #0x800                                   ; 0xef800
00076e78 adrp      x16, #0x74000                                   
00076e7c add       x16, x16, #0xc38                                 ; 0x74c38
00076e80 paciza    x16                                             
00076e84 b         #0x76ec8                                        
00076e88 adrp      x0, #0xba000                                    
00076e8c add       x0, x0, #0x759                                   ; 0xba759 | 'CSWidgetGridViewController'
00076e90 bl        #0xa4664                                         ; _objc_getClass
00076e94 adrp      x8, #0xec000                                    
00076e98 ldr       x24, [x8, #0x360]                                ; 0xec360 | SEL setComplicationDescriptors:iconLayout:
00076e9c mov       x2, x24                                         
00076ea0 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076ea4 cbz       w0, #0x76ed4                                    
00076ea8 adrp      x0, #0xba000                                    
00076eac add       x0, x0, #0x759                                   ; 0xba759 | 'CSWidgetGridViewController'
00076eb0 bl        #0xa4664                                         ; _objc_getClass
00076eb4 adrp      x3, #0xef000                                    
00076eb8 add       x3, x3, #0x808                                   ; 0xef808
00076ebc adrp      x16, #0x74000                                   
00076ec0 add       x16, x16, #0xcc8                                 ; 0x74cc8
00076ec4 paciza    x16                                             
00076ec8 mov       x2, x16                                         
00076ecc mov       x1, x24                                         
00076ed0 bl        #0xa4054                                         ; _MSHookMessageEx
00076ed4 adrp      x0, #0xba000                                    
00076ed8 add       x0, x0, #0x774                                   ; 0xba774 | 'CSCombinedListViewController'
00076edc bl        #0xa4664                                         ; _objc_getClass
00076ee0 mov       x25, x0                                         
00076ee4 adrp      x8, #0xe9000                                    
00076ee8 ldr       x24, [x8, #0xd40]                                ; 0xe9d40 | SEL notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:forOrientation:
00076eec mov       x2, x24                                         
00076ef0 bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076ef4 cbz       w0, #0x76f1c                                    
00076ef8 adrp      x0, #0xba000                                    
00076efc add       x0, x0, #0x774                                   ; 0xba774 | 'CSCombinedListViewController'
00076f00 bl        #0xa4664                                         ; _objc_getClass
00076f04 adrp      x3, #0xef000                                    
00076f08 add       x3, x3, #0x818                                   ; 0xef818
00076f0c adrp      x16, #0x74000                                   
00076f10 add       x16, x16, #0xde8                                 ; 0x74de8
00076f14 paciza    x16                                             
00076f18 b         #0x76f54                                        
00076f1c adrp      x8, #0xe9000                                    
00076f20 ldr       x24, [x8, #0xd38]                                ; 0xe9d38 | SEL notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:
00076f24 mov       x0, x25                                         
00076f28 mov       x2, x24                                         
00076f2c bl        #0xa8a20                                         ; objc_msgSend$instancesRespondToSelector:
00076f30 cbz       w0, #0x763f0                                    
00076f34 adrp      x0, #0xba000                                    
00076f38 add       x0, x0, #0x774                                   ; 0xba774 | 'CSCombinedListViewController'
00076f3c bl        #0xa4664                                         ; _objc_getClass
00076f40 adrp      x3, #0xef000                                    
00076f44 add       x3, x3, #0x810                                   ; 0xef810
00076f48 adrp      x16, #0x74000                                   
00076f4c add       x16, x16, #0xd58                                 ; 0x74d58
00076f50 paciza    x16                                             
00076f54 mov       x2, x16                                         
00076f58 mov       x1, x24                                         
00076f5c bl        #0xa4054                                         ; _MSHookMessageEx
00076f60 b         #0x763f0                                        
00076f64 bl        #0xa41d4                                         ; ___stack_chk_fail
