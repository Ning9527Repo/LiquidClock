; Uploaded sample arm64e unslid VA 0x60184..0x60224
00060184 pacibsp                                                
00060188 stp       d9, d8, [sp, #-0x30]!                        
0006018c stp       x20, x19, [sp, #0x10]                        
00060190 stp       x29, x30, [sp, #0x20]                        
00060194 add       x29, sp, #0x20                               
00060198 fmov      d8, d0                                       
0006019c mov       x19, x0                                      
000601a0 bl        #0xb1b20                                      ; objc_msgSend$widgetAnimating
000601a4 cbz       w0, #0x601d8                                 
000601a8 mov       x0, x19                                      
000601ac bl        #0xb1b40                                      ; objc_msgSend$widgetAnimationDuration
000601b0 fcmp      d0, d8                                       
000601b4 b.eq      #0x601d8                                     
000601b8 mov       x0, x19                                      
000601bc bl        #0xb1cc0                                      ; objc_msgSend$widgetsFrame
000601c0 bl        #0xa3ec4                                      ; _CGRectGetMinY
000601c4 mov       x0, x19                                      
000601c8 bl        #0xafac0                                      ; objc_msgSend$setWidgetAnimationFrom:
000601cc bl        #0xa39e4                                      ; _CACurrentMediaTime
000601d0 mov       x0, x19                                      
000601d4 bl        #0xafae0                                      ; objc_msgSend$setWidgetAnimationStart:
000601d8 mov       x0, x19                                      
000601dc fmov      d0, d8                                       
000601e0 bl        #0xafaa0                                      ; objc_msgSend$setWidgetAnimationDuration:
000601e4 mov       x0, x19                                      
000601e8 bl        #0xa67e0                                      ; objc_msgSend$controller
000601ec mov       x29, x29                                     
000601f0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000601f4 mov       x19, x0                                      
000601f8 bl        #0x60224                                     
000601fc mov       x0, x19                                      
00060200 bl        #0xa46f4                                      ; _objc_release
00060204 ldp       x29, x30, [sp, #0x20]                        
00060208 ldp       x20, x19, [sp, #0x10]                        
0006020c ldp       d9, d8, [sp], #0x30                          
00060210 autibsp                                                
00060214 eor       x16, x30, x30, lsl #1                        
00060218 tbz       x16, #0x3e, #0x60220                         
0006021c brk       #0xc471                                      
00060220 b         #0x60108                                     
