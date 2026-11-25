; main arm64e unslid VA [0x6d098,0x6d1d4); slice_offset=0xfc000
0006d098 pacibsp                                                
0006d09c sub       sp, sp, #0x40                                
0006d0a0 stp       x22, x21, [sp, #0x10]                        
0006d0a4 stp       x20, x19, [sp, #0x20]                        
0006d0a8 stp       x29, x30, [sp, #0x30]                        
0006d0ac add       x29, sp, #0x30                               
0006d0b0 mov       x20, x0                                      
0006d0b4 str       xzr, [sp, #8]                                
0006d0b8 adrp      x0, #0xd5000                                 
0006d0bc add       x0, x0, #0xc78                                ; &__NSConcreteGlobalBlock
0006d0c0 add       x1, sp, #8                                   
0006d0c4 bl        #0xa0de0                                      ; _LGPerformPreferencesTransaction
0006d0c8 mov       x21, x0                                      
0006d0cc ldr       x0, [sp, #8]                                 
0006d0d0 bl        #0xa4704                                      ; _objc_retain
0006d0d4 mov       x19, x0                                      
0006d0d8 tbz       w21, #0, #0x6d0f8                            
0006d0dc mov       x0, x20                                      
0006d0e0 bl        #0xa7820                                      ; objc_msgSend$finish
0006d0e4 adrp      x8, #0xd7000                                 
0006d0e8 add       x8, x8, #0x710                                ; _LGPrefsChangedNotificationCString
0006d0ec ldr       x0, [x8]                                      ; _LGPrefsChangedNotificationCString
0006d0f0 bl        #0xa4554                                      ; _notify_post
0006d0f4 b         #0x6d1b8                                     
0006d0f8 adrp      x8, #0xec000                                 
0006d0fc ldr       x21, [x8, #0x508]                             ; &_OBJC_CLASS_$_UIAlertController
0006d100 mov       x0, x19                                      
0006d104 bl        #0xa9820                                      ; objc_msgSend$localizedDescription
0006d108 mov       x29, x29                                     
0006d10c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d110 mov       x22, x0                                      
0006d114 adrp      x2, #0xdb000                                 
0006d118 add       x2, x2, #0xfd0                                ; @"Couldn't save clock"
0006d11c mov       x0, x21                                      
0006d120 mov       x3, x22                                      
0006d124 mov       w4, #1                                       
0006d128 bl        #0xa50c0                                      ; objc_msgSend$alertControllerWithTitle:message:preferredStyle:
0006d12c mov       x29, x29                                     
0006d130 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d134 mov       x21, x0                                      
0006d138 mov       x0, x22                                      
0006d13c bl        #0xa46f4                                      ; _objc_release
0006d140 adrp      x8, #0xec000                                 
0006d144 ldr       x0, [x8, #0x510]                              ; &_OBJC_CLASS_$_UIAlertAction
0006d148 adrp      x2, #0xd7000                                 
0006d14c add       x2, x2, #0xbb0                                ; @'OK'
0006d150 mov       x3, #0                                       
0006d154 mov       x4, #0                                       
0006d158 bl        #0xa4cc0                                      ; objc_msgSend$actionWithTitle:style:handler:
0006d15c mov       x29, x29                                     
0006d160 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d164 mov       x22, x0                                      
0006d168 mov       x0, x21                                      
0006d16c mov       x2, x22                                      
0006d170 bl        #0xa4da0                                      ; objc_msgSend$addAction:
0006d174 mov       x0, x22                                      
0006d178 bl        #0xa46f4                                      ; _objc_release
0006d17c mov       x0, x20                                      
0006d180 bl        #0xaac00                                      ; objc_msgSend$presentedViewController
0006d184 mov       x29, x29                                     
0006d188 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d18c mov       x22, x0                                      
0006d190 cmp       x0, #0                                       
0006d194 csel      x0, x20, x0, eq                              
0006d198 mov       x2, x21                                      
0006d19c mov       w3, #1                                       
0006d1a0 mov       x4, #0                                       
0006d1a4 bl        #0xaab80                                      ; objc_msgSend$presentViewController:animated:completion:
0006d1a8 mov       x0, x22                                      
0006d1ac bl        #0xa46f4                                      ; _objc_release
0006d1b0 mov       x0, x21                                      
0006d1b4 bl        #0xa46f4                                      ; _objc_release
0006d1b8 mov       x0, x19                                      
0006d1bc bl        #0xa46f4                                      ; _objc_release
0006d1c0 ldp       x29, x30, [sp, #0x30]                        
0006d1c4 ldp       x20, x19, [sp, #0x20]                        
0006d1c8 ldp       x22, x21, [sp, #0x10]                        
0006d1cc add       sp, sp, #0x40                                
0006d1d0 retab                                                  
