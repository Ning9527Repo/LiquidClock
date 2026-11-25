; arm64e unslid VA [0x68928,0x689ac)
00068928 pacibsp                                                
0006892c stp       x20, x19, [sp, #-0x20]!                      
00068930 stp       x29, x30, [sp, #0x10]                        
00068934 add       x29, sp, #0x10                               
00068938 adrp      x0, #0xef000                                 
0006893c add       x0, x0, #0x770                               
00068940 bl        #0xa4684                                      ; _objc_loadWeakRetained
00068944 mov       x19, x0                                      
00068948 cbz       x0, #0x6898c                                 
0006894c adrp      x8, #0xe8000                                 
00068950 ldr       x1, [x8, #0x850]                              ; SEL _updateListViewContentInset
00068954 mov       x0, x19                                      
00068958 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0006895c tbz       w0, #0, #0x6898c                             
00068960 mov       x0, x19                                      
00068964 bl        #0x7d620                                     
00068968 adrp      x8, #0xee000                                 
0006896c ldr       d1, [x8, #0x938]                             
00068970 fabd      d1, d0, d1                                   
00068974 fmov      d2, #0.50000000                              
00068978 fcmp      d1, d2                                       
0006897c b.mi      #0x6898c                                     
00068980 str       d0, [x8, #0x938]                             
00068984 mov       x0, x19                                      
00068988 bl        #0xa4c20                                      ; objc_msgSend$_updateListViewContentInset
0006898c mov       x0, x19                                      
00068990 ldp       x29, x30, [sp, #0x10]                        
00068994 ldp       x20, x19, [sp], #0x20                        
00068998 autibsp                                                
0006899c eor       x16, x30, x30, lsl #1                        
000689a0 tbz       x16, #0x3e, #0x689a8                         
000689a4 brk       #0xc471                                      
000689a8 b         #0xa46f4                                      ; _objc_release
