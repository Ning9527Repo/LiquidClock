# arm64e unslid VA 0x42270..0x4242c; FAT offset 0xfc000
00042270 pacibsp                                                   
00042274 stp       x22, x21, [sp, #-0x30]!                         
00042278 stp       x20, x19, [sp, #0x10]                           
0004227c stp       x29, x30, [sp, #0x20]                           
00042280 add       x29, sp, #0x20                                  
00042284 adrp      x0, #0xb6000                                    
00042288 add       x0, x0, #0xbc1                                   ; 0xb6bc1 | 'MTMaterialView'
0004228c bl        #0xa4664                                         ; _objc_getClass
00042290 mov       x21, x0                                         
00042294 adrp      x8, #0xeb000                                    
00042298 ldr       x19, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
0004229c adrp      x3, #0xef000                                    
000422a0 add       x3, x3, #0x4a0                                   ; 0xef4a0
000422a4 adrp      x16, #0x42000                                   
000422a8 add       x16, x16, #0x42c                                 ; 0x4242c
000422ac paciza    x16                                             
000422b0 mov       x2, x16                                         
000422b4 mov       x1, x19                                         
000422b8 bl        #0xa4054                                         ; _MSHookMessageEx
000422bc adrp      x8, #0xeb000                                    
000422c0 ldr       x20, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
000422c4 adrp      x3, #0xef000                                    
000422c8 add       x3, x3, #0x4a8                                   ; 0xef4a8
000422cc adrp      x16, #0x42000                                   
000422d0 add       x16, x16, #0x498                                 ; 0x42498
000422d4 paciza    x16                                             
000422d8 mov       x2, x16                                         
000422dc mov       x0, x21                                         
000422e0 mov       x1, x20                                         
000422e4 bl        #0xa4054                                         ; _MSHookMessageEx
000422e8 adrp      x0, #0xb6000                                    
000422ec add       x0, x0, #0x5d5                                   ; 0xb65d5 | 'UIView'
000422f0 bl        #0xa4664                                         ; _objc_getClass
000422f4 adrp      x8, #0xea000                                    
000422f8 ldr       x1, [x8, #0x478]                                 ; 0xea478 | SEL setAlpha:
000422fc adrp      x3, #0xef000                                    
00042300 add       x3, x3, #0x4b0                                   ; 0xef4b0
00042304 adrp      x16, #0x42000                                   
00042308 add       x16, x16, #0x4d8                                 ; 0x424d8
0004230c paciza    x16                                             
00042310 mov       x2, x16                                         
00042314 bl        #0xa4054                                         ; _MSHookMessageEx
00042318 adrp      x0, #0xb8000                                    
0004231c add       x0, x0, #0xf07                                   ; 0xb8f07 | 'SBPasscodeNumberPadButton'
00042320 bl        #0xa4664                                         ; _objc_getClass
00042324 mov       x21, x0                                         
00042328 adrp      x3, #0xef000                                    
0004232c add       x3, x3, #0x4b8                                   ; 0xef4b8
00042330 adrp      x16, #0x42000                                   
00042334 add       x16, x16, #0x574                                 ; 0x42574
00042338 paciza    x16                                             
0004233c mov       x2, x16                                         
00042340 mov       x1, x19                                         
00042344 bl        #0xa4054                                         ; _MSHookMessageEx
00042348 adrp      x3, #0xef000                                    
0004234c add       x3, x3, #0x4c0                                   ; 0xef4c0
00042350 adrp      x16, #0x42000                                   
00042354 add       x16, x16, #0x5e8                                 ; 0x425e8
00042358 paciza    x16                                             
0004235c mov       x2, x16                                         
00042360 mov       x0, x21                                         
00042364 mov       x1, x20                                         
00042368 bl        #0xa4054                                         ; _MSHookMessageEx
0004236c adrp      x8, #0xeb000                                    
00042370 ldr       x1, [x8, #0xfa8]                                 ; 0xebfa8 | SEL setHighlighted:
00042374 adrp      x3, #0xef000                                    
00042378 add       x3, x3, #0x4c8                                   ; 0xef4c8
0004237c adrp      x16, #0x42000                                   
00042380 add       x16, x16, #0x628                                 ; 0x42628
00042384 paciza    x16                                             
00042388 mov       x2, x16                                         
0004238c mov       x0, x21                                         
00042390 bl        #0xa4054                                         ; _MSHookMessageEx
00042394 adrp      x0, #0xb8000                                    
00042398 add       x0, x0, #0x24a                                   ; 0xb824a | 'CSPasscodeBackgroundView'
0004239c bl        #0xa4664                                         ; _objc_getClass
000423a0 mov       x21, x0                                         
000423a4 adrp      x3, #0xef000                                    
000423a8 add       x3, x3, #0x4d0                                   ; 0xef4d0
000423ac adrp      x16, #0x42000                                   
000423b0 add       x16, x16, #0x670                                 ; 0x42670
000423b4 paciza    x16                                             
000423b8 mov       x2, x16                                         
000423bc mov       x1, x19                                         
000423c0 bl        #0xa4054                                         ; _MSHookMessageEx
000423c4 adrp      x3, #0xef000                                    
000423c8 add       x3, x3, #0x4d8                                   ; 0xef4d8
000423cc adrp      x16, #0x42000                                   
000423d0 add       x16, x16, #0x6b4                                 ; 0x426b4
000423d4 paciza    x16                                             
000423d8 mov       x2, x16                                         
000423dc mov       x0, x21                                         
000423e0 mov       x1, x20                                         
000423e4 bl        #0xa4054                                         ; _MSHookMessageEx
000423e8 adrp      x8, #0xea000                                    
000423ec ldr       x1, [x8, #0x9c0]                                 ; 0xea9c0 | SEL setHidden:
000423f0 adrp      x3, #0xef000                                    
000423f4 add       x3, x3, #0x4e0                                   ; 0xef4e0
000423f8 adrp      x16, #0x42000                                   
000423fc add       x16, x16, #0x6f8                                 ; 0x426f8
00042400 paciza    x16                                             
00042404 mov       x2, x16                                         
00042408 mov       x0, x21                                         
0004240c ldp       x29, x30, [sp, #0x20]                           
00042410 ldp       x20, x19, [sp, #0x10]                           
00042414 ldp       x22, x21, [sp], #0x30                           
00042418 autibsp                                                   
0004241c eor       x16, x30, x30, lsl #1                           
00042420 tbz       x16, #0x3e, #0x42428                            
00042424 brk       #0xc471                                         
00042428 b         #0xa4054                                         ; _MSHookMessageEx
