; prefs arm64e unslid VA [0x277b0,0x277c8); slice_offset=0xa0000
000277b0 adrp      x8, #0x8c000                                 
000277b4 ldr       x0, [x8, #0xf08]                             
000277b8 adrp      x9, #0x81000                                 
000277bc add       x9, x9, #0x648                                ; &_OBJC_CLASS_$_NSConstantDictionary
000277c0 str       x9, [x8, #0xf08]                             
000277c4 b         #0x58e04                                      ; _objc_release
