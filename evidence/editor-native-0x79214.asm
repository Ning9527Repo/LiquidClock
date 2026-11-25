; Local sample arm64e unslid VA 0x79214..0x79430
00079214 pacibsp                                                
00079218 stp       x28, x27, [sp, #-0x60]!                      
0007921c stp       x26, x25, [sp, #0x10]                        
00079220 stp       x24, x23, [sp, #0x20]                        
00079224 stp       x22, x21, [sp, #0x30]                        
00079228 stp       x20, x19, [sp, #0x40]                        
0007922c stp       x29, x30, [sp, #0x50]                        
00079230 add       x29, sp, #0x50                               
00079234 mov       x21, x3                                      
00079238 mov       x23, x1                                      
0007923c mov       x24, x0                                      
00079240 mov       x0, x2                                       
00079244 bl        #0xa4704                                      ; _objc_retain
00079248 mov       x19, x0                                      
0007924c adrp      x8, #0xee000                                 
00079250 ldr       x1, [x8, #0x840]                             
00079254 mov       x0, x24                                      
00079258 bl        #0xa4654                                      ; _objc_getAssociatedObject
0007925c mov       x29, x29                                     
00079260 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00079264 mov       x22, x0                                      
00079268 bl        #0x7b5dc                                     
0007926c mov       x29, x29                                     
00079270 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00079274 mov       x20, x0                                      
00079278 mov       x0, x22                                      
0007927c bl        #0xa46f4                                      ; _objc_release
00079280 adrp      x8, #0xee000                                 
00079284 ldr       x1, [x8, #0x848]                             
00079288 mov       x0, x24                                      
0007928c bl        #0xa4654                                      ; _objc_getAssociatedObject
00079290 mov       x29, x29                                     
00079294 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00079298 mov       x25, x0                                      
0007929c bl        #0x62ff8                                     
000792a0 mov       x29, x29                                     
000792a4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000792a8 mov       x22, x0                                      
000792ac mov       x0, x25                                      
000792b0 bl        #0xa46f4                                      ; _objc_release
000792b4 adrp      x8, #0xee000                                 
000792b8 ldr       x1, [x8, #0x850]                             
000792bc mov       x0, x24                                      
000792c0 bl        #0xa4654                                      ; _objc_getAssociatedObject
000792c4 mov       x29, x29                                     
000792c8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000792cc mov       x26, x0                                      
000792d0 bl        #0x7b68c                                     
000792d4 mov       x29, x29                                     
000792d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000792dc mov       x25, x0                                      
000792e0 mov       x0, x26                                      
000792e4 bl        #0xa46f4                                      ; _objc_release
000792e8 cmp       x20, #0                                      
000792ec ccmp      x22, #0, #0, eq                              
000792f0 ccmp      x25, #0, #0, eq                              
000792f4 b.eq      #0x793d0                                     
000792f8 cbz       x19, #0x79318                                
000792fc adrp      x8, #0xec000                                 
00079300 ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
00079304 bl        #0xa46b4                                      ; _objc_opt_class
00079308 mov       x1, x0                                       
0007930c mov       x0, x19                                      
00079310 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00079314 tbz       w0, #0, #0x793d0                             
00079318 adrp      x8, #0xee000                                 
0007931c ldr       x1, [x8, #0x920]                             
00079320 mov       x0, x24                                      
00079324 bl        #0xa4654                                      ; _objc_getAssociatedObject
00079328 mov       x29, x29                                     
0007932c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00079330 mov       x26, x0                                      
00079334 adrp      x8, #0xd4000                                 
00079338 ldr       x8, [x8, #0x7f8]                              ; &___NSDictionary0__struct
0007933c cmp       x0, #0                                       
00079340 csel      x8, x8, x0, eq                               
00079344 cmp       x19, #0                                      
00079348 csel      x0, x8, x19, eq                              
0007934c bl        #0xa9e00                                      ; objc_msgSend$mutableCopy
00079350 mov       x27, x0                                      
00079354 cbz       x20, #0x7936c                                
00079358 adrp      x3, #0xdb000                                 
0007935c add       x3, x3, #0xb50                                ; @'dylv.liquidass.clock.resizeProgress'
00079360 mov       x0, x27                                      
00079364 mov       x2, x20                                      
00079368 bl        #0xadec0                                      ; objc_msgSend$setObject:forKeyedSubscript:
0007936c cbz       x22, #0x79384                                
00079370 adrp      x3, #0xdb000                                 
00079374 add       x3, x3, #0xb70                                ; @'dylv.liquidass.clock.style'
00079378 mov       x0, x27                                      
0007937c mov       x2, x22                                      
00079380 bl        #0xadec0                                      ; objc_msgSend$setObject:forKeyedSubscript:
00079384 cbz       x25, #0x7939c                                
00079388 adrp      x3, #0xdb000                                 
0007938c add       x3, x3, #0xb90                                ; @'dylv.liquidass.clock.widgetsAtTop'
00079390 mov       x0, x27                                      
00079394 mov       x2, x25                                      
00079398 bl        #0xadec0                                      ; objc_msgSend$setObject:forKeyedSubscript:
0007939c adrp      x8, #0xef000                                 
000793a0 ldr       x8, [x8, #0x9c8]                             
000793a4 mov       x0, x24                                      
000793a8 mov       x1, x23                                      
000793ac mov       x2, x27                                      
000793b0 mov       x3, x21                                      
000793b4 blraaz    x8                                           
000793b8 mov       x21, x0                                      
000793bc mov       x0, x27                                      
000793c0 bl        #0xa46f4                                      ; _objc_release
000793c4 mov       x0, x26                                      
000793c8 bl        #0xa46f4                                      ; _objc_release
000793cc b         #0x793f0                                     
000793d0 adrp      x8, #0xef000                                 
000793d4 ldr       x8, [x8, #0x9c8]                             
000793d8 mov       x0, x24                                      
000793dc mov       x1, x23                                      
000793e0 mov       x2, x19                                      
000793e4 mov       x3, x21                                      
000793e8 blraaz    x8                                           
000793ec mov       x21, x0                                      
000793f0 mov       x0, x25                                      
000793f4 bl        #0xa46f4                                      ; _objc_release
000793f8 mov       x0, x22                                      
000793fc bl        #0xa46f4                                      ; _objc_release
00079400 mov       x0, x20                                      
00079404 bl        #0xa46f4                                      ; _objc_release
00079408 mov       x0, x19                                      
0007940c bl        #0xa46f4                                      ; _objc_release
00079410 mov       x0, x21                                      
00079414 ldp       x29, x30, [sp, #0x50]                        
00079418 ldp       x20, x19, [sp, #0x40]                        
0007941c ldp       x22, x21, [sp, #0x30]                        
00079420 ldp       x24, x23, [sp, #0x20]                        
00079424 ldp       x26, x25, [sp, #0x10]                        
00079428 ldp       x28, x27, [sp], #0x60                        
0007942c retab                                                  
