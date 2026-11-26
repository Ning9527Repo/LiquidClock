; Uploaded sample arm64e unslid VA 0x765f0..0x766e0
000765f0 mov       x2, x16                                      
000765f4 bl        #0xa4054                                      ; _MSHookMessageEx
000765f8 adrp      x8, #0xea000                                 
000765fc ldr       x1, [x8, #0x4c8]                              ; SEL setAttributedText:
00076600 adrp      x3, #0xef000                                 
00076604 add       x3, x3, #0x9b0                               
00076608 adrp      x16, #0x78000                                
0007660c add       x16, x16, #0xfa0                             
00076610 paciza    x16                                          
00076614 mov       x2, x16                                      
00076618 mov       x0, x20                                      
0007661c bl        #0xa4054                                      ; _MSHookMessageEx
00076620 adrp      x8, #0xea000                                 
00076624 ldr       x26, [x8, #0x8e0]                             ; SEL setFrame:
00076628 adrp      x3, #0xef000                                 
0007662c add       x3, x3, #0x9b8                               
00076630 adrp      x16, #0x79000                                
00076634 add       x16, x16, #0xd0                              
00076638 paciza    x16                                          
0007663c mov       x2, x16                                      
00076640 mov       x0, x20                                      
00076644 mov       x1, x26                                      
00076648 bl        #0xa4054                                      ; _MSHookMessageEx
0007664c adrp      x8, #0xea000                                 
00076650 ldr       x25, [x8, #0x5b0]                             ; SEL setCenter:
00076654 adrp      x3, #0xef000                                 
00076658 add       x3, x3, #0x9c0                               
0007665c adrp      x16, #0x79000                                
00076660 add       x16, x16, #0x180                             
00076664 paciza    x16                                          
00076668 mov       x2, x16                                      
0007666c mov       x0, x20                                      
00076670 mov       x1, x25                                      
00076674 bl        #0xa4054                                      ; _MSHookMessageEx
00076678 adrp      x0, #0xba000                                 
0007667c add       x0, x0, #0xbfe                                ; 'PRMutablePosterConfiguration'
00076680 bl        #0xa4664                                      ; _objc_getClass
00076684 mov       x20, x0                                      
00076688 adrp      x8, #0xeb000                                 
0007668c ldr       x1, [x8, #0x648]                              ; SEL storeUserInfo:error:
00076690 adrp      x3, #0xef000                                 
00076694 add       x3, x3, #0x9c8                               
00076698 adrp      x16, #0x79000                                
0007669c add       x16, x16, #0x214                             
000766a0 paciza    x16                                          
000766a4 mov       x2, x16                                      
000766a8 bl        #0xa4054                                      ; _MSHookMessageEx
000766ac adrp      x8, #0xec000                                 
000766b0 ldr       x1, [x8, #0x3e0]                              ; SEL storeConfiguredProperties:error:
000766b4 adrp      x3, #0xef000                                 
000766b8 add       x3, x3, #0x9d0                               
000766bc adrp      x16, #0x79000                                
000766c0 add       x16, x16, #0x430                             
000766c4 paciza    x16                                          
000766c8 mov       x2, x16                                      
000766cc mov       x0, x20                                      
000766d0 bl        #0xa4054                                      ; _MSHookMessageEx
000766d4 adrp      x0, #0xba000                                 
000766d8 add       x0, x0, #0xc1b                                ; 'PREditingReticleView'
000766dc bl        #0xa4664                                      ; _objc_getClass
