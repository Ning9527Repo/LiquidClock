# arm64e unslid VA 0x78aa8..0x78ae8; FAT offset 0xfc000
00078aa8 pacibsp                                                   
00078aac stp       x29, x30, [sp, #-0x10]!                         
00078ab0 mov       x29, sp                                         
00078ab4 adrp      x0, #0xdc000                                    
00078ab8 add       x0, x0, #0xd70                                   ; 0xdcd70 | @'SokoDockCoordinator'
00078abc bl        #0xa4064                                         ; _NSClassFromString
00078ac0 cbz       x0, #0x78acc                                    
00078ac4 mov       w0, #1                                          
00078ac8 b         #0x78ae0                                        
00078acc adrp      x0, #0xdc000                                    
00078ad0 add       x0, x0, #0xd90                                   ; 0xdcd90 | @'SokoPosterLayout'
00078ad4 bl        #0xa4064                                         ; _NSClassFromString
00078ad8 cmp       x0, #0                                          
00078adc cset      w0, ne                                          
00078ae0 ldp       x29, x30, [sp], #0x10                           
00078ae4 retab                                                     
