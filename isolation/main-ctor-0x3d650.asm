# arm64e unslid VA 0x3d650..0x3d68c; FAT offset 0xfc000
0003d650 adrp      x8, #0xd4000                                    
0003d654 ldr       x8, [x8, #0x840]                                 ; 0xd4840 | &_UIEdgeInsetsZero
0003d658 ldp       d0, d1, [x8]                                    
0003d65c ldp       d2, d3, [x8, #0x10]                             
0003d660 adrp      x0, #0xda000                                    
0003d664 add       x0, x0, #0x3d0                                   ; 0xda3d0 | @'Dock'
0003d668 adrp      x2, #0xd5000                                    
0003d66c add       x2, x2, #0x4c0                                   ; 0xd54c0 | &__NSConcreteGlobalBlock
0003d670 adrp      x3, #0xd5000                                    
0003d674 add       x3, x3, #0x4e0                                   ; 0xd54e0 | &__NSConcreteGlobalBlock
0003d678 adrp      x5, #0xd5000                                    
0003d67c add       x5, x5, #0x520                                   ; 0xd5520 | &__NSConcreteGlobalBlock
0003d680 mov       w1, #0x50                                       
0003d684 mov       x4, #0                                          
0003d688 b         #0x983b4                                         ; _LGRegisterMaterialHost
