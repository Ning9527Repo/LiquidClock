# arm64e unslid VA 0x74400..0x745e4; FAT offset 0xfc000
00074400 pacibsp                                                   
00074404 stp       x20, x19, [sp, #-0x20]!                         
00074408 stp       x29, x30, [sp, #0x10]                           
0007440c add       x29, sp, #0x10                                  
00074410 adrp      x0, #0xba000                                    
00074414 add       x0, x0, #0x50e                                   ; 0xba50e | 'CSCoverSheetViewController'
00074418 bl        #0xa4664                                         ; _objc_getClass
0007441c mov       x19, x0                                         
00074420 adrp      x8, #0xec000                                    
00074424 ldr       x1, [x8, #0xe0]                                  ; 0xec0e0 | SEL viewDidLoad
00074428 adrp      x3, #0xef000                                    
0007442c add       x3, x3, #0x7a0                                   ; 0xef7a0
00074430 adrp      x16, #0x74000                                   
00074434 add       x16, x16, #0x5e4                                 ; 0x745e4
00074438 paciza    x16                                             
0007443c mov       x2, x16                                         
00074440 bl        #0xa4054                                         ; _MSHookMessageEx
00074444 adrp      x8, #0xec000                                    
00074448 ldr       x1, [x8, #0x310]                                 ; 0xec310 | SEL _updateComplicationsContainerView
0007444c adrp      x3, #0xef000                                    
00074450 add       x3, x3, #0x7a8                                   ; 0xef7a8
00074454 adrp      x16, #0x74000                                   
00074458 add       x16, x16, #0x660                                 ; 0x74660
0007445c paciza    x16                                             
00074460 mov       x2, x16                                         
00074464 mov       x0, x19                                         
00074468 bl        #0xa4054                                         ; _MSHookMessageEx
0007446c adrp      x8, #0xec000                                    
00074470 ldr       x1, [x8, #0x318]                                 ; 0xec318 | SEL listMinY
00074474 adrp      x3, #0xef000                                    
00074478 add       x3, x3, #0x7b0                                   ; 0xef7b0
0007447c adrp      x16, #0x74000                                   
00074480 add       x16, x16, #0x700                                 ; 0x74700
00074484 paciza    x16                                             
00074488 mov       x2, x16                                         
0007448c mov       x0, x19                                         
00074490 bl        #0xa4054                                         ; _MSHookMessageEx
00074494 adrp      x0, #0xb8000                                    
00074498 add       x0, x0, #0x183                                   ; 0xb8183 | 'CSCoverSheetView'
0007449c bl        #0xa4664                                         ; _objc_getClass
000744a0 mov       x19, x0                                         
000744a4 adrp      x8, #0xeb000                                    
000744a8 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
000744ac adrp      x3, #0xef000                                    
000744b0 add       x3, x3, #0x7b8                                   ; 0xef7b8
000744b4 adrp      x16, #0x74000                                   
000744b8 add       x16, x16, #0x7b4                                 ; 0x747b4
000744bc paciza    x16                                             
000744c0 mov       x2, x16                                         
000744c4 bl        #0xa4054                                         ; _MSHookMessageEx
000744c8 adrp      x8, #0xec000                                    
000744cc ldr       x1, [x8, #0x320]                                 ; 0xec320 | SEL _layoutDateView
000744d0 adrp      x3, #0xef000                                    
000744d4 add       x3, x3, #0x7c0                                   ; 0xef7c0
000744d8 adrp      x16, #0x74000                                   
000744dc add       x16, x16, #0x814                                 ; 0x74814
000744e0 paciza    x16                                             
000744e4 mov       x2, x16                                         
000744e8 mov       x0, x19                                         
000744ec bl        #0xa4054                                         ; _MSHookMessageEx
000744f0 adrp      x0, #0xba000                                    
000744f4 add       x0, x0, #0x6fc                                   ; 0xba6fc | 'CSComplicationManager'
000744f8 bl        #0xa4664                                         ; _objc_getClass
000744fc adrp      x8, #0xec000                                    
00074500 ldr       x1, [x8, #0x328]                                 ; 0xec328 | SEL _updateComplicationsForActivePosterConfiguration
00074504 adrp      x3, #0xef000                                    
00074508 add       x3, x3, #0x7c8                                   ; 0xef7c8
0007450c adrp      x16, #0x74000                                   
00074510 add       x16, x16, #0x874                                 ; 0x74874
00074514 paciza    x16                                             
00074518 mov       x2, x16                                         
0007451c bl        #0xa4054                                         ; _MSHookMessageEx
00074520 adrp      x0, #0xba000                                    
00074524 add       x0, x0, #0x712                                   ; 0xba712 | 'CSProminentDisplayViewController'
00074528 bl        #0xa4664                                         ; _objc_getClass
0007452c mov       x19, x0                                         
00074530 adrp      x8, #0xec000                                    
00074534 ldr       x1, [x8, #0x330]                                 ; 0xec330 | SEL _updateViewColors
00074538 adrp      x3, #0xef000                                    
0007453c add       x3, x3, #0x7d0                                   ; 0xef7d0
00074540 adrp      x16, #0x74000                                   
00074544 add       x16, x16, #0x90c                                 ; 0x7490c
00074548 paciza    x16                                             
0007454c mov       x2, x16                                         
00074550 bl        #0xa4054                                         ; _MSHookMessageEx
00074554 adrp      x8, #0xec000                                    
00074558 ldr       x1, [x8, #0x338]                                 ; 0xec338 | SEL setVibrancyContentType:
0007455c adrp      x3, #0xef000                                    
00074560 add       x3, x3, #0x7d8                                   ; 0xef7d8
00074564 adrp      x16, #0x74000                                   
00074568 add       x16, x16, #0x954                                 ; 0x74954
0007456c paciza    x16                                             
00074570 mov       x2, x16                                         
00074574 mov       x0, x19                                         
00074578 bl        #0xa4054                                         ; _MSHookMessageEx
0007457c adrp      x8, #0xec000                                    
00074580 ldr       x1, [x8, #0x340]                                 ; 0xec340 | SEL interactiveTransition:didUpdate:
00074584 adrp      x3, #0xef000                                    
00074588 add       x3, x3, #0x7e0                                   ; 0xef7e0
0007458c adrp      x16, #0x74000                                   
00074590 add       x16, x16, #0x99c                                 ; 0x7499c
00074594 paciza    x16                                             
00074598 mov       x2, x16                                         
0007459c mov       x0, x19                                         
000745a0 bl        #0xa4054                                         ; _MSHookMessageEx
000745a4 adrp      x8, #0xec000                                    
000745a8 ldr       x1, [x8, #0x348]                                 ; 0xec348 | SEL setContentAlpha:forElements:
000745ac adrp      x3, #0xef000                                    
000745b0 add       x3, x3, #0x7e8                                   ; 0xef7e8
000745b4 adrp      x16, #0x74000                                   
000745b8 add       x16, x16, #0x9e4                                 ; 0x749e4
000745bc paciza    x16                                             
000745c0 mov       x2, x16                                         
000745c4 mov       x0, x19                                         
000745c8 ldp       x29, x30, [sp, #0x10]                           
000745cc ldp       x20, x19, [sp], #0x20                           
000745d0 autibsp                                                   
000745d4 eor       x16, x30, x30, lsl #1                           
000745d8 tbz       x16, #0x3e, #0x745e0                            
000745dc brk       #0xc471                                         
000745e0 b         #0xa4054                                         ; _MSHookMessageEx
