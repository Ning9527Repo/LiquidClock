# arm64e unslid VA 0x14554..0x14708; FAT offset 0xfc000
00014554 pacibsp                                                   
00014558 stp       x20, x19, [sp, #-0x20]!                         
0001455c stp       x29, x30, [sp, #0x10]                           
00014560 add       x29, sp, #0x10                                  
00014564 adrp      x0, #0xb6000                                    
00014568 add       x0, x0, #0xbc1                                   ; 0xb6bc1 | 'MTMaterialView'
0001456c bl        #0xa4664                                         ; _objc_getClass
00014570 mov       x20, x0                                         
00014574 adrp      x8, #0xeb000                                    
00014578 ldr       x19, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
0001457c adrp      x3, #0xee000                                    
00014580 add       x3, x3, #0xd78                                   ; 0xeed78
00014584 adrp      x16, #0x14000                                   
00014588 add       x16, x16, #0x708                                 ; 0x14708
0001458c paciza    x16                                             
00014590 mov       x2, x16                                         
00014594 mov       x1, x19                                         
00014598 bl        #0xa4054                                         ; _MSHookMessageEx
0001459c adrp      x8, #0xeb000                                    
000145a0 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
000145a4 adrp      x3, #0xee000                                    
000145a8 add       x3, x3, #0xd80                                   ; 0xeed80
000145ac adrp      x16, #0x14000                                   
000145b0 add       x16, x16, #0x774                                 ; 0x14774
000145b4 paciza    x16                                             
000145b8 mov       x2, x16                                         
000145bc mov       x0, x20                                         
000145c0 bl        #0xa4054                                         ; _MSHookMessageEx
000145c4 adrp      x0, #0xb6000                                    
000145c8 add       x0, x0, #0x5dc                                   ; 0xb65dc | 'UILabel'
000145cc bl        #0xa4664                                         ; _objc_getClass
000145d0 mov       x20, x0                                         
000145d4 adrp      x8, #0xeb000                                    
000145d8 ldr       x1, [x8, #0x248]                                 ; 0xeb248 | SEL setTextColor:
000145dc adrp      x3, #0xee000                                    
000145e0 add       x3, x3, #0xd88                                   ; 0xeed88
000145e4 adrp      x16, #0x14000                                   
000145e8 add       x16, x16, #0x7b4                                 ; 0x147b4
000145ec paciza    x16                                             
000145f0 mov       x2, x16                                         
000145f4 bl        #0xa4054                                         ; _MSHookMessageEx
000145f8 adrp      x8, #0xea000                                    
000145fc ldr       x1, [x8, #0x4c8]                                 ; 0xea4c8 | SEL setAttributedText:
00014600 adrp      x3, #0xee000                                    
00014604 add       x3, x3, #0xd90                                   ; 0xeed90
00014608 adrp      x16, #0x14000                                   
0001460c add       x16, x16, #0x858                                 ; 0x14858
00014610 paciza    x16                                             
00014614 mov       x2, x16                                         
00014618 mov       x0, x20                                         
0001461c bl        #0xa4054                                         ; _MSHookMessageEx
00014620 adrp      x3, #0xee000                                    
00014624 add       x3, x3, #0xd98                                   ; 0xeed98
00014628 adrp      x16, #0x14000                                   
0001462c add       x16, x16, #0x900                                 ; 0x14900
00014630 paciza    x16                                             
00014634 mov       x2, x16                                         
00014638 mov       x0, x20                                         
0001463c mov       x1, x19                                         
00014640 bl        #0xa4054                                         ; _MSHookMessageEx
00014644 adrp      x8, #0xec000                                    
00014648 ldr       x1, [x8, #0xd8]                                  ; 0xec0d8 | SEL traitCollectionDidChange:
0001464c adrp      x3, #0xee000                                    
00014650 add       x3, x3, #0xda0                                   ; 0xeeda0
00014654 adrp      x16, #0x14000                                   
00014658 add       x16, x16, #0x9d8                                 ; 0x149d8
0001465c paciza    x16                                             
00014660 mov       x2, x16                                         
00014664 mov       x0, x20                                         
00014668 bl        #0xa4054                                         ; _MSHookMessageEx
0001466c adrp      x0, #0xb6000                                    
00014670 add       x0, x0, #0xd89                                   ; 0xb6d89 | 'NCNotificationShortLookViewController'
00014674 bl        #0xa4664                                         ; _objc_getClass
00014678 mov       x19, x0                                         
0001467c adrp      x8, #0xec000                                    
00014680 ldr       x1, [x8, #0xe0]                                  ; 0xec0e0 | SEL viewDidLoad
00014684 adrp      x3, #0xee000                                    
00014688 add       x3, x3, #0xda8                                   ; 0xeeda8
0001468c adrp      x16, #0x14000                                   
00014690 add       x16, x16, #0xab0                                 ; 0x14ab0
00014694 paciza    x16                                             
00014698 mov       x2, x16                                         
0001469c bl        #0xa4054                                         ; _MSHookMessageEx
000146a0 adrp      x8, #0xeb000                                    
000146a4 ldr       x1, [x8, #0xf90]                                 ; 0xebf90 | SEL viewDidLayoutSubviews
000146a8 adrp      x3, #0xee000                                    
000146ac add       x3, x3, #0xdb0                                   ; 0xeedb0
000146b0 adrp      x16, #0x14000                                   
000146b4 add       x16, x16, #0xaf0                                 ; 0x14af0
000146b8 paciza    x16                                             
000146bc mov       x2, x16                                         
000146c0 mov       x0, x19                                         
000146c4 bl        #0xa4054                                         ; _MSHookMessageEx
000146c8 adrp      x8, #0xeb000                                    
000146cc ldr       x1, [x8, #0xf88]                                 ; 0xebf88 | SEL viewDidAppear:
000146d0 adrp      x3, #0xee000                                    
000146d4 add       x3, x3, #0xdb8                                   ; 0xeedb8
000146d8 adrp      x16, #0x14000                                   
000146dc add       x16, x16, #0xb30                                 ; 0x14b30
000146e0 paciza    x16                                             
000146e4 mov       x2, x16                                         
000146e8 mov       x0, x19                                         
000146ec ldp       x29, x30, [sp, #0x10]                           
000146f0 ldp       x20, x19, [sp], #0x20                           
000146f4 autibsp                                                   
000146f8 eor       x16, x30, x30, lsl #1                           
000146fc tbz       x16, #0x3e, #0x14704                            
00014700 brk       #0xc471                                         
00014704 b         #0xa4054                                         ; _MSHookMessageEx
