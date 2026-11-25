# arm64e unslid VA 0x76f68..0x76ff8; FAT offset 0xfc000
00076f68 pacibsp                                                   
00076f6c sub       sp, sp, #0x30                                   
00076f70 stp       x20, x19, [sp, #0x10]                           
00076f74 stp       x29, x30, [sp, #0x20]                           
00076f78 add       x29, sp, #0x20                                  
00076f7c mov       x19, x0                                         
00076f80 adrp      x20, #0xee000                                   
00076f84 ldr       w0, [x20, #0x950]                                ; 0xee950
00076f88 tbnz      w0, #0x1f, #0x76fc8                             
00076f8c str       xzr, [sp, #8]                                   
00076f90 add       x1, sp, #8                                      
00076f94 bl        #0xa4544                                         ; _notify_get_state
00076f98 ldr       x8, [sp, #8]                                    
00076f9c mov       w1, w19                                         
00076fa0 cmp       w0, #0                                          
00076fa4 ccmp      x8, x1, #0, eq                                  
00076fa8 b.eq      #0x76fe0                                        
00076fac ldr       w0, [x20, #0x950]                                ; 0xee950
00076fb0 bl        #0xa4584                                         ; _notify_set_state
00076fb4 cbnz      w0, #0x76fe0                                    
00076fb8 adrp      x0, #0xbb000                                    
00076fbc add       x0, x0, #0x4e2                                   ; 0xbb4e2 | 'dylv.liquidass.clock.artwork-visible'
00076fc0 bl        #0xa4554                                         ; _notify_post
00076fc4 b         #0x76fe0                                        
00076fc8 adrp      x0, #0xbb000                                    
00076fcc add       x0, x0, #0x4e2                                   ; 0xbb4e2 | 'dylv.liquidass.clock.artwork-visible'
00076fd0 adrp      x1, #0xee000                                    
00076fd4 add       x1, x1, #0x950                                   ; 0xee950
00076fd8 bl        #0xa4564                                         ; _notify_register_check
00076fdc cbz       w0, #0x76ff0                                    
00076fe0 ldp       x29, x30, [sp, #0x20]                           
00076fe4 ldp       x20, x19, [sp, #0x10]                           
00076fe8 add       sp, sp, #0x30                                   
00076fec retab                                                     
00076ff0 ldr       w0, [x20, #0x950]                                ; 0xee950
00076ff4 b         #0x76f8c                                        
