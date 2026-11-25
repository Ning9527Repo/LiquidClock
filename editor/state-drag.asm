; state-drag arm64e unslid VA [0x6342c,0x63634)
0006342c pacibsp                                                
00063430 stp       d11, d10, [sp, #-0x60]!                      
00063434 stp       d9, d8, [sp, #0x10]                          
00063438 stp       x24, x23, [sp, #0x20]                        
0006343c stp       x22, x21, [sp, #0x30]                        
00063440 stp       x20, x19, [sp, #0x40]                        
00063444 stp       x29, x30, [sp, #0x50]                        
00063448 add       x29, sp, #0x50                               
0006344c mov       x21, x0                                      
00063450 mov       x0, x2                                       
00063454 bl        #0xa4704                                      ; _objc_retain
00063458 mov       x19, x0                                      
0006345c mov       x0, x21                                      
00063460 bl        #0xa67e0                                      ; objc_msgSend$controller
00063464 mov       x29, x29                                     
00063468 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006346c mov       x20, x0                                      
00063470 cbz       x0, #0x635fc                                 
00063474 mov       x0, x19                                      
00063478 bl        #0xb0220                                      ; objc_msgSend$state
0006347c cmp       x0, #1                                       
00063480 b.ne      #0x6350c                                     
00063484 mov       x0, x21                                      
00063488 mov       w2, #1                                       
0006348c bl        #0xae9a0                                      ; objc_msgSend$setResizing:
00063490 mov       x0, x21                                      
00063494 bl        #0xa7080                                      ; objc_msgSend$displayProgress
00063498 mov       x0, x21                                      
0006349c bl        #0xae640                                      ; objc_msgSend$setProgress:
000634a0 mov       x0, x21                                      
000634a4 mov       w2, #0                                       
000634a8 bl        #0xac220                                      ; objc_msgSend$setClockAnimating:
000634ac mov       x0, x21                                      
000634b0 bl        #0xaade0                                      ; objc_msgSend$progress
000634b4 mov       x0, x21                                      
000634b8 bl        #0xaef40                                      ; objc_msgSend$setStartProgress:
000634bc mov       x0, x20                                      
000634c0 bl        #0xab860                                      ; objc_msgSend$scrollView
000634c4 mov       x29, x29                                     
000634c8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000634cc mov       x22, x0                                      
000634d0 bl        #0xa8f60                                      ; objc_msgSend$isScrollEnabled
000634d4 mov       x2, x0                                       
000634d8 mov       x0, x21                                      
000634dc bl        #0xaeb20                                      ; objc_msgSend$setScrollingEnabled:
000634e0 mov       x0, x22                                      
000634e4 bl        #0xa46f4                                      ; _objc_release
000634e8 mov       x0, x20                                      
000634ec bl        #0xab860                                      ; objc_msgSend$scrollView
000634f0 mov       x29, x29                                     
000634f4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000634f8 mov       x22, x0                                      
000634fc mov       w2, #0                                       
00063500 bl        #0xaeae0                                      ; objc_msgSend$setScrollEnabled:
00063504 mov       x0, x22                                      
00063508 bl        #0xa46f4                                      ; _objc_release
0006350c mov       x0, x20                                      
00063510 bl        #0xb1920                                      ; objc_msgSend$view
00063514 mov       x29, x29                                     
00063518 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006351c mov       x22, x0                                      
00063520 mov       x0, x19                                      
00063524 mov       x2, x22                                      
00063528 bl        #0xb10e0                                      ; objc_msgSend$translationInView:
0006352c fmov      d8, d1                                       
00063530 mov       x0, x22                                      
00063534 bl        #0xa46f4                                      ; _objc_release
00063538 mov       x0, x21                                      
0006353c bl        #0xb0160                                      ; objc_msgSend$startProgress
00063540 fmov      d9, d0                                       
00063544 mov       x0, x21                                      
00063548 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
0006354c fmov      d10, d0                                      
00063550 mov       x0, x21                                      
00063554 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
00063558 fsub      d0, d10, d0                                  
0006355c fmov      d1, #1.00000000                              
00063560 fmaxnm    d0, d0, d1                                   
00063564 fdiv      d0, d8, d0                                   
00063568 fadd      d0, d9, d0                                   
0006356c movi      d2, #0000000000000000                        
00063570 fmaxnm    d0, d0, d2                                   
00063574 fcmp      d0, d1                                       
00063578 fcsel     d0, d1, d0, gt                               
0006357c mov       x0, x21                                      
00063580 bl        #0xae640                                      ; objc_msgSend$setProgress:
00063584 mov       x0, x21                                      
00063588 bl        #0xb0060                                      ; objc_msgSend$stageProgress
0006358c mov       x0, x19                                      
00063590 bl        #0xb0220                                      ; objc_msgSend$state
00063594 cmp       x0, #3                                       
00063598 b.eq      #0x635ac                                     
0006359c mov       x0, x19                                      
000635a0 bl        #0xb0220                                      ; objc_msgSend$state
000635a4 cmp       x0, #4                                       
000635a8 b.ne      #0x635f0                                     
000635ac mov       x0, x21                                      
000635b0 mov       w2, #0                                       
000635b4 bl        #0xae9a0                                      ; objc_msgSend$setResizing:
000635b8 mov       x0, x21                                      
000635bc bl        #0xab880                                      ; objc_msgSend$scrollingEnabled
000635c0 mov       x22, x0                                      
000635c4 mov       x0, x20                                      
000635c8 bl        #0xab860                                      ; objc_msgSend$scrollView
000635cc mov       x29, x29                                     
000635d0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000635d4 mov       x23, x0                                      
000635d8 mov       x2, x22                                      
000635dc bl        #0xaeae0                                      ; objc_msgSend$setScrollEnabled:
000635e0 mov       x0, x23                                      
000635e4 bl        #0xa46f4                                      ; _objc_release
000635e8 mov       x0, x21                                      
000635ec bl        #0xaa860                                      ; objc_msgSend$persistProgress
000635f0 mov       x0, x20                                      
000635f4 bl        #0x60224                                     
000635f8 bl        #0x60108                                     
000635fc mov       x0, x20                                      
00063600 bl        #0xa46f4                                      ; _objc_release
00063604 mov       x0, x19                                      
00063608 ldp       x29, x30, [sp, #0x50]                        
0006360c ldp       x20, x19, [sp, #0x40]                        
00063610 ldp       x22, x21, [sp, #0x30]                        
00063614 ldp       x24, x23, [sp, #0x20]                        
00063618 ldp       d9, d8, [sp, #0x10]                          
0006361c ldp       d11, d10, [sp], #0x60                        
00063620 autibsp                                                
00063624 eor       x16, x30, x30, lsl #1                        
00063628 tbz       x16, #0x3e, #0x63630                         
0006362c brk       #0xc471                                      
00063630 b         #0xa46f4                                      ; _objc_release
