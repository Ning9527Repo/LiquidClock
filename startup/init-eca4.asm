# arm64e unslid VA 0xeca4..0xecdc; FAT offset 0xfc000
0000eca4 adrp      x8, #0xd4000                                    
0000eca8 ldr       x8, [x8, #0x840]                                 ; 0xd4840 | &_UIEdgeInsetsZero
0000ecac ldp       d0, d1, [x8]                                    
0000ecb0 ldp       d2, d3, [x8, #0x10]                             
0000ecb4 adrp      x0, #0xd8000                                    
0000ecb8 add       x0, x0, #0x3d0                                   ; 0xd83d0 | @'AppLibSearch'
0000ecbc adrp      x2, #0xd4000                                    
0000ecc0 add       x2, x2, #0xc70                                   ; 0xd4c70 | &__NSConcreteGlobalBlock
0000ecc4 adrp      x3, #0xd4000                                    
0000ecc8 add       x3, x3, #0xcb0                                   ; 0xd4cb0 | &__NSConcreteGlobalBlock
0000eccc mov       w1, #0x5a                                       
0000ecd0 mov       x4, #0                                          
0000ecd4 mov       x5, #0                                          
0000ecd8 b         #0x983b4                                         ; _LGRegisterMaterialHost
