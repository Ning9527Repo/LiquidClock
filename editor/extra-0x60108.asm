; arm64e unslid VA [0x60108,0x60184)
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
