# arm64e unslid VA 0x5984c..0x59a0c; FAT offset 0xfc000
0005984c pacibsp                                                   
00059850 sub       sp, sp, #0x40                                   
00059854 stp       x20, x19, [sp, #0x20]                           
00059858 stp       x29, x30, [sp, #0x30]                           
0005985c add       x29, sp, #0x30                                  
00059860 bl        #0xa1be4                                         ; _LGIsSpringBoardProcess
00059864 cbz       w0, #0x599fc                                    
00059868 adrp      x8, #0xec000                                    
0005986c ldr       x0, [x8, #0x4a8]                                 ; 0xec4a8 | &_OBJC_CLASS_$_NSProcessInfo
00059870 bl        #0xaada0                                         ; _objc_msgSend
00059874 mov       x29, x29                                        
00059878 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0005987c mov       x19, x0                                         
00059880 cbz       x0, #0x59934                                    
00059884 add       x8, sp, #8                                      
00059888 mov       x0, x19                                         
0005988c bl        #0xaa300                                         ; _objc_msgSend
00059890 ldr       x8, [sp, #8]                                    
00059894 cmp       x8, #0x11                                       
00059898 b.lt      #0x5993c                                        
0005989c adrp      x0, #0xdb000                                    
000598a0 add       x0, x0, #0x750                                   ; 0xdb750 | @'SBElasticSliderView'
000598a4 bl        #0xa4064                                         ; _NSClassFromString
000598a8 mov       x20, x0                                         
000598ac mov       x0, x19                                         
000598b0 bl        #0xa46f4                                         ; _objc_release
000598b4 cbz       x20, #0x59944                                   
000598b8 adrp      x0, #0xb9000                                    
000598bc add       x0, x0, #0xd0a                                   ; 0xb9d0a | 'SBElasticSliderView'
000598c0 bl        #0xa4664                                         ; _objc_getClass
000598c4 mov       x19, x0                                         
000598c8 adrp      x8, #0xeb000                                    
000598cc ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
000598d0 adrp      x3, #0xef000                                    
000598d4 add       x3, x3, #0x670                                   ; 0xef670
000598d8 adrp      x16, #0x59000                                   
000598dc add       x16, x16, #0xa0c                                 ; 0x59a0c
000598e0 paciza    x16                                             
000598e4 mov       x2, x16                                         
000598e8 bl        #0xa4054                                         ; _MSHookMessageEx
000598ec adrp      x8, #0xeb000                                    
000598f0 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
000598f4 adrp      x3, #0xef000                                    
000598f8 add       x3, x3, #0x678                                   ; 0xef678
000598fc adrp      x16, #0x59000                                   
00059900 add       x16, x16, #0xa88                                 ; 0x59a88
00059904 paciza    x16                                             
00059908 mov       x2, x16                                         
0005990c mov       x0, x19                                         
00059910 bl        #0xa4054                                         ; _MSHookMessageEx
00059914 adrp      x8, #0xec000                                    
00059918 ldr       x1, [x8, #0x278]                                 ; 0xec278 | SEL layoutElasticContentViews
0005991c adrp      x3, #0xef000                                    
00059920 add       x3, x3, #0x680                                   ; 0xef680
00059924 adrp      x16, #0x59000                                   
00059928 add       x16, x16, #0xac8                                 ; 0x59ac8
0005992c paciza    x16                                             
00059930 b         #0x599e4                                        
00059934 stp       xzr, xzr, [sp, #8]                              
00059938 str       xzr, [sp, #0x18]                                
0005993c mov       x0, x19                                         
00059940 bl        #0xa46f4                                         ; _objc_release
00059944 adrp      x0, #0xb9000                                    
00059948 add       x0, x0, #0xd1e                                   ; 0xb9d1e | 'SBElasticSliderMaterialWrapperView'
0005994c bl        #0xa4664                                         ; _objc_getClass
00059950 mov       x19, x0                                         
00059954 adrp      x8, #0xe9000                                    
00059958 ldr       x1, [x8, #0x6f0]                                 ; 0xe96f0 | SEL initWithFrame:
0005995c adrp      x3, #0xef000                                    
00059960 add       x3, x3, #0x688                                   ; 0xef688
00059964 adrp      x16, #0x59000                                   
00059968 add       x16, x16, #0xb08                                 ; 0x59b08
0005996c paciza    x16                                             
00059970 mov       x2, x16                                         
00059974 bl        #0xa4054                                         ; _MSHookMessageEx
00059978 adrp      x8, #0xec000                                    
0005997c ldr       x1, [x8, #0x280]                                 ; 0xec280 | SEL initWithSliderView:
00059980 adrp      x3, #0xef000                                    
00059984 add       x3, x3, #0x690                                   ; 0xef690
00059988 adrp      x16, #0x59000                                   
0005998c add       x16, x16, #0xb44                                 ; 0x59b44
00059990 paciza    x16                                             
00059994 mov       x2, x16                                         
00059998 mov       x0, x19                                         
0005999c bl        #0xa4054                                         ; _MSHookMessageEx
000599a0 adrp      x8, #0xeb000                                    
000599a4 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
000599a8 adrp      x3, #0xef000                                    
000599ac add       x3, x3, #0x698                                   ; 0xef698
000599b0 adrp      x16, #0x59000                                   
000599b4 add       x16, x16, #0xb80                                 ; 0x59b80
000599b8 paciza    x16                                             
000599bc mov       x2, x16                                         
000599c0 mov       x0, x19                                         
000599c4 bl        #0xa4054                                         ; _MSHookMessageEx
000599c8 adrp      x8, #0xec000                                    
000599cc ldr       x1, [x8, #0x288]                                 ; 0xec288 | SEL _setContinuousCornerRadius:
000599d0 adrp      x3, #0xef000                                    
000599d4 add       x3, x3, #0x6a0                                   ; 0xef6a0
000599d8 adrp      x16, #0x59000                                   
000599dc add       x16, x16, #0xbc0                                 ; 0x59bc0
000599e0 paciza    x16                                             
000599e4 mov       x2, x16                                         
000599e8 mov       x0, x19                                         
000599ec bl        #0xa4054                                         ; _MSHookMessageEx
000599f0 adrp      x0, #0xd5000                                    
000599f4 add       x0, x0, #0xa90                                   ; 0xd5a90 | &__NSConcreteGlobalBlock
000599f8 bl        #0x97e34                                         ; _lgObservePreferenceReload
000599fc ldp       x29, x30, [sp, #0x30]                           
00059a00 ldp       x20, x19, [sp, #0x20]                           
00059a04 add       sp, sp, #0x40                                   
00059a08 retab                                                     
