; Uploaded sample arm64e unslid VA 0x76960..0x76b28
00076960 add       x3, x3, #0xda8                               
00076964 bl        #0xa4574                                      ; _notify_register_dispatch
00076968 adrp      x21, #0xec000                                
0007696c adrp      x22, #0xec000                                
00076970 b         #0x76c40                                     
00076974 adrp      x20, #0xec000                                
00076978 ldr       x0, [x20, #0x688]                             ; &_OBJC_CLASS_$_NSBundle
0007697c bl        #0xa9920                                      ; objc_msgSend$mainBundle
00076980 mov       x29, x29                                     
00076984 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00076988 mov       x24, x0                                      
0007698c bl        #0xa5ca0                                      ; objc_msgSend$bundleIdentifier
00076990 mov       x29, x29                                     
00076994 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00076998 mov       x25, x0                                      
0007699c adrp      x2, #0xd9000                                 
000769a0 add       x2, x2, #0xb0                                 ; @'com.apple.springboard'
000769a4 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
000769a8 mov       x26, x0                                      
000769ac mov       x0, x25                                      
000769b0 bl        #0xa46f4                                      ; _objc_release
000769b4 mov       x0, x24                                      
000769b8 bl        #0xa46f4                                      ; _objc_release
000769bc cbz       w26, #0x76cf4                                
000769c0 adrp      x8, #0xec000                                 
000769c4 ldr       x0, [x8, #0x828]                              ; &LGClockSavedDockCoordinator
000769c8 bl        #0xa8f80                                      ; objc_msgSend$isSupported
000769cc cbz       w0, #0x763f0                                 
000769d0 bl        #0x74400                                      ; _LGClockSavedDockInstallHooks
000769d4 adrp      x0, #0xba000                                 
000769d8 add       x0, x0, #0x791                                ; 'FBSSceneSettings'
000769dc bl        #0xa4664                                      ; _objc_getClass
000769e0 adrp      x8, #0xe9000                                 
000769e4 ldr       x2, [x8, #0xfe0]                              ; SEL pr_isDepthEffectDisallowed | x2 <- SEL pr_isDepthEffectDisallowed
000769e8 bl        #0xa8a20                                      ; objc_msgSend$instancesRespondToSelector:
000769ec cbz       w0, #0x76a5c                                 
000769f0 adrp      x0, #0xba000                                 
000769f4 add       x0, x0, #0x7a2                                ; 'PBUIPosterLockViewController'
000769f8 bl        #0xa4664                                      ; _objc_getClass
000769fc adrp      x8, #0xec000                                 
00076a00 ldr       x2, [x8, #0x368]                              ; SEL portalSourceForReplicaView: | x2 <- SEL portalSourceForReplicaView:
00076a04 bl        #0xa8a20                                      ; objc_msgSend$instancesRespondToSelector:
00076a08 cbz       w0, #0x76a5c                                 
00076a0c bl        #0x74e28                                      ; _LGClockSavedSavedDepthEffectInstallHooks
00076a10 adrp      x0, #0xba000                                 
00076a14 add       x0, x0, #0x7bf                                ; 'PBUIPosterViewController'
00076a18 bl        #0xa4664                                      ; _objc_getClass
00076a1c adrp      x8, #0xec000                                 
00076a20 ldr       x24, [x8, #0x370]                             ; SEL scene:willUpdateSettings:withTransitionContext:
00076a24 mov       x2, x24                                      
00076a28 bl        #0xa8a20                                      ; objc_msgSend$instancesRespondToSelector:
00076a2c cbz       w0, #0x76a5c                                 
00076a30 adrp      x0, #0xba000                                 
00076a34 add       x0, x0, #0x7bf                                ; 'PBUIPosterViewController'
00076a38 bl        #0xa4664                                      ; _objc_getClass
00076a3c adrp      x3, #0xef000                                 
00076a40 add       x3, x3, #0x830                               
00076a44 adrp      x16, #0x75000                                
00076a48 add       x16, x16, #0x164                             
00076a4c paciza    x16                                          
00076a50 mov       x2, x16                                      
00076a54 mov       x1, x24                                      
00076a58 bl        #0xa4054                                      ; _MSHookMessageEx
00076a5c adrp      x0, #0xb8000                                 
00076a60 add       x0, x0, #0xf60                                ; 'NCNotificationListView'
00076a64 bl        #0xa4664                                      ; _objc_getClass
00076a68 adrp      x8, #0xec000                                 
00076a6c ldr       x24, [x8, #0x350]                             ; SEL _layoutOverlayFooterViewIfNecessary
00076a70 mov       x2, x24                                      
00076a74 bl        #0xa8a20                                      ; objc_msgSend$instancesRespondToSelector:
00076a78 cbz       w0, #0x76dfc                                 
00076a7c adrp      x0, #0xb8000                                 
00076a80 add       x0, x0, #0xf60                                ; 'NCNotificationListView'
00076a84 bl        #0xa4664                                      ; _objc_getClass
00076a88 adrp      x3, #0xef000                                 
00076a8c add       x3, x3, #0x7f0                               
00076a90 adrp      x16, #0x74000                                
00076a94 add       x16, x16, #0xa90                             
00076a98 paciza    x16                                          
00076a9c mov       x2, x16                                      
00076aa0 mov       x1, x24                                      
00076aa4 b         #0x76e40                                     
00076aa8 adrp      x8, #0xef000                                 
00076aac ldrb      w8, [x8, #0x8a0]                             
00076ab0 tbnz      w8, #0, #0x76c40                             
00076ab4 adrp      x0, #0xba000                                 
00076ab8 add       x0, x0, #0x7bf                                ; 'PBUIPosterViewController'
00076abc bl        #0xa4664                                      ; _objc_getClass
00076ac0 mov       x20, x0                                      
00076ac4 adrp      x8, #0xec000                                 
00076ac8 ldr       x1, [x8, #0xe0]                               ; SEL viewDidLoad
00076acc adrp      x3, #0xef000                                 
00076ad0 add       x3, x3, #0xa50                               
00076ad4 adrp      x16, #0x7a000                                
00076ad8 add       x16, x16, #0x18c                             
00076adc paciza    x16                                          
00076ae0 mov       x2, x16                                      
00076ae4 bl        #0xa4054                                      ; _MSHookMessageEx
00076ae8 adrp      x8, #0xec000                                 
00076aec ldr       x1, [x8, #0x400]                              ; SEL updateConfiguration:
00076af0 adrp      x3, #0xef000                                 
00076af4 add       x3, x3, #0xa58                               
00076af8 adrp      x16, #0x7a000                                
00076afc add       x16, x16, #0x1ec                             
00076b00 paciza    x16                                          
00076b04 mov       x2, x16                                      
00076b08 mov       x0, x20                                      
00076b0c bl        #0xa4054                                      ; _MSHookMessageEx
00076b10 adrp      x0, #0xda000                                 
00076b14 add       x0, x0, #0xb10                                ; @'CSProminentTimeView'
00076b18 bl        #0xa4064                                      ; _NSClassFromString
00076b1c cbnz      x0, #0x76c40                                 
00076b20 bl        #0x7a24c                                     
00076b24 adrp      x0, #0xba000                                 
