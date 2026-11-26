; Uploaded sample arm64e unslid VA 0x704e0..0x70590
000704e0 pacibsp                                                
000704e4 stp       x22, x21, [sp, #-0x30]!                      
000704e8 stp       x20, x19, [sp, #0x10]                        
000704ec stp       x29, x30, [sp, #0x20]                        
000704f0 add       x29, sp, #0x20                               
000704f4 mov       x19, x0                                      
000704f8 bl        #0xafda0                                      ; objc_msgSend$shouldHostDock
000704fc cbz       w0, #0x7050c                                 
00070500 mov       x0, x19                                      
00070504 bl        #0xa5740                                      ; objc_msgSend$attachIfNeeded
00070508 b         #0x70514                                     
0007050c mov       x0, x19                                      
00070510 bl        #0xa6e80                                      ; objc_msgSend$detach
00070514 mov       x0, x19                                      
00070518 bl        #0xa6a40                                      ; objc_msgSend$coverSheetViewController
0007051c mov       x29, x29                                     
00070520 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070524 mov       x20, x0                                      
00070528 bl        #0xb1960                                      ; objc_msgSend$viewIfLoaded
0007052c mov       x29, x29                                     
00070530 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070534 mov       x21, x0                                      
00070538 bl        #0xaddc0                                      ; objc_msgSend$setNeedsLayout
0007053c mov       x0, x21                                      
00070540 bl        #0xa46f4                                      ; _objc_release
00070544 mov       x0, x20                                      
00070548 bl        #0xa46f4                                      ; _objc_release
0007054c mov       x0, x19                                      
00070550 bl        #0xa9f60                                      ; objc_msgSend$notificationList
00070554 mov       x29, x29                                     
00070558 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007055c mov       x20, x0                                      
00070560 bl        #0xb1340                                      ; objc_msgSend$updateLayout
00070564 mov       x0, x20                                      
00070568 bl        #0xa46f4                                      ; _objc_release
0007056c mov       x0, x19                                      
00070570 ldp       x29, x30, [sp, #0x20]                        
00070574 ldp       x20, x19, [sp, #0x10]                        
00070578 ldp       x22, x21, [sp], #0x30                        
0007057c autibsp                                                
00070580 eor       x16, x30, x30, lsl #1                        
00070584 tbz       x16, #0x3e, #0x7058c                         
00070588 brk       #0xc471                                      
0007058c b         #0xb15a0                                      ; objc_msgSend$updateWallpaperDepthEffectSource
