; Uploaded sample arm64e unslid VA 0x611e0..0x61404
000611e0 bl        #0xaaba0                                      ; objc_msgSend$presentationLayer
000611e4 mov       x29, x29                                     
000611e8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000611ec str       x0, [sp, #0x18]                              
000611f0 mov       x0, x23                                      
000611f4 bl        #0xa46f4                                      ; _objc_release
000611f8 ldr       x0, [sp, #0x18]                              
000611fc cbz       x0, #0x6120c                                 
00061200 bl        #0xaa9e0                                      ; objc_msgSend$position
00061204 stp       d1, d0, [sp, #8]                             
00061208 b         #0x61230                                     
0006120c ldr       x0, [sp, #0xd8]                              
00061210 bl        #0xa91e0                                      ; objc_msgSend$layer
00061214 mov       x29, x29                                     
00061218 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006121c mov       x23, x0                                      
00061220 bl        #0xaa9e0                                      ; objc_msgSend$position
00061224 stp       d1, d0, [sp, #8]                             
00061228 mov       x0, x23                                      
0006122c bl        #0xa46f4                                      ; _objc_release
00061230 ldr       w8, [sp, #0x84]                              
00061234 tbnz      w8, #0, #0x61260                             
00061238 ldr       x0, [sp, #0xd8]                              
0006123c bl        #0xa91e0                                      ; objc_msgSend$layer
00061240 mov       x29, x29                                     
00061244 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061248 mov       x23, x0                                      
0006124c adrp      x2, #0xdc000                                 
00061250 add       x2, x2, #0x690                                ; @'lgWidgetPickerMove'
00061254 bl        #0xab1a0                                      ; objc_msgSend$removeAnimationForKey:
00061258 mov       x0, x23                                      
0006125c bl        #0xa46f4                                      ; _objc_release
00061260 ldr       x0, [sp, #0xe8]                              
00061264 bl        #0xb1c20                                      ; objc_msgSend$widgetPickerLayout
00061268 adrp      x27, #0xbd000                                
0006126c ldr       w8, [sp, #0x84]                              
00061270 cmp       w8, w0                                       
00061274 b.eq      #0x61304                                     
00061278 ldr       x0, [sp, #0xe8]                              
0006127c bl        #0xa7080                                      ; objc_msgSend$displayProgress
00061280 fmov      d8, d0                                       
00061284 ldr       x0, [sp, #0xe8]                              
00061288 ldr       w2, [sp, #0x84]                              
0006128c bl        #0xafb60                                      ; objc_msgSend$setWidgetPickerLayout:
00061290 ldr       x0, [sp, #0xe8]                              
00061294 fmov      d0, d8                                       
00061298 bl        #0xac240                                      ; objc_msgSend$setClockAnimationFrom:
0006129c ldr       d0, [sp, #0x28]                              
000612a0 ldr       w8, [sp, #0x74]                              
000612a4 tbnz      w8, #0, #0x612ac                             
000612a8 bl        #0xa39e4                                      ; _CACurrentMediaTime
000612ac ldr       x0, [sp, #0xe8]                              
000612b0 bl        #0xac260                                      ; objc_msgSend$setClockAnimationStart:
000612b4 bl        #0xa4124                                      ; _UIAccessibilityIsReduceMotionEnabled
000612b8 tbz       w0, #0, #0x612c8                             
000612bc mov       w2, #0                                       
000612c0 ldr       x0, [sp, #0xe8]                              
000612c4 b         #0x612f0                                     
000612c8 movi      d0, #0000000000000000                        
000612cc ldr       x0, [sp, #0xe8]                              
000612d0 ldr       w8, [sp, #0x84]                              
000612d4 tbnz      w8, #0, #0x612e0                             
000612d8 bl        #0xaade0                                      ; objc_msgSend$progress
000612dc ldr       x0, [sp, #0xe8]                              
000612e0 fabd      d0, d8, d0                                   
000612e4 ldr       d1, [x27, #0x2e8]                            
000612e8 fcmp      d0, d1                                       
000612ec cset      w2, gt                                       
000612f0 bl        #0xac220                                      ; objc_msgSend$setClockAnimating:
000612f4 adrp      x8, #0xbd000                                 
000612f8 ldr       d0, [x8, #0x390]                             
000612fc ldr       x0, [sp, #0xe8]                              
00061300 bl        #0xafaa0                                      ; objc_msgSend$setWidgetAnimationDuration:
00061304 ldr       x0, [sp, #0xe0]                              
00061308 bl        #0xb1920                                      ; objc_msgSend$view
0006130c mov       x29, x29                                     
00061310 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061314 mov       x23, x0                                      
00061318 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006131c str       d0, [sp, #0xc8]                              
00061320 stp       d2, d1, [sp, #0xa0]                          
00061324 str       d3, [sp, #0x98]                              
00061328 mov       x0, x23                                      
0006132c bl        #0xa46f4                                      ; _objc_release
00061330 ldr       x0, [sp, #0xe0]                              
00061334 bl        #0xa88a0                                      ; objc_msgSend$inlineComplicationReticleView
00061338 mov       x29, x29                                     
0006133c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00061340 str       x0, [sp, #0xc0]                              
00061344 ldr       x0, [sp, #0xc0]                              
00061348 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0006134c fmov      d8, d0                                       
00061350 fmov      d9, d1                                       
00061354 fmov      d10, d2                                      
00061358 fmov      d11, d3                                      
0006135c ldr       x0, [sp, #0xe0]                              
00061360 bl        #0xb1920                                      ; objc_msgSend$view
00061364 mov       x29, x29                                     
00061368 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006136c mov       x23, x0                                      
00061370 ldr       x0, [sp, #0xc0]                              
00061374 fmov      d0, d8                                       
00061378 fmov      d1, d9                                       
0006137c fmov      d2, d10                                      
00061380 fmov      d3, d11                                      
00061384 mov       x2, x23                                      
00061388 bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
0006138c stp       d1, d3, [sp, #0x40]                          
00061390 mov       x0, x23                                      
00061394 bl        #0xa46f4                                      ; _objc_release
00061398 ldr       d0, [sp, #0xc8]                              
0006139c ldp       d2, d1, [sp, #0xa0]                          
000613a0 ldr       d3, [sp, #0x98]                              
000613a4 bl        #0xa3eb4                                      ; _CGRectGetMinX
000613a8 str       d0, [sp, #0xb8]                              
000613ac ldr       x0, [sp, #0xe8]                              
000613b0 bl        #0xa9340                                      ; objc_msgSend$leadingInset
000613b4 fmov      d12, d0                                      
000613b8 ldr       d0, [sp, #0xc8]                              
000613bc ldp       d2, d1, [sp, #0xa0]                          
000613c0 ldr       d3, [sp, #0x98]                              
000613c4 bl        #0xa3ed4                                      ; _CGRectGetWidth
000613c8 fmov      d14, d0                                      
000613cc ldr       x0, [sp, #0xe8]                              
000613d0 bl        #0xa9340                                      ; objc_msgSend$leadingInset
000613d4 fmov      d10, d0                                      
000613d8 ldr       x0, [sp, #0xe8]                              
000613dc bl        #0xb1020                                      ; objc_msgSend$trailingInset
000613e0 fmov      d15, d0                                      
000613e4 ldr       d0, [sp, #0xc8]                              
000613e8 ldp       d2, d1, [sp, #0xa0]                          
000613ec ldr       d3, [sp, #0x98]                              
000613f0 bl        #0xa3ed4                                      ; _CGRectGetWidth
000613f4 fmov      d11, d0                                      
000613f8 ldr       x0, [sp, #0xe8]                              
000613fc bl        #0xaa620                                      ; objc_msgSend$originalWidgetsFrame
00061400 fmov      d13, d3                                      
