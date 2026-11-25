# arm64e unslid VA 0x852c..0x8990; FAT offset 0xfc000
0000852c pacibsp                                                   
00008530 stp       x22, x21, [sp, #-0x30]!                         
00008534 stp       x20, x19, [sp, #0x10]                           
00008538 stp       x29, x30, [sp, #0x20]                           
0000853c add       x29, sp, #0x20                                  
00008540 sub       sp, sp, #0x420                                  
00008544 adrp      x8, #0xd4000                                    
00008548 ldr       x8, [x8, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
0000854c ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
00008550 stur      x8, [x29, #-0x28]                               
00008554 adrp      x0, #0xb6000                                    
00008558 add       x0, x0, #0x5d5                                   ; 0xb65d5 | 'UIView'
0000855c bl        #0xa4664                                         ; _objc_getClass
00008560 mov       x20, x0                                         
00008564 adrp      x8, #0xeb000                                    
00008568 ldr       x1, [x8, #0xf48]                                 ; 0xebf48 | SEL didMoveToSuperview
0000856c adrp      x3, #0xee000                                    
00008570 add       x3, x3, #0xb30                                   ; 0xeeb30
00008574 adrp      x16, #0x8000                                    
00008578 add       x16, x16, #0x990                                 ; 0x8990
0000857c paciza    x16                                             
00008580 mov       x2, x16                                         
00008584 bl        #0xa4054                                         ; _MSHookMessageEx
00008588 adrp      x8, #0xeb000                                    
0000858c ldr       x19, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
00008590 adrp      x3, #0xee000                                    
00008594 add       x3, x3, #0xb38                                   ; 0xeeb38
00008598 adrp      x16, #0x8000                                    
0000859c add       x16, x16, #0x9d0                                 ; 0x89d0
000085a0 paciza    x16                                             
000085a4 mov       x2, x16                                         
000085a8 mov       x0, x20                                         
000085ac mov       x1, x19                                         
000085b0 bl        #0xa4054                                         ; _MSHookMessageEx
000085b4 adrp      x8, #0xea000                                    
000085b8 ldr       x1, [x8, #0x4f8]                                 ; 0xea4f8 | SEL setBackgroundColor:
000085bc adrp      x3, #0xee000                                    
000085c0 add       x3, x3, #0xb40                                   ; 0xeeb40
000085c4 adrp      x16, #0x8000                                    
000085c8 add       x16, x16, #0xa10                                 ; 0x8a10
000085cc paciza    x16                                             
000085d0 mov       x2, x16                                         
000085d4 mov       x0, x20                                         
000085d8 bl        #0xa4054                                         ; _MSHookMessageEx
000085dc adrp      x0, #0xb6000                                    
000085e0 add       x0, x0, #0x5dc                                   ; 0xb65dc | 'UILabel'
000085e4 bl        #0xa4664                                         ; _objc_getClass
000085e8 mov       x20, x0                                         
000085ec adrp      x8, #0xeb000                                    
000085f0 ldr       x1, [x8, #0xf50]                                 ; 0xebf50 | SEL textRectForBounds:limitedToNumberOfLines:
000085f4 adrp      x3, #0xee000                                    
000085f8 add       x3, x3, #0xb48                                   ; 0xeeb48
000085fc adrp      x16, #0x8000                                    
00008600 add       x16, x16, #0xb34                                 ; 0x8b34
00008604 paciza    x16                                             
00008608 mov       x2, x16                                         
0000860c bl        #0xa4054                                         ; _MSHookMessageEx
00008610 adrp      x8, #0xeb000                                    
00008614 ldr       x1, [x8, #0xf58]                                 ; 0xebf58 | SEL drawTextInRect:
00008618 adrp      x3, #0xee000                                    
0000861c add       x3, x3, #0xb50                                   ; 0xeeb50
00008620 adrp      x16, #0x8000                                    
00008624 add       x16, x16, #0xbfc                                 ; 0x8bfc
00008628 paciza    x16                                             
0000862c mov       x2, x16                                         
00008630 mov       x0, x20                                         
00008634 bl        #0xa4054                                         ; _MSHookMessageEx
00008638 adrp      x0, #0xb6000                                    
0000863c add       x0, x0, #0x5e4                                   ; 0xb65e4 | '_UIInterfaceActionGroupHeaderScrollView'
00008640 bl        #0xa4664                                         ; _objc_getClass
00008644 mov       x21, x0                                         
00008648 adrp      x8, #0xeb000                                    
0000864c ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
00008650 adrp      x3, #0xee000                                    
00008654 add       x3, x3, #0xb58                                   ; 0xeeb58
00008658 adrp      x16, #0x8000                                    
0000865c add       x16, x16, #0xcb4                                 ; 0x8cb4
00008660 paciza    x16                                             
00008664 mov       x2, x16                                         
00008668 mov       x1, x20                                         
0000866c bl        #0xa4054                                         ; _MSHookMessageEx
00008670 adrp      x3, #0xee000                                    
00008674 add       x3, x3, #0xb60                                   ; 0xeeb60
00008678 adrp      x16, #0x8000                                    
0000867c add       x16, x16, #0xcf4                                 ; 0x8cf4
00008680 paciza    x16                                             
00008684 mov       x2, x16                                         
00008688 mov       x0, x21                                         
0000868c mov       x1, x19                                         
00008690 bl        #0xa4054                                         ; _MSHookMessageEx
00008694 adrp      x0, #0xb6000                                    
00008698 add       x0, x0, #0x60c                                   ; 0xb660c | '_UIInterfaceActionCustomViewRepresentationView'
0000869c bl        #0xa4664                                         ; _objc_getClass
000086a0 mov       x21, x0                                         
000086a4 adrp      x8, #0xe9000                                    
000086a8 ldr       x1, [x8, #0x7f8]                                 ; 0xe97f8 | SEL intrinsicContentSize
000086ac adrp      x3, #0xee000                                    
000086b0 add       x3, x3, #0xb68                                   ; 0xeeb68
000086b4 adrp      x16, #0x8000                                    
000086b8 add       x16, x16, #0xd34                                 ; 0x8d34
000086bc paciza    x16                                             
000086c0 mov       x2, x16                                         
000086c4 bl        #0xa4054                                         ; _MSHookMessageEx
000086c8 adrp      x8, #0xeb000                                    
000086cc ldr       x1, [x8, #0x4d8]                                 ; 0xeb4d8 | SEL sizeThatFits:
000086d0 adrp      x3, #0xee000                                    
000086d4 add       x3, x3, #0xb70                                   ; 0xeeb70
000086d8 adrp      x16, #0x8000                                    
000086dc add       x16, x16, #0xda0                                 ; 0x8da0
000086e0 paciza    x16                                             
000086e4 mov       x2, x16                                         
000086e8 mov       x0, x21                                         
000086ec bl        #0xa4054                                         ; _MSHookMessageEx
000086f0 adrp      x8, #0xbd000                                    
000086f4 ldr       d0, [x8, #0x270]                                 ; 0xbd270
000086f8 str       q0, [sp]                                        
000086fc str       s0, [sp, #0x18]                                 
00008700 strb      wzr, [sp, #0x1c]                                
00008704 adrp      x8, #0xeb000                                    
00008708 ldr       x1, [x8, #0xf68]                                 ; 0xebf68 | SEL lg_alertActionPressChanged:
0000870c adrp      x16, #0x8000                                    
00008710 add       x16, x16, #0xe0c                                 ; 0x8e0c
00008714 paciza    x16                                             
00008718 mov       x2, x16                                         
0000871c add       x3, sp, #0x18                                   
00008720 mov       x0, x21                                         
00008724 bl        #0xa4254                                         ; _class_addMethod
00008728 ldr       q0, [sp]                                        
0000872c str       s0, [sp, #0x18]                                 
00008730 strb      wzr, [sp, #0x1c]                                
00008734 adrp      x8, #0xeb000                                    
00008738 ldr       x1, [x8, #0xf70]                                 ; 0xebf70 | SEL lg_alertActionHoverChanged:
0000873c adrp      x16, #0x8000                                    
00008740 add       x16, x16, #0xf20                                 ; 0x8f20
00008744 paciza    x16                                             
00008748 mov       x2, x16                                         
0000874c add       x3, sp, #0x18                                   
00008750 mov       x0, x21                                         
00008754 bl        #0xa4254                                         ; _class_addMethod
00008758 adrp      x8, #0xbd000                                    
0000875c ldr       d0, [x8, #0x278]                                 ; 0xbd278
00008760 str       s0, [sp, #0x18]                                 
00008764 mov       w8, #0x40                                       
00008768 strh      w8, [sp, #0x1c]                                 
0000876c adrp      x8, #0xeb000                                    
00008770 ldr       x1, [x8, #0xf78]                                 ; 0xebf78 | SEL gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:
00008774 adrp      x16, #0x8000                                    
00008778 add       x16, x16, #0xfbc                                 ; 0x8fbc
0000877c paciza    x16                                             
00008780 mov       x2, x16                                         
00008784 add       x3, sp, #0x18                                   
00008788 mov       x0, x21                                         
0000878c bl        #0xa4254                                         ; _class_addMethod
00008790 adrp      x3, #0xee000                                    
00008794 add       x3, x3, #0xb78                                   ; 0xeeb78
00008798 adrp      x16, #0x8000                                    
0000879c add       x16, x16, #0xfc4                                 ; 0x8fc4
000087a0 paciza    x16                                             
000087a4 mov       x2, x16                                         
000087a8 mov       x0, x21                                         
000087ac mov       x1, x20                                         
000087b0 bl        #0xa4054                                         ; _MSHookMessageEx
000087b4 adrp      x3, #0xee000                                    
000087b8 add       x3, x3, #0xb80                                   ; 0xeeb80
000087bc adrp      x16, #0x9000                                    
000087c0 add       x16, x16, #0x1dc                                 ; 0x91dc
000087c4 paciza    x16                                             
000087c8 mov       x2, x16                                         
000087cc mov       x0, x21                                         
000087d0 mov       x1, x19                                         
000087d4 bl        #0xa4054                                         ; _MSHookMessageEx
000087d8 adrp      x0, #0xb6000                                    
000087dc add       x0, x0, #0x63b                                   ; 0xb663b | '_UIAlertControllerActionView'
000087e0 bl        #0xa4664                                         ; _objc_getClass
000087e4 adrp      x3, #0xee000                                    
000087e8 add       x3, x3, #0xb88                                   ; 0xeeb88
000087ec adrp      x16, #0x9000                                    
000087f0 add       x16, x16, #0x21c                                 ; 0x921c
000087f4 paciza    x16                                             
000087f8 mov       x2, x16                                         
000087fc mov       x1, x19                                         
00008800 bl        #0xa4054                                         ; _MSHookMessageEx
00008804 adrp      x0, #0xb6000                                    
00008808 add       x0, x0, #0x658                                   ; 0xb6658 | '_UIInterfaceActionVibrantSeparatorView'
0000880c bl        #0xa4664                                         ; _objc_getClass
00008810 mov       x21, x0                                         
00008814 adrp      x3, #0xee000                                    
00008818 add       x3, x3, #0xb90                                   ; 0xeeb90
0000881c adrp      x16, #0x9000                                    
00008820 add       x16, x16, #0x284                                 ; 0x9284
00008824 paciza    x16                                             
00008828 mov       x2, x16                                         
0000882c mov       x1, x20                                         
00008830 bl        #0xa4054                                         ; _MSHookMessageEx
00008834 adrp      x3, #0xee000                                    
00008838 add       x3, x3, #0xb98                                   ; 0xeeb98
0000883c adrp      x16, #0x9000                                    
00008840 add       x16, x16, #0x308                                 ; 0x9308
00008844 paciza    x16                                             
00008848 mov       x2, x16                                         
0000884c mov       x0, x21                                         
00008850 mov       x1, x19                                         
00008854 bl        #0xa4054                                         ; _MSHookMessageEx
00008858 adrp      x8, #0xea000                                    
0000885c ldr       x1, [x8, #0x9c0]                                 ; 0xea9c0 | SEL setHidden:
00008860 adrp      x3, #0xee000                                    
00008864 add       x3, x3, #0xba0                                   ; 0xeeba0
00008868 adrp      x16, #0x9000                                    
0000886c add       x16, x16, #0x38c                                 ; 0x938c
00008870 paciza    x16                                             
00008874 mov       x2, x16                                         
00008878 mov       x0, x21                                         
0000887c bl        #0xa4054                                         ; _MSHookMessageEx
00008880 adrp      x8, #0xea000                                    
00008884 ldr       x1, [x8, #0x478]                                 ; 0xea478 | SEL setAlpha:
00008888 adrp      x3, #0xee000                                    
0000888c add       x3, x3, #0xba8                                   ; 0xeeba8
00008890 adrp      x16, #0x9000                                    
00008894 add       x16, x16, #0x408                                 ; 0x9408
00008898 paciza    x16                                             
0000889c mov       x2, x16                                         
000088a0 mov       x0, x21                                         
000088a4 bl        #0xa4054                                         ; _MSHookMessageEx
000088a8 adrp      x0, #0xb6000                                    
000088ac add       x0, x0, #0x67f                                   ; 0xb667f | 'UIAlertController'
000088b0 bl        #0xa4664                                         ; _objc_getClass
000088b4 mov       x19, x0                                         
000088b8 adrp      x8, #0xeb000                                    
000088bc ldr       x1, [x8, #0xf80]                                 ; 0xebf80 | SEL viewWillDisappear:
000088c0 adrp      x3, #0xee000                                    
000088c4 add       x3, x3, #0xbb0                                   ; 0xeebb0
000088c8 adrp      x16, #0x9000                                    
000088cc add       x16, x16, #0x48c                                 ; 0x948c
000088d0 paciza    x16                                             
000088d4 mov       x2, x16                                         
000088d8 bl        #0xa4054                                         ; _MSHookMessageEx
000088dc adrp      x8, #0xeb000                                    
000088e0 ldr       x1, [x8, #0xf88]                                 ; 0xebf88 | SEL viewDidAppear:
000088e4 adrp      x3, #0xee000                                    
000088e8 add       x3, x3, #0xbb8                                   ; 0xeebb8
000088ec adrp      x16, #0x9000                                    
000088f0 add       x16, x16, #0x558                                 ; 0x9558
000088f4 paciza    x16                                             
000088f8 mov       x2, x16                                         
000088fc mov       x0, x19                                         
00008900 bl        #0xa4054                                         ; _MSHookMessageEx
00008904 adrp      x8, #0xeb000                                    
00008908 ldr       x1, [x8, #0xf90]                                 ; 0xebf90 | SEL viewDidLayoutSubviews
0000890c adrp      x3, #0xee000                                    
00008910 add       x3, x3, #0xbc0                                   ; 0xeebc0
00008914 adrp      x16, #0x9000                                    
00008918 add       x16, x16, #0x5c8                                 ; 0x95c8
0000891c paciza    x16                                             
00008920 mov       x2, x16                                         
00008924 mov       x0, x19                                         
00008928 bl        #0xa4054                                         ; _MSHookMessageEx
0000892c adrp      x8, #0xeb000                                    
00008930 ldr       x1, [x8, #0xf98]                                 ; 0xebf98 | SEL viewDidDisappear:
00008934 adrp      x3, #0xee000                                    
00008938 add       x3, x3, #0xbc8                                   ; 0xeebc8
0000893c adrp      x16, #0x9000                                    
00008940 add       x16, x16, #0x674                                 ; 0x9674
00008944 paciza    x16                                             
00008948 mov       x2, x16                                         
0000894c mov       x0, x19                                         
00008950 bl        #0xa4054                                         ; _MSHookMessageEx
00008954 adrp      x0, #0xd4000                                    
00008958 add       x0, x0, #0xb60                                   ; 0xd4b60 | &__NSConcreteGlobalBlock
0000895c bl        #0x97e34                                         ; _lgObservePreferenceReload
00008960 ldur      x8, [x29, #-0x28]                               
00008964 adrp      x9, #0xd4000                                    
00008968 ldr       x9, [x9, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
0000896c ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
00008970 cmp       x9, x8                                          
00008974 b.ne      #0x898c                                         
00008978 add       sp, sp, #0x420                                  
0000897c ldp       x29, x30, [sp, #0x20]                           
00008980 ldp       x20, x19, [sp, #0x10]                           
00008984 ldp       x22, x21, [sp], #0x30                           
00008988 retab                                                     
0000898c bl        #0xa41d4                                         ; ___stack_chk_fail
