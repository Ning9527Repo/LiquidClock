; prefs arm64e unslid VA [0x1ffbc,0x2049c); slice_offset=0xa0000
0001ffbc pacibsp                                                
0001ffc0 sub       sp, sp, #0x1d0                               
0001ffc4 stp       x28, x27, [sp, #0x170]                       
0001ffc8 stp       x26, x25, [sp, #0x180]                       
0001ffcc stp       x24, x23, [sp, #0x190]                       
0001ffd0 stp       x22, x21, [sp, #0x1a0]                       
0001ffd4 stp       x20, x19, [sp, #0x1b0]                       
0001ffd8 stp       x29, x30, [sp, #0x1c0]                       
0001ffdc add       x29, sp, #0x1c0                              
0001ffe0 adrp      x8, #0x78000                                 
0001ffe4 ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001ffe8 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001ffec stur      x8, [x29, #-0x60]                            
0001fff0 adrp      x8, #0x8b000                                 
0001fff4 ldr       x0, [x8, #0xb20]                              ; &_OBJC_CLASS_$_UIScreen
0001fff8 bl        #0x5c4c0                                      ; objc_msgSend$mainScreen
0001fffc mov       x29, x29                                     
00020000 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020004 mov       x19, x0                                      
00020008 bl        #0x5c540                                      ; objc_msgSend$maximumFramesPerSecond
0002000c str       x0, [sp, #8]                                 
00020010 mov       x0, x19                                      
00020014 bl        #0x58e04                                      ; _objc_release
00020018 adrp      x8, #0x8b000                                 
0002001c ldr       x0, [x8, #0xb38]                              ; &_OBJC_CLASS_$_NSMutableArray
00020020 bl        #0x59840                                      ; objc_msgSend$array
00020024 mov       x29, x29                                     
00020028 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0002002c mov       x19, x0                                      
00020030 movi      v0.2d, #0000000000000000                     
00020034 stp       q0, q0, [sp, #0x10]                          
00020038 stp       q0, q0, [sp, #0x30]                          
0002003c adrp      x0, #0x7c000                                 
00020040 add       x0, x0, #0x650                                ; @'Clock'
00020044 mov       x1, x0                                       
00020048 bl        #0x1d368                                     
0002004c mov       x29, x29                                     
00020050 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020054 mov       x21, x0                                      
00020058 add       x2, sp, #0x10                                
0002005c add       x3, sp, #0x68                                
00020060 mov       w4, #0x10                                    
00020064 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00020068 cbz       x0, #0x20110                                 
0002006c mov       x24, x0                                      
00020070 ldr       x8, [sp, #0x20]                              
00020074 ldr       x28, [x8]                                    
00020078 adrp      x22, #0x7b000                                
0002007c add       x22, x22, #0x7b0                              ; @'key'
00020080 adrp      x23, #0x7c000                                
00020084 add       x23, x23, #0x670                              ; @'Clock.SpecularMode'
00020088 mov       x20, #0                                      
0002008c ldr       x8, [sp, #0x20]                              
00020090 ldr       x8, [x8]                                     
00020094 cmp       x8, x28                                      
00020098 b.eq      #0x200a4                                     
0002009c mov       x0, x21                                      
000200a0 bl        #0x58d54                                      ; _objc_enumerationMutation
000200a4 ldr       x8, [sp, #0x18]                              
000200a8 ldr       x25, [x8, x20, lsl #3]                       
000200ac mov       x0, x25                                      
000200b0 mov       x2, x22                                      
000200b4 bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
000200b8 mov       x29, x29                                     
000200bc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000200c0 mov       x26, x0                                      
000200c4 mov       x2, x23                                      
000200c8 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
000200cc mov       x27, x0                                      
000200d0 mov       x0, x26                                      
000200d4 bl        #0x58e04                                      ; _objc_release
000200d8 tbnz      w27, #0, #0x200e8                            
000200dc mov       x0, x19                                      
000200e0 mov       x2, x25                                      
000200e4 bl        #0x593e0                                      ; objc_msgSend$addObject:
000200e8 add       x20, x20, #1                                 
000200ec cmp       x24, x20                                     
000200f0 b.ne      #0x2008c                                     
000200f4 add       x2, sp, #0x10                                
000200f8 add       x3, sp, #0x68                                
000200fc mov       x0, x21                                      
00020100 mov       w4, #0x10                                    
00020104 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00020108 mov       x24, x0                                      
0002010c cbnz      x0, #0x20088                                 
00020110 adrp      x25, #0x7b000                                
00020114 add       x25, x25, #0x7b0                              ; @'key'
00020118 mov       x0, x21                                      
0002011c bl        #0x58e04                                      ; _objc_release
00020120 adrp      x0, #0x7c000                                 
00020124 add       x0, x0, #0x6b0                                ; @'prefs.control.clock_fps_limit'
00020128 bl        #0x1b5dc                                      ; _LGLocalized
0002012c mov       x29, x29                                     
00020130 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020134 mov       x21, x0                                      
00020138 adrp      x0, #0x7c000                                 
0002013c add       x0, x0, #0x6d0                                ; @'prefs.subtitle.clock_fps_limit'
00020140 bl        #0x1b5dc                                      ; _LGLocalized
00020144 mov       x29, x29                                     
00020148 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0002014c mov       x22, x0                                      
00020150 ldr       x8, [sp, #8]                                 
00020154 scvtf     d0, x8                                       
00020158 adrp      x0, #0x7c000                                 
0002015c add       x0, x0, #0x690                                ; @'Clock.FPS'
00020160 fmov      d1, #1.00000000                              
00020164 mov       x1, x21                                      
00020168 mov       x2, x22                                      
0002016c fmov      d2, d0                                       
00020170 mov       x3, #0                                       
00020174 bl        #0x1d058                                      ; _LGSliderSetting
00020178 mov       x29, x29                                     
0002017c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020180 mov       x20, x0                                      
00020184 mov       x0, x19                                      
00020188 mov       x2, x20                                      
0002018c mov       x3, #0                                       
00020190 bl        #0x5ba20                                      ; objc_msgSend$insertObject:atIndex:
00020194 mov       x0, x20                                      
00020198 bl        #0x58e04                                      ; _objc_release
0002019c mov       x0, x22                                      
000201a0 bl        #0x58e04                                      ; _objc_release
000201a4 mov       x0, x21                                      
000201a8 bl        #0x58e04                                      ; _objc_release
000201ac str       x19, [sp, #0x58]                             
000201b0 adrp      x0, #0x7e000                                 
000201b4 add       x0, x0, #0x490                                ; @'prefs.control.date_format_enabled'
000201b8 bl        #0x1b5dc                                      ; _LGLocalized
000201bc mov       x29, x29                                     
000201c0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000201c4 mov       x21, x0                                      
000201c8 adrp      x0, #0x7e000                                 
000201cc add       x0, x0, #0x4b0                                ; @'prefs.subtitle.date_format_enabled'
000201d0 bl        #0x1b5dc                                      ; _LGLocalized
000201d4 mov       x29, x29                                     
000201d8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000201dc mov       x22, x0                                      
000201e0 adrp      x0, #0x7e000                                 
000201e4 add       x0, x0, #0x470                                ; @'Lockscreen.Clock.DateFormat.Enabled'
000201e8 mov       x1, x21                                      
000201ec mov       x2, x22                                      
000201f0 mov       w3, #1                                       
000201f4 bl        #0x1cb18                                      ; _LGSwitchSetting
000201f8 mov       x29, x29                                     
000201fc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020200 mov       x23, x0                                      
00020204 bl        #0x5c780                                      ; objc_msgSend$mutableCopy
00020208 mov       x20, x0                                      
0002020c mov       x0, x23                                      
00020210 bl        #0x58e04                                      ; _objc_release
00020214 mov       x0, x22                                      
00020218 bl        #0x58e04                                      ; _objc_release
0002021c mov       x0, x21                                      
00020220 bl        #0x58e04                                      ; _objc_release
00020224 adrp      x2, #0x78000                                 
00020228 ldr       x2, [x2, #0x4f8]                              ; &___kCFBooleanTrue | x2 <- &___kCFBooleanTrue
0002022c adrp      x3, #0x7b000                                 
00020230 add       x3, x3, #0xb90                                ; @'controls_following_panel'
00020234 mov       x0, x20                                      
00020238 bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
0002023c adrp      x0, #0x7e000                                 
00020240 add       x0, x0, #0x4d0                                ; @'prefs.section.lockscreen_date_label.title'
00020244 bl        #0x1b5dc                                      ; _LGLocalized
00020248 mov       x29, x29                                     
0002024c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020250 mov       x21, x0                                      
00020254 adrp      x0, #0x7e000                                 
00020258 add       x0, x0, #0x4f0                                ; @'prefs.section.lockscreen_date_label.subtitle'
0002025c bl        #0x5bf00                                      ; objc_msgSend$length
00020260 cbz       x0, #0x20280                                 
00020264 adrp      x0, #0x7e000                                 
00020268 add       x0, x0, #0x4f0                                ; @'prefs.section.lockscreen_date_label.subtitle'
0002026c bl        #0x1b5dc                                      ; _LGLocalized
00020270 mov       x29, x29                                     
00020274 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020278 mov       x1, x0                                       
0002027c b         #0x20284                                     
00020280 mov       x1, #0                                       
00020284 mov       x0, x21                                      
00020288 str       x1, [sp, #8]                                 
0002028c bl        #0x1cc78                                      ; _LGSectionSetting
00020290 mov       x29, x29                                     
00020294 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020298 mov       x23, x0                                      
0002029c stur      x0, [x29, #-0x78]                            
000202a0 mov       x0, x20                                      
000202a4 bl        #0x5a4e0                                      ; objc_msgSend$copy
000202a8 mov       x24, x0                                      
000202ac adrp      x8, #0x7b000                                 
000202b0 add       x8, x8, #0x970                                ; @'type'
000202b4 stur      x0, [x29, #-0x70]                            
000202b8 adrp      x9, #0x7b000                                 
000202bc add       x9, x9, #0xef0                                ; @'string'
000202c0 adrp      x10, #0x7e000                                
000202c4 add       x10, x10, #0x510                              ; @'Lockscreen.Clock.DateFormat.Format'
000202c8 stp       x8, x25, [x29, #-0xd8]                       
000202cc stp       x9, x10, [x29, #-0xa8]                       
000202d0 adrp      x8, #0x7b000                                 
000202d4 add       x8, x8, #0x9d0                                ; @'title'
000202d8 stur      x8, [x29, #-0xc8]                            
000202dc adrp      x0, #0x7e000                                 
000202e0 add       x0, x0, #0x530                                ; @'prefs.control.date_format'
000202e4 bl        #0x1b5dc                                      ; _LGLocalized
000202e8 mov       x29, x29                                     
000202ec bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000202f0 mov       x25, x0                                      
000202f4 stur      x0, [x29, #-0x98]                            
000202f8 adrp      x8, #0x7b000                                 
000202fc add       x8, x8, #0x9f0                                ; @'subtitle'
00020300 stur      x8, [x29, #-0xc0]                            
00020304 adrp      x0, #0x7e000                                 
00020308 add       x0, x0, #0x550                                ; @'prefs.subtitle.date_format'
0002030c bl        #0x1b5dc                                      ; _LGLocalized
00020310 mov       x29, x29                                     
00020314 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020318 mov       x27, x0                                      
0002031c adrp      x8, #0x7b000                                 
00020320 add       x8, x8, #0xaf0                                ; @'default'
00020324 adrp      x9, #0x7a000                                 
00020328 add       x9, x9, #0xfb0                                ; @''
0002032c stp       x0, x9, [x29, #-0x90]                        
00020330 adrp      x9, #0x7b000                                 
00020334 add       x9, x9, #0xdf0                                ; @'placeholder'
00020338 stp       x8, x9, [x29, #-0xb8]                        
0002033c adrp      x8, #0x7e000                                 
00020340 add       x8, x8, #0x570                                ; @'EEE MMM d'
00020344 stur      x8, [x29, #-0x80]                            
00020348 adrp      x8, #0x8b000                                 
0002034c ldr       x0, [x8, #0xaf0]                              ; &_OBJC_CLASS_$_NSDictionary
00020350 sub       x2, x29, #0xa8                               
00020354 sub       x3, x29, #0xd8                               
00020358 mov       w4, #6                                       
0002035c bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
00020360 mov       x29, x29                                     
00020364 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020368 mov       x28, x0                                      
0002036c adrp      x1, #0x7e000                                 
00020370 add       x1, x1, #0x470                                ; @'Lockscreen.Clock.DateFormat.Enabled'
00020374 adrp      x2, #0x78000                                 
00020378 ldr       x2, [x2, #0x4f8]                              ; &___kCFBooleanTrue | x2 <- &___kCFBooleanTrue
0002037c bl        #0x231f8                                     
00020380 mov       x29, x29                                     
00020384 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020388 mov       x22, x20                                     
0002038c mov       x20, x21                                     
00020390 mov       x21, x0                                      
00020394 stur      x0, [x29, #-0x68]                            
00020398 adrp      x8, #0x8b000                                 
0002039c ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
000203a0 sub       x2, x29, #0x78                               
000203a4 mov       w3, #3                                       
000203a8 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
000203ac mov       x29, x29                                     
000203b0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000203b4 mov       x26, x0                                      
000203b8 mov       x0, x21                                      
000203bc bl        #0x58e04                                      ; _objc_release
000203c0 mov       x0, x28                                      
000203c4 bl        #0x58e04                                      ; _objc_release
000203c8 mov       x0, x27                                      
000203cc bl        #0x58e04                                      ; _objc_release
000203d0 mov       x0, x25                                      
000203d4 bl        #0x58e04                                      ; _objc_release
000203d8 mov       x0, x24                                      
000203dc bl        #0x58e04                                      ; _objc_release
000203e0 mov       x0, x23                                      
000203e4 bl        #0x58e04                                      ; _objc_release
000203e8 ldr       x0, [sp, #8]                                 
000203ec bl        #0x58e04                                      ; _objc_release
000203f0 mov       x0, x20                                      
000203f4 bl        #0x58e04                                      ; _objc_release
000203f8 mov       x0, x22                                      
000203fc bl        #0x58e04                                      ; _objc_release
00020400 str       x26, [sp, #0x60]                             
00020404 adrp      x8, #0x8b000                                 
00020408 ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
0002040c add       x2, sp, #0x58                                
00020410 mov       w3, #2                                       
00020414 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
00020418 mov       x29, x29                                     
0002041c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020420 mov       x21, x0                                      
00020424 bl        #0x1f53c                                     
00020428 mov       x29, x29                                     
0002042c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00020430 mov       x20, x0                                      
00020434 mov       x0, x21                                      
00020438 bl        #0x58e04                                      ; _objc_release
0002043c mov       x0, x26                                      
00020440 bl        #0x58e04                                      ; _objc_release
00020444 mov       x0, x19                                      
00020448 bl        #0x58e04                                      ; _objc_release
0002044c ldur      x8, [x29, #-0x60]                            
00020450 adrp      x9, #0x78000                                 
00020454 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
00020458 ldr       x9, [x9]                                      ; &___objc_personality_v0
0002045c cmp       x9, x8                                       
00020460 b.ne      #0x20498                                     
00020464 mov       x0, x20                                      
00020468 ldp       x29, x30, [sp, #0x1c0]                       
0002046c ldp       x20, x19, [sp, #0x1b0]                       
00020470 ldp       x22, x21, [sp, #0x1a0]                       
00020474 ldp       x24, x23, [sp, #0x190]                       
00020478 ldp       x26, x25, [sp, #0x180]                       
0002047c ldp       x28, x27, [sp, #0x170]                       
00020480 add       sp, sp, #0x1d0                               
00020484 autibsp                                                
00020488 eor       x16, x30, x30, lsl #1                        
0002048c tbz       x16, #0x3e, #0x20494                         
00020490 brk       #0xc471                                      
00020494 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
00020498 bl        #0x58a94                                      ; ___stack_chk_fail
