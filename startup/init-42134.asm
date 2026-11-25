# arm64e unslid VA 0x42134..0x42140; FAT offset 0xfc000
00042134 adrp      x0, #0xd5000                                    
00042138 add       x0, x0, #0x5c0                                   ; 0xd55c0 | &__NSConcreteGlobalBlock
0004213c b         #0x97e34                                         ; _lgObservePreferenceReload
