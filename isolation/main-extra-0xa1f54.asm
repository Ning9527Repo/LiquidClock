# arm64e unslid VA 0xa1f54..0xa2050; FAT offset 0xfc000
000a1f54 pacibsp                                                   
000a1f58 sub       sp, sp, #0x60                                   
000a1f5c stp       x22, x21, [sp, #0x30]                           
000a1f60 stp       x20, x19, [sp, #0x40]                           
000a1f64 stp       x29, x30, [sp, #0x50]                           
000a1f68 add       x29, sp, #0x50                                  
000a1f6c bl        #0xa4704                                         ; _objc_retain
000a1f70 mov       x19, x0                                         
000a1f74 cbz       x0, #0xa2034                                    
000a1f78 adrp      x8, #0xec000                                    
000a1f7c ldr       x0, [x8, #0x760]                                 ; 0xec760 | &_OBJC_CLASS_$_NSNotificationCenter
000a1f80 bl        #0xa6d40                                         ; objc_msgSend$defaultCenter
000a1f84 mov       x29, x29                                        
000a1f88 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000a1f8c mov       x20, x0                                         
000a1f90 adrp      x8, #0xec000                                    
000a1f94 ldr       x0, [x8, #0x768]                                 ; 0xec768 | &_OBJC_CLASS_$_NSOperationQueue
000a1f98 bl        #0xa9960                                         ; objc_msgSend$mainQueue
000a1f9c mov       x29, x29                                        
000a1fa0 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000a1fa4 mov       x21, x0                                         
000a1fa8 add       x8, sp, #8                                      
000a1fac adrp      x16, #0xd4000                                   
000a1fb0 ldr       x16, [x16, #0x930]                               ; 0xd4930 | &__NSConcreteStackBlock
000a1fb4 mov       x17, x8                                         
000a1fb8 movk      x17, #0x6ae1, lsl #48                           
000a1fbc pacda     x16, x17                                        
000a1fc0 str       x16, [sp, #8]                                   
000a1fc4 adrp      x9, #0xbd000                                    
000a1fc8 ldr       d0, [x9, #0x268]                                 ; 0xbd268
000a1fcc str       d0, [sp, #0x10]                                 
000a1fd0 add       x8, x8, #0x10                                   
000a1fd4 adrp      x16, #0xa2000                                   
000a1fd8 add       x16, x16, #0x50                                  ; 0xa2050
000a1fdc pacia     x16, x8                                         
000a1fe0 adrp      x8, #0xd7000                                    
000a1fe4 add       x8, x8, #0x7c0                                   ; 0xd77c0
000a1fe8 stp       x16, x8, [sp, #0x18]                            
000a1fec mov       x0, x19                                         
000a1ff0 bl        #0xa4704                                         ; _objc_retain
000a1ff4 str       x0, [sp, #0x28]                                 
000a1ff8 adrp      x2, #0xdd000                                    
000a1ffc add       x2, x2, #0xf50                                   ; 0xddf50 | @'dylv.liquidassprefs.InProcessReload'
000a2000 add       x5, sp, #8                                      
000a2004 mov       x0, x20                                         
000a2008 mov       x3, #0                                          
000a200c mov       x4, x21                                         
000a2010 bl        #0xa4f40                                         ; objc_msgSend$addObserverForName:object:queue:usingBlock:
000a2014 mov       x29, x29                                        
000a2018 bl        #0xa47c4                                         ; _objc_unsafeClaimAutoreleasedReturnValue
000a201c mov       x0, x21                                         
000a2020 bl        #0xa46f4                                         ; _objc_release
000a2024 mov       x0, x20                                         
000a2028 bl        #0xa46f4                                         ; _objc_release
000a202c ldr       x0, [sp, #0x28]                                 
000a2030 bl        #0xa46f4                                         ; _objc_release
000a2034 mov       x0, x19                                         
000a2038 bl        #0xa46f4                                         ; _objc_release
000a203c ldp       x29, x30, [sp, #0x50]                           
000a2040 ldp       x20, x19, [sp, #0x40]                           
000a2044 ldp       x22, x21, [sp, #0x30]                           
000a2048 add       sp, sp, #0x60                                   
000a204c retab                                                     
