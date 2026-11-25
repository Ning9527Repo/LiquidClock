#import "LACEInternal.h"
#import <sys/file.h>
#import <fcntl.h>
#import <unistd.h>
#import <errno.h>
NSString * const LACEStyleKey=@"Clock.Legacy.Style";
NSString * const LACEProgressKey=@"Clock.Legacy.ResizeProgress";
NSString * const LACEPosterStyleKey=@"dylv.liquidass.clock.style";
NSString * const LACEPosterProgressKey=@"dylv.liquidass.clock.resizeProgress";
NSString * const LACEDidChange=@"LACEClockPreviewDidChange";
NSError *LACEError(NSInteger code, NSString *description) {
    return [NSError errorWithDomain:@"LACEClockEditor" code:code
        userInfo:@{NSLocalizedDescriptionKey:description?:@"Clock editor error"}];
}
static BOOL Number(id obj) { return [obj isKindOfClass:NSNumber.class] && lace::finite([obj doubleValue]); }
NSDictionary *LACENormalizeStyle(id obj, NSError **error) {
    if (![obj isKindOfClass:NSDictionary.class]) {
        if(error)*error=LACEError(10,@"Clock style must be a dictionary");return nil;
    }
    NSDictionary *d=obj;
    id modern=d[@"modern"], weight=d[@"weight"], soft=d[@"softness"]?:@60;
    if (!Number(modern)||!Number(weight)||!Number(soft)||[weight doubleValue]<100||
        [weight doubleValue]>1000||[soft doubleValue]<0||[soft doubleValue]>100) {
        if(error)*error=LACEError(11,@"Clock editor style must stay within the font axes");return nil;
    }
    return @{@"modern":@([modern boolValue]),@"weight":@([weight doubleValue]),@"softness":@([soft doubleValue])};
}
NSDictionary *LACEStyle(lace::State state) {
    return @{@"modern":@(state.modern),@"weight":@(state.weight),@"softness":@(state.softness)};
}
static NSDictionary *Record(NSDictionary *raw, NSString *styleKey, NSString *progressKey, NSError **error) {
    if(raw && ![raw isKindOfClass:NSDictionary.class]) {if(error)*error=LACEError(12,@"Poster metadata must be a dictionary");return nil;}
    NSMutableDictionary *result=[NSMutableDictionary dictionary];
    id style=raw[styleKey], progress=raw[progressKey];
    if(style) { NSDictionary *valid=LACENormalizeStyle(style,error);if(!valid)return nil;result[LACEPosterStyleKey]=valid; }
    if(progress) {
        if(!Number(progress)||[progress doubleValue]<0||[progress doubleValue]>1) {
            if(error)*error=LACEError(13,@"Clock resize progress must be a finite number in [0,1]");return nil;
        }
        result[LACEPosterProgressKey]=@([progress doubleValue]);
    }
    return [result copy];
}
static NSDictionary *ReadJournal(NSURL *url, NSError **error) {
    NSError *err=nil; NSDictionary *attributes=[[NSFileManager defaultManager] attributesOfItemAtPath:url.path error:&err];
    if(!attributes) {
        if([err.domain isEqualToString:NSCocoaErrorDomain]&&err.code==NSFileReadNoSuchFileError) return @{@"version":@1,@"posters":@{}};
        // attributesOfItemAtPath may report NSFileNoSuchFileError rather than read variant.
        if([err.domain isEqualToString:NSCocoaErrorDomain]&&err.code==NSFileNoSuchFileError) return @{@"version":@1,@"posters":@{}};
        if(error)*error=err;return nil;
    }
    if(![attributes[NSFileType] isEqual:NSFileTypeRegular]||[attributes[NSFileSize] unsignedLongLongValue]>8*1024*1024) {
        if(error)*error=LACEError(14,@"Clock journal must be a regular file smaller than 8 MiB");return nil;
    }
    NSData *data=[NSData dataWithContentsOfURL:url options:0 error:error];if(!data)return nil;
    id root=[NSPropertyListSerialization propertyListWithData:data options:NSPropertyListImmutable format:nullptr error:error];
    if(![root isKindOfClass:NSDictionary.class]||![root[@"version"] isEqual:@1]||![root[@"posters"] isKindOfClass:NSDictionary.class]) {
        if(error)*error=LACEError(15,@"Unsupported or corrupt clock journal; not overwriting it");return nil;
    }
    NSDictionary *posters=root[@"posters"];
    if(posters.count>4096) {if(error)*error=LACEError(15,@"Clock journal poster count exceeds limit");return nil;}
    NSMutableDictionary *normalized=[NSMutableDictionary dictionary];
    for(id key in posters) {
        if(![key isKindOfClass:NSString.class]||![key length]||[key length]>512) {
            if(error)*error=LACEError(15,@"Invalid stable poster identifier in clock journal");return nil;
        }
        NSDictionary *valid=Record(posters[key],LACEPosterStyleKey,LACEPosterProgressKey,error);if(!valid)return nil;
        NSMutableDictionary *entry=[posters[key] mutableCopy];[entry addEntriesFromDictionary:valid];normalized[key]=entry;
    }
    NSMutableDictionary *result=[root mutableCopy];result[@"posters"]=normalized;return [result copy];
}
@interface LACESession ()
@property(nonatomic,copy) NSDictionary *baseJournalRecord;
- (instancetype)initWithState:(lace::State)state;
@end
@implementation LACEStore
- (instancetype)initWithURL:(NSURL *)url globals:(NSDictionary *)globals error:(NSError **)error {
    if(!(self=[super init]))return nil;
    _fileURL=url;_records=[NSMutableDictionary dictionary];_restored=[NSMutableDictionary dictionary];
    _globalRecord=Record(globals,LACEStyleKey,LACEProgressKey,error);if(!_globalRecord)return nil;
    NSDictionary *journal=ReadJournal(url,error);if(!journal)return nil;
    [_records addEntriesFromDictionary:journal[@"posters"]];return self;
}
- (NSDictionary *)committedRecord:(NSString *)poster {
    NSMutableDictionary *record=[NSMutableDictionary dictionaryWithDictionary:self.globalRecord];
    [record addEntriesFromDictionary:self.records[poster]?:@{}];
    [record addEntriesFromDictionary:self.restored[poster]?:@{}];
    if(!record[LACEPosterStyleKey])record[LACEPosterStyleKey]=LACEStyle(lace::State{});
    if(!record[LACEPosterProgressKey])record[LACEPosterProgressKey]=@1;
    return [record copy];
}
- (lace::State)stateForPoster:(NSString *)poster preview:(BOOL)preview {
    if(preview&&[self.active.posterID isEqualToString:poster])return self.active->transaction.draft;
    NSDictionary *r=[self committedRecord:poster], *s=r[LACEPosterStyleKey];
    return {[s[@"modern"] boolValue],[s[@"weight"] doubleValue],[s[@"softness"] doubleValue],[r[LACEPosterProgressKey] doubleValue]};
}
- (LACESession *)begin:(NSString *)poster {
    if(self.active||self.emittingChange)return nil;
    LACESession *session=[[LACESession alloc] initWithState:[self stateForPoster:poster preview:NO]];
    session.store=self;session.posterID=poster;session.baseJournalRecord=self.records[poster];self.active=session;
    [self changed:poster reason:LACEChangePreview];return session;
}
- (BOOL)restore:(NSString *)poster userInfo:(NSDictionary *)info properties:(NSDictionary *)props error:(NSError **)error {
    if(self.emittingChange){if(error)*error=LACEError(19,@"Schedule mutations after the change callback returns");return NO;}
    NSDictionary *a=Record(info,LACEPosterStyleKey,LACEPosterProgressKey,error);if(!a)return NO;
    NSDictionary *b=Record(props,LACEPosterStyleKey,LACEPosterProgressKey,error);if(!b)return NO;
    if([self.active.posterID isEqualToString:poster])[self.active cancel];
    NSMutableDictionary *r=[NSMutableDictionary dictionaryWithDictionary:b];[r addEntriesFromDictionary:a];
    self.restored[poster]=[r copy];[self changed:poster reason:LACEChangeRestore];return YES;
}
- (BOOL)save:(LACESession *)session error:(NSError **)error {
    if(self.active!=session||session->transaction.phase!=lace::Transaction::Saving) {
        if(error)*error=LACEError(16,@"Editor transaction is no longer active");return NO;
    }
    NSFileManager *fm=NSFileManager.defaultManager;NSURL *parent=[self.fileURL URLByDeletingLastPathComponent];
    if(![fm createDirectoryAtURL:parent withIntermediateDirectories:YES attributes:@{NSFilePosixPermissions:@0700} error:error])return NO;
    NSString *lockPath=[self.fileURL.path stringByAppendingString:@".lock"];
    int fd=open(lockPath.fileSystemRepresentation,O_CREAT|O_RDWR|O_CLOEXEC|O_NOFOLLOW,0600);
    if(fd<0){if(error)*error=[NSError errorWithDomain:NSPOSIXErrorDomain code:errno userInfo:nil];return NO;}
    // Avoid blocking SpringBoard on another process's slow or stuck writer.
    if(flock(fd,LOCK_EX|LOCK_NB)!=0){int e=errno;close(fd);if(error)*error=[NSError errorWithDomain:NSPOSIXErrorDomain code:e userInfo:nil];return NO;}
    BOOL saved=NO;
    @try {
        NSDictionary *journal=ReadJournal(self.fileURL,error);
        if(journal) {
            NSDictionary *current=journal[@"posters"][session.posterID];
            if(current!=session.baseJournalRecord&&![current isEqual:session.baseJournalRecord]) {
                if(error)*error=LACEError(17,@"This poster was saved by another editor; cancel and reopen to reload");
            } else {
                lace::State state=session->transaction.draft;
                NSDictionary *r=@{LACEPosterStyleKey:LACEStyle(state),LACEPosterProgressKey:@(state.progress)};
                NSMutableDictionary *posters=[journal[@"posters"] mutableCopy];posters[session.posterID]=r;
                NSMutableDictionary *next=[journal mutableCopy];next[@"posters"]=posters;
                NSData *data=[NSPropertyListSerialization dataWithPropertyList:next format:NSPropertyListBinaryFormat_v1_0 options:0 error:error];
                saved=data&&[data writeToURL:self.fileURL options:NSDataWritingAtomic error:error];
                if(saved) {self.records=posters;self.restored[session.posterID]=r;}
            }
        }
    } @finally {flock(fd,LOCK_UN);close(fd);}
    return saved;
}
- (void)changed:(NSString *)poster reason:(LACEChangeReason)reason {
    lace::State state=[self stateForPoster:poster preview:YES];NSDictionary *style=LACEStyle(state);
    // Publish one coherent snapshot, never a style from one transaction and a
    // progress from another. Observers should use this notification's snapshot.
    NSDictionary *info=@{@"posterID":poster,@"style":style,@"progress":@(state.progress),@"reason":@(reason)};
    LACEChangeCallback callback=self.callback;void *context=self.callbackContext;
    self.emittingChange=YES;
    @try {
        [NSNotificationCenter.defaultCenter postNotificationName:LACEDidChange object:self userInfo:info];
        if(callback)callback((__bridge CFStringRef)poster,(__bridge CFDictionaryRef)style,state.progress,reason,context);
    } @finally {self.emittingChange=NO;}
}
@end
@implementation LACESession
- (instancetype)initWithState:(lace::State)state {
    if((self=[super init]))transaction=lace::Transaction(state);return self;
}
- (BOOL)stageWeight:(double)weight softness:(double)softness progress:(double)progress {
    LACEStore *store=self.store;
    if(store.active!=self||store.emittingChange||!transaction.stage(weight,softness,progress))return NO;
    [store changed:self.posterID reason:LACEChangePreview];return YES;
}
- (BOOL)commit:(NSError **)error {
    LACEStore *store=self.store;
    if(store.active!=self||store.emittingChange||!transaction.prepare()){if(error)*error=LACEError(18,@"Clock editor is already closing");return NO;}
    BOOL saved=[store save:self error:error];transaction.complete(saved);
    if(saved){store.active=nil;[store changed:self.posterID reason:LACEChangeCommit];}return saved;
}
- (void)cancel {
    LACEStore *store=self.store;if(store.active!=self||store.emittingChange||!transaction.cancel())return;
    store.active=nil;[store changed:self.posterID reason:LACEChangeCancel];
}
@end
