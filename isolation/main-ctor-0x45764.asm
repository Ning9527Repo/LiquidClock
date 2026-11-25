# arm64e unslid VA 0x45764..0x4579c; FAT offset 0xfc000
00045764 adrp      x8, #0xd4000                                    
00045768 ldr       x8, [x8, #0x840]                                 ; 0xd4840 | &_UIEdgeInsetsZero
0004576c ldp       d0, d1, [x8]                                    
00045770 ldp       d2, d3, [x8, #0x10]                             
00045774 adrp      x0, #0xda000                                    
00045778 add       x0, x0, #0xc70                                   ; 0xdac70 | @'SearchPill'
0004577c adrp      x2, #0xd5000                                    
00045780 add       x2, x2, #0x6f8                                   ; 0xd56f8 | &__NSConcreteGlobalBlock
00045784 adrp      x3, #0xd5000                                    
00045788 add       x3, x3, #0x718                                   ; 0xd5718 | &__NSConcreteGlobalBlock
0004578c mov       w1, #0x64                                       
00045790 mov       x4, #0                                          
00045794 mov       x5, #0                                          
00045798 b         #0x983b4                                         ; _LGRegisterMaterialHost
