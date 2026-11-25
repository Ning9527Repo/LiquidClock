# arm64e unslid VA 0x161d0..0x1652c; FAT offset 0xfc000
000161d0 pacibsp                                                   
000161d4 stp       x22, x21, [sp, #-0x30]!                         
000161d8 stp       x20, x19, [sp, #0x10]                           
000161dc stp       x29, x30, [sp, #0x20]                           
000161e0 add       x29, sp, #0x20                                  
000161e4 adrp      x0, #0xb6000                                    
000161e8 add       x0, x0, #0xf78                                   ; 0xb6f78 | 'UIVisualEffectView'
000161ec bl        #0xa4664                                         ; _objc_getClass
000161f0 mov       x21, x0                                         
000161f4 adrp      x8, #0xeb000                                    
000161f8 ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
000161fc adrp      x3, #0xee000                                    
00016200 add       x3, x3, #0xdc0                                   ; 0xeedc0
00016204 adrp      x16, #0x16000                                   
00016208 add       x16, x16, #0x52c                                 ; 0x1652c
0001620c paciza    x16                                             
00016210 mov       x2, x16                                         
00016214 mov       x1, x20                                         
00016218 bl        #0xa4054                                         ; _MSHookMessageEx
0001621c adrp      x8, #0xeb000                                    
00016220 ldr       x19, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
00016224 adrp      x3, #0xee000                                    
00016228 add       x3, x3, #0xdc8                                   ; 0xeedc8
0001622c adrp      x16, #0x16000                                   
00016230 add       x16, x16, #0x670                                 ; 0x16670
00016234 paciza    x16                                             
00016238 mov       x2, x16                                         
0001623c mov       x0, x21                                         
00016240 mov       x1, x19                                         
00016244 bl        #0xa4054                                         ; _MSHookMessageEx
00016248 adrp      x0, #0xb6000                                    
0001624c add       x0, x0, #0xf8b                                   ; 0xb6f8b | 'UICollectionView'
00016250 bl        #0xa4664                                         ; _objc_getClass
00016254 adrp      x3, #0xee000                                    
00016258 add       x3, x3, #0xdd0                                   ; 0xeedd0
0001625c adrp      x16, #0x16000                                   
00016260 add       x16, x16, #0x728                                 ; 0x16728
00016264 paciza    x16                                             
00016268 mov       x2, x16                                         
0001626c mov       x1, x19                                         
00016270 bl        #0xa4054                                         ; _MSHookMessageEx
00016274 adrp      x0, #0xb6000                                    
00016278 add       x0, x0, #0xf9c                                   ; 0xb6f9c | '_UIContextMenuContainerView'
0001627c bl        #0xa4664                                         ; _objc_getClass
00016280 adrp      x3, #0xee000                                    
00016284 add       x3, x3, #0xdd8                                   ; 0xeedd8
00016288 adrp      x16, #0x16000                                   
0001628c add       x16, x16, #0x9c8                                 ; 0x169c8
00016290 paciza    x16                                             
00016294 mov       x2, x16                                         
00016298 mov       x1, x19                                         
0001629c bl        #0xa4054                                         ; _MSHookMessageEx
000162a0 adrp      x0, #0xb6000                                    
000162a4 add       x0, x0, #0xfb8                                   ; 0xb6fb8 | '_UIContextMenuListView'
000162a8 bl        #0xa4664                                         ; _objc_getClass
000162ac mov       x21, x0                                         
000162b0 adrp      x3, #0xee000                                    
000162b4 add       x3, x3, #0xde0                                   ; 0xeede0
000162b8 adrp      x16, #0x16000                                   
000162bc add       x16, x16, #0xa38                                 ; 0x16a38
000162c0 paciza    x16                                             
000162c4 mov       x2, x16                                         
000162c8 mov       x1, x20                                         
000162cc bl        #0xa4054                                         ; _MSHookMessageEx
000162d0 adrp      x8, #0xec000                                    
000162d4 ldr       x1, [x8, #0xe8]                                  ; 0xec0e8 | SEL didAddSubview:
000162d8 adrp      x3, #0xee000                                    
000162dc add       x3, x3, #0xde8                                   ; 0xeede8
000162e0 adrp      x16, #0x16000                                   
000162e4 add       x16, x16, #0xd00                                 ; 0x16d00
000162e8 paciza    x16                                             
000162ec mov       x2, x16                                         
000162f0 mov       x0, x21                                         
000162f4 bl        #0xa4054                                         ; _MSHookMessageEx
000162f8 adrp      x3, #0xee000                                    
000162fc add       x3, x3, #0xdf0                                   ; 0xeedf0
00016300 adrp      x16, #0x16000                                   
00016304 add       x16, x16, #0xd80                                 ; 0x16d80
00016308 paciza    x16                                             
0001630c mov       x2, x16                                         
00016310 mov       x0, x21                                         
00016314 mov       x1, x19                                         
00016318 bl        #0xa4054                                         ; _MSHookMessageEx
0001631c adrp      x8, #0xec000                                    
00016320 ldr       x1, [x8, #0xf0]                                  ; 0xec0f0 | SEL highlightItemAtIndexPath:
00016324 adrp      x3, #0xee000                                    
00016328 add       x3, x3, #0xdf8                                   ; 0xeedf8
0001632c adrp      x16, #0x17000                                   
00016330 add       x16, x16, #0xb0                                  ; 0x170b0
00016334 paciza    x16                                             
00016338 mov       x2, x16                                         
0001633c mov       x0, x21                                         
00016340 bl        #0xa4054                                         ; _MSHookMessageEx
00016344 adrp      x8, #0xec000                                    
00016348 ldr       x1, [x8, #0xf8]                                  ; 0xec0f8 | SEL unHighlightItemAtIndexPath:
0001634c adrp      x3, #0xee000                                    
00016350 add       x3, x3, #0xe00                                   ; 0xeee00
00016354 adrp      x16, #0x17000                                   
00016358 add       x16, x16, #0x1cc                                 ; 0x171cc
0001635c paciza    x16                                             
00016360 mov       x2, x16                                         
00016364 mov       x0, x21                                         
00016368 bl        #0xa4054                                         ; _MSHookMessageEx
0001636c adrp      x0, #0xb6000                                    
00016370 add       x0, x0, #0xfcf                                   ; 0xb6fcf | '_UIContextMenuView'
00016374 bl        #0xa4664                                         ; _objc_getClass
00016378 adrp      x8, #0xec000                                    
0001637c ldr       x1, [x8, #0x100]                                 ; 0xec100 | SEL _handleSelectionGesture:
00016380 adrp      x3, #0xee000                                    
00016384 add       x3, x3, #0xe08                                   ; 0xeee08
00016388 adrp      x16, #0x17000                                   
0001638c add       x16, x16, #0x2c0                                 ; 0x172c0
00016390 paciza    x16                                             
00016394 mov       x2, x16                                         
00016398 bl        #0xa4054                                         ; _MSHookMessageEx
0001639c adrp      x0, #0xb6000                                    
000163a0 add       x0, x0, #0xfe2                                   ; 0xb6fe2 | '_UIContextMenuCell'
000163a4 bl        #0xa4664                                         ; _objc_getClass
000163a8 mov       x20, x0                                         
000163ac adrp      x8, #0xec000                                    
000163b0 ldr       x1, [x8, #0x108]                                 ; 0xec108 | SEL preferredLayoutAttributesFittingAttributes:
000163b4 adrp      x3, #0xee000                                    
000163b8 add       x3, x3, #0xe10                                   ; 0xeee10
000163bc adrp      x16, #0x17000                                   
000163c0 add       x16, x16, #0x4b4                                 ; 0x174b4
000163c4 paciza    x16                                             
000163c8 mov       x2, x16                                         
000163cc bl        #0xa4054                                         ; _MSHookMessageEx
000163d0 adrp      x3, #0xee000                                    
000163d4 add       x3, x3, #0xe18                                   ; 0xeee18
000163d8 adrp      x16, #0x17000                                   
000163dc add       x16, x16, #0x5e4                                 ; 0x175e4
000163e0 paciza    x16                                             
000163e4 mov       x2, x16                                         
000163e8 mov       x0, x20                                         
000163ec mov       x1, x19                                         
000163f0 bl        #0xa4054                                         ; _MSHookMessageEx
000163f4 adrp      x8, #0xeb000                                    
000163f8 ldr       x1, [x8, #0xfa8]                                 ; 0xebfa8 | SEL setHighlighted:
000163fc adrp      x3, #0xee000                                    
00016400 add       x3, x3, #0xe20                                   ; 0xeee20
00016404 adrp      x16, #0x17000                                   
00016408 add       x16, x16, #0x6ec                                 ; 0x176ec
0001640c paciza    x16                                             
00016410 mov       x2, x16                                         
00016414 mov       x0, x20                                         
00016418 bl        #0xa4054                                         ; _MSHookMessageEx
0001641c adrp      x8, #0xec000                                    
00016420 ldr       x1, [x8, #0x110]                                 ; 0xec110 | SEL setSelected:
00016424 adrp      x3, #0xee000                                    
00016428 add       x3, x3, #0xe28                                   ; 0xeee28
0001642c adrp      x16, #0x17000                                   
00016430 add       x16, x16, #0x7d0                                 ; 0x177d0
00016434 paciza    x16                                             
00016438 mov       x2, x16                                         
0001643c mov       x0, x20                                         
00016440 bl        #0xa4054                                         ; _MSHookMessageEx
00016444 adrp      x0, #0xb6000                                    
00016448 add       x0, x0, #0xff5                                   ; 0xb6ff5 | '_UIContextMenuCellContentView'
0001644c bl        #0xa4664                                         ; _objc_getClass
00016450 adrp      x3, #0xee000                                    
00016454 add       x3, x3, #0xe30                                   ; 0xeee30
00016458 adrp      x16, #0x17000                                   
0001645c add       x16, x16, #0x8b0                                 ; 0x178b0
00016460 paciza    x16                                             
00016464 mov       x2, x16                                         
00016468 mov       x1, x19                                         
0001646c bl        #0xa4054                                         ; _MSHookMessageEx
00016470 adrp      x0, #0xd8000                                    
00016474 add       x0, x0, #0x8f0                                   ; 0xd88f0 | @'_UIContextMenuPlatformMetrics'
00016478 bl        #0xa4064                                         ; _NSClassFromString
0001647c cbz       x0, #0x16504                                    
00016480 adrp      x0, #0xb7000                                    
00016484 add       x0, x0, #0x13                                    ; 0xb7013 | '_UIContextMenuPlatformMetrics'
00016488 bl        #0xa4664                                         ; _objc_getClass
0001648c mov       x19, x0                                         
00016490 adrp      x8, #0xec000                                    
00016494 ldr       x1, [x8, #0x118]                                 ; 0xec118 | SEL sectionInsets
00016498 adrp      x3, #0xee000                                    
0001649c add       x3, x3, #0xe38                                   ; 0xeee38
000164a0 adrp      x16, #0x17000                                   
000164a4 add       x16, x16, #0xaac                                 ; 0x17aac
000164a8 paciza    x16                                             
000164ac mov       x2, x16                                         
000164b0 bl        #0xa4054                                         ; _MSHookMessageEx
000164b4 adrp      x8, #0xec000                                    
000164b8 ldr       x1, [x8, #0x120]                                 ; 0xec120 | SEL itemSeparatorHeight
000164bc adrp      x3, #0xee000                                    
000164c0 add       x3, x3, #0xe40                                   ; 0xeee40
000164c4 adrp      x16, #0x17000                                   
000164c8 add       x16, x16, #0xb10                                 ; 0x17b10
000164cc paciza    x16                                             
000164d0 mov       x2, x16                                         
000164d4 mov       x0, x19                                         
000164d8 bl        #0xa4054                                         ; _MSHookMessageEx
000164dc adrp      x8, #0xec000                                    
000164e0 ldr       x1, [x8, #0x128]                                 ; 0xec128 | SEL sectionSeparatorHeight
000164e4 adrp      x3, #0xee000                                    
000164e8 add       x3, x3, #0xe48                                   ; 0xeee48
000164ec adrp      x16, #0x17000                                   
000164f0 add       x16, x16, #0xb74                                 ; 0x17b74
000164f4 paciza    x16                                             
000164f8 mov       x2, x16                                         
000164fc mov       x0, x19                                         
00016500 bl        #0xa4054                                         ; _MSHookMessageEx
00016504 adrp      x0, #0xd4000                                    
00016508 add       x0, x0, #0xe00                                   ; 0xd4e00 | &__NSConcreteGlobalBlock
0001650c ldp       x29, x30, [sp, #0x20]                           
00016510 ldp       x20, x19, [sp, #0x10]                           
00016514 ldp       x22, x21, [sp], #0x30                           
00016518 autibsp                                                   
0001651c eor       x16, x30, x30, lsl #1                           
00016520 tbz       x16, #0x3e, #0x16528                            
00016524 brk       #0xc471                                         
00016528 b         #0x97e34                                         ; _lgObservePreferenceReload
