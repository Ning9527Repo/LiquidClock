# arm64e unslid VA 0xa1be4..0xa1c2c; FAT offset 0xfc000
000a1be4 pacibsp                                                   
000a1be8 stp       x20, x19, [sp, #-0x20]!                         
000a1bec stp       x29, x30, [sp, #0x10]                           
000a1bf0 add       x29, sp, #0x10                                  
000a1bf4 bl        #0xa1b0c                                         ; _LGMainBundleIdentifier
000a1bf8 mov       x29, x29                                        
000a1bfc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000a1c00 mov       x19, x0                                         
000a1c04 adrp      x2, #0xd9000                                    
000a1c08 add       x2, x2, #0xb0                                    ; 0xd90b0 | @'com.apple.springboard'
000a1c0c bl        #0xa8d60                                         ; _objc_msgSend
000a1c10 mov       x20, x0                                         
000a1c14 mov       x0, x19                                         
000a1c18 bl        #0xa46f4                                         ; _objc_release
000a1c1c mov       x0, x20                                         
000a1c20 ldp       x29, x30, [sp, #0x10]                           
000a1c24 ldp       x20, x19, [sp], #0x20                           
000a1c28 retab                                                     
