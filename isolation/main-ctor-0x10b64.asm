# arm64e unslid VA 0x10b64..0x1143c; FAT offset 0xfc000
00010b64 pacibsp                                                   
00010b68 stp       x24, x23, [sp, #-0x40]!                         
00010b6c stp       x22, x21, [sp, #0x10]                           
00010b70 stp       x20, x19, [sp, #0x20]                           
00010b74 stp       x29, x30, [sp, #0x30]                           
00010b78 add       x29, sp, #0x30                                  
00010b7c sub       sp, sp, #0x430                                  
00010b80 adrp      x8, #0xd4000                                    
00010b84 ldr       x8, [x8, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
00010b88 ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
00010b8c stur      x8, [x29, #-0x38]                               
00010b90 adrp      x8, #0xec000                                    
00010b94 ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
00010b98 bl        #0xaada0                                         ; objc_msgSend$processInfo
00010b9c mov       x29, x29                                        
00010ba0 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00010ba4 mov       x19, x0                                         
00010ba8 bl        #0xaadc0                                         ; objc_msgSend$processName
00010bac mov       x29, x29                                        
00010bb0 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00010bb4 mov       x20, x0                                         
00010bb8 bl        #0xa4714                                         ; _objc_retainAutorelease
00010bbc bl        #0xa4a60                                         ; objc_msgSend$UTF8String
00010bc0 adrp      x1, #0xb6000                                    
00010bc4 add       x1, x1, #0xbfb                                   ; 0xb6bfb | 'assistivetouchd'
00010bc8 bl        #0xa4884                                         ; _strcmp
00010bcc mov       x21, x0                                         
00010bd0 mov       x0, x20                                         
00010bd4 bl        #0xa46f4                                         ; _objc_release
00010bd8 mov       x0, x19                                         
00010bdc bl        #0xa46f4                                         ; _objc_release
00010be0 cbnz      w21, #0x11408                                   
00010be4 bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
00010be8 adrp      x3, #0xd8000                                    
00010bec add       x3, x3, #0x470                                   ; 0xd8470 | @'dylv.liquidassprefs/RestartAssistiveTouch'
00010bf0 adrp      x16, #0x11000                                   
00010bf4 add       x16, x16, #0x43c                                 ; 0x1143c
00010bf8 paciza    x16                                             
00010bfc mov       x2, x16                                         
00010c00 mov       x1, #0                                          
00010c04 mov       x4, #0                                          
00010c08 mov       w5, #4                                          
00010c0c bl        #0xa3ab4                                         ; _CFNotificationCenterAddObserver
00010c10 adrp      x0, #0xd8000                                    
00010c14 add       x0, x0, #0x490                                   ; 0xd8490 | @'AssistiveTouch'
00010c18 bl        #0x97a58                                         ; _lgHostEnabled
00010c1c cbz       w0, #0x11408                                    
00010c20 adrp      x0, #0xb6000                                    
00010c24 add       x0, x0, #0xc44                                   ; 0xb6c44 | 'CALayer'
00010c28 bl        #0xa4664                                         ; _objc_getClass
00010c2c adrp      x8, #0xe8000                                    
00010c30 ldr       x1, [x8, #0x8c0]                                 ; 0xe88c0 | SEL addAnimation:forKey:
00010c34 adrp      x3, #0xee000                                    
00010c38 add       x3, x3, #0xc68                                   ; 0xeec68
00010c3c adrp      x16, #0x11000                                   
00010c40 add       x16, x16, #0x450                                 ; 0x11450
00010c44 paciza    x16                                             
00010c48 mov       x2, x16                                         
00010c4c bl        #0xa4054                                         ; _MSHookMessageEx
00010c50 adrp      x0, #0xb6000                                    
00010c54 add       x0, x0, #0xc4c                                   ; 0xb6c4c | 'CATransaction'
00010c58 bl        #0xa4664                                         ; _objc_getClass
00010c5c bl        #0xa47d4                                         ; _object_getClass
00010c60 adrp      x8, #0xeb000                                    
00010c64 ldr       x1, [x8, #0xff0]                                 ; 0xebff0 | SEL setAnimationDuration:
00010c68 adrp      x3, #0xee000                                    
00010c6c add       x3, x3, #0xc70                                   ; 0xeec70
00010c70 adrp      x16, #0x11000                                   
00010c74 add       x16, x16, #0x514                                 ; 0x11514
00010c78 paciza    x16                                             
00010c7c mov       x2, x16                                         
00010c80 bl        #0xa4054                                         ; _MSHookMessageEx
00010c84 adrp      x0, #0xb6000                                    
00010c88 add       x0, x0, #0xc5a                                   ; 0xb6c5a | 'HNDRocker'
00010c8c bl        #0xa4664                                         ; _objc_getClass
00010c90 mov       x19, x0                                         
00010c94 adrp      x8, #0xeb000                                    
00010c98 ldr       x1, [x8, #0xff8]                                 ; 0xebff8 | SEL _usesCircularNubbit
00010c9c adrp      x3, #0xee000                                    
00010ca0 add       x3, x3, #0xc78                                   ; 0xeec78
00010ca4 adrp      x16, #0x11000                                   
00010ca8 add       x16, x16, #0x548                                 ; 0x11548
00010cac paciza    x16                                             
00010cb0 mov       x2, x16                                         
00010cb4 bl        #0xa4054                                         ; _MSHookMessageEx
00010cb8 adrp      x8, #0xbd000                                    
00010cbc ldr       d0, [x8, #0x350]                                 ; 0xbd350
00010cc0 str       q0, [sp]                                        
00010cc4 str       s0, [sp, #0x28]                                 
00010cc8 adrp      x8, #0xe8000                                    
00010ccc ldr       x1, [x8, #0xb00]                                 ; 0xe8b00 | SEL ass_playMenuBounceAnimation
00010cd0 adrp      x16, #0x11000                                   
00010cd4 add       x16, x16, #0x550                                 ; 0x11550
00010cd8 paciza    x16                                             
00010cdc mov       x2, x16                                         
00010ce0 add       x3, sp, #0x28                                   
00010ce4 mov       x0, x19                                         
00010ce8 bl        #0xa4254                                         ; _class_addMethod
00010cec adrp      x8, #0xbd000                                    
00010cf0 ldr       d0, [x8, #0x358]                                 ; 0xbd358
00010cf4 str       s0, [sp, #0x28]                                 
00010cf8 mov       w8, #0x64                                       
00010cfc strh      w8, [sp, #0x2c]                                 
00010d00 adrp      x8, #0xe8000                                    
00010d04 ldr       x1, [x8, #0xb08]                                 ; 0xe8b08 | SEL ass_triggerMotionBlurForDuration:peakRadius:
00010d08 adrp      x16, #0x11000                                   
00010d0c add       x16, x16, #0x758                                 ; 0x11758
00010d10 paciza    x16                                             
00010d14 mov       x2, x16                                         
00010d18 add       x3, sp, #0x28                                   
00010d1c mov       x0, x19                                         
00010d20 bl        #0xa4254                                         ; _class_addMethod
00010d24 adrp      x8, #0xec000                                    
00010d28 ldr       x1, [x8]                                         ; 0xec000 | SEL _loadInitialMenuItems
00010d2c adrp      x3, #0xee000                                    
00010d30 add       x3, x3, #0xc80                                   ; 0xeec80
00010d34 adrp      x16, #0x11000                                   
00010d38 add       x16, x16, #0xbd4                                 ; 0x11bd4
00010d3c paciza    x16                                             
00010d40 mov       x2, x16                                         
00010d44 mov       x0, x19                                         
00010d48 bl        #0xa4054                                         ; _MSHookMessageEx
00010d4c adrp      x8, #0xec000                                    
00010d50 ldr       x1, [x8, #8]                                     ; 0xec008 | SEL _loadMoreMenuItems
00010d54 adrp      x3, #0xee000                                    
00010d58 add       x3, x3, #0xc88                                   ; 0xeec88
00010d5c adrp      x16, #0x11000                                   
00010d60 add       x16, x16, #0xc14                                 ; 0x11c14
00010d64 paciza    x16                                             
00010d68 mov       x2, x16                                         
00010d6c mov       x0, x19                                         
00010d70 bl        #0xa4054                                         ; _MSHookMessageEx
00010d74 adrp      x8, #0xec000                                    
00010d78 ldr       x1, [x8, #0x10]                                  ; 0xec010 | SEL _loadGesturesMenuItems
00010d7c adrp      x3, #0xee000                                    
00010d80 add       x3, x3, #0xc90                                   ; 0xeec90
00010d84 adrp      x16, #0x11000                                   
00010d88 add       x16, x16, #0xc54                                 ; 0x11c54
00010d8c paciza    x16                                             
00010d90 mov       x2, x16                                         
00010d94 mov       x0, x19                                         
00010d98 bl        #0xa4054                                         ; _MSHookMessageEx
00010d9c adrp      x8, #0xec000                                    
00010da0 ldr       x1, [x8, #0x18]                                  ; 0xec018 | SEL _loadRotateMenuItems
00010da4 adrp      x3, #0xee000                                    
00010da8 add       x3, x3, #0xc98                                   ; 0xeec98
00010dac adrp      x16, #0x11000                                   
00010db0 add       x16, x16, #0xc94                                 ; 0x11c94
00010db4 paciza    x16                                             
00010db8 mov       x2, x16                                         
00010dbc mov       x0, x19                                         
00010dc0 bl        #0xa4054                                         ; _MSHookMessageEx
00010dc4 adrp      x8, #0xec000                                    
00010dc8 ldr       x1, [x8, #0x20]                                  ; 0xec020 | SEL _loadScrollMenuItems
00010dcc adrp      x3, #0xee000                                    
00010dd0 add       x3, x3, #0xca0                                   ; 0xeeca0
00010dd4 adrp      x16, #0x11000                                   
00010dd8 add       x16, x16, #0xcd4                                 ; 0x11cd4
00010ddc paciza    x16                                             
00010de0 mov       x2, x16                                         
00010de4 mov       x0, x19                                         
00010de8 bl        #0xa4054                                         ; _MSHookMessageEx
00010dec adrp      x8, #0xec000                                    
00010df0 ldr       x1, [x8, #0x28]                                  ; 0xec028 | SEL _loadHardwareMenuItems
00010df4 adrp      x3, #0xee000                                    
00010df8 add       x3, x3, #0xca8                                   ; 0xeeca8
00010dfc adrp      x16, #0x11000                                   
00010e00 add       x16, x16, #0xd14                                 ; 0x11d14
00010e04 paciza    x16                                             
00010e08 mov       x2, x16                                         
00010e0c mov       x0, x19                                         
00010e10 bl        #0xa4054                                         ; _MSHookMessageEx
00010e14 adrp      x8, #0xec000                                    
00010e18 ldr       x1, [x8, #0x30]                                  ; 0xec030 | SEL _loadFavoritesMenuItems
00010e1c adrp      x3, #0xee000                                    
00010e20 add       x3, x3, #0xcb0                                   ; 0xeecb0
00010e24 adrp      x16, #0x11000                                   
00010e28 add       x16, x16, #0xd54                                 ; 0x11d54
00010e2c paciza    x16                                             
00010e30 mov       x2, x16                                         
00010e34 mov       x0, x19                                         
00010e38 bl        #0xa4054                                         ; _MSHookMessageEx
00010e3c adrp      x8, #0xec000                                    
00010e40 ldr       x1, [x8, #0x38]                                  ; 0xec038 | SEL _loadDwellMenuItems
00010e44 adrp      x3, #0xee000                                    
00010e48 add       x3, x3, #0xcb8                                   ; 0xeecb8
00010e4c adrp      x16, #0x11000                                   
00010e50 add       x16, x16, #0xd94                                 ; 0x11d94
00010e54 paciza    x16                                             
00010e58 mov       x2, x16                                         
00010e5c mov       x0, x19                                         
00010e60 bl        #0xa4054                                         ; _MSHookMessageEx
00010e64 adrp      x8, #0xec000                                    
00010e68 ldr       x1, [x8, #0x40]                                  ; 0xec040 | SEL _loadSecureIntentMenuItems
00010e6c adrp      x3, #0xee000                                    
00010e70 add       x3, x3, #0xcc0                                   ; 0xeecc0
00010e74 adrp      x16, #0x11000                                   
00010e78 add       x16, x16, #0xdd4                                 ; 0x11dd4
00010e7c paciza    x16                                             
00010e80 mov       x2, x16                                         
00010e84 mov       x0, x19                                         
00010e88 bl        #0xa4054                                         ; _MSHookMessageEx
00010e8c adrp      x8, #0xec000                                    
00010e90 ldr       x1, [x8, #0x48]                                  ; 0xec048 | SEL performPress:type:source:
00010e94 adrp      x3, #0xee000                                    
00010e98 add       x3, x3, #0xcc8                                   ; 0xeecc8
00010e9c adrp      x16, #0x11000                                   
00010ea0 add       x16, x16, #0xe14                                 ; 0x11e14
00010ea4 paciza    x16                                             
00010ea8 mov       x2, x16                                         
00010eac mov       x0, x19                                         
00010eb0 bl        #0xa4054                                         ; _MSHookMessageEx
00010eb4 adrp      x8, #0xec000                                    
00010eb8 ldr       x1, [x8, #0x50]                                  ; 0xec050 | SEL setFullMenuVisible:atPoint:
00010ebc adrp      x3, #0xee000                                    
00010ec0 add       x3, x3, #0xcd0                                   ; 0xeecd0
00010ec4 adrp      x16, #0x11000                                   
00010ec8 add       x16, x16, #0xe54                                 ; 0x11e54
00010ecc paciza    x16                                             
00010ed0 mov       x2, x16                                         
00010ed4 mov       x0, x19                                         
00010ed8 bl        #0xa4054                                         ; _MSHookMessageEx
00010edc adrp      x8, #0xec000                                    
00010ee0 ldr       x1, [x8, #0x58]                                  ; 0xec058 | SEL _menuExited
00010ee4 adrp      x3, #0xee000                                    
00010ee8 add       x3, x3, #0xcd8                                   ; 0xeecd8
00010eec adrp      x16, #0x11000                                   
00010ef0 add       x16, x16, #0xf88                                 ; 0x11f88
00010ef4 paciza    x16                                             
00010ef8 mov       x2, x16                                         
00010efc mov       x0, x19                                         
00010f00 bl        #0xa4054                                         ; _MSHookMessageEx
00010f04 adrp      x8, #0xeb000                                    
00010f08 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
00010f0c adrp      x3, #0xee000                                    
00010f10 add       x3, x3, #0xce0                                   ; 0xeece0
00010f14 adrp      x16, #0x12000                                   
00010f18 add       x16, x16, #0x84                                  ; 0x12084
00010f1c paciza    x16                                             
00010f20 mov       x2, x16                                         
00010f24 mov       x0, x19                                         
00010f28 bl        #0xa4054                                         ; _MSHookMessageEx
00010f2c adrp      x8, #0xeb000                                    
00010f30 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
00010f34 adrp      x3, #0xee000                                    
00010f38 add       x3, x3, #0xce8                                   ; 0xeece8
00010f3c adrp      x16, #0x12000                                   
00010f40 add       x16, x16, #0x244                                 ; 0x12244
00010f44 paciza    x16                                             
00010f48 mov       x2, x16                                         
00010f4c mov       x0, x19                                         
00010f50 bl        #0xa4054                                         ; _MSHookMessageEx
00010f54 adrp      x8, #0xea000                                    
00010f58 ldr       x1, [x8, #0x8e0]                                 ; 0xea8e0 | SEL setFrame:
00010f5c adrp      x3, #0xee000                                    
00010f60 add       x3, x3, #0xcf0                                   ; 0xeecf0
00010f64 adrp      x16, #0x12000                                   
00010f68 add       x16, x16, #0x3e0                                 ; 0x123e0
00010f6c paciza    x16                                             
00010f70 mov       x2, x16                                         
00010f74 mov       x0, x19                                         
00010f78 bl        #0xa4054                                         ; _MSHookMessageEx
00010f7c adrp      x8, #0xea000                                    
00010f80 ldr       x1, [x8, #0x570]                                 ; 0xea570 | SEL setBounds:
00010f84 adrp      x3, #0xee000                                    
00010f88 add       x3, x3, #0xcf8                                   ; 0xeecf8
00010f8c adrp      x16, #0x12000                                   
00010f90 add       x16, x16, #0x494                                 ; 0x12494
00010f94 paciza    x16                                             
00010f98 mov       x2, x16                                         
00010f9c mov       x0, x19                                         
00010fa0 bl        #0xa4054                                         ; _MSHookMessageEx
00010fa4 adrp      x8, #0xec000                                    
00010fa8 ldr       x1, [x8, #0x60]                                  ; 0xec060 | SEL fadeNubbit
00010fac adrp      x3, #0xee000                                    
00010fb0 add       x3, x3, #0xd00                                   ; 0xeed00
00010fb4 adrp      x16, #0x12000                                   
00010fb8 add       x16, x16, #0x548                                 ; 0x12548
00010fbc paciza    x16                                             
00010fc0 mov       x2, x16                                         
00010fc4 mov       x0, x19                                         
00010fc8 bl        #0xa4054                                         ; _MSHookMessageEx
00010fcc adrp      x8, #0xec000                                    
00010fd0 ldr       x1, [x8, #0x68]                                  ; 0xec068 | SEL _updateNubbitFadedProperties
00010fd4 adrp      x3, #0xee000                                    
00010fd8 add       x3, x3, #0xd08                                   ; 0xeed08
00010fdc adrp      x16, #0x12000                                   
00010fe0 add       x16, x16, #0x614                                 ; 0x12614
00010fe4 paciza    x16                                             
00010fe8 mov       x2, x16                                         
00010fec mov       x0, x19                                         
00010ff0 bl        #0xa4054                                         ; _MSHookMessageEx
00010ff4 adrp      x8, #0xec000                                    
00010ff8 ldr       x1, [x8, #0x70]                                  ; 0xec070 | SEL handleRealDownEvent:
00010ffc adrp      x3, #0xee000                                    
00011000 add       x3, x3, #0xd10                                   ; 0xeed10
00011004 adrp      x16, #0x12000                                   
00011008 add       x16, x16, #0x6e0                                 ; 0x126e0
0001100c paciza    x16                                             
00011010 mov       x2, x16                                         
00011014 mov       x0, x19                                         
00011018 bl        #0xa4054                                         ; _MSHookMessageEx
0001101c adrp      x8, #0xec000                                    
00011020 ldr       x1, [x8, #0x78]                                  ; 0xec078 | SEL handleRealMoveEvent:maxOrb:currentForce:
00011024 adrp      x3, #0xee000                                    
00011028 add       x3, x3, #0xd18                                   ; 0xeed18
0001102c adrp      x16, #0x12000                                   
00011030 add       x16, x16, #0x7ec                                 ; 0x127ec
00011034 paciza    x16                                             
00011038 mov       x2, x16                                         
0001103c mov       x0, x19                                         
00011040 bl        #0xa4054                                         ; _MSHookMessageEx
00011044 adrp      x8, #0xec000                                    
00011048 ldr       x1, [x8, #0x80]                                  ; 0xec080 | SEL handleRealUpEvent:maxOrb:
0001104c adrp      x3, #0xee000                                    
00011050 add       x3, x3, #0xd20                                   ; 0xeed20
00011054 adrp      x16, #0x12000                                   
00011058 add       x16, x16, #0x8f8                                 ; 0x128f8
0001105c paciza    x16                                             
00011060 mov       x2, x16                                         
00011064 mov       x0, x19                                         
00011068 bl        #0xa4054                                         ; _MSHookMessageEx
0001106c adrp      x8, #0xec000                                    
00011070 ldr       x1, [x8, #0x88]                                  ; 0xec088 | SEL _updateSelectedButtonWithPoint:
00011074 adrp      x3, #0xee000                                    
00011078 add       x3, x3, #0xd28                                   ; 0xeed28
0001107c adrp      x16, #0x12000                                   
00011080 add       x16, x16, #0x984                                 ; 0x12984
00011084 paciza    x16                                             
00011088 mov       x2, x16                                         
0001108c mov       x0, x19                                         
00011090 bl        #0xa4054                                         ; _MSHookMessageEx
00011094 adrp      x8, #0xec000                                    
00011098 ldr       x1, [x8, #0x90]                                  ; 0xec090 | SEL showNubbitPressedState:
0001109c adrp      x3, #0xee000                                    
000110a0 add       x3, x3, #0xd30                                   ; 0xeed30
000110a4 adrp      x16, #0x12000                                   
000110a8 add       x16, x16, #0xa74                                 ; 0x12a74
000110ac paciza    x16                                             
000110b0 mov       x2, x16                                         
000110b4 mov       x0, x19                                         
000110b8 bl        #0xa4054                                         ; _MSHookMessageEx
000110bc adrp      x8, #0xec000                                    
000110c0 ldr       x1, [x8, #0x98]                                  ; 0xec098 | SEL transitionNubbitToMenu:concurrentAnimation:animationCompleted:
000110c4 adrp      x3, #0xee000                                    
000110c8 add       x3, x3, #0xd38                                   ; 0xeed38
000110cc adrp      x16, #0x12000                                   
000110d0 add       x16, x16, #0xb24                                 ; 0x12b24
000110d4 paciza    x16                                             
000110d8 mov       x2, x16                                         
000110dc mov       x0, x19                                         
000110e0 bl        #0xa4054                                         ; _MSHookMessageEx
000110e4 adrp      x8, #0xec000                                    
000110e8 ldr       x1, [x8, #0xa0]                                  ; 0xec0a0 | SEL transitionMenuToNubbit:changeAlpha:animate:
000110ec adrp      x3, #0xee000                                    
000110f0 add       x3, x3, #0xd40                                   ; 0xeed40
000110f4 adrp      x16, #0x12000                                   
000110f8 add       x16, x16, #0xe24                                 ; 0x12e24
000110fc paciza    x16                                             
00011100 mov       x2, x16                                         
00011104 mov       x0, x19                                         
00011108 bl        #0xa4054                                         ; _MSHookMessageEx
0001110c ldr       q0, [sp]                                        
00011110 str       s0, [sp, #0x28]                                 
00011114 adrp      x8, #0xe8000                                    
00011118 ldr       x1, [x8, #0xac8]                                 ; 0xe8ac8 | SEL ass_enforceCircularShape
0001111c adrp      x16, #0x13000                                   
00011120 add       x16, x16, #0xc4                                  ; 0x130c4
00011124 paciza    x16                                             
00011128 mov       x2, x16                                         
0001112c add       x3, sp, #0x28                                   
00011130 mov       x0, x19                                         
00011134 bl        #0xa4254                                         ; _class_addMethod
00011138 adrp      x8, #0xbd000                                    
0001113c ldr       d0, [x8, #0x360]                                 ; 0xbd360
00011140 str       q0, [sp, #0x10]                                 
00011144 str       s0, [sp, #0x28]                                 
00011148 adrp      x8, #0xe8000                                    
0001114c ldr       x1, [x8, #0xad0]                                 ; 0xe8ad0 | SEL ass_glassView
00011150 adrp      x16, #0x13000                                   
00011154 add       x16, x16, #0x1d4                                 ; 0x131d4
00011158 paciza    x16                                             
0001115c mov       x2, x16                                         
00011160 add       x3, sp, #0x28                                   
00011164 mov       x0, x19                                         
00011168 bl        #0xa4254                                         ; _class_addMethod
0001116c ldr       q0, [sp, #0x10]                                 
00011170 str       s0, [sp, #0x28]                                 
00011174 adrp      x8, #0xe8000                                    
00011178 ldr       x1, [x8, #0xb10]                                 ; 0xe8b10 | SEL ass_vibranceView
0001117c adrp      x16, #0x13000                                   
00011180 add       x16, x16, #0x1e0                                 ; 0x131e0
00011184 paciza    x16                                             
00011188 mov       x2, x16                                         
0001118c add       x3, sp, #0x28                                   
00011190 mov       x0, x19                                         
00011194 bl        #0xa4254                                         ; _class_addMethod
00011198 ldr       q0, [sp, #0x10]                                 
0001119c str       s0, [sp, #0x28]                                 
000111a0 adrp      x8, #0xe8000                                    
000111a4 ldr       x1, [x8, #0xaf0]                                 ; 0xe8af0 | SEL ass_menuGlowView
000111a8 adrp      x16, #0x13000                                   
000111ac add       x16, x16, #0x1ec                                 ; 0x131ec
000111b0 paciza    x16                                             
000111b4 mov       x2, x16                                         
000111b8 add       x3, sp, #0x28                                   
000111bc mov       x0, x19                                         
000111c0 bl        #0xa4254                                         ; _class_addMethod
000111c4 ldr       q0, [sp, #0x10]                                 
000111c8 str       s0, [sp, #0x28]                                 
000111cc adrp      x8, #0xe8000                                    
000111d0 ldr       x1, [x8, #0xaf8]                                 ; 0xe8af8 | SEL ass_nubbitForeground
000111d4 adrp      x16, #0x13000                                   
000111d8 add       x16, x16, #0x1f8                                 ; 0x131f8
000111dc paciza    x16                                             
000111e0 mov       x2, x16                                         
000111e4 add       x3, sp, #0x28                                   
000111e8 mov       x0, x19                                         
000111ec bl        #0xa4254                                         ; _class_addMethod
000111f0 ldr       q0, [sp, #0x10]                                 
000111f4 str       s0, [sp, #0x28]                                 
000111f8 adrp      x8, #0xe8000                                    
000111fc ldr       x1, [x8, #0xac0]                                 ; 0xe8ac0 | SEL ass_backdropView
00011200 adrp      x16, #0x13000                                   
00011204 add       x16, x16, #0x374                                 ; 0x13374
00011208 paciza    x16                                             
0001120c mov       x2, x16                                         
00011210 add       x3, sp, #0x28                                   
00011214 mov       x0, x19                                         
00011218 bl        #0xa4254                                         ; _class_addMethod
0001121c mov       w20, #0x4076                                    
00011220 strh      w20, [sp, #0x28]                                
00011224 mov       w21, #0x3a                                      
00011228 strb      w21, [sp, #0x2a]                                
0001122c mov       w22, #0x643d                                    
00011230 movk      w22, #0x7d64, lsl #16                           
00011234 adrp      x8, #0xb6000                                    
00011238 add       x8, x8, #0xc64                                   ; 0xb6c64 | '{CGPoint=dd}'
0001123c stur      w22, [sp, #0x33]                                
00011240 ldr       x23, [x8]                                        ; 0xb6c64 | '{CGPoint=dd}'
00011244 stur      x23, [sp, #0x2b]                                
00011248 strb      wzr, [sp, #0x37]                                
0001124c adrp      x8, #0xe8000                                    
00011250 ldr       x1, [x8, #0xad8]                                 ; 0xe8ad8 | SEL ass_handleTouchDownAtPoint:
00011254 adrp      x16, #0x13000                                   
00011258 add       x16, x16, #0x4f0                                 ; 0x134f0
0001125c paciza    x16                                             
00011260 mov       x2, x16                                         
00011264 add       x3, sp, #0x28                                   
00011268 mov       x0, x19                                         
0001126c bl        #0xa4254                                         ; _class_addMethod
00011270 strh      w20, [sp, #0x28]                                
00011274 strb      w21, [sp, #0x2a]                                
00011278 stur      w22, [sp, #0x33]                                
0001127c stur      x23, [sp, #0x2b]                                
00011280 strb      wzr, [sp, #0x37]                                
00011284 adrp      x8, #0xe8000                                    
00011288 ldr       x1, [x8, #0xae8]                                 ; 0xe8ae8 | SEL ass_handleTouchMovedToPoint:
0001128c adrp      x16, #0x13000                                   
00011290 add       x16, x16, #0x80c                                 ; 0x1380c
00011294 paciza    x16                                             
00011298 mov       x2, x16                                         
0001129c add       x3, sp, #0x28                                   
000112a0 mov       x0, x19                                         
000112a4 bl        #0xa4254                                         ; _class_addMethod
000112a8 ldr       q0, [sp]                                        
000112ac str       s0, [sp, #0x28]                                 
000112b0 adrp      x8, #0xe8000                                    
000112b4 ldr       x1, [x8, #0xae0]                                 ; 0xe8ae0 | SEL ass_handleTouchEnded
000112b8 adrp      x16, #0x13000                                   
000112bc add       x16, x16, #0xa50                                 ; 0x13a50
000112c0 paciza    x16                                             
000112c4 mov       x2, x16                                         
000112c8 add       x3, sp, #0x28                                   
000112cc mov       x0, x19                                         
000112d0 bl        #0xa4254                                         ; _class_addMethod
000112d4 adrp      x0, #0xb6000                                    
000112d8 add       x0, x0, #0xc71                                   ; 0xb6c71 | 'HNDDisplayManager'
000112dc bl        #0xa4664                                         ; _objc_getClass
000112e0 mov       x19, x0                                         
000112e4 adrp      x8, #0xec000                                    
000112e8 ldr       x1, [x8, #0xa8]                                  ; 0xec0a8 | SEL showMenu:
000112ec adrp      x3, #0xee000                                    
000112f0 add       x3, x3, #0xd48                                   ; 0xeed48
000112f4 adrp      x16, #0x13000                                   
000112f8 add       x16, x16, #0xc80                                 ; 0x13c80
000112fc paciza    x16                                             
00011300 mov       x2, x16                                         
00011304 bl        #0xa4054                                         ; _MSHookMessageEx
00011308 adrp      x8, #0xec000                                    
0001130c ldr       x1, [x8, #0xb0]                                  ; 0xec0b0 | SEL showCircleMenu:
00011310 adrp      x3, #0xee000                                    
00011314 add       x3, x3, #0xd50                                   ; 0xeed50
00011318 adrp      x16, #0x13000                                   
0001131c add       x16, x16, #0xcbc                                 ; 0x13cbc
00011320 paciza    x16                                             
00011324 mov       x2, x16                                         
00011328 mov       x0, x19                                         
0001132c bl        #0xa4054                                         ; _MSHookMessageEx
00011330 adrp      x8, #0xec000                                    
00011334 ldr       x1, [x8, #0xb8]                                  ; 0xec0b8 | SEL setNubbitMoving:
00011338 adrp      x3, #0xee000                                    
0001133c add       x3, x3, #0xd58                                   ; 0xeed58
00011340 adrp      x16, #0x13000                                   
00011344 add       x16, x16, #0xcf8                                 ; 0x13cf8
00011348 paciza    x16                                             
0001134c mov       x2, x16                                         
00011350 mov       x0, x19                                         
00011354 bl        #0xa4054                                         ; _MSHookMessageEx
00011358 adrp      x8, #0xec000                                    
0001135c ldr       x1, [x8, #0xc0]                                  ; 0xec0c0 | SEL _repositionNubbitAfterLift:
00011360 adrp      x3, #0xee000                                    
00011364 add       x3, x3, #0xd60                                   ; 0xeed60
00011368 adrp      x16, #0x13000                                   
0001136c add       x16, x16, #0xd88                                 ; 0x13d88
00011370 paciza    x16                                             
00011374 mov       x2, x16                                         
00011378 mov       x0, x19                                         
0001137c bl        #0xa4054                                         ; _MSHookMessageEx
00011380 adrp      x0, #0xb6000                                    
00011384 add       x0, x0, #0xc83                                   ; 0xb6c83 | 'HNDRockerButton'
00011388 bl        #0xa4664                                         ; _objc_getClass
0001138c mov       x19, x0                                         
00011390 adrp      x8, #0xeb000                                    
00011394 ldr       x1, [x8, #0xfa8]                                 ; 0xebfa8 | SEL setHighlighted:
00011398 adrp      x3, #0xee000                                    
0001139c add       x3, x3, #0xd68                                   ; 0xeed68
000113a0 adrp      x16, #0x13000                                   
000113a4 add       x16, x16, #0xde0                                 ; 0x13de0
000113a8 paciza    x16                                             
000113ac mov       x2, x16                                         
000113b0 bl        #0xa4054                                         ; _MSHookMessageEx
000113b4 adrp      x8, #0xec000                                    
000113b8 ldr       x1, [x8, #0xc8]                                  ; 0xec0c8 | SEL performPress:
000113bc adrp      x3, #0xee000                                    
000113c0 add       x3, x3, #0xd70                                   ; 0xeed70
000113c4 adrp      x16, #0x13000                                   
000113c8 add       x16, x16, #0xf14                                 ; 0x13f14
000113cc paciza    x16                                             
000113d0 mov       x2, x16                                         
000113d4 mov       x0, x19                                         
000113d8 bl        #0xa4054                                         ; _MSHookMessageEx
000113dc bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
000113e0 adrp      x3, #0xd8000                                    
000113e4 add       x3, x3, #0x4b0                                   ; 0xd84b0 | @'dylv.liquidassprefs/Reload'
000113e8 adrp      x16, #0x13000                                   
000113ec add       x16, x16, #0xf78                                 ; 0x13f78
000113f0 paciza    x16                                             
000113f4 mov       x2, x16                                         
000113f8 mov       x1, #0                                          
000113fc mov       x4, #0                                          
00011400 mov       w5, #4                                          
00011404 bl        #0xa3ab4                                         ; _CFNotificationCenterAddObserver
00011408 ldur      x8, [x29, #-0x38]                               
0001140c adrp      x9, #0xd4000                                    
00011410 ldr       x9, [x9, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
00011414 ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
00011418 cmp       x9, x8                                          
0001141c b.ne      #0x11438                                        
00011420 add       sp, sp, #0x430                                  
00011424 ldp       x29, x30, [sp, #0x30]                           
00011428 ldp       x20, x19, [sp, #0x20]                           
0001142c ldp       x22, x21, [sp, #0x10]                           
00011430 ldp       x24, x23, [sp], #0x40                           
00011434 retab                                                     
00011438 bl        #0xa41d4                                         ; ___stack_chk_fail
