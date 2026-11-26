#import "LACEInternal.h"
#import <CoreText/CTFontManagerErrors.h>
#import <CommonCrypto/CommonDigest.h>
static NSDictionary *gCompactAttributes, *gNumericAttributes;
static BOOL LoadFont(NSURL *url, NSString *expectedName, NSString *expectedHash, BOOL numeric, NSDictionary **attributes, NSError **error) {
    NSNumber *length=nil;
    if(![url getResourceValue:&length forKey:NSURLFileSizeKey error:error])return NO;
    if(!length||length.unsignedLongLongValue>8*1024*1024) {
        if(error)*error=LACEError(30,@"Uploaded font exceeds the 8 MiB limit");return NO;
    }
    NSData *data=[NSData dataWithContentsOfURL:url options:0 error:error];if(!data)return NO;
    if(data.length>8*1024*1024){if(error)*error=LACEError(30,@"Uploaded font changed size during read");return NO;}
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];CC_SHA256(data.bytes,(CC_LONG)data.length,digest);
    NSMutableString *hash=[NSMutableString stringWithCapacity:64];
    for(unsigned char byte:digest)[hash appendFormat:@"%02x",byte];
    if(![hash isEqualToString:expectedHash]) {if(error)*error=LACEError(37,@"Uploaded font SHA-256 differs from supplied package");return NO;}
    NSArray *descriptors=CFBridgingRelease(CTFontManagerCreateFontDescriptorsFromURL((__bridge CFURLRef)url));
    if(descriptors.count!=1){if(error)*error=LACEError(30,[NSString stringWithFormat:@"Missing or invalid uploaded font: %@",url.lastPathComponent]);return NO;}
    CTFontDescriptorRef descriptor=(__bridge CTFontDescriptorRef)descriptors.firstObject;
    CTFontRef font=CTFontCreateWithFontDescriptor(descriptor,100,nullptr);
    if(!font){if(error)*error=LACEError(31,@"CoreText could not open uploaded font");return NO;}
    NSString *name=CFBridgingRelease(CTFontCopyPostScriptName(font));
    NSArray *axes=CFBridgingRelease(CTFontCopyVariationAxes(font));CFRelease(font);
    if(![name isEqualToString:expectedName]){if(error)*error=LACEError(32,@"Uploaded font PostScript name differs from local package evidence");return NO;}
    if(axes.count!=(numeric?lace::NumericAxes.size():0)) {
        if(error)*error=LACEError(33,@"Uploaded font axis count mismatch");return NO;
    }
    std::array<lace::Axis,4> actual{};NSUInteger index=0;
    for(NSDictionary *axis in axes) {
        id tag=axis[(__bridge NSString *)kCTFontVariationAxisIdentifierKey];
        id low=axis[(__bridge NSString *)kCTFontVariationAxisMinimumValueKey];
        id def=axis[(__bridge NSString *)kCTFontVariationAxisDefaultValueKey];
        id high=axis[(__bridge NSString *)kCTFontVariationAxisMaximumValueKey];
        if(![tag isKindOfClass:NSNumber.class]||![low isKindOfClass:NSNumber.class]||
            ![def isKindOfClass:NSNumber.class]||![high isKindOfClass:NSNumber.class]) {
            if(error)*error=LACEError(34,@"Invalid uploaded font axis metadata");return NO;
        }
        actual[index++]={[tag unsignedIntValue],[low doubleValue],[def doubleValue],[high doubleValue]};
    }
    if(!lace::validAxes(actual.data(),axes.count,numeric)) {
        if(error)*error=LACEError(34,@"Font axis identities/bounds differ from uploaded package");return NO;
    }
    CFErrorRef registrationError=nullptr;
    bool registered=CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url,kCTFontManagerScopeProcess,&registrationError);
    BOOL already=registrationError&&CFErrorGetCode(registrationError)==kCTFontManagerErrorAlreadyRegistered;
    if(!registered&&!already){if(error)*error=registrationError?(__bridge NSError *)registrationError:LACEError(36,@"Could not register uploaded font");if(registrationError)CFRelease(registrationError);return NO;}
    if(registrationError)CFRelease(registrationError);
    *attributes=CFBridgingRelease(CTFontDescriptorCopyAttributes(descriptor));return YES;
}
bool LACEValidateFonts(NSURL *directory, NSError **error) {
    NSDictionary *compact=nil,*numeric=nil;
    if(!LoadFont([directory URLByAppendingPathComponent:@(lace::CompactFile)],@(lace::CompactName),@(lace::CompactSHA256),NO,&compact,error))return false;
    if(!LoadFont([directory URLByAppendingPathComponent:@(lace::NumericFile)],@(lace::NumericName),@(lace::NumericSHA256),YES,&numeric,error))return false;
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
