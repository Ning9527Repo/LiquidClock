# arm64e unslid VA 0x35a74..0x35dc0; FAT offset 0xfc000
00035a74 pacibsp                                                   
00035a78 stp       x20, x19, [sp, #-0x20]!                         
00035a7c stp       x29, x30, [sp, #0x10]                           
00035a80 add       x29, sp, #0x10                                  
00035a84 adrp      x0, #0xb7000                                    
00035a88 add       x0, x0, #0xca7                                   ; 0xb7ca7 | 'SBCoverSheetPanelBackgroundContainerView'
00035a8c bl        #0xa4664                                         ; _objc_getClass
00035a90 mov       x19, x0                                         
00035a94 adrp      x8, #0xeb000                                    
00035a98 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
00035a9c adrp      x3, #0xef000                                    
00035aa0 add       x3, x3, #0x180                                   ; 0xef180
00035aa4 adrp      x16, #0x35000                                   
00035aa8 add       x16, x16, #0xdc0                                 ; 0x35dc0
00035aac paciza    x16                                             
00035ab0 mov       x2, x16                                         
00035ab4 bl        #0xa4054                                         ; _MSHookMessageEx
00035ab8 adrp      x8, #0xeb000                                    
00035abc ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
00035ac0 adrp      x3, #0xef000                                    
00035ac4 add       x3, x3, #0x188                                   ; 0xef188
00035ac8 adrp      x16, #0x35000                                   
00035acc add       x16, x16, #0xec8                                 ; 0x35ec8
00035ad0 paciza    x16                                             
00035ad4 mov       x2, x16                                         
00035ad8 mov       x0, x19                                         
00035adc bl        #0xa4054                                         ; _MSHookMessageEx
00035ae0 adrp      x0, #0xb7000                                    
00035ae4 add       x0, x0, #0xcd0                                   ; 0xb7cd0 | 'PBUIPosterWallpaperRemoteViewController'
00035ae8 bl        #0xa4664                                         ; _objc_getClass
00035aec mov       x19, x0                                         
00035af0 adrp      x8, #0xec000                                    
00035af4 ldr       x1, [x8, #0xe0]                                  ; 0xec0e0 | SEL viewDidLoad
00035af8 adrp      x3, #0xef000                                    
00035afc add       x3, x3, #0x190                                   ; 0xef190
00035b00 adrp      x16, #0x35000                                   
00035b04 add       x16, x16, #0xf08                                 ; 0x35f08
00035b08 paciza    x16                                             
00035b0c mov       x2, x16                                         
00035b10 bl        #0xa4054                                         ; _MSHookMessageEx
00035b14 adrp      x8, #0xec000                                    
00035b18 ldr       x1, [x8, #0x130]                                 ; 0xec130 | SEL viewWillAppear:
00035b1c adrp      x3, #0xef000                                    
00035b20 add       x3, x3, #0x198                                   ; 0xef198
00035b24 adrp      x16, #0x35000                                   
00035b28 add       x16, x16, #0xf64                                 ; 0x35f64
00035b2c paciza    x16                                             
00035b30 mov       x2, x16                                         
00035b34 mov       x0, x19                                         
00035b38 bl        #0xa4054                                         ; _MSHookMessageEx
00035b3c adrp      x0, #0xb7000                                    
00035b40 add       x0, x0, #0xcf8                                   ; 0xb7cf8 | 'SBCoverSheetPresentationManager'
00035b44 bl        #0xa4664                                         ; _objc_getClass
00035b48 mov       x19, x0                                         
00035b4c adrp      x8, #0xec000                                    
00035b50 ldr       x1, [x8, #0x198]                                 ; 0xec198 | SEL _notifyDelegateWillDismiss
00035b54 adrp      x3, #0xef000                                    
00035b58 add       x3, x3, #0x1a0                                   ; 0xef1a0
00035b5c adrp      x16, #0x35000                                   
00035b60 add       x16, x16, #0xfc0                                 ; 0x35fc0
00035b64 paciza    x16                                             
00035b68 mov       x2, x16                                         
00035b6c bl        #0xa4054                                         ; _MSHookMessageEx
00035b70 adrp      x8, #0xec000                                    
00035b74 ldr       x1, [x8, #0x1a0]                                 ; 0xec1a0 | SEL coverSheetSlidingViewControllerShouldAllowDismissal:
00035b78 adrp      x3, #0xef000                                    
00035b7c add       x3, x3, #0x1a8                                   ; 0xef1a8
00035b80 adrp      x16, #0x36000                                   
00035b84 add       x16, x16, #0x18                                  ; 0x36018
00035b88 paciza    x16                                             
00035b8c mov       x2, x16                                         
00035b90 mov       x0, x19                                         
00035b94 bl        #0xa4054                                         ; _MSHookMessageEx
00035b98 adrp      x8, #0xec000                                    
00035b9c ldr       x1, [x8, #0x1a8]                                 ; 0xec1a8 | SEL coverSheetSlidingViewControllerDidPassRubberBandThreshold:
00035ba0 adrp      x3, #0xef000                                    
00035ba4 add       x3, x3, #0x1b0                                   ; 0xef1b0
00035ba8 adrp      x16, #0x36000                                   
00035bac add       x16, x16, #0x58                                  ; 0x36058
00035bb0 paciza    x16                                             
00035bb4 mov       x2, x16                                         
00035bb8 mov       x0, x19                                         
00035bbc bl        #0xa4054                                         ; _MSHookMessageEx
00035bc0 adrp      x8, #0xec000                                    
00035bc4 ldr       x1, [x8, #0x1b0]                                 ; 0xec1b0 | SEL _prepareForRubberBandDismissalTransitionForSlidingViewController:
00035bc8 adrp      x3, #0xef000                                    
00035bcc add       x3, x3, #0x1b8                                   ; 0xef1b8
00035bd0 adrp      x16, #0x36000                                   
00035bd4 add       x16, x16, #0xc8                                  ; 0x360c8
00035bd8 paciza    x16                                             
00035bdc mov       x2, x16                                         
00035be0 mov       x0, x19                                         
00035be4 bl        #0xa4054                                         ; _MSHookMessageEx
00035be8 adrp      x8, #0xec000                                    
00035bec ldr       x1, [x8, #0x1b8]                                 ; 0xec1b8 | SEL coverSheetSlidingViewController:prepareForPresentationTransitionForUserGesture:
00035bf0 adrp      x3, #0xef000                                    
00035bf4 add       x3, x3, #0x1c0                                   ; 0xef1c0
00035bf8 adrp      x16, #0x36000                                   
00035bfc add       x16, x16, #0x138                                 ; 0x36138
00035c00 paciza    x16                                             
00035c04 mov       x2, x16                                         
00035c08 mov       x0, x19                                         
00035c0c bl        #0xa4054                                         ; _MSHookMessageEx
00035c10 adrp      x8, #0xec000                                    
00035c14 ldr       x1, [x8, #0x1c0]                                 ; 0xec1c0 | SEL coverSheetSlidingViewController:prepareForDismissalTransitionForReversingTransition:forUserGesture:
00035c18 adrp      x3, #0xef000                                    
00035c1c add       x3, x3, #0x1c8                                   ; 0xef1c8
00035c20 adrp      x16, #0x36000                                   
00035c24 add       x16, x16, #0x4f0                                 ; 0x364f0
00035c28 paciza    x16                                             
00035c2c mov       x2, x16                                         
00035c30 mov       x0, x19                                         
00035c34 bl        #0xa4054                                         ; _MSHookMessageEx
00035c38 adrp      x8, #0xec000                                    
00035c3c ldr       x1, [x8, #0x1c8]                                 ; 0xec1c8 | SEL coverSheetSlidingViewController:animationTickedWithProgress:velocity:coverSheetFrame:gestureActive:forPresentationValue:
00035c40 adrp      x3, #0xef000                                    
00035c44 add       x3, x3, #0x1d0                                   ; 0xef1d0
00035c48 adrp      x16, #0x36000                                   
00035c4c add       x16, x16, #0xb58                                 ; 0x36b58
00035c50 paciza    x16                                             
00035c54 mov       x2, x16                                         
00035c58 mov       x0, x19                                         
00035c5c bl        #0xa4054                                         ; _MSHookMessageEx
00035c60 adrp      x8, #0xec000                                    
00035c64 ldr       x1, [x8, #0x1d0]                                 ; 0xec1d0 | SEL coverSheetSlidingViewController:animationTickedWithProgress:coverSheetFrame:gestureActive:forPresentationValue:
00035c68 adrp      x3, #0xef000                                    
00035c6c add       x3, x3, #0x1d8                                   ; 0xef1d8
00035c70 adrp      x16, #0x36000                                   
00035c74 add       x16, x16, #0xc70                                 ; 0x36c70
00035c78 paciza    x16                                             
00035c7c mov       x2, x16                                         
00035c80 mov       x0, x19                                         
00035c84 bl        #0xa4054                                         ; _MSHookMessageEx
00035c88 adrp      x8, #0xec000                                    
00035c8c ldr       x1, [x8, #0x1d8]                                 ; 0xec1d8 | SEL coverSheetSlidingViewControllerDidEndTransition:
00035c90 adrp      x3, #0xef000                                    
00035c94 add       x3, x3, #0x1e0                                   ; 0xef1e0
00035c98 adrp      x16, #0x36000                                   
00035c9c add       x16, x16, #0xd84                                 ; 0x36d84
00035ca0 paciza    x16                                             
00035ca4 mov       x2, x16                                         
00035ca8 mov       x0, x19                                         
00035cac bl        #0xa4054                                         ; _MSHookMessageEx
00035cb0 adrp      x8, #0xec000                                    
00035cb4 ldr       x1, [x8, #0x1e0]                                 ; 0xec1e0 | SEL coverSheetSlidingViewControllerCleanupPresentationTransition:
00035cb8 adrp      x3, #0xef000                                    
00035cbc add       x3, x3, #0x1e8                                   ; 0xef1e8
00035cc0 adrp      x16, #0x36000                                   
00035cc4 add       x16, x16, #0xe34                                 ; 0x36e34
00035cc8 paciza    x16                                             
00035ccc mov       x2, x16                                         
00035cd0 mov       x0, x19                                         
00035cd4 bl        #0xa4054                                         ; _MSHookMessageEx
00035cd8 adrp      x8, #0xec000                                    
00035cdc ldr       x1, [x8, #0x1e8]                                 ; 0xec1e8 | SEL willUIUnlockWithPendingUnlockRequest:
00035ce0 adrp      x3, #0xef000                                    
00035ce4 add       x3, x3, #0x1f0                                   ; 0xef1f0
00035ce8 adrp      x16, #0x36000                                   
00035cec add       x16, x16, #0xee4                                 ; 0x36ee4
00035cf0 paciza    x16                                             
00035cf4 mov       x2, x16                                         
00035cf8 mov       x0, x19                                         
00035cfc bl        #0xa4054                                         ; _MSHookMessageEx
00035d00 adrp      x8, #0xec000                                    
00035d04 ldr       x1, [x8, #0x1f0]                                 ; 0xec1f0 | SEL coverSheetSlidingViewController:committingToEndPresented:
00035d08 adrp      x3, #0xef000                                    
00035d0c add       x3, x3, #0x1f8                                   ; 0xef1f8
00035d10 adrp      x16, #0x36000                                   
00035d14 add       x16, x16, #0xf44                                 ; 0x36f44
00035d18 paciza    x16                                             
00035d1c mov       x2, x16                                         
00035d20 mov       x0, x19                                         
00035d24 bl        #0xa4054                                         ; _MSHookMessageEx
00035d28 adrp      x8, #0xec000                                    
00035d2c ldr       x1, [x8, #0x1f8]                                 ; 0xec1f8 | SEL _setCoverSheetPresented:forcePresented:animated:withCompletion:
00035d30 adrp      x3, #0xef000                                    
00035d34 add       x3, x3, #0x200                                   ; 0xef200
00035d38 adrp      x16, #0x37000                                   
00035d3c add       x16, x16, #0x2c8                                 ; 0x372c8
00035d40 paciza    x16                                             
00035d44 mov       x2, x16                                         
00035d48 mov       x0, x19                                         
00035d4c bl        #0xa4054                                         ; _MSHookMessageEx
00035d50 adrp      x8, #0xec000                                    
00035d54 ldr       x1, [x8, #0x200]                                 ; 0xec200 | SEL _setCoverSheetPresented:forcePresented:animated:options:withCompletion:
00035d58 adrp      x3, #0xef000                                    
00035d5c add       x3, x3, #0x208                                   ; 0xef208
00035d60 adrp      x16, #0x37000                                   
00035d64 add       x16, x16, #0x398                                 ; 0x37398
00035d68 paciza    x16                                             
00035d6c mov       x2, x16                                         
00035d70 mov       x0, x19                                         
00035d74 bl        #0xa4054                                         ; _MSHookMessageEx
00035d78 adrp      x0, #0xb7000                                    
00035d7c add       x0, x0, #0xd18                                   ; 0xb7d18 | 'SBCoverSheetPrimarySlidingViewController'
00035d80 bl        #0xa4664                                         ; _objc_getClass
00035d84 adrp      x8, #0xec000                                    
00035d88 ldr       x1, [x8, #0x208]                                 ; 0xec208 | SEL _commitTransitionToAppeared:animated:
00035d8c adrp      x3, #0xef000                                    
00035d90 add       x3, x3, #0x210                                   ; 0xef210
00035d94 adrp      x16, #0x37000                                   
00035d98 add       x16, x16, #0x478                                 ; 0x37478
00035d9c paciza    x16                                             
00035da0 mov       x2, x16                                         
00035da4 ldp       x29, x30, [sp, #0x10]                           
00035da8 ldp       x20, x19, [sp], #0x20                           
00035dac autibsp                                                   
00035db0 eor       x16, x30, x30, lsl #1                           
00035db4 tbz       x16, #0x3e, #0x35dbc                            
00035db8 brk       #0xc471                                         
00035dbc b         #0xa4054                                         ; _MSHookMessageEx
