# arm64e unslid VA 0x44ca8..0x44cb4; FAT offset 0xfc000
00044ca8 adrp      x0, #0xd5000                                    
00044cac add       x0, x0, #0x6d8                                   ; 0xd56d8 | &__NSConcreteGlobalBlock
00044cb0 b         #0x97e34                                         ; _lgObservePreferenceReload
