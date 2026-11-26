; Uploaded sample arm64e unslid VA 0x74f04..0x75114
00074f04 pacibsp                                                
00074f08 stp       x26, x25, [sp, #-0x50]!                      
00074f0c stp       x24, x23, [sp, #0x10]                        
00074f10 stp       x22, x21, [sp, #0x20]                        
00074f14 stp       x20, x19, [sp, #0x30]                        
00074f18 stp       x29, x30, [sp, #0x40]                        
00074f1c add       x29, sp, #0x40                               
00074f20 mov       x21, x1                                      
00074f24 mov       x22, x0                                      
00074f28 mov       x0, x2                                       
00074f2c bl        #0xa4704                                      ; _objc_retain
00074f30 mov       x19, x0                                      
00074f34 adrp      x1, #0xbb000                                 
00074f38 add       x1, x1, #0x4a4                                ; '_reason'
00074f3c bl        #0x6e448                                      ; _LGClockSavedIvarObject
00074f40 mov       x29, x29                                     
00074f44 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00074f48 mov       x20, x0                                      
00074f4c bl        #0x73f78                                      ; _LGClockSavedCoordinator
00074f50 mov       x29, x29                                     
00074f54 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00074f58 mov       x23, x0                                      
00074f5c bl        #0xa5140                                      ; objc_msgSend$allowsWallpaperDepthEffect
00074f60 cbz       w0, #0x75058                                 
00074f64 adrp      x8, #0xec000                                 
00074f68 ldr       x0, [x8, #0x518]                              ; &_OBJC_CLASS_$_NSString
00074f6c bl        #0xa46b4                                      ; _objc_opt_class
00074f70 mov       x1, x0                                       
00074f74 mov       x0, x20                                      
00074f78 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00074f7c tbz       w0, #0, #0x75058                             
00074f80 adrp      x2, #0xdc000                                 
00074f84 add       x2, x2, #0x170                                ; @'CSCoverSheetViewController'
00074f88 mov       x0, x20                                      
00074f8c bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
00074f90 mov       x24, x0                                      
00074f94 mov       x0, x23                                      
00074f98 bl        #0xa46f4                                      ; _objc_release
00074f9c tbz       w24, #0, #0x75060                            
00074fa0 adrp      x1, #0xbb000                                 
00074fa4 add       x1, x1, #0x4ac                                ; '_scene'
00074fa8 mov       x0, x22                                      
00074fac bl        #0x6e448                                      ; _LGClockSavedIvarObject
00074fb0 mov       x29, x29                                     
00074fb4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00074fb8 mov       x23, x0                                      
00074fbc adrp      x8, #0xeb000                                 
00074fc0 ldr       x1, [x8, #0x480]                              ; SEL settings
00074fc4 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00074fc8 tbz       w0, #0, #0x750c0                             
00074fcc mov       x0, x23                                      
00074fd0 bl        #0xafce0                                      ; objc_msgSend$settings
00074fd4 mov       x29, x29                                     
00074fd8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00074fdc cbz       x0, #0x750c0                                 
00074fe0 mov       x24, x0                                      
00074fe4 bl        #0x73f78                                      ; _LGClockSavedCoordinator
00074fe8 mov       x29, x29                                     
00074fec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00074ff0 mov       x25, x0                                      
00074ff4 mov       x2, x23                                      
00074ff8 mov       x3, x19                                      
00074ffc bl        #0xab060                                      ; objc_msgSend$registerWallpaperDepthScene:forReplica:
00075000 mov       x0, x25                                      
00075004 bl        #0xa46f4                                      ; _objc_release
00075008 adrp      x0, #0xee000                                 
0007500c add       x0, x0, #0xa10                                ; _gLGClockSavedWallpaperDepthQuerySettings
00075010 ldr       x8, [x0]                                      ; _gLGClockSavedWallpaperDepthQuerySettings
00075014 blraaz    x8                                           
00075018 mov       x25, x0                                      
0007501c ldr       x26, [x0]                                     ; _gLGClockSavedWallpaperDepthQuerySettings
00075020 str       x24, [x0]                                    
00075024 adrp      x8, #0xef000                                 
00075028 ldr       x8, [x8, #0x828]                             
0007502c mov       x0, x22                                      
00075030 mov       x1, x21                                      
00075034 mov       x2, x19                                      
00075038 blraaz    x8                                           
0007503c mov       x29, x29                                     
00075040 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00075044 mov       x21, x0                                      
00075048 str       x26, [x25]                                   
0007504c mov       x0, x24                                      
00075050 bl        #0xa46f4                                      ; _objc_release
00075054 b         #0x750e4                                     
00075058 mov       x0, x23                                      
0007505c bl        #0xa46f4                                      ; _objc_release
00075060 adrp      x8, #0xef000                                 
00075064 ldr       x8, [x8, #0x828]                             
00075068 mov       x0, x22                                      
0007506c mov       x1, x21                                      
00075070 mov       x2, x19                                      
00075074 blraaz    x8                                           
00075078 mov       x29, x29                                     
0007507c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00075080 mov       x21, x0                                      
00075084 mov       x0, x20                                      
00075088 bl        #0xa46f4                                      ; _objc_release
0007508c mov       x0, x19                                      
00075090 bl        #0xa46f4                                      ; _objc_release
00075094 mov       x0, x21                                      
00075098 ldp       x29, x30, [sp, #0x40]                        
0007509c ldp       x20, x19, [sp, #0x30]                        
000750a0 ldp       x22, x21, [sp, #0x20]                        
000750a4 ldp       x24, x23, [sp, #0x10]                        
000750a8 ldp       x26, x25, [sp], #0x50                        
000750ac autibsp                                                
000750b0 eor       x16, x30, x30, lsl #1                        
000750b4 tbz       x16, #0x3e, #0x750bc                         
000750b8 brk       #0xc471                                      
000750bc b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
000750c0 adrp      x8, #0xef000                                 
000750c4 ldr       x8, [x8, #0x828]                             
000750c8 mov       x0, x22                                      
000750cc mov       x1, x21                                      
000750d0 mov       x2, x19                                      
000750d4 blraaz    x8                                           
000750d8 mov       x29, x29                                     
000750dc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000750e0 mov       x21, x0                                      
000750e4 mov       x0, x23                                      
000750e8 bl        #0xa46f4                                      ; _objc_release
000750ec b         #0x75084                                     
000750f0 bl        #0xa45f4                                      ; _objc_begin_catch
000750f4 str       x26, [x25]                                   
000750f8 bl        #0xa4644                                      ; _objc_exception_rethrow
000750fc brk       #1                                           
00075100 mov       x19, x0                                      
00075104 bl        #0xa4624                                      ; _objc_end_catch
00075108 mov       x0, x19                                      
0007510c bl        #0xa4194                                      ; __Unwind_Resume
00075110 bl        #0xa47b4                                      ; _objc_terminate
