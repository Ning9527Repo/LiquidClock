# arm64e unslid VA 0x98854..0x98978; FAT offset 0xfc000
00098854 pacibsp                                                   
00098858 stp       x20, x19, [sp, #-0x20]!                         
0009885c stp       x29, x30, [sp, #0x10]                           
00098860 add       x29, sp, #0x10                                  
00098864 adrp      x0, #0xb6000                                    
00098868 add       x0, x0, #0xbc1                                   ; 0xb6bc1 | 'MTMaterialView'
0009886c bl        #0xa4664                                         ; _objc_getClass
00098870 mov       x19, x0                                         
00098874 adrp      x8, #0xeb000                                    
00098878 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
0009887c adrp      x3, #0xef000                                    
00098880 add       x3, x3, #0xc10                                   ; 0xefc10
00098884 adrp      x16, #0x98000                                   
00098888 add       x16, x16, #0x978                                 ; 0x98978
0009888c paciza    x16                                             
00098890 mov       x2, x16                                         
00098894 bl        #0xa4054                                         ; _MSHookMessageEx
00098898 adrp      x8, #0xeb000                                    
0009889c ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
000988a0 adrp      x3, #0xef000                                    
000988a4 add       x3, x3, #0xc18                                   ; 0xefc18
000988a8 adrp      x16, #0x98000                                   
000988ac add       x16, x16, #0x9b8                                 ; 0x989b8
000988b0 paciza    x16                                             
000988b4 mov       x2, x16                                         
000988b8 mov       x0, x19                                         
000988bc bl        #0xa4054                                         ; _MSHookMessageEx
000988c0 adrp      x8, #0xea000                                    
000988c4 ldr       x1, [x8, #0x9c0]                                 ; 0xea9c0 | SEL setHidden:
000988c8 adrp      x3, #0xef000                                    
000988cc add       x3, x3, #0xc20                                   ; 0xefc20
000988d0 adrp      x16, #0x98000                                   
000988d4 add       x16, x16, #0x9f8                                 ; 0x989f8
000988d8 paciza    x16                                             
000988dc mov       x2, x16                                         
000988e0 mov       x0, x19                                         
000988e4 bl        #0xa4054                                         ; _MSHookMessageEx
000988e8 adrp      x8, #0xea000                                    
000988ec ldr       x1, [x8, #0x8e0]                                 ; 0xea8e0 | SEL setFrame:
000988f0 adrp      x3, #0xef000                                    
000988f4 add       x3, x3, #0xc28                                   ; 0xefc28
000988f8 adrp      x16, #0x98000                                   
000988fc add       x16, x16, #0xa58                                 ; 0x98a58
00098900 paciza    x16                                             
00098904 mov       x2, x16                                         
00098908 mov       x0, x19                                         
0009890c bl        #0xa4054                                         ; _MSHookMessageEx
00098910 adrp      x8, #0xea000                                    
00098914 ldr       x1, [x8, #0x570]                                 ; 0xea570 | SEL setBounds:
00098918 adrp      x3, #0xef000                                    
0009891c add       x3, x3, #0xc30                                   ; 0xefc30
00098920 adrp      x16, #0x98000                                   
00098924 add       x16, x16, #0xaa0                                 ; 0x98aa0
00098928 paciza    x16                                             
0009892c mov       x2, x16                                         
00098930 mov       x0, x19                                         
00098934 bl        #0xa4054                                         ; _MSHookMessageEx
00098938 adrp      x8, #0xea000                                    
0009893c ldr       x1, [x8, #0x5b0]                                 ; 0xea5b0 | SEL setCenter:
00098940 adrp      x3, #0xef000                                    
00098944 add       x3, x3, #0xc38                                   ; 0xefc38
00098948 adrp      x16, #0x98000                                   
0009894c add       x16, x16, #0xae8                                 ; 0x98ae8
00098950 paciza    x16                                             
00098954 mov       x2, x16                                         
00098958 mov       x0, x19                                         
0009895c ldp       x29, x30, [sp, #0x10]                           
00098960 ldp       x20, x19, [sp], #0x20                           
00098964 autibsp                                                   
00098968 eor       x16, x30, x30, lsl #1                           
0009896c tbz       x16, #0x3e, #0x98974                            
00098970 brk       #0xc471                                         
00098974 b         #0xa4054                                         ; _MSHookMessageEx
