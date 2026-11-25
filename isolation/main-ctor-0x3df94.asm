# arm64e unslid VA 0x3df94..0x3e074; FAT offset 0xfc000
0003df94 pacibsp                                                   
0003df98 stp       x20, x19, [sp, #-0x20]!                         
0003df9c stp       x29, x30, [sp, #0x10]                           
0003dfa0 add       x29, sp, #0x10                                  
0003dfa4 adrp      x0, #0xb6000                                    
0003dfa8 add       x0, x0, #0xbc1                                   ; 0xb6bc1 | 'MTMaterialView'
0003dfac bl        #0xa4664                                         ; _objc_getClass
0003dfb0 mov       x19, x0                                         
0003dfb4 adrp      x8, #0xeb000                                    
0003dfb8 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
0003dfbc adrp      x3, #0xef000                                    
0003dfc0 add       x3, x3, #0x380                                   ; 0xef380
0003dfc4 adrp      x16, #0x3e000                                   
0003dfc8 add       x16, x16, #0x74                                  ; 0x3e074
0003dfcc paciza    x16                                             
0003dfd0 mov       x2, x16                                         
0003dfd4 bl        #0xa4054                                         ; _MSHookMessageEx
0003dfd8 adrp      x8, #0xeb000                                    
0003dfdc ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
0003dfe0 adrp      x3, #0xef000                                    
0003dfe4 add       x3, x3, #0x388                                   ; 0xef388
0003dfe8 adrp      x16, #0x3e000                                   
0003dfec add       x16, x16, #0x1bc                                 ; 0x3e1bc
0003dff0 paciza    x16                                             
0003dff4 mov       x2, x16                                         
0003dff8 mov       x0, x19                                         
0003dffc bl        #0xa4054                                         ; _MSHookMessageEx
0003e000 adrp      x0, #0xb8000                                    
0003e004 add       x0, x0, #0x8fb                                   ; 0xb88fb | 'SBFolderIconImageView'
0003e008 bl        #0xa4664                                         ; _objc_getClass
0003e00c mov       x19, x0                                         
0003e010 adrp      x8, #0xec000                                    
0003e014 ldr       x1, [x8, #0x218]                                 ; 0xec218 | SEL prepareToCrossfadeWithFloatyFolderView:allowFolderInteraction:
0003e018 adrp      x3, #0xef000                                    
0003e01c add       x3, x3, #0x390                                   ; 0xef390
0003e020 adrp      x16, #0x3e000                                   
0003e024 add       x16, x16, #0x230                                 ; 0x3e230
0003e028 paciza    x16                                             
0003e02c mov       x2, x16                                         
0003e030 bl        #0xa4054                                         ; _MSHookMessageEx
0003e034 adrp      x8, #0xec000                                    
0003e038 ldr       x1, [x8, #0x220]                                 ; 0xec220 | SEL setBackgroundAndIconGridImageAlpha:
0003e03c adrp      x3, #0xef000                                    
0003e040 add       x3, x3, #0x398                                   ; 0xef398
0003e044 adrp      x16, #0x3e000                                   
0003e048 add       x16, x16, #0x42c                                 ; 0x3e42c
0003e04c paciza    x16                                             
0003e050 mov       x2, x16                                         
0003e054 mov       x0, x19                                         
0003e058 ldp       x29, x30, [sp, #0x10]                           
0003e05c ldp       x20, x19, [sp], #0x20                           
0003e060 autibsp                                                   
0003e064 eor       x16, x30, x30, lsl #1                           
0003e068 tbz       x16, #0x3e, #0x3e070                            
0003e06c brk       #0xc471                                         
0003e070 b         #0xa4054                                         ; _MSHookMessageEx
