; state-display arm64e unslid VA [0x5ffc4,0x60184)
0005ffc4 pacibsp                                                
0005ffc8 stp       d11, d10, [sp, #-0x40]!                      
0005ffcc stp       d9, d8, [sp, #0x10]                          
0005ffd0 stp       x20, x19, [sp, #0x20]                        
0005ffd4 stp       x29, x30, [sp, #0x30]                        
0005ffd8 add       x29, sp, #0x30                               
0005ffdc mov       x19, x0                                      
0005ffe0 bl        #0xb1c20                                      ; objc_msgSend$widgetPickerLayout
0005ffe4 movi      d8, #0000000000000000                        
0005ffe8 tbnz      w0, #0, #0x5fff8                             
0005ffec mov       x0, x19                                      
0005fff0 bl        #0xaade0                                      ; objc_msgSend$progress
0005fff4 fmov      d8, d0                                       
0005fff8 mov       x0, x19                                      
0005fffc bl        #0xa5fa0                                      ; objc_msgSend$clockAnimating
00060000 cbz       w0, #0x6006c                                 
00060004 bl        #0xa39e4                                      ; _CACurrentMediaTime
00060008 fmov      d9, d0                                       
0006000c mov       x0, x19                                      
00060010 bl        #0xa5fe0                                      ; objc_msgSend$clockAnimationStart
00060014 fsub      d0, d9, d0                                   
00060018 adrp      x8, #0xbd000                                 
0006001c ldr       d1, [x8, #0x390]                             
00060020 fdiv      d0, d0, d1                                   
00060024 movi      d1, #0000000000000000                        
00060028 fmaxnm    d0, d0, d1                                   
0006002c fmov      d9, #1.00000000                              
00060030 fcmp      d0, d9                                       
00060034 fcsel     d10, d9, d0, gt                              
00060038 fcmp      d10, d9                                      
0006003c b.lt      #0x6004c                                     
00060040 mov       x0, x19                                      
00060044 mov       w2, #0                                       
00060048 bl        #0xac220                                      ; objc_msgSend$setClockAnimating:
0006004c fsub      d9, d9, d10                                  
00060050 mov       x0, x19                                      
00060054 bl        #0xa5fc0                                      ; objc_msgSend$clockAnimationFrom
00060058 fsub      d0, d0, d8                                   
0006005c fmul      d0, d9, d0                                   
00060060 fmul      d0, d9, d0                                   
00060064 fmadd     d0, d0, d9, d8                               
00060068 b         #0x60070                                     
0006006c fmov      d0, d8                                       
00060070 ldp       x29, x30, [sp, #0x30]                        
00060074 ldp       x20, x19, [sp, #0x20]                        
00060078 ldp       d9, d8, [sp, #0x10]                          
0006007c ldp       d11, d10, [sp], #0x40                        
00060080 retab                                                  
00060084 pacibsp                                                
00060088 stp       x20, x19, [sp, #-0x20]!                      
0006008c stp       x29, x30, [sp, #0x10]                        
00060090 add       x29, sp, #0x10                               
00060094 mov       x19, x0                                      
00060098 bl        #0xa7080                                      ; objc_msgSend$displayProgress
0006009c mov       x0, x19                                      
000600a0 bl        #0xac240                                      ; objc_msgSend$setClockAnimationFrom:
000600a4 bl        #0xa39e4                                      ; _CACurrentMediaTime
000600a8 mov       x0, x19                                      
000600ac bl        #0xac260                                      ; objc_msgSend$setClockAnimationStart:
000600b0 bl        #0xa4124                                      ; _UIAccessibilityIsReduceMotionEnabled
000600b4 tbz       w0, #0, #0x600c0                             
000600b8 mov       w2, #0                                       
000600bc b         #0x600d0                                     
000600c0 mov       x0, x19                                      
000600c4 bl        #0xa5fc0                                      ; objc_msgSend$clockAnimationFrom
000600c8 fcmp      d0, #0.0                                     
000600cc cset      w2, gt                                       
000600d0 mov       x0, x19                                      
000600d4 bl        #0xac220                                      ; objc_msgSend$setClockAnimating:
000600d8 movi      d0, #0000000000000000                        
000600dc mov       x0, x19                                      
000600e0 bl        #0xae640                                      ; objc_msgSend$setProgress:
000600e4 mov       x0, x19                                      
000600e8 bl        #0xb0060                                      ; objc_msgSend$stageProgress
000600ec ldp       x29, x30, [sp, #0x10]                        
000600f0 ldp       x20, x19, [sp], #0x20                        
000600f4 autibsp                                                
000600f8 eor       x16, x30, x30, lsl #1                        
000600fc tbz       x16, #0x3e, #0x60104                         
00060100 brk       #0xc471                                      
00060104 b         #0x60108                                     
00060108 pacibsp                                                
0006010c stp       x20, x19, [sp, #-0x20]!                      
00060110 stp       x29, x30, [sp, #0x10]                        
00060114 add       x29, sp, #0x10                               
00060118 bl        #0x64504                                     
0006011c mov       x29, x29                                     
00060120 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00060124 mov       x19, x0                                      
00060128 bl        #0xa6a00                                      ; objc_msgSend$count
0006012c mov       x20, x0                                      
00060130 mov       x0, x19                                      
00060134 bl        #0xa46f4                                      ; _objc_release
00060138 cbz       x20, #0x60170                                
0006013c adrp      x8, #0xef000                                 
00060140 ldr       x8, [x8, #0xb38]                             
00060144 cmn       x8, #1                                       
00060148 b.ne      #0x6017c                                     
0006014c adrp      x8, #0xef000                                 
00060150 ldr       x0, [x8, #0xb30]                             
00060154 ldp       x29, x30, [sp, #0x10]                        
00060158 ldp       x20, x19, [sp], #0x20                        
0006015c autibsp                                                
00060160 eor       x16, x30, x30, lsl #1                        
00060164 tbz       x16, #0x3e, #0x6016c                         
00060168 brk       #0xc471                                      
0006016c b         #0xb00c0                                      ; objc_msgSend$start
00060170 ldp       x29, x30, [sp, #0x10]                        
00060174 ldp       x20, x19, [sp], #0x20                        
00060178 retab                                                  
0006017c bl        #0xa3628                                     
00060180 b         #0x6014c                                     
