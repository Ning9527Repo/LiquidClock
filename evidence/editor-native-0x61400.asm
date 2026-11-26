; Uploaded sample arm64e unslid VA 0x61400..0x61a80
00061400 fmov      d13, d3                                      
00061404 ldr       d0, [sp, #0xc8]                              
00061408 ldp       d2, d1, [sp, #0xa0]                          
0006140c ldr       d3, [sp, #0x98]                              
00061410 bl        #0xa3e84                                      ; _CGRectGetMaxY
00061414 fmov      d9, d0                                       
00061418 ldr       x0, [sp, #0xe0]                              
0006141c bl        #0xb1920                                      ; objc_msgSend$view
00061420 mov       x29, x29                                     
00061424 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061428 mov       x23, x0                                      
0006142c bl        #0xab780                                      ; objc_msgSend$safeAreaInsets
00061430 fmov      d8, d2                                       
00061434 mov       x0, x23                                      
00061438 bl        #0xa46f4                                      ; _objc_release
0006143c ldr       d0, [sp, #0xb8]                              
00061440 fadd      d0, d0, d12                                  
00061444 fsub      d1, d14, d10                                 
00061448 fsub      d2, d1, d15                                  
0006144c movi      d1, #0000000000000000                        
00061450 fmaxnm    d2, d2, d1                                   
00061454 stp       d2, d0, [sp, #0xb0]                          
00061458 ldp       d1, d3, [sp, #0x40]                          
0006145c bl        #0xa3e84                                      ; _CGRectGetMaxY
00061460 fmov      d10, d0                                      
00061464 adrp      x8, #0xbd000                                 
00061468 ldr       d0, [x8, #0xdc0]                             
0006146c fdiv      d15, d11, d0                                 
00061470 adrp      x8, #0xbd000                                 
00061474 ldr       d0, [x8, #0xdd0]                             
00061478 fmul      d0, d15, d0                                  
0006147c ldr       x0, [sp, #0xe8]                              
00061480 bl        #0xadba0                                      ; objc_msgSend$setMinimumHeight:
00061484 ldr       x0, [sp, #0xe8]                              
00061488 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
0006148c adrp      x8, #0xbd000                                 
00061490 ldr       d1, [x8, #0xdc8]                             
00061494 fmaxnm    d3, d13, d1                                  
00061498 fsub      d1, d9, d8                                   
0006149c mov       x8, #-0x3fa8000000000000                     
000614a0 fmov      d2, x8                                       
000614a4 fadd      d1, d1, d2                                   
000614a8 str       d3, [sp, #0x88]                              
000614ac fsub      d14, d1, d3                                  
000614b0 fmov      d1, #5.00000000                              
000614b4 fadd      d2, d10, d1                                  
000614b8 adrp      x8, #0xbd000                                 
000614bc ldr       d1, [x8, #0xdd8]                             
000614c0 fmul      d1, d15, d1                                  
000614c4 str       d2, [sp, #0x90]                              
000614c8 fsub      d2, d14, d2                                  
000614cc fmov      d3, #-30.00000000                            
000614d0 fadd      d2, d2, d3                                   
000614d4 fcmp      d1, d2                                       
000614d8 fcsel     d1, d1, d2, mi                               
000614dc fcmp      d0, d1                                       
000614e0 fcsel     d0, d1, d0, mi                               
000614e4 ldr       x0, [sp, #0xe8]                              
000614e8 bl        #0xadaa0                                      ; objc_msgSend$setMaximumHeight:
000614ec ldr       x0, [sp, #0xe8]                              
000614f0 bl        #0xa6a80                                      ; objc_msgSend$cropHint
000614f4 mov       x29, x29                                     
000614f8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000614fc cbz       x0, #0x61508                                 
00061500 bl        #0xa46f4                                      ; _objc_release
00061504 b         #0x615e4                                     
00061508 adrp      x8, #0xec000                                 
0006150c ldr       x0, [x8, #0x688]                              ; &_OBJC_CLASS_$_NSBundle
00061510 bl        #0xa9920                                      ; objc_msgSend$mainBundle
00061514 mov       x29, x29                                     
00061518 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006151c mov       x23, x0                                      
00061520 bl        #0xa5ca0                                      ; objc_msgSend$bundleIdentifier
00061524 mov       x29, x29                                     
00061528 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006152c mov       x25, x0                                      
00061530 adrp      x2, #0xdc000                                 
00061534 add       x2, x2, #0x6b0                                ; @'com.apple.PhotosUIPrivate.PhotosPosterProvider'
00061538 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
0006153c mov       x24, x0                                      
00061540 mov       x0, x25                                      
00061544 bl        #0xa46f4                                      ; _objc_release
00061548 mov       x0, x23                                      
0006154c bl        #0xa46f4                                      ; _objc_release
00061550 cbz       w24, #0x615e4                                
00061554 mov       w8, #0x10                                    
00061558 str       x8, [sp, #0x228]                             
0006155c adrp      x1, #0xba000                                 
00061560 add       x1, x1, #0xd0d                                ; '_contentOverlayView'
00061564 ldr       x0, [sp, #0xe0]                              
00061568 bl        #0x633b0                                     
0006156c mov       x29, x29                                     
00061570 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061574 mov       x23, x0                                      
00061578 adrp      x8, #0xec000                                 
0006157c ldr       x0, [x8, #0x568]                              ; &_OBJC_CLASS_$_UILabel
00061580 bl        #0xa46b4                                      ; _objc_opt_class
00061584 mov       x1, x0                                       
00061588 add       x2, sp, #0x228                               
0006158c mov       x0, x23                                      
00061590 bl        #0x7af80                                     
00061594 mov       x29, x29                                     
00061598 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006159c mov       x24, x0                                      
000615a0 ldr       x0, [sp, #0xe8]                              
000615a4 mov       x2, x24                                      
000615a8 bl        #0xac6c0                                      ; objc_msgSend$setCropHint:
000615ac mov       x0, x24                                      
000615b0 bl        #0xa46f4                                      ; _objc_release
000615b4 ldr       x0, [sp, #0xe8]                              
000615b8 bl        #0xa6a80                                      ; objc_msgSend$cropHint
000615bc mov       x29, x29                                     
000615c0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000615c4 mov       x24, x0                                      
000615c8 bl        #0xa7b00                                      ; objc_msgSend$frame
000615cc ldr       x0, [sp, #0xe8]                              
000615d0 bl        #0xadfe0                                      ; objc_msgSend$setOriginalCropHintFrame:
000615d4 mov       x0, x24                                      
000615d8 bl        #0xa46f4                                      ; _objc_release
000615dc mov       x0, x23                                      
000615e0 bl        #0xa46f4                                      ; _objc_release
000615e4 ldr       x0, [sp, #0xe8]                              
000615e8 bl        #0xa6a80                                      ; objc_msgSend$cropHint
000615ec mov       x29, x29                                     
000615f0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000615f4 mov       x23, x0                                      
000615f8 cbz       x0, #0x6168c                                 
000615fc ldr       x0, [sp, #0xe8]                              
00061600 bl        #0xa9d40                                      ; objc_msgSend$modern
00061604 mov       x24, x0                                      
00061608 mov       x0, x23                                      
0006160c bl        #0xa46f4                                      ; _objc_release
00061610 tbnz      w24, #0, #0x6168c                            
00061614 ldr       x0, [sp, #0xe8]                              
00061618 bl        #0xa6a80                                      ; objc_msgSend$cropHint
0006161c mov       x29, x29                                     
00061620 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061624 mov       x23, x0                                      
00061628 adrp      x8, #0xee000                                 
0006162c ldr       x1, [x8, #0x908]                             
00061630 mov       x2, #0                                       
00061634 mov       w3, #1                                       
00061638 bl        #0xa4754                                      ; _objc_setAssociatedObject
0006163c mov       x0, x23                                      
00061640 bl        #0xa46f4                                      ; _objc_release
00061644 ldr       x0, [sp, #0xe8]                              
00061648 bl        #0xaa400                                      ; objc_msgSend$originalCropHintFrame
0006164c fmov      d8, d0                                       
00061650 fmov      d9, d1                                       
00061654 fmov      d10, d2                                      
00061658 fmov      d11, d3                                      
0006165c ldr       x0, [sp, #0xe8]                              
00061660 bl        #0xa6a80                                      ; objc_msgSend$cropHint
00061664 mov       x29, x29                                     
00061668 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006166c mov       x23, x0                                      
00061670 fmov      d0, d8                                       
00061674 fmov      d1, d9                                       
00061678 fmov      d2, d10                                      
0006167c fmov      d3, d11                                      
00061680 bl        #0xace60                                      ; objc_msgSend$setFrame:
00061684 mov       x0, x23                                      
00061688 bl        #0xa46f4                                      ; _objc_release
0006168c ldr       x0, [sp, #0xe8]                              
00061690 bl        #0xa6a80                                      ; objc_msgSend$cropHint
00061694 mov       x29, x29                                     
00061698 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006169c mov       x23, x0                                      
000616a0 adrp      x26, #0xec000                                
000616a4 cbz       x0, #0x617e4                                 
000616a8 ldr       x0, [sp, #0xe8]                              
000616ac bl        #0xa9d40                                      ; objc_msgSend$modern
000616b0 mov       x24, x0                                      
000616b4 mov       x0, x23                                      
000616b8 bl        #0xa46f4                                      ; _objc_release
000616bc cbz       w24, #0x617e4                                
000616c0 ldr       x0, [sp, #0xe8]                              
000616c4 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
000616c8 fmov      d8, d0                                       
000616cc ldr       x0, [sp, #0xe0]                              
000616d0 bl        #0xb1920                                      ; objc_msgSend$view
000616d4 mov       x29, x29                                     
000616d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000616dc mov       x23, x0                                      
000616e0 ldr       d0, [sp, #0xc8]                              
000616e4 ldp       d2, d1, [sp, #0xa0]                          
000616e8 ldr       d3, [sp, #0x98]                              
000616ec bl        #0xa3e94                                      ; _CGRectGetMidX
000616f0 fmov      d9, d0                                       
000616f4 ldr       x0, [sp, #0xe8]                              
000616f8 bl        #0xa6a80                                      ; objc_msgSend$cropHint
000616fc mov       x29, x29                                     
00061700 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061704 mov       x24, x0                                      
00061708 bl        #0xb0760                                      ; objc_msgSend$superview
0006170c mov       x29, x29                                     
00061710 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061714 mov       x25, x0                                      
00061718 ldr       d0, [sp, #0x90]                              
0006171c fadd      d0, d0, d8                                   
00061720 fmov      d1, #20.00000000                             
00061724 fadd      d0, d0, d1                                   
00061728 fadd      d0, d14, d0                                  
0006172c fmov      d1, #0.50000000                              
00061730 fmul      d1, d0, d1                                   
00061734 mov       x0, x23                                      
00061738 fmov      d0, d9                                       
0006173c mov       x2, x25                                      
00061740 bl        #0xa6860                                      ; objc_msgSend$convertPoint:toView:
00061744 fmov      d8, d0                                       
00061748 fmov      d9, d1                                       
0006174c mov       x0, x25                                      
00061750 bl        #0xa46f4                                      ; _objc_release
00061754 mov       x0, x24                                      
00061758 bl        #0xa46f4                                      ; _objc_release
0006175c mov       x0, x23                                      
00061760 bl        #0xa46f4                                      ; _objc_release
00061764 ldr       x0, [sp, #0xe8]                              
00061768 bl        #0xa6a80                                      ; objc_msgSend$cropHint
0006176c mov       x29, x29                                     
00061770 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061774 mov       x23, x0                                      
00061778 adrp      x8, #0xee000                                 
0006177c ldr       x25, [x8, #0x908]                            
00061780 ldr       x0, [x26, #0x4e8]                             ; &_OBJC_CLASS_$_NSNumber
00061784 fmov      d0, d9                                       
00061788 bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
0006178c mov       x29, x29                                     
00061790 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061794 mov       x24, x0                                      
00061798 mov       x0, x23                                      
0006179c mov       x1, x25                                      
000617a0 mov       x2, x24                                      
000617a4 mov       w3, #1                                       
000617a8 bl        #0xa4754                                      ; _objc_setAssociatedObject
000617ac mov       x0, x24                                      
000617b0 bl        #0xa46f4                                      ; _objc_release
000617b4 mov       x0, x23                                      
000617b8 bl        #0xa46f4                                      ; _objc_release
000617bc ldr       x0, [sp, #0xe8]                              
000617c0 bl        #0xa6a80                                      ; objc_msgSend$cropHint
000617c4 mov       x29, x29                                     
000617c8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000617cc mov       x23, x0                                      
000617d0 fmov      d0, d8                                       
000617d4 fmov      d1, d9                                       
000617d8 bl        #0xac1a0                                      ; objc_msgSend$setCenter:
000617dc mov       x0, x23                                      
000617e0 bl        #0xa46f4                                      ; _objc_release
000617e4 ldr       x0, [sp, #0xe8]                              
000617e8 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
000617ec fmov      d8, d0                                       
000617f0 ldr       x0, [sp, #0xe8]                              
000617f4 bl        #0xa7080                                      ; objc_msgSend$displayProgress
000617f8 fmov      d10, d0                                      
000617fc ldr       x0, [sp, #0xe8]                              
00061800 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
00061804 fmov      d11, d0                                      
00061808 ldr       x0, [sp, #0xe8]                              
0006180c bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
00061810 fmov      d12, d0                                      
00061814 ldr       x0, [sp, #0xe8]                              
00061818 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
0006181c fmov      d13, #20.00000000                            
00061820 ldr       d1, [sp, #0x90]                              
00061824 fadd      d0, d1, d0                                   
00061828 fadd      d0, d0, d13                                  
0006182c fmov      d1, #8.00000000                              
00061830 fmadd     d0, d15, d1, d0                              
00061834 fcmp      d14, d0                                      
00061838 fcsel     d9, d14, d0, mi                              
0006183c ldr       x0, [sp, #0xe8]                              
00061840 bl        #0xa9d40                                      ; objc_msgSend$modern
00061844 tbz       w0, #0, #0x61864                             
00061848 fsub      d0, d11, d12                                 
0006184c fmadd     d0, d10, d0, d8                              
00061850 fadd      d1, d0, d13                                  
00061854 ldp       d0, d2, [sp, #0xb0]                          
00061858 stp       d2, d1, [sp, #0x98]                          
0006185c str       d0, [sp, #0x78]                              
00061860 b         #0x6194c                                     
00061864 ldr       x0, [sp, #0xd0]                              
00061868 bl        #0xb0760                                      ; objc_msgSend$superview
0006186c mov       x29, x29                                     
00061870 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061874 mov       x23, x0                                      
00061878 ldr       x0, [sp, #0xe8]                              
0006187c bl        #0xaa5e0                                      ; objc_msgSend$originalTimeFrame
00061880 fmov      d8, d0                                       
00061884 fmov      d9, d1                                       
00061888 fmov      d10, d2                                      
0006188c fmov      d11, d3                                      
00061890 ldr       x0, [sp, #0xe0]                              
00061894 bl        #0xb1920                                      ; objc_msgSend$view
00061898 mov       x29, x29                                     
0006189c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000618a0 mov       x24, x0                                      
000618a4 mov       x0, x23                                      
000618a8 fmov      d0, d8                                       
000618ac fmov      d1, d9                                       
000618b0 fmov      d2, d10                                      
000618b4 fmov      d3, d11                                      
000618b8 mov       x2, x24                                      
000618bc bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
000618c0 stp       d1, d0, [sp, #0x90]                          
000618c4 str       d2, [sp, #0x78]                              
000618c8 str       d3, [sp, #0xa0]                              
000618cc mov       x0, x24                                      
000618d0 bl        #0xa46f4                                      ; _objc_release
000618d4 mov       x0, x23                                      
000618d8 bl        #0xa46f4                                      ; _objc_release
000618dc ldr       x0, [sp, #0xd8]                              
000618e0 bl        #0xb0760                                      ; objc_msgSend$superview
000618e4 mov       x29, x29                                     
000618e8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000618ec mov       x23, x0                                      
000618f0 ldr       x0, [sp, #0xe8]                              
000618f4 bl        #0xaa620                                      ; objc_msgSend$originalWidgetsFrame
000618f8 fmov      d8, d0                                       
000618fc fmov      d9, d1                                       
00061900 fmov      d10, d2                                      
00061904 fmov      d11, d3                                      
00061908 ldr       x0, [sp, #0xe0]                              
0006190c bl        #0xb1920                                      ; objc_msgSend$view
00061910 mov       x29, x29                                     
00061914 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061918 mov       x24, x0                                      
0006191c mov       x0, x23                                      
00061920 fmov      d0, d8                                       
00061924 fmov      d1, d9                                       
00061928 fmov      d2, d10                                      
0006192c fmov      d3, d11                                      
00061930 mov       x2, x24                                      
00061934 bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
00061938 fmov      d9, d1                                       
0006193c mov       x0, x24                                      
00061940 bl        #0xa46f4                                      ; _objc_release
00061944 mov       x0, x23                                      
00061948 bl        #0xa46f4                                      ; _objc_release
0006194c ldr       x0, [sp, #0xe8]                              
00061950 bl        #0xa7300                                      ; objc_msgSend$draggingWidgets
00061954 cbz       w0, #0x61974                                 
00061958 ldr       x0, [sp, #0xe8]                              
0006195c bl        #0xb1be0                                      ; objc_msgSend$widgetDragTop
00061960 fcmp      d9, d0                                       
00061964 fcsel     d0, d0, d9, mi                               
00061968 fcmp      d14, d0                                      
0006196c fcsel     d14, d14, d0, mi                             
00061970 b         #0x61990                                     
00061974 ldr       x0, [sp, #0xe8]                              
00061978 bl        #0xb1ca0                                      ; objc_msgSend$widgetsAtTop
0006197c tbnz      w0, #0, #0x6198c                             
00061980 ldr       x0, [sp, #0xe8]                              
00061984 bl        #0xb1c20                                      ; objc_msgSend$widgetPickerLayout
00061988 cbz       w0, #0x61990                                 
0006198c fmov      d14, d9                                      
00061990 ldr       x0, [sp, #0xe8]                              
00061994 bl        #0xb1ba0                                      ; objc_msgSend$widgetAnimationTarget
00061998 fabd      d0, d0, d14                                  
0006199c ldr       d1, [x27, #0x2e8]                            
000619a0 fcmp      d0, d1                                       
000619a4 b.le      #0x61a18                                     
000619a8 ldr       x0, [sp, #0xe8]                              
000619ac bl        #0xb1cc0                                      ; objc_msgSend$widgetsFrame
000619b0 bl        #0xa3ec4                                      ; _CGRectGetMinY
000619b4 ldr       x0, [sp, #0xe8]                              
000619b8 bl        #0xafac0                                      ; objc_msgSend$setWidgetAnimationFrom:
000619bc ldr       x0, [sp, #0xe8]                              
000619c0 fmov      d0, d14                                      
000619c4 bl        #0xafb00                                      ; objc_msgSend$setWidgetAnimationTarget:
000619c8 ldr       d0, [sp, #0x28]                              
000619cc ldr       w8, [sp, #0x74]                              
000619d0 tbnz      w8, #0, #0x619d8                             
000619d4 bl        #0xa39e4                                      ; _CACurrentMediaTime
000619d8 ldr       x0, [sp, #0xe8]                              
000619dc bl        #0xafae0                                      ; objc_msgSend$setWidgetAnimationStart:
000619e0 ldr       x0, [sp, #0xe8]                              
000619e4 bl        #0xb1cc0                                      ; objc_msgSend$widgetsFrame
000619e8 bl        #0xa3f24                                      ; _CGRectIsEmpty
000619ec tbnz      w0, #0, #0x61a0c                             
000619f0 ldr       x0, [sp, #0xe8]                              
000619f4 bl        #0xb1b40                                      ; objc_msgSend$widgetAnimationDuration
000619f8 fcmp      d0, #0.0                                     
000619fc b.le      #0x61a0c                                     
00061a00 bl        #0xa4124                                      ; _UIAccessibilityIsReduceMotionEnabled
00061a04 eor       w2, w0, #1                                   
00061a08 b         #0x61a10                                     
00061a0c mov       w2, #0                                       
00061a10 ldr       x0, [sp, #0xe8]                              
00061a14 bl        #0xafa80                                      ; objc_msgSend$setWidgetAnimating:
00061a18 ldr       x0, [sp, #0xe8]                              
00061a1c bl        #0xb1b20                                      ; objc_msgSend$widgetAnimating
00061a20 fmov      d8, d14                                      
00061a24 cbz       w0, #0x61aa0                                 
00061a28 bl        #0xa39e4                                      ; _CACurrentMediaTime
00061a2c fmov      d8, d0                                       
00061a30 ldr       x0, [sp, #0xe8]                              
00061a34 bl        #0xb1b80                                      ; objc_msgSend$widgetAnimationStart
00061a38 fmov      d10, d0                                      
00061a3c ldr       x0, [sp, #0xe8]                              
00061a40 bl        #0xb1b40                                      ; objc_msgSend$widgetAnimationDuration
00061a44 fsub      d1, d8, d10                                  
00061a48 fdiv      d0, d1, d0                                   
00061a4c movi      d1, #0000000000000000                        
00061a50 fmaxnm    d0, d0, d1                                   
00061a54 fmov      d11, #1.00000000                             
00061a58 fcmp      d0, d11                                      
00061a5c fcsel     d10, d11, d0, gt                             
00061a60 ldr       x0, [sp, #0xe8]                              
00061a64 bl        #0xb1b60                                      ; objc_msgSend$widgetAnimationFrom
00061a68 fmov      d8, d0                                       
00061a6c ldr       x0, [sp, #0xe8]                              
00061a70 bl        #0xb1ba0                                      ; objc_msgSend$widgetAnimationTarget
00061a74 fsub      d1, d11, d10                                 
00061a78 fsub      d0, d8, d0                                   
00061a7c fmul      d0, d0, d1                                   
