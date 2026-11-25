; Local sample arm64e unslid VA 0x70634..0x706f8
00070634 pacibsp                                                
00070638 stp       x22, x21, [sp, #-0x30]!                      
0007063c stp       x20, x19, [sp, #0x10]                        
00070640 stp       x29, x30, [sp, #0x20]                        
00070644 add       x29, sp, #0x20                               
00070648 mov       x20, x0                                      
0007064c bl        #0xa5760                                      ; objc_msgSend$attached
00070650 cbz       w0, #0x706d0                                 
00070654 mov       x0, x20                                      
00070658 bl        #0xa7140                                      ; objc_msgSend$dockTopY
0007065c fcmp      d0, d0                                       
00070660 b.vs      #0x706d0                                     
00070664 mov       x0, x20                                      
00070668 bl        #0xa8360                                      ; objc_msgSend$hostView
0007066c mov       x29, x29                                     
00070670 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070674 mov       x19, x0                                      
00070678 bl        #0xa8dc0                                      ; objc_msgSend$isHidden
0007067c tbnz      w0, #0, #0x706d8                             
00070680 mov       x0, x20                                      
00070684 bl        #0xafda0                                      ; objc_msgSend$shouldHostDock
00070688 cbz       w0, #0x706d8                                 
0007068c mov       x0, x20                                      
00070690 bl        #0xa6a40                                      ; objc_msgSend$coverSheetViewController
00070694 mov       x29, x29                                     
00070698 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007069c mov       x21, x0                                      
000706a0 bl        #0xb1960                                      ; objc_msgSend$viewIfLoaded
000706a4 mov       x29, x29                                     
000706a8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000706ac mov       x22, x0                                      
000706b0 bl        #0xa5bc0                                      ; objc_msgSend$bounds
000706b4 fcmp      d3, d2                                       
000706b8 cset      w20, ge                                      
000706bc mov       x0, x22                                      
000706c0 bl        #0xa46f4                                      ; _objc_release
000706c4 mov       x0, x21                                      
000706c8 bl        #0xa46f4                                      ; _objc_release
000706cc b         #0x706dc                                     
000706d0 mov       w20, #0                                      
000706d4 b         #0x706e4                                     
000706d8 mov       w20, #0                                      
000706dc mov       x0, x19                                      
000706e0 bl        #0xa46f4                                      ; _objc_release
000706e4 mov       x0, x20                                      
000706e8 ldp       x29, x30, [sp, #0x20]                        
000706ec ldp       x20, x19, [sp, #0x10]                        
000706f0 ldp       x22, x21, [sp], #0x30                        
000706f4 retab                                                  
