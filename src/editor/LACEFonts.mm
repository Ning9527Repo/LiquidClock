#import "LACEInternal.h"
#import <CoreText/CTFontManagerErrors.h>
static NSDictionary *gCompactAttributes, *gNumericAttributes;
static BOOL LoadFont(NSURL *url, NSString *expectedName, BOOL numeric, NSDictionary **attributes, NSError **error) {
    NSArray *descriptors=CFBridgingRelease(CTFontManagerCreateFontDescriptorsFromURL((__bridge CFURLRef)url));
    if(descriptors.count!=1){if(error)*error=LACEError(30,[NSString stringWithFormat:@"Missing or invalid uploaded font: %@",url.lastPathComponent]);return NO;}
    CTFontDescriptorRef descriptor=(__bridge CTFontDescriptorRef)descriptors.firstObject;
    CTFontRef font=CTFontCreateWithFontDescriptor(descriptor,100,nullptr);
    if(!font){if(error)*error=LACEError(31,@"CoreText could not open uploaded font");return NO;}
    NSString *name=CFBridgingRelease(CTFontCopyPostScriptName(font));
    NSArray *axes=CFBridgingRelease(CTFontCopyVariationAxes(font));CFRelease(font);
    if(![name isEqualToString:expectedName]){if(error)*error=LACEError(32,@"Uploaded font PostScript name differs from local package evidence");return NO;}
    if(numeric) {
        // Actual OTF fvar tags; UI weight lower bound is 100, NOT fvar's 1.
        NSDictionary *expected=@{@(0x48474854):@[@100,@100,@500], // HGHT
            @(0x77647468):@[@60,@100,@100], // wdth
            @(0x77676874):@[@1,@400,@1000], // wght
            @(0x534f4654):@[@0,@70,@100]}; // SOFT
        if(axes.count!=expected.count){if(error)*error=LACEError(33,@"Numeric font axis count mismatch");return NO;}
        for(NSDictionary *axis in axes) {
            NSArray *e=expected[axis[(__bridge NSString *)kCTFontVariationAxisIdentifierKey]];
            if(!e||![axis[(__bridge NSString *)kCTFontVariationAxisMinimumValueKey] isEqualToNumber:e[0]]||
                ![axis[(__bridge NSString *)kCTFontVariationAxisDefaultValueKey] isEqualToNumber:e[1]]||
                ![axis[(__bridge NSString *)kCTFontVariationAxisMaximumValueKey] isEqualToNumber:e[2]]) {
                if(error)*error=LACEError(34,@"Numeric font axis bounds differ from uploaded package");return NO;
            }
        }
    } else if(axes.count) {if(error)*error=LACEError(35,@"Compact font unexpectedly has variation axes");return NO;}
    CFErrorRef registrationError=nullptr;
    bool registered=CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url,kCTFontManagerScopeProcess,&registrationError);
    BOOL already=registrationError&&CFErrorGetCode(registrationError)==kCTFontManagerErrorAlreadyRegistered;
    if(!registered&&!already){if(error)*error=registrationError?(__bridge NSError *)registrationError:LACEError(36,@"Could not register uploaded font");if(registrationError)CFRelease(registrationError);return NO;}
    if(registrationError)CFRelease(registrationError);
    *attributes=CFBridgingRelease(CTFontDescriptorCopyAttributes(descriptor));return YES;
}
bool LACEValidateFonts(NSURL *directory, NSError **error) {
    NSDictionary *compact=nil,*numeric=nil;
    if(!LoadFont([directory URLByAppendingPathComponent:@"SF-Compact-Display-Regular.otf"],@"SFCompactDisplay-Regular",NO,&compact,error))return false;
    if(!LoadFont([directory URLByAppendingPathComponent:@"SFAdaptiveSoftNumeric-VF.otf"],@"SFAdaptiveSoftNumeric-hg100wd",YES,&numeric,error))return false;
    gCompactAttributes=compact;gNumericAttributes=numeric;return true;
}
UIFont *LACEFont(lace::State state, CGFloat size) {
    if(!lace::valid(state)||!lace::finite(size)||size<=0||size>4096)return nil;
    NSDictionary *base=state.modern?gNumericAttributes:gCompactAttributes;if(!base)return nil;
    NSMutableDictionary *attributes=[base mutableCopy];
    if(state.modern)attributes[(__bridge NSString *)kCTFontVariationAttribute]=@{
        @(0x48474854):@100,@(0x77647468):@100,@(0x77676874):@(state.weight),@(0x534f4654):@(state.softness)};
    UIFontDescriptor *descriptor=[UIFontDescriptor fontDescriptorWithFontAttributes:attributes];
    return [UIFont fontWithDescriptor:descriptor size:size];
}
