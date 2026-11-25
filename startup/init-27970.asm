# arm64e unslid VA 0x27970..0x28468; FAT offset 0xfc000
00027970 pacibsp                                                   
00027974 sub       sp, sp, #0xa0                                   
00027978 stp       x28, x27, [sp, #0x40]                           
0002797c stp       x26, x25, [sp, #0x50]                           
00027980 stp       x24, x23, [sp, #0x60]                           
00027984 stp       x22, x21, [sp, #0x70]                           
00027988 stp       x20, x19, [sp, #0x80]                           
0002798c stp       x29, x30, [sp, #0x90]                           
00027990 add       x29, sp, #0x90                                  
00027994 adrp      x8, #0xec000                                    
00027998 ldr       x0, [x8, #0x688]                                 ; 0xec688 | &_OBJC_CLASS_$_NSBundle
0002799c bl        #0xa9920                                         ; _objc_msgSend
000279a0 mov       x29, x29                                        
000279a4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000279a8 mov       x20, x0                                         
000279ac bl        #0xa5ca0                                         ; _objc_msgSend
000279b0 mov       x29, x29                                        
000279b4 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000279b8 mov       x21, x0                                         
000279bc adrp      x8, #0xd8000                                    
000279c0 add       x8, x8, #0x70                                    ; 0xd8070 | @''
000279c4 cmp       x0, #0                                          
000279c8 csel      x0, x8, x0, eq                                  
000279cc bl        #0xa4704                                         ; _objc_retain
000279d0 mov       x19, x0                                         
000279d4 mov       x0, x21                                         
000279d8 bl        #0xa46f4                                         ; _objc_release
000279dc mov       x0, x20                                         
000279e0 bl        #0xa46f4                                         ; _objc_release
000279e4 bl        #0x28468                                        
000279e8 adrp      x0, #0xb7000                                    
000279ec add       x0, x0, #0x7f9                                   ; 0xb77f9 | '_UINavigationBarTitleControl'
000279f0 bl        #0xa4664                                         ; _objc_getClass
000279f4 adrp      x8, #0xeb000                                    
000279f8 ldr       x20, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
000279fc adrp      x3, #0xee000                                    
00027a00 add       x3, x3, #0xf60                                   ; 0xeef60
00027a04 adrp      x16, #0x28000                                   
00027a08 add       x16, x16, #0x62c                                 ; 0x2862c
00027a0c paciza    x16                                             
00027a10 mov       x2, x16                                         
00027a14 mov       x1, x20                                         
00027a18 bl        #0xa4054                                         ; _MSHookMessageEx
00027a1c adrp      x0, #0xb7000                                    
00027a20 add       x0, x0, #0x816                                   ; 0xb7816 | '_UINavigationBarContentView'
00027a24 bl        #0xa4664                                         ; _objc_getClass
00027a28 mov       x21, x0                                         
00027a2c adrp      x8, #0xea000                                    
00027a30 ldr       x1, [x8, #0x5c8]                                 ; 0xea5c8 | SEL setClipsToBounds:
00027a34 adrp      x3, #0xee000                                    
00027a38 add       x3, x3, #0xf68                                   ; 0xeef68
00027a3c adrp      x16, #0x28000                                   
00027a40 add       x16, x16, #0x6e4                                 ; 0x286e4
00027a44 paciza    x16                                             
00027a48 mov       x2, x16                                         
00027a4c bl        #0xa4054                                         ; _MSHookMessageEx
00027a50 adrp      x3, #0xee000                                    
00027a54 add       x3, x3, #0xf70                                   ; 0xeef70
00027a58 adrp      x16, #0x28000                                   
00027a5c add       x16, x16, #0x750                                 ; 0x28750
00027a60 paciza    x16                                             
00027a64 mov       x2, x16                                         
00027a68 mov       x0, x21                                         
00027a6c mov       x1, x20                                         
00027a70 bl        #0xa4054                                         ; _MSHookMessageEx
00027a74 adrp      x0, #0xb6000                                    
00027a78 add       x0, x0, #0xc44                                   ; 0xb6c44 | 'CALayer'
00027a7c bl        #0xa4664                                         ; _objc_getClass
00027a80 adrp      x8, #0xea000                                    
00027a84 ldr       x1, [x8, #0xbc8]                                 ; 0xeabc8 | SEL setMasksToBounds:
00027a88 adrp      x3, #0xee000                                    
00027a8c add       x3, x3, #0xf78                                   ; 0xeef78
00027a90 adrp      x16, #0x28000                                   
00027a94 add       x16, x16, #0x820                                 ; 0x28820
00027a98 paciza    x16                                             
00027a9c mov       x2, x16                                         
00027aa0 bl        #0xa4054                                         ; _MSHookMessageEx
00027aa4 adrp      x0, #0xb7000                                    
00027aa8 add       x0, x0, #0x832                                   ; 0xb7832 | 'UIViewControllerWrapperView'
00027aac bl        #0xa4664                                         ; _objc_getClass
00027ab0 mov       x22, x0                                         
00027ab4 adrp      x8, #0xeb000                                    
00027ab8 ldr       x21, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
00027abc adrp      x3, #0xee000                                    
00027ac0 add       x3, x3, #0xf80                                   ; 0xeef80
00027ac4 adrp      x16, #0x28000                                   
00027ac8 add       x16, x16, #0x898                                 ; 0x28898
00027acc paciza    x16                                             
00027ad0 mov       x2, x16                                         
00027ad4 mov       x1, x21                                         
00027ad8 bl        #0xa4054                                         ; _MSHookMessageEx
00027adc adrp      x3, #0xee000                                    
00027ae0 add       x3, x3, #0xf88                                   ; 0xeef88
00027ae4 adrp      x16, #0x28000                                   
00027ae8 add       x16, x16, #0x8d8                                 ; 0x288d8
00027aec paciza    x16                                             
00027af0 mov       x2, x16                                         
00027af4 mov       x0, x22                                         
00027af8 mov       x1, x20                                         
00027afc bl        #0xa4054                                         ; _MSHookMessageEx
00027b00 adrp      x0, #0xb7000                                    
00027b04 add       x0, x0, #0x84e                                   ; 0xb784e | 'UINavigationBar'
00027b08 bl        #0xa4664                                         ; _objc_getClass
00027b0c mov       x22, x0                                         
00027b10 adrp      x3, #0xee000                                    
00027b14 add       x3, x3, #0xf90                                   ; 0xeef90
00027b18 adrp      x16, #0x28000                                   
00027b1c add       x16, x16, #0x918                                 ; 0x28918
00027b20 paciza    x16                                             
00027b24 mov       x2, x16                                         
00027b28 mov       x1, x21                                         
00027b2c bl        #0xa4054                                         ; _MSHookMessageEx
00027b30 adrp      x3, #0xee000                                    
00027b34 add       x3, x3, #0xf98                                   ; 0xeef98
00027b38 adrp      x16, #0x28000                                   
00027b3c add       x16, x16, #0x95c                                 ; 0x2895c
00027b40 paciza    x16                                             
00027b44 mov       x2, x16                                         
00027b48 mov       x0, x22                                         
00027b4c mov       x1, x20                                         
00027b50 bl        #0xa4054                                         ; _MSHookMessageEx
00027b54 adrp      x0, #0xb6000                                    
00027b58 add       x0, x0, #0x5d5                                   ; 0xb65d5 | 'UIView'
00027b5c bl        #0xa4664                                         ; _objc_getClass
00027b60 mov       x22, x0                                         
00027b64 adrp      x8, #0xea000                                    
00027b68 ldr       x1, [x8, #0x570]                                 ; 0xea570 | SEL setBounds:
00027b6c adrp      x3, #0xee000                                    
00027b70 add       x3, x3, #0xfa0                                   ; 0xeefa0
00027b74 adrp      x16, #0x28000                                   
00027b78 add       x16, x16, #0x9a8                                 ; 0x289a8
00027b7c paciza    x16                                             
00027b80 mov       x2, x16                                         
00027b84 bl        #0xa4054                                         ; _MSHookMessageEx
00027b88 adrp      x8, #0xea000                                    
00027b8c ldr       x1, [x8, #0x8e0]                                 ; 0xea8e0 | SEL setFrame:
00027b90 adrp      x3, #0xee000                                    
00027b94 add       x3, x3, #0xfa8                                   ; 0xeefa8
00027b98 adrp      x16, #0x28000                                   
00027b9c add       x16, x16, #0xa88                                 ; 0x28a88
00027ba0 paciza    x16                                             
00027ba4 mov       x2, x16                                         
00027ba8 mov       x0, x22                                         
00027bac bl        #0xa4054                                         ; _MSHookMessageEx
00027bb0 adrp      x0, #0xb7000                                    
00027bb4 add       x0, x0, #0x85e                                   ; 0xb785e | '_UIButtonBarStackView'
00027bb8 bl        #0xa4664                                         ; _objc_getClass
00027bbc mov       x22, x0                                         
00027bc0 adrp      x8, #0xec000                                    
00027bc4 ldr       x1, [x8, #0x148]                                 ; 0xec148 | SEL resizableSnapshotViewFromRect:afterScreenUpdates:withCapInsets:
00027bc8 adrp      x3, #0xee000                                    
00027bcc add       x3, x3, #0xfb0                                   ; 0xeefb0
00027bd0 adrp      x16, #0x28000                                   
00027bd4 add       x16, x16, #0xb68                                 ; 0x28b68
00027bd8 paciza    x16                                             
00027bdc mov       x2, x16                                         
00027be0 bl        #0xa4054                                         ; _MSHookMessageEx
00027be4 adrp      x3, #0xee000                                    
00027be8 add       x3, x3, #0xfb8                                   ; 0xeefb8
00027bec adrp      x16, #0x28000                                   
00027bf0 add       x16, x16, #0xdf8                                 ; 0x28df8
00027bf4 paciza    x16                                             
00027bf8 mov       x2, x16                                         
00027bfc mov       x0, x22                                         
00027c00 mov       x1, x21                                         
00027c04 bl        #0xa4054                                         ; _MSHookMessageEx
00027c08 adrp      x3, #0xee000                                    
00027c0c add       x3, x3, #0xfc0                                   ; 0xeefc0
00027c10 adrp      x16, #0x28000                                   
00027c14 add       x16, x16, #0xe38                                 ; 0x28e38
00027c18 paciza    x16                                             
00027c1c mov       x2, x16                                         
00027c20 mov       x0, x22                                         
00027c24 mov       x1, x20                                         
00027c28 bl        #0xa4054                                         ; _MSHookMessageEx
00027c2c adrp      x0, #0xb7000                                    
00027c30 add       x0, x0, #0x7d3                                   ; 0xb77d3 | '_UIButtonBarButton'
00027c34 bl        #0xa4664                                         ; _objc_getClass
00027c38 mov       x22, x0                                         
00027c3c adrp      x8, #0xec000                                    
00027c40 ldr       x1, [x8, #0x150]                                 ; 0xec150 | SEL configureFromBarItem:withAppearanceDelegate:
00027c44 adrp      x3, #0xee000                                    
00027c48 add       x3, x3, #0xfc8                                   ; 0xeefc8
00027c4c adrp      x16, #0x29000                                   
00027c50 add       x16, x16, #0x98                                  ; 0x29098
00027c54 paciza    x16                                             
00027c58 mov       x2, x16                                         
00027c5c bl        #0xa4054                                         ; _MSHookMessageEx
00027c60 adrp      x8, #0xeb000                                    
00027c64 ldr       x1, [x8, #0xfa8]                                 ; 0xebfa8 | SEL setHighlighted:
00027c68 adrp      x3, #0xee000                                    
00027c6c add       x3, x3, #0xfd0                                   ; 0xeefd0
00027c70 adrp      x16, #0x29000                                   
00027c74 add       x16, x16, #0x1dc                                 ; 0x291dc
00027c78 paciza    x16                                             
00027c7c mov       x2, x16                                         
00027c80 mov       x0, x22                                         
00027c84 bl        #0xa4054                                         ; _MSHookMessageEx
00027c88 adrp      x8, #0xec000                                    
00027c8c ldr       x1, [x8, #0x158]                                 ; 0xec158 | SEL setBackButtonMaskEnabled:
00027c90 adrp      x3, #0xee000                                    
00027c94 add       x3, x3, #0xfd8                                   ; 0xeefd8
00027c98 adrp      x16, #0x29000                                   
00027c9c add       x16, x16, #0x2d0                                 ; 0x292d0
00027ca0 paciza    x16                                             
00027ca4 mov       x2, x16                                         
00027ca8 mov       x0, x22                                         
00027cac bl        #0xa4054                                         ; _MSHookMessageEx
00027cb0 adrp      x3, #0xee000                                    
00027cb4 add       x3, x3, #0xfe0                                   ; 0xeefe0
00027cb8 adrp      x16, #0x29000                                   
00027cbc add       x16, x16, #0x39c                                 ; 0x2939c
00027cc0 paciza    x16                                             
00027cc4 mov       x2, x16                                         
00027cc8 mov       x0, x22                                         
00027ccc mov       x1, x21                                         
00027cd0 bl        #0xa4054                                         ; _MSHookMessageEx
00027cd4 adrp      x3, #0xee000                                    
00027cd8 add       x3, x3, #0xfe8                                   ; 0xeefe8
00027cdc adrp      x16, #0x29000                                   
00027ce0 add       x16, x16, #0x3dc                                 ; 0x293dc
00027ce4 paciza    x16                                             
00027ce8 mov       x2, x16                                         
00027cec mov       x0, x22                                         
00027cf0 mov       x1, x20                                         
00027cf4 bl        #0xa4054                                         ; _MSHookMessageEx
00027cf8 adrp      x8, #0xec000                                    
00027cfc ldr       x23, [x8, #0x160]                                ; 0xec160 | SEL beginTrackingWithTouch:withEvent:
00027d00 adrp      x3, #0xee000                                    
00027d04 add       x3, x3, #0xff0                                   ; 0xeeff0
00027d08 adrp      x16, #0x29000                                   
00027d0c add       x16, x16, #0x460                                 ; 0x29460
00027d10 paciza    x16                                             
00027d14 mov       x2, x16                                         
00027d18 mov       x0, x22                                         
00027d1c mov       x1, x23                                         
00027d20 bl        #0xa4054                                         ; _MSHookMessageEx
00027d24 adrp      x8, #0xec000                                    
00027d28 ldr       x24, [x8, #0x168]                                ; 0xec168 | SEL continueTrackingWithTouch:withEvent:
00027d2c adrp      x3, #0xee000                                    
00027d30 add       x3, x3, #0xff8                                   ; 0xeeff8
00027d34 adrp      x16, #0x29000                                   
00027d38 add       x16, x16, #0x5e0                                 ; 0x295e0
00027d3c paciza    x16                                             
00027d40 mov       x2, x16                                         
00027d44 mov       x0, x22                                         
00027d48 mov       x1, x24                                         
00027d4c bl        #0xa4054                                         ; _MSHookMessageEx
00027d50 adrp      x8, #0xec000                                    
00027d54 ldr       x25, [x8, #0x170]                                ; 0xec170 | SEL endTrackingWithTouch:withEvent:
00027d58 adrp      x3, #0xef000                                    
00027d5c add       x3, x3, #0                                       ; 0xef000
00027d60 adrp      x16, #0x29000                                   
00027d64 add       x16, x16, #0x750                                 ; 0x29750
00027d68 paciza    x16                                             
00027d6c mov       x2, x16                                         
00027d70 mov       x0, x22                                         
00027d74 mov       x1, x25                                         
00027d78 bl        #0xa4054                                         ; _MSHookMessageEx
00027d7c adrp      x8, #0xe8000                                    
00027d80 ldr       x26, [x8, #0xcb0]                                ; 0xe8cb0 | SEL cancelTrackingWithEvent:
00027d84 adrp      x3, #0xef000                                    
00027d88 add       x3, x3, #8                                       ; 0xef008
00027d8c adrp      x16, #0x29000                                   
00027d90 add       x16, x16, #0x7fc                                 ; 0x297fc
00027d94 paciza    x16                                             
00027d98 mov       x2, x16                                         
00027d9c mov       x0, x22                                         
00027da0 mov       x1, x26                                         
00027da4 bl        #0xa4054                                         ; _MSHookMessageEx
00027da8 adrp      x0, #0xb7000                                    
00027dac add       x0, x0, #0x874                                   ; 0xb7874 | '_UITAMICAdaptorView'
00027db0 bl        #0xa4664                                         ; _objc_getClass
00027db4 mov       x22, x0                                         
00027db8 adrp      x3, #0xef000                                    
00027dbc add       x3, x3, #0x10                                    ; 0xef010
00027dc0 adrp      x16, #0x29000                                   
00027dc4 add       x16, x16, #0x8a8                                 ; 0x298a8
00027dc8 paciza    x16                                             
00027dcc mov       x2, x16                                         
00027dd0 mov       x1, x21                                         
00027dd4 bl        #0xa4054                                         ; _MSHookMessageEx
00027dd8 adrp      x3, #0xef000                                    
00027ddc add       x3, x3, #0x18                                    ; 0xef018
00027de0 adrp      x16, #0x29000                                   
00027de4 add       x16, x16, #0x8e8                                 ; 0x298e8
00027de8 paciza    x16                                             
00027dec mov       x2, x16                                         
00027df0 mov       x0, x22                                         
00027df4 mov       x1, x20                                         
00027df8 bl        #0xa4054                                         ; _MSHookMessageEx
00027dfc adrp      x0, #0xb7000                                    
00027e00 add       x0, x0, #0x888                                   ; 0xb7888 | 'UIControl'
00027e04 bl        #0xa4664                                         ; _objc_getClass
00027e08 adrp      x8, #0xea000                                    
00027e0c ldr       x22, [x8, #0x818]                                ; 0xea818 | SEL setEnabled:
00027e10 adrp      x3, #0xef000                                    
00027e14 add       x3, x3, #0x20                                    ; 0xef020
00027e18 adrp      x16, #0x29000                                   
00027e1c add       x16, x16, #0x96c                                 ; 0x2996c
00027e20 paciza    x16                                             
00027e24 mov       x2, x16                                         
00027e28 mov       x1, x22                                         
00027e2c bl        #0xa4054                                         ; _MSHookMessageEx
00027e30 adrp      x0, #0xb7000                                    
00027e34 add       x0, x0, #0x892                                   ; 0xb7892 | 'UIButton'
00027e38 bl        #0xa4664                                         ; _objc_getClass
00027e3c mov       x27, x0                                         
00027e40 adrp      x3, #0xef000                                    
00027e44 add       x3, x3, #0x28                                    ; 0xef028
00027e48 adrp      x16, #0x29000                                   
00027e4c add       x16, x16, #0xa74                                 ; 0x29a74
00027e50 paciza    x16                                             
00027e54 mov       x2, x16                                         
00027e58 mov       x1, x20                                         
00027e5c bl        #0xa4054                                         ; _MSHookMessageEx
00027e60 adrp      x3, #0xef000                                    
00027e64 add       x3, x3, #0x30                                    ; 0xef030
00027e68 adrp      x16, #0x29000                                   
00027e6c add       x16, x16, #0xc04                                 ; 0x29c04
00027e70 paciza    x16                                             
00027e74 mov       x2, x16                                         
00027e78 mov       x0, x27                                         
00027e7c mov       x1, x21                                         
00027e80 bl        #0xa4054                                         ; _MSHookMessageEx
00027e84 adrp      x8, #0xeb000                                    
00027e88 ldr       x28, [x8, #0x298]                                ; 0xeb298 | SEL setTintColor:
00027e8c adrp      x3, #0xef000                                    
00027e90 add       x3, x3, #0x38                                    ; 0xef038
00027e94 adrp      x16, #0x29000                                   
00027e98 add       x16, x16, #0xd2c                                 ; 0x29d2c
00027e9c paciza    x16                                             
00027ea0 mov       x2, x16                                         
00027ea4 mov       x0, x27                                         
00027ea8 mov       x1, x28                                         
00027eac bl        #0xa4054                                         ; _MSHookMessageEx
00027eb0 adrp      x8, #0xeb000                                    
00027eb4 ldr       x1, [x8, #0x2a8]                                 ; 0xeb2a8 | SEL setTitleColor:forState:
00027eb8 adrp      x3, #0xef000                                    
00027ebc add       x3, x3, #0x40                                    ; 0xef040
00027ec0 adrp      x16, #0x29000                                   
00027ec4 add       x16, x16, #0xdd4                                 ; 0x29dd4
00027ec8 paciza    x16                                             
00027ecc mov       x2, x16                                         
00027ed0 mov       x0, x27                                         
00027ed4 bl        #0xa4054                                         ; _MSHookMessageEx
00027ed8 adrp      x8, #0xec000                                    
00027edc ldr       x1, [x8, #0x178]                                 ; 0xec178 | SEL setAttributedTitle:forState:
00027ee0 adrp      x3, #0xef000                                    
00027ee4 add       x3, x3, #0x48                                    ; 0xef048
00027ee8 adrp      x16, #0x29000                                   
00027eec add       x16, x16, #0xe98                                 ; 0x29e98
00027ef0 paciza    x16                                             
00027ef4 mov       x2, x16                                         
00027ef8 mov       x0, x27                                         
00027efc bl        #0xa4054                                         ; _MSHookMessageEx
00027f00 adrp      x3, #0xef000                                    
00027f04 add       x3, x3, #0x50                                    ; 0xef050
00027f08 adrp      x16, #0x29000                                   
00027f0c add       x16, x16, #0xf3c                                 ; 0x29f3c
00027f10 paciza    x16                                             
00027f14 mov       x2, x16                                         
00027f18 mov       x0, x27                                         
00027f1c mov       x1, x23                                         
00027f20 bl        #0xa4054                                         ; _MSHookMessageEx
00027f24 adrp      x3, #0xef000                                    
00027f28 add       x3, x3, #0x58                                    ; 0xef058
00027f2c adrp      x16, #0x29000                                   
00027f30 add       x16, x16, #0xfe0                                 ; 0x29fe0
00027f34 paciza    x16                                             
00027f38 mov       x2, x16                                         
00027f3c mov       x0, x27                                         
00027f40 mov       x1, x24                                         
00027f44 bl        #0xa4054                                         ; _MSHookMessageEx
00027f48 adrp      x3, #0xef000                                    
00027f4c add       x3, x3, #0x60                                    ; 0xef060
00027f50 adrp      x16, #0x2a000                                   
00027f54 add       x16, x16, #0x7c                                  ; 0x2a07c
00027f58 paciza    x16                                             
00027f5c mov       x2, x16                                         
00027f60 mov       x0, x27                                         
00027f64 mov       x1, x25                                         
00027f68 bl        #0xa4054                                         ; _MSHookMessageEx
00027f6c adrp      x3, #0xef000                                    
00027f70 add       x3, x3, #0x68                                    ; 0xef068
00027f74 adrp      x16, #0x2a000                                   
00027f78 add       x16, x16, #0x114                                 ; 0x2a114
00027f7c paciza    x16                                             
00027f80 mov       x2, x16                                         
00027f84 mov       x0, x27                                         
00027f88 mov       x1, x26                                         
00027f8c bl        #0xa4054                                         ; _MSHookMessageEx
00027f90 adrp      x0, #0xb7000                                    
00027f94 add       x0, x0, #0x89b                                   ; 0xb789b | 'UIImageView'
00027f98 bl        #0xa4664                                         ; _objc_getClass
00027f9c adrp      x3, #0xef000                                    
00027fa0 add       x3, x3, #0x70                                    ; 0xef070
00027fa4 adrp      x16, #0x2a000                                   
00027fa8 add       x16, x16, #0x1ac                                 ; 0x2a1ac
00027fac paciza    x16                                             
00027fb0 mov       x2, x16                                         
00027fb4 mov       x1, x28                                         
00027fb8 bl        #0xa4054                                         ; _MSHookMessageEx
00027fbc adrp      x0, #0xb7000                                    
00027fc0 add       x0, x0, #0x7e6                                   ; 0xb77e6 | '_UIModernBarButton'
00027fc4 bl        #0xa4664                                         ; _objc_getClass
00027fc8 adrp      x3, #0xef000                                    
00027fcc add       x3, x3, #0x78                                    ; 0xef078
00027fd0 adrp      x16, #0x2a000                                   
00027fd4 add       x16, x16, #0x294                                 ; 0x2a294
00027fd8 paciza    x16                                             
00027fdc mov       x2, x16                                         
00027fe0 mov       x1, x20                                         
00027fe4 bl        #0xa4054                                         ; _MSHookMessageEx
00027fe8 adrp      x0, #0xb7000                                    
00027fec add       x0, x0, #0x8a7                                   ; 0xb78a7 | 'UIButtonLabel'
00027ff0 bl        #0xa4664                                         ; _objc_getClass
00027ff4 mov       x23, x0                                         
00027ff8 adrp      x8, #0xea000                                    
00027ffc ldr       x1, [x8, #0x4c8]                                 ; 0xea4c8 | SEL setAttributedText:
00028000 adrp      x3, #0xef000                                    
00028004 add       x3, x3, #0x80                                    ; 0xef080
00028008 adrp      x16, #0x2a000                                   
0002800c add       x16, x16, #0x3dc                                 ; 0x2a3dc
00028010 paciza    x16                                             
00028014 mov       x2, x16                                         
00028018 bl        #0xa4054                                         ; _MSHookMessageEx
0002801c adrp      x8, #0xec000                                    
00028020 ldr       x1, [x8, #0x180]                                 ; 0xec180 | SEL _textColorFollowsTintColor
00028024 adrp      x3, #0xef000                                    
00028028 add       x3, x3, #0x88                                    ; 0xef088
0002802c adrp      x16, #0x2a000                                   
00028030 add       x16, x16, #0x478                                 ; 0x2a478
00028034 paciza    x16                                             
00028038 mov       x2, x16                                         
0002803c mov       x0, x23                                         
00028040 bl        #0xa4054                                         ; _MSHookMessageEx
00028044 adrp      x8, #0xec000                                    
00028048 ldr       x1, [x8, #0x188]                                 ; 0xec188 | SEL _updateTextColorWithFallbackColorIfNeeded
0002804c adrp      x3, #0xef000                                    
00028050 add       x3, x3, #0x90                                    ; 0xef090
00028054 adrp      x16, #0x2a000                                   
00028058 add       x16, x16, #0x4d4                                 ; 0x2a4d4
0002805c paciza    x16                                             
00028060 mov       x2, x16                                         
00028064 mov       x0, x23                                         
00028068 bl        #0xa4054                                         ; _MSHookMessageEx
0002806c adrp      x2, #0xd9000                                    
00028070 add       x2, x2, #0xb0                                    ; 0xd90b0 | @'com.apple.springboard'
00028074 mov       x0, x19                                         
00028078 bl        #0xa8d60                                         ; _objc_msgSend
0002807c mov       x23, x0                                         
00028080 tbnz      w0, #0, #0x283d8                                
00028084 mov       x0, x19                                         
00028088 bl        #0xa4714                                         ; _objc_retainAutorelease
0002808c bl        #0xa4a60                                         ; _objc_msgSend
00028090 adrp      x8, #0xef000                                    
00028094 ldrb      w8, [x8, #0x98]                                  ; 0xef098
00028098 stp       x0, x8, [sp]                                    
0002809c adrp      x0, #0xd9000                                    
000280a0 add       x0, x0, #0xd0                                    ; 0xd90d0 | @'global controls ctor bundle=%s enabled=%d'
000280a4 bl        #0xa23b8                                         ; _LGLog
000280a8 adrp      x0, #0xb7000                                    
000280ac add       x0, x0, #0x8f5                                   ; 0xb78f5 | 'UISwitchModernVisualElement'
000280b0 bl        #0xa4664                                         ; _objc_getClass
000280b4 mov       x24, x0                                         
000280b8 adrp      x8, #0xeb000                                    
000280bc ldr       x1, [x8, #0xf48]                                 ; 0xebf48 | SEL didMoveToSuperview
000280c0 adrp      x3, #0xef000                                    
000280c4 add       x3, x3, #0xa0                                    ; 0xef0a0
000280c8 adrp      x16, #0x2a000                                   
000280cc add       x16, x16, #0x5ec                                 ; 0x2a5ec
000280d0 paciza    x16                                             
000280d4 mov       x2, x16                                         
000280d8 bl        #0xa4054                                         ; _MSHookMessageEx
000280dc adrp      x3, #0xef000                                    
000280e0 add       x3, x3, #0xa8                                    ; 0xef0a8
000280e4 adrp      x16, #0x2a000                                   
000280e8 add       x16, x16, #0x644                                 ; 0x2a644
000280ec paciza    x16                                             
000280f0 mov       x2, x16                                         
000280f4 mov       x0, x24                                         
000280f8 mov       x1, x21                                         
000280fc bl        #0xa4054                                         ; _MSHookMessageEx
00028100 adrp      x3, #0xef000                                    
00028104 add       x3, x3, #0xb0                                    ; 0xef0b0
00028108 adrp      x16, #0x2a000                                   
0002810c add       x16, x16, #0x69c                                 ; 0x2a69c
00028110 paciza    x16                                             
00028114 mov       x2, x16                                         
00028118 mov       x0, x24                                         
0002811c mov       x1, x20                                         
00028120 bl        #0xa4054                                         ; _MSHookMessageEx
00028124 adrp      x8, #0xea000                                    
00028128 ldr       x1, [x8, #0x478]                                 ; 0xea478 | SEL setAlpha:
0002812c adrp      x3, #0xef000                                    
00028130 add       x3, x3, #0xb8                                    ; 0xef0b8
00028134 adrp      x16, #0x2a000                                   
00028138 add       x16, x16, #0x6f4                                 ; 0x2a6f4
0002813c paciza    x16                                             
00028140 mov       x2, x16                                         
00028144 mov       x0, x24                                         
00028148 bl        #0xa4054                                         ; _MSHookMessageEx
0002814c adrp      x0, #0xb7000                                    
00028150 add       x0, x0, #0x911                                   ; 0xb7911 | 'UISwitch'
00028154 bl        #0xa4664                                         ; _objc_getClass
00028158 mov       x24, x0                                         
0002815c adrp      x3, #0xef000                                    
00028160 add       x3, x3, #0xc0                                    ; 0xef0c0
00028164 adrp      x16, #0x2a000                                   
00028168 add       x16, x16, #0x778                                 ; 0x2a778
0002816c paciza    x16                                             
00028170 mov       x2, x16                                         
00028174 mov       x1, x21                                         
00028178 bl        #0xa4054                                         ; _MSHookMessageEx
0002817c adrp      x3, #0xef000                                    
00028180 add       x3, x3, #0xc8                                    ; 0xef0c8
00028184 adrp      x16, #0x2a000                                   
00028188 add       x16, x16, #0x7d0                                 ; 0x2a7d0
0002818c paciza    x16                                             
00028190 mov       x2, x16                                         
00028194 mov       x0, x24                                         
00028198 mov       x1, x20                                         
0002819c bl        #0xa4054                                         ; _MSHookMessageEx
000281a0 adrp      x8, #0xea000                                    
000281a4 ldr       x1, [x8, #0xd00]                                 ; 0xead00 | SEL setOn:animated:
000281a8 adrp      x3, #0xef000                                    
000281ac add       x3, x3, #0xd0                                    ; 0xef0d0
000281b0 adrp      x16, #0x2a000                                   
000281b4 add       x16, x16, #0x828                                 ; 0x2a828
000281b8 paciza    x16                                             
000281bc mov       x2, x16                                         
000281c0 mov       x0, x24                                         
000281c4 bl        #0xa4054                                         ; _MSHookMessageEx
000281c8 adrp      x0, #0xb7000                                    
000281cc add       x0, x0, #0x91a                                   ; 0xb791a | '_UISlideriOSVisualElement'
000281d0 bl        #0xa4664                                         ; _objc_getClass
000281d4 mov       x24, x0                                         
000281d8 adrp      x3, #0xef000                                    
000281dc add       x3, x3, #0xd8                                    ; 0xef0d8
000281e0 adrp      x16, #0x2a000                                   
000281e4 add       x16, x16, #0x8d4                                 ; 0x2a8d4
000281e8 paciza    x16                                             
000281ec mov       x2, x16                                         
000281f0 mov       x1, x21                                         
000281f4 bl        #0xa4054                                         ; _MSHookMessageEx
000281f8 adrp      x3, #0xef000                                    
000281fc add       x3, x3, #0xe0                                    ; 0xef0e0
00028200 adrp      x16, #0x2a000                                   
00028204 add       x16, x16, #0x9b0                                 ; 0x2a9b0
00028208 paciza    x16                                             
0002820c mov       x2, x16                                         
00028210 mov       x0, x24                                         
00028214 mov       x1, x20                                         
00028218 bl        #0xa4054                                         ; _MSHookMessageEx
0002821c adrp      x0, #0xb7000                                    
00028220 add       x0, x0, #0x934                                   ; 0xb7934 | 'UISegmentedControl'
00028224 bl        #0xa4664                                         ; _objc_getClass
00028228 mov       x24, x0                                         
0002822c adrp      x3, #0xef000                                    
00028230 add       x3, x3, #0xe8                                    ; 0xef0e8
00028234 adrp      x16, #0x2a000                                   
00028238 add       x16, x16, #0xa68                                 ; 0x2aa68
0002823c paciza    x16                                             
00028240 mov       x2, x16                                         
00028244 mov       x1, x21                                         
00028248 bl        #0xa4054                                         ; _MSHookMessageEx
0002824c adrp      x3, #0xef000                                    
00028250 add       x3, x3, #0xf0                                    ; 0xef0f0
00028254 adrp      x16, #0x2a000                                   
00028258 add       x16, x16, #0xac0                                 ; 0x2aac0
0002825c paciza    x16                                             
00028260 mov       x2, x16                                         
00028264 mov       x0, x24                                         
00028268 mov       x1, x20                                         
0002826c bl        #0xa4054                                         ; _MSHookMessageEx
00028270 adrp      x8, #0xeb000                                    
00028274 ldr       x1, [x8, #0x38]                                  ; 0xeb038 | SEL setSelectedSegmentIndex:
00028278 adrp      x3, #0xef000                                    
0002827c add       x3, x3, #0xf8                                    ; 0xef0f8
00028280 adrp      x16, #0x2a000                                   
00028284 add       x16, x16, #0xb18                                 ; 0x2ab18
00028288 paciza    x16                                             
0002828c mov       x2, x16                                         
00028290 mov       x0, x24                                         
00028294 bl        #0xa4054                                         ; _MSHookMessageEx
00028298 adrp      x0, #0xb7000                                    
0002829c add       x0, x0, #0x947                                   ; 0xb7947 | 'UISlider'
000282a0 bl        #0xa4664                                         ; _objc_getClass
000282a4 mov       x24, x0                                         
000282a8 adrp      x3, #0xef000                                    
000282ac add       x3, x3, #0x100                                   ; 0xef100
000282b0 adrp      x16, #0x2a000                                   
000282b4 add       x16, x16, #0xb70                                 ; 0x2ab70
000282b8 paciza    x16                                             
000282bc mov       x2, x16                                         
000282c0 mov       x1, x21                                         
000282c4 bl        #0xa4054                                         ; _MSHookMessageEx
000282c8 adrp      x3, #0xef000                                    
000282cc add       x3, x3, #0x108                                   ; 0xef108
000282d0 adrp      x16, #0x2a000                                   
000282d4 add       x16, x16, #0xc08                                 ; 0x2ac08
000282d8 paciza    x16                                             
000282dc mov       x2, x16                                         
000282e0 mov       x0, x24                                         
000282e4 mov       x1, x20                                         
000282e8 bl        #0xa4054                                         ; _MSHookMessageEx
000282ec adrp      x8, #0xeb000                                    
000282f0 ldr       x1, [x8, #0x378]                                 ; 0xeb378 | SEL setValue:animated:
000282f4 adrp      x3, #0xef000                                    
000282f8 add       x3, x3, #0x110                                   ; 0xef110
000282fc adrp      x16, #0x2a000                                   
00028300 add       x16, x16, #0xc7c                                 ; 0x2ac7c
00028304 paciza    x16                                             
00028308 mov       x2, x16                                         
0002830c mov       x0, x24                                         
00028310 bl        #0xa4054                                         ; _MSHookMessageEx
00028314 adrp      x8, #0xea000                                    
00028318 ldr       x1, [x8, #0xc58]                                 ; 0xeac58 | SEL setMinimumValue:
0002831c adrp      x3, #0xef000                                    
00028320 add       x3, x3, #0x118                                   ; 0xef118
00028324 adrp      x16, #0x2a000                                   
00028328 add       x16, x16, #0xd30                                 ; 0x2ad30
0002832c paciza    x16                                             
00028330 mov       x2, x16                                         
00028334 mov       x0, x24                                         
00028338 bl        #0xa4054                                         ; _MSHookMessageEx
0002833c adrp      x8, #0xea000                                    
00028340 ldr       x1, [x8, #0xc10]                                 ; 0xeac10 | SEL setMaximumValue:
00028344 adrp      x3, #0xef000                                    
00028348 add       x3, x3, #0x120                                   ; 0xef120
0002834c adrp      x16, #0x2a000                                   
00028350 add       x16, x16, #0xda4                                 ; 0x2ada4
00028354 paciza    x16                                             
00028358 mov       x2, x16                                         
0002835c mov       x0, x24                                         
00028360 bl        #0xa4054                                         ; _MSHookMessageEx
00028364 adrp      x3, #0xef000                                    
00028368 add       x3, x3, #0x128                                   ; 0xef128
0002836c adrp      x16, #0x2a000                                   
00028370 add       x16, x16, #0xe18                                 ; 0x2ae18
00028374 paciza    x16                                             
00028378 mov       x2, x16                                         
0002837c mov       x0, x24                                         
00028380 mov       x1, x22                                         
00028384 bl        #0xa4054                                         ; _MSHookMessageEx
00028388 adrp      x8, #0xea000                                    
0002838c ldr       x1, [x8, #0xc50]                                 ; 0xeac50 | SEL setMinimumTrackTintColor:
00028390 adrp      x3, #0xef000                                    
00028394 add       x3, x3, #0x130                                   ; 0xef130
00028398 adrp      x16, #0x2a000                                   
0002839c add       x16, x16, #0xe8c                                 ; 0x2ae8c
000283a0 paciza    x16                                             
000283a4 mov       x2, x16                                         
000283a8 mov       x0, x24                                         
000283ac bl        #0xa4054                                         ; _MSHookMessageEx
000283b0 adrp      x8, #0xea000                                    
000283b4 ldr       x1, [x8, #0xc08]                                 ; 0xeac08 | SEL setMaximumTrackTintColor:
000283b8 adrp      x3, #0xef000                                    
000283bc add       x3, x3, #0x138                                   ; 0xef138
000283c0 adrp      x16, #0x2a000                                   
000283c4 add       x16, x16, #0xf00                                 ; 0x2af00
000283c8 paciza    x16                                             
000283cc mov       x2, x16                                         
000283d0 mov       x0, x24                                         
000283d4 bl        #0xa4054                                         ; _MSHookMessageEx
000283d8 add       x8, sp, #0x10                                   
000283dc adrp      x16, #0xd4000                                   
000283e0 ldr       x16, [x16, #0x930]                               ; 0xd4930 | &__NSConcreteStackBlock
000283e4 mov       x17, x8                                         
000283e8 movk      x17, #0x6ae1, lsl #48                           
000283ec pacda     x16, x17                                        
000283f0 str       x16, [sp, #0x10]                                
000283f4 adrp      x9, #0xbd000                                    
000283f8 ldr       d0, [x9, #0x268]                                 ; 0xbd268
000283fc str       d0, [sp, #0x18]                                 
00028400 add       x8, x8, #0x10                                   
00028404 adrp      x9, #0xd4000                                    
00028408 add       x9, x9, #0xda0                                   ; 0xd4da0
0002840c adrp      x16, #0x2a000                                   
00028410 add       x16, x16, #0xf74                                 ; 0x2af74
00028414 pacia     x16, x8                                         
00028418 stp       x16, x9, [sp, #0x20]                            
0002841c strb      w23, [sp, #0x38]                                
00028420 str       x19, [sp, #0x30]                                
00028424 mov       x0, x19                                         
00028428 bl        #0xa4704                                         ; _objc_retain
0002842c mov       x19, x0                                         
00028430 add       x0, sp, #0x10                                   
00028434 bl        #0x97e34                                         ; _lgObservePreferenceReload
00028438 ldr       x0, [sp, #0x30]                                 
0002843c bl        #0xa46f4                                         ; _objc_release
00028440 mov       x0, x19                                         
00028444 bl        #0xa46f4                                         ; _objc_release
00028448 ldp       x29, x30, [sp, #0x90]                           
0002844c ldp       x20, x19, [sp, #0x80]                           
00028450 ldp       x22, x21, [sp, #0x70]                           
00028454 ldp       x24, x23, [sp, #0x60]                           
00028458 ldp       x26, x25, [sp, #0x50]                           
0002845c ldp       x28, x27, [sp, #0x40]                           
00028460 add       sp, sp, #0xa0                                   
00028464 retab                                                     
