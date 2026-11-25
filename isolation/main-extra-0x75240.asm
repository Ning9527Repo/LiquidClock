# arm64e unslid VA 0x75240..0x752b8; FAT offset 0xfc000
00075240 pacibsp                                                   
00075244 stp       x20, x19, [sp, #-0x20]!                         
00075248 stp       x29, x30, [sp, #0x10]                           
0007524c add       x29, sp, #0x10                                  
00075250 mov       x19, x0                                         
00075254 adrp      x8, #0xeb000                                    
00075258 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
0007525c adrp      x3, #0xef000                                    
00075260 add       x3, x3, #0x838                                   ; 0xef838
00075264 adrp      x16, #0x75000                                   
00075268 add       x16, x16, #0x2b8                                 ; 0x752b8
0007526c paciza    x16                                             
00075270 mov       x2, x16                                         
00075274 bl        #0xa4054                                         ; _MSHookMessageEx
00075278 adrp      x8, #0xec000                                    
0007527c ldr       x1, [x8, #0x378]                                 ; 0xec378 | SEL prepareForReuse
00075280 adrp      x3, #0xef000                                    
00075284 add       x3, x3, #0x840                                   ; 0xef840
00075288 adrp      x16, #0x75000                                   
0007528c add       x16, x16, #0x300                                 ; 0x75300
00075290 paciza    x16                                             
00075294 mov       x2, x16                                         
00075298 mov       x0, x19                                         
0007529c ldp       x29, x30, [sp, #0x10]                           
000752a0 ldp       x20, x19, [sp], #0x20                           
000752a4 autibsp                                                   
000752a8 eor       x16, x30, x30, lsl #1                           
000752ac tbz       x16, #0x3e, #0x752b4                            
000752b0 brk       #0xc471                                         
000752b4 b         #0xa4054                                         ; _MSHookMessageEx
