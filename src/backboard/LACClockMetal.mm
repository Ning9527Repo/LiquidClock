#import "LACClockMetal.h"
#include "LACClockData.h"
#include <os/lock.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

/* All encoded field textures are immutable. No replaceRegion of a texture
 * which an earlier CA command buffer may still be consuming. */
@interface LACClockDeviceCache : NSObject
@property(nonatomic,strong) id<MTLDevice> device;
@property(nonatomic,strong) id<MTLLibrary> library;
@property(nonatomic,strong) NSMutableDictionary<NSNumber*,id<MTLRenderPipelineState>> *pipelines;
@end
@implementation LACClockDeviceCache
@end
@interface LACClockMapping : NSObject {
@public
    int fd;
    void *address;
    size_t length;
    uint32_t slots;
}
@end
@implementation LACClockMapping
- (instancetype)init { self=[super init];if(self){fd=-1;address=MAP_FAILED;}return self; }
- (void)dealloc {if(address!=MAP_FAILED)munmap(address,length);if(fd>=0)close(fd);}
@end
static os_unfair_lock metalLock=OS_UNFAIR_LOCK_INIT;
static NSString *libraryPath;
static NSString *fieldPaths[3];
static LACClockMapping *mappings[3];
static LACClockVisualParameters parameters[3];
static bool parametersInitialized;
static uint32_t expectedUID;
static NSMutableArray<LACClockDeviceCache*> *devices;
static void *snapshotBytes;
static void *halfBytes;

int LACClockSetVisualParameters(LACClockChannel channel,const LACClockVisualParameters *p) {
    if((unsigned)channel>2||!LACClockValidateVisualParameters(p))return 0;
    os_unfair_lock_lock(&metalLock);
    if(!parametersInitialized) {
        for(unsigned i=0;i<3;i++)parameters[i]=LACClockDefaultVisualParameters();
        parametersInitialized=true;
    }
    parameters[(unsigned)channel]=*p;
    os_unfair_lock_unlock(&metalLock);return 1;
}
static LACClockDeviceCache *cacheForDevice(id<MTLDevice> device) {
    for(LACClockDeviceCache *item in devices)if(item.device==device)return item;
    if(devices.count>=4)return nil;
    NSError *error=nil;
    id<MTLLibrary> library=[device newLibraryWithURL:[NSURL fileURLWithPath:libraryPath] error:&error];
    if(!library||![library newFunctionWithName:@LAC_CLOCK_VERTEX_FUNCTION]||
       ![library newFunctionWithName:@LAC_CLOCK_FRAGMENT_FUNCTION])return nil;
    LACClockDeviceCache *item=[LACClockDeviceCache new];
    item.device=device;item.library=library;item.pipelines=[NSMutableDictionary dictionary];
    [devices addObject:item];return item;
}
bool LACClockMetalInitialize(const LACClockBackboardOptions *o) {
    if(!o||!o->metalLibraryPath||!o->mainFieldPath||!o->editorFieldPath||!o->posterFieldsPath)return false;
    os_unfair_lock_lock(&metalLock);
    if(libraryPath){os_unfair_lock_unlock(&metalLock);return false;}
    libraryPath=[[NSString alloc]initWithUTF8String:o->metalLibraryPath];
    fieldPaths[0]=[[NSString alloc]initWithUTF8String:o->mainFieldPath];
    fieldPaths[1]=[[NSString alloc]initWithUTF8String:o->editorFieldPath];
    fieldPaths[2]=[[NSString alloc]initWithUTF8String:o->posterFieldsPath];
    expectedUID=o->fieldOwnerUID;devices=[NSMutableArray array];
    snapshotBytes=malloc(LG_CLOCK_FIELD_SLOT_BYTES);halfBytes=malloc(LG_CLOCK_FIELD_PIXEL_BYTES/2);
    if(!parametersInitialized){for(unsigned i=0;i<3;i++)parameters[i]=LACClockDefaultVisualParameters();parametersInitialized=true;}
    id<MTLDevice> device=MTLCreateSystemDefaultDevice();
    bool ok=libraryPath&&fieldPaths[0]&&fieldPaths[1]&&fieldPaths[2]&&snapshotBytes&&halfBytes&&device&&cacheForDevice(device);
    os_unfair_lock_unlock(&metalLock);return ok;
}
static LACClockMapping *mappingForChannel(unsigned c) {
    LACClockMapping *m=mappings[c];struct stat st={};
    if(m) {
        if(fstat(m->fd,&st)||st.st_size!=(off_t)m->length||!S_ISREG(st.st_mode)||
           st.st_nlink!=1||st.st_uid!=expectedUID||(st.st_mode&07777)!=0600)return nil;
        return m;
    }
    m=[LACClockMapping new];m->slots=c==2?16:1;
    m->length=(size_t)m->slots*LG_CLOCK_FIELD_SLOT_BYTES;
    m->fd=open(fieldPaths[c].fileSystemRepresentation,O_RDWR|O_CLOEXEC|O_NOFOLLOW|O_NONBLOCK);
    if(m->fd<0||fstat(m->fd,&st)||!S_ISREG(st.st_mode)||st.st_nlink!=1||
       st.st_uid!=expectedUID||(st.st_mode&07777)!=0600||st.st_size!=(off_t)m->length)return nil;
    m->address=mmap(NULL,m->length,PROT_READ|PROT_WRITE,MAP_SHARED,m->fd,0);
    if(m->address==MAP_FAILED)return nil;
    mappings[c]=m;return m;
}
static id<MTLRenderPipelineState> pipeline(LACClockDeviceCache *cache,MTLPixelFormat format) {
    NSNumber *key=@((NSUInteger)format);
    id<MTLRenderPipelineState> result=cache.pipelines[key];if(result)return result;
    if(cache.pipelines.count>=16)return nil;
    MTLRenderPipelineDescriptor *descriptor=[MTLRenderPipelineDescriptor new];
    descriptor.label=@"LiquidClock glyph-only";
    descriptor.vertexFunction=[cache.library newFunctionWithName:@LAC_CLOCK_VERTEX_FUNCTION];
    descriptor.fragmentFunction=[cache.library newFunctionWithName:@LAC_CLOCK_FRAGMENT_FUNCTION];
    descriptor.rasterSampleCount=1;descriptor.colorAttachments[0].pixelFormat=format;
    descriptor.colorAttachments[0].blendingEnabled=NO;
    NSError *error=nil;result=[cache.device newRenderPipelineStateWithDescriptor:descriptor error:&error];
    if(result)cache.pipelines[key]=result;
    return result;
}
bool LACClockMetalEncode(LACClockChannel channel,uint32_t slot,id<MTLCommandBuffer> command,
                         id<MTLTexture> source,id<MTLTexture> destination) {
    if((unsigned)channel>2||slot>=(channel==LACClockChannelPoster?16u:1u)||!command||!source||!destination||
       source==destination||source.device!=destination.device||command.device!=source.device||
       source.textureType!=MTLTextureType2D||destination.textureType!=MTLTextureType2D||
       source.sampleCount!=1||destination.sampleCount!=1||
       source.width>16384||source.height>16384||destination.width>16384||destination.height>16384||
       !(source.usage&MTLTextureUsageShaderRead)||!(destination.usage&MTLTextureUsageRenderTarget)||
       command.status>=MTLCommandBufferStatusCommitted)return false;
    os_unfair_lock_lock(&metalLock);
    bool encoded=false;
    @autoreleasepool {
        LACClockMapping *mapping=libraryPath?mappingForChannel((unsigned)channel):nil;
        LGClockFieldHeader header={};LGClockMetalUniformsRecovered uniforms={};
        void *slotAddress=mapping?(char*)mapping->address+(size_t)slot*LG_CLOCK_FIELD_SLOT_BYTES:NULL;
        if(mapping && LACClockPrepareField(slotAddress,LG_CLOCK_FIELD_SLOT_BYTES,snapshotBytes,
                LG_CLOCK_FIELD_SLOT_BYTES,halfBytes,LG_CLOCK_FIELD_PIXEL_BYTES/2,&header)&&
           LACClockBuildUniforms(&header,&parameters[(unsigned)channel],(uint32_t)source.width,
                (uint32_t)source.height,(uint32_t)destination.width,(uint32_t)destination.height,&uniforms)) {
            LACClockDeviceCache *cache=cacheForDevice(source.device);
            id<MTLRenderPipelineState> state=cache?pipeline(cache,destination.pixelFormat):nil;
            MTLTextureDescriptor *td=[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:MTLPixelFormatR16Float
                width:header.width height:header.height mipmapped:NO];
            td.storageMode=MTLStorageModeShared;td.usage=MTLTextureUsageShaderRead;
            id<MTLTexture> field=state?[source.device newTextureWithDescriptor:td]:nil;
            if(field) {
                [field replaceRegion:MTLRegionMake2D(0,0,header.width,header.height) mipmapLevel:0
                    withBytes:halfBytes bytesPerRow:(NSUInteger)header.width*2];
                MTLRenderPassDescriptor *pass=[MTLRenderPassDescriptor renderPassDescriptor];
                pass.colorAttachments[0].texture=destination;
                pass.colorAttachments[0].loadAction=MTLLoadActionDontCare;
                pass.colorAttachments[0].storeAction=MTLStoreActionStore;
                id<MTLRenderCommandEncoder> encoder=[command renderCommandEncoderWithDescriptor:pass];
                if(encoder) {
                    encoder.label=@"LiquidClock immutable SDF";
                    [encoder setRenderPipelineState:state];
                    [encoder setViewport:(MTLViewport){0,0,(double)destination.width,(double)destination.height,0,1}];
                    [encoder setFragmentTexture:source atIndex:LG_CLOCK_METAL_BACKDROP_TEXTURE_INDEX];
                    [encoder setFragmentTexture:field atIndex:LG_CLOCK_METAL_FIELD_TEXTURE_INDEX];
                    [encoder setFragmentBytes:&uniforms length:sizeof(uniforms) atIndex:LG_CLOCK_METAL_FRAGMENT_BUFFER_INDEX];
                    [encoder drawPrimitives:MTLPrimitiveTypeTriangle vertexStart:0 vertexCount:3];
                    [encoder endEncoding];
                    /* CA owns commit/present. Handler captures every GPU resource
                     * even for a command buffer using unretained references. */
                    NSArray *resources=@[source,destination,field,state];
                    [command addCompletedHandler:^(id<MTLCommandBuffer> completed) {
                        if(resources.count!=4)return;
                        if(completed.status!=MTLCommandBufferStatusCompleted||completed.error)return;
                        struct stat current={};
                        if(fstat(mapping->fd,&current)||current.st_size!=(off_t)mapping->length)return;
                        LACClockAcknowledgeCompleted(slotAddress,LG_CLOCK_FIELD_SLOT_BYTES,&header);
                    }];
                    encoded=true;
                }
            }
        }
    }
    os_unfair_lock_unlock(&metalLock);return encoded;
}
