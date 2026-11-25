; Local sample arm64e unslid VA 0x7b714..0x7b778
0007b714 pacibsp                                                
0007b718 stp       x20, x19, [sp, #-0x20]!                      
0007b71c stp       x29, x30, [sp, #0x10]                        
0007b720 add       x29, sp, #0x10                               
0007b724 bl        #0xa4704                                      ; _objc_retain
0007b728 mov       x19, x0                                      
0007b72c adrp      x0, #0xda000                                 
0007b730 add       x0, x0, #0xb10                                ; @'CSProminentTimeView'
0007b734 bl        #0xa4064                                      ; _NSClassFromString
0007b738 cbz       x0, #0x7b744                                 
0007b73c mov       w20, #0                                      
0007b740 b         #0x7b760                                     
0007b744 adrp      x0, #0xda000                                 
0007b748 add       x0, x0, #0xb30                                ; @'SBFLockScreenDateView'
0007b74c bl        #0xa4064                                      ; _NSClassFromString
0007b750 mov       x1, x0                                       
0007b754 mov       x0, x19                                      
0007b758 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0007b75c mov       x20, x0                                      
0007b760 mov       x0, x19                                      
0007b764 bl        #0xa46f4                                      ; _objc_release
0007b768 and       w0, w20, #1                                  
0007b76c ldp       x29, x30, [sp, #0x10]                        
0007b770 ldp       x20, x19, [sp], #0x20                        
0007b774 retab                                                  
