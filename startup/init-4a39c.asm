# arm64e unslid VA 0x4a39c..0x4a74c; FAT offset 0xfc000
0004a39c pacibsp                                                   
0004a3a0 stp       x22, x21, [sp, #-0x30]!                         
0004a3a4 stp       x20, x19, [sp, #0x10]                           
0004a3a8 stp       x29, x30, [sp, #0x20]                           
0004a3ac add       x29, sp, #0x20                                  
0004a3b0 adrp      x0, #0xb9000                                    
0004a3b4 add       x0, x0, #0xb7                                    ; 0xb90b7 | 'UITabBar'
0004a3b8 bl        #0xa4664                                         ; _objc_getClass
0004a3bc mov       x21, x0                                         
0004a3c0 adrp      x8, #0xec000                                    
0004a3c4 ldr       x1, [x8, #0x240]                                 ; 0xec240 | SEL hitTest:withEvent:
0004a3c8 adrp      x3, #0xef000                                    
0004a3cc add       x3, x3, #0x548                                   ; 0xef548
0004a3d0 adrp      x16, #0x4a000                                   
0004a3d4 add       x16, x16, #0x74c                                 ; 0x4a74c
0004a3d8 paciza    x16                                             
0004a3dc mov       x2, x16                                         
0004a3e0 bl        #0xa4054                                         ; _MSHookMessageEx
0004a3e4 adrp      x8, #0xec000                                    
0004a3e8 ldr       x1, [x8, #0x248]                                 ; 0xec248 | SEL pointInside:withEvent:
0004a3ec adrp      x3, #0xef000                                    
0004a3f0 add       x3, x3, #0x550                                   ; 0xef550
0004a3f4 adrp      x16, #0x4a000                                   
0004a3f8 add       x16, x16, #0x9c8                                 ; 0x4a9c8
0004a3fc paciza    x16                                             
0004a400 mov       x2, x16                                         
0004a404 mov       x0, x21                                         
0004a408 bl        #0xa4054                                         ; _MSHookMessageEx
0004a40c adrp      x8, #0xeb000                                    
0004a410 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
0004a414 adrp      x3, #0xef000                                    
0004a418 add       x3, x3, #0x558                                   ; 0xef558
0004a41c adrp      x16, #0x4a000                                   
0004a420 add       x16, x16, #0xa6c                                 ; 0x4aa6c
0004a424 paciza    x16                                             
0004a428 mov       x2, x16                                         
0004a42c mov       x0, x21                                         
0004a430 bl        #0xa4054                                         ; _MSHookMessageEx
0004a434 adrp      x8, #0xeb000                                    
0004a438 ldr       x19, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
0004a43c adrp      x3, #0xef000                                    
0004a440 add       x3, x3, #0x560                                   ; 0xef560
0004a444 adrp      x16, #0x4a000                                   
0004a448 add       x16, x16, #0xaec                                 ; 0x4aaec
0004a44c paciza    x16                                             
0004a450 mov       x2, x16                                         
0004a454 mov       x0, x21                                         
0004a458 mov       x1, x19                                         
0004a45c bl        #0xa4054                                         ; _MSHookMessageEx
0004a460 adrp      x8, #0xea000                                    
0004a464 ldr       x20, [x8, #0x8e0]                                ; 0xea8e0 | SEL setFrame:
0004a468 adrp      x3, #0xef000                                    
0004a46c add       x3, x3, #0x568                                   ; 0xef568
0004a470 adrp      x16, #0x4a000                                   
0004a474 add       x16, x16, #0xd40                                 ; 0x4ad40
0004a478 paciza    x16                                             
0004a47c mov       x2, x16                                         
0004a480 mov       x0, x21                                         
0004a484 mov       x1, x20                                         
0004a488 bl        #0xa4054                                         ; _MSHookMessageEx
0004a48c adrp      x8, #0xeb000                                    
0004a490 ldr       x1, [x8, #0x4d8]                                 ; 0xeb4d8 | SEL sizeThatFits:
0004a494 adrp      x3, #0xef000                                    
0004a498 add       x3, x3, #0x570                                   ; 0xef570
0004a49c adrp      x16, #0x4a000                                   
0004a4a0 add       x16, x16, #0xed0                                 ; 0x4aed0
0004a4a4 paciza    x16                                             
0004a4a8 mov       x2, x16                                         
0004a4ac mov       x0, x21                                         
0004a4b0 bl        #0xa4054                                         ; _MSHookMessageEx
0004a4b4 adrp      x8, #0xec000                                    
0004a4b8 ldr       x1, [x8, #0x250]                                 ; 0xec250 | SEL setItems:animated:
0004a4bc adrp      x3, #0xef000                                    
0004a4c0 add       x3, x3, #0x578                                   ; 0xef578
0004a4c4 adrp      x16, #0x4a000                                   
0004a4c8 add       x16, x16, #0xfc4                                 ; 0x4afc4
0004a4cc paciza    x16                                             
0004a4d0 mov       x2, x16                                         
0004a4d4 mov       x0, x21                                         
0004a4d8 bl        #0xa4054                                         ; _MSHookMessageEx
0004a4dc adrp      x8, #0xeb000                                    
0004a4e0 ldr       x1, [x8, #0x30]                                  ; 0xeb030 | SEL setSelectedItem:
0004a4e4 adrp      x3, #0xef000                                    
0004a4e8 add       x3, x3, #0x580                                   ; 0xef580
0004a4ec adrp      x16, #0x4b000                                   
0004a4f0 add       x16, x16, #0xc                                   ; 0x4b00c
0004a4f4 paciza    x16                                             
0004a4f8 mov       x2, x16                                         
0004a4fc mov       x0, x21                                         
0004a500 bl        #0xa4054                                         ; _MSHookMessageEx
0004a504 adrp      x8, #0xec000                                    
0004a508 ldr       x1, [x8, #0xd8]                                  ; 0xec0d8 | SEL traitCollectionDidChange:
0004a50c adrp      x3, #0xef000                                    
0004a510 add       x3, x3, #0x588                                   ; 0xef588
0004a514 adrp      x16, #0x4b000                                   
0004a518 add       x16, x16, #0x128                                 ; 0x4b128
0004a51c paciza    x16                                             
0004a520 mov       x2, x16                                         
0004a524 mov       x0, x21                                         
0004a528 bl        #0xa4054                                         ; _MSHookMessageEx
0004a52c adrp      x0, #0xb9000                                    
0004a530 add       x0, x0, #0xc0                                    ; 0xb90c0 | 'UITabBarController'
0004a534 bl        #0xa4664                                         ; _objc_getClass
0004a538 mov       x21, x0                                         
0004a53c adrp      x8, #0xec000                                    
0004a540 ldr       x1, [x8, #0x258]                                 ; 0xec258 | SEL setViewControllers:animated:
0004a544 adrp      x3, #0xef000                                    
0004a548 add       x3, x3, #0x590                                   ; 0xef590
0004a54c adrp      x16, #0x4b000                                   
0004a550 add       x16, x16, #0x1f0                                 ; 0x4b1f0
0004a554 paciza    x16                                             
0004a558 mov       x2, x16                                         
0004a55c bl        #0xa4054                                         ; _MSHookMessageEx
0004a560 adrp      x8, #0xeb000                                    
0004a564 ldr       x1, [x8, #0x28]                                  ; 0xeb028 | SEL setSelectedIndex:
0004a568 adrp      x3, #0xef000                                    
0004a56c add       x3, x3, #0x598                                   ; 0xef598
0004a570 adrp      x16, #0x4b000                                   
0004a574 add       x16, x16, #0x37c                                 ; 0x4b37c
0004a578 paciza    x16                                             
0004a57c mov       x2, x16                                         
0004a580 mov       x0, x21                                         
0004a584 bl        #0xa4054                                         ; _MSHookMessageEx
0004a588 adrp      x8, #0xec000                                    
0004a58c ldr       x1, [x8, #0x260]                                 ; 0xec260 | SEL setSelectedViewController:
0004a590 adrp      x3, #0xef000                                    
0004a594 add       x3, x3, #0x5a0                                   ; 0xef5a0
0004a598 adrp      x16, #0x4b000                                   
0004a59c add       x16, x16, #0x4f4                                 ; 0x4b4f4
0004a5a0 paciza    x16                                             
0004a5a4 mov       x2, x16                                         
0004a5a8 mov       x0, x21                                         
0004a5ac bl        #0xa4054                                         ; _MSHookMessageEx
0004a5b0 adrp      x8, #0xeb000                                    
0004a5b4 ldr       x1, [x8, #0xf88]                                 ; 0xebf88 | SEL viewDidAppear:
0004a5b8 adrp      x3, #0xef000                                    
0004a5bc add       x3, x3, #0x5a8                                   ; 0xef5a8
0004a5c0 adrp      x16, #0x4b000                                   
0004a5c4 add       x16, x16, #0x684                                 ; 0x4b684
0004a5c8 paciza    x16                                             
0004a5cc mov       x2, x16                                         
0004a5d0 mov       x0, x21                                         
0004a5d4 bl        #0xa4054                                         ; _MSHookMessageEx
0004a5d8 adrp      x8, #0xec000                                    
0004a5dc ldr       x1, [x8, #0x268]                                 ; 0xec268 | SEL tabBar:didSelectItem:
0004a5e0 adrp      x3, #0xef000                                    
0004a5e4 add       x3, x3, #0x5b0                                   ; 0xef5b0
0004a5e8 adrp      x16, #0x4b000                                   
0004a5ec add       x16, x16, #0x87c                                 ; 0x4b87c
0004a5f0 paciza    x16                                             
0004a5f4 mov       x2, x16                                         
0004a5f8 mov       x0, x21                                         
0004a5fc bl        #0xa4054                                         ; _MSHookMessageEx
0004a600 adrp      x0, #0xb9000                                    
0004a604 add       x0, x0, #0xd3                                    ; 0xb90d3 | 'UITabBarButton'
0004a608 bl        #0xa4664                                         ; _objc_getClass
0004a60c mov       x21, x0                                         
0004a610 adrp      x3, #0xef000                                    
0004a614 add       x3, x3, #0x5b8                                   ; 0xef5b8
0004a618 adrp      x16, #0x4b000                                   
0004a61c add       x16, x16, #0xca4                                 ; 0x4bca4
0004a620 paciza    x16                                             
0004a624 mov       x2, x16                                         
0004a628 mov       x1, x20                                         
0004a62c bl        #0xa4054                                         ; _MSHookMessageEx
0004a630 adrp      x3, #0xef000                                    
0004a634 add       x3, x3, #0x5c0                                   ; 0xef5c0
0004a638 adrp      x16, #0x4c000                                   
0004a63c add       x16, x16, #0x4cc                                 ; 0x4c4cc
0004a640 paciza    x16                                             
0004a644 mov       x2, x16                                         
0004a648 mov       x0, x21                                         
0004a64c mov       x1, x19                                         
0004a650 bl        #0xa4054                                         ; _MSHookMessageEx
0004a654 adrp      x8, #0xec000                                    
0004a658 ldr       x1, [x8, #0x160]                                 ; 0xec160 | SEL beginTrackingWithTouch:withEvent:
0004a65c adrp      x3, #0xef000                                    
0004a660 add       x3, x3, #0x5c8                                   ; 0xef5c8
0004a664 adrp      x16, #0x4c000                                   
0004a668 add       x16, x16, #0x554                                 ; 0x4c554
0004a66c paciza    x16                                             
0004a670 mov       x2, x16                                         
0004a674 mov       x0, x21                                         
0004a678 bl        #0xa4054                                         ; _MSHookMessageEx
0004a67c adrp      x8, #0xec000                                    
0004a680 ldr       x1, [x8, #0x168]                                 ; 0xec168 | SEL continueTrackingWithTouch:withEvent:
0004a684 adrp      x3, #0xef000                                    
0004a688 add       x3, x3, #0x5d0                                   ; 0xef5d0
0004a68c adrp      x16, #0x4d000                                   
0004a690 add       x16, x16, #0x254                                 ; 0x4d254
0004a694 paciza    x16                                             
0004a698 mov       x2, x16                                         
0004a69c mov       x0, x21                                         
0004a6a0 bl        #0xa4054                                         ; _MSHookMessageEx
0004a6a4 adrp      x8, #0xec000                                    
0004a6a8 ldr       x1, [x8, #0x170]                                 ; 0xec170 | SEL endTrackingWithTouch:withEvent:
0004a6ac adrp      x3, #0xef000                                    
0004a6b0 add       x3, x3, #0x5d8                                   ; 0xef5d8
0004a6b4 adrp      x16, #0x4d000                                   
0004a6b8 add       x16, x16, #0x778                                 ; 0x4d778
0004a6bc paciza    x16                                             
0004a6c0 mov       x2, x16                                         
0004a6c4 mov       x0, x21                                         
0004a6c8 bl        #0xa4054                                         ; _MSHookMessageEx
0004a6cc adrp      x8, #0xe8000                                    
0004a6d0 ldr       x1, [x8, #0xcb0]                                 ; 0xe8cb0 | SEL cancelTrackingWithEvent:
0004a6d4 adrp      x3, #0xef000                                    
0004a6d8 add       x3, x3, #0x5e0                                   ; 0xef5e0
0004a6dc adrp      x16, #0x4f000                                   
0004a6e0 add       x16, x16, #0x544                                 ; 0x4f544
0004a6e4 paciza    x16                                             
0004a6e8 mov       x2, x16                                         
0004a6ec mov       x0, x21                                         
0004a6f0 bl        #0xa4054                                         ; _MSHookMessageEx
0004a6f4 adrp      x0, #0xb9000                                    
0004a6f8 add       x0, x0, #0xe2                                    ; 0xb90e2 | 'PXCuratedLibraryZoomLevelControl'
0004a6fc bl        #0xa4664                                         ; _objc_getClass
0004a700 adrp      x3, #0xef000                                    
0004a704 add       x3, x3, #0x5e8                                   ; 0xef5e8
0004a708 adrp      x16, #0x4f000                                   
0004a70c add       x16, x16, #0x5a4                                 ; 0x4f5a4
0004a710 paciza    x16                                             
0004a714 mov       x2, x16                                         
0004a718 mov       x1, x19                                         
0004a71c bl        #0xa4054                                         ; _MSHookMessageEx
0004a720 bl        #0x4f7d4                                        
0004a724 adrp      x0, #0xd5000                                    
0004a728 add       x0, x0, #0x798                                   ; 0xd5798 | &__NSConcreteGlobalBlock
0004a72c ldp       x29, x30, [sp, #0x20]                           
0004a730 ldp       x20, x19, [sp, #0x10]                           
0004a734 ldp       x22, x21, [sp], #0x30                           
0004a738 autibsp                                                   
0004a73c eor       x16, x30, x30, lsl #1                           
0004a740 tbz       x16, #0x3e, #0x4a748                            
0004a744 brk       #0xc471                                         
0004a748 b         #0x97e34                                         ; _lgObservePreferenceReload
