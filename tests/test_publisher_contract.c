#define _GNU_SOURCE 1
#include <sys/mman.h>
static void *unmapped_address;
static size_t unmapped_bytes;
static int unmapped_result;
static int contract_munmap(void *address, size_t bytes) {
    unmapped_result=munmap(address,bytes); /* forward the REAL syscall */
    unmapped_address=address; unmapped_bytes=bytes;
    return unmapped_result;
}
/* Include implementation for deterministic boundary injection and fd/mmap
 * lifetime checks, not a mock publisher. Other pipeline modules link normally. */
#define munmap contract_munmap
#include "../src/clock/LACClockFieldPublisher.c"
#undef munmap
#include "../src/clock/LACClockSDF.h"
#include "../src/clock/NGClockFieldCodec.h"
#include <assert.h>
#include <float.h>
#include <stdio.h>

static char directory[]="/tmp/lac-publisher-contract-XXXXXX";
static void path_for(char *out, const char *name) {
    int n=snprintf(out,512,"%s/%s",directory,name); assert(n>0 && n<512);
}
static const float values[4]={1,-1,0.5f,-0.0f};
static int publish(LACClockFieldPublisher *p, uint32_t slot) {
    return LACClockFieldPublish(p,slot,1,2,2,2,2,values,4);
}
static void closed(LACClockFieldPublisher *p) {
    int fd=p->fd; void *mapping=p->mapping; size_t bytes=p->mapped_size;
    unmapped_address=NULL; unmapped_bytes=0; unmapped_result=-1;
    LACClockFieldPublisherClose(p);
    assert(unmapped_address==mapping && unmapped_bytes==bytes && unmapped_result==0);
    errno=0; assert(fcntl(fd,F_GETFD)==-1 && errno==EBADF);
    unsigned char resident=0;
    errno=0;
    /* iSH 4.20.69 returns success/resident even for mincore(NULL). Do not
     * present its stub as proof of kernel unmapping; verify the real call above. */
    int reliable=mincore(NULL,4096,&resident)==-1 && errno==ENOMEM;
    if (reliable) {
        errno=0; assert(mincore(mapping,4096,&resident)==-1 && errno==ENOMEM);
    }
}

static void file_policy(void) {
    char file[512], link[512], hard[512], bad[512], fifo[512];
    path_for(file,"one"); path_for(link,"symlink"); path_for(hard,"hardlink");
    path_for(bad,"bad"); path_for(fifo,"fifo");
    assert(!LACClockFieldPublisherOpen(NULL,1,1));
    assert(!LACClockFieldPublisherOpen("",1,1));
    assert(!LACClockFieldPublisherOpen(file,0,1));
    assert(!LACClockFieldPublisherOpen(file,2,1));
    assert(!LACClockFieldPublisherOpen(file,15,1));
    assert(!LACClockFieldPublisherOpen(file,17,1));
    assert(!LACClockFieldPublisherOpen(file,1,0));
    mode_t old=umask(0777);
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(file,1,1);
    umask(old); assert(p);
    struct stat st; assert(fstat(p->fd,&st)==0);
    assert(st.st_uid==geteuid() && (st.st_mode&07777)==0600 && st.st_nlink==1);
    assert(st.st_size==LG_CLOCK_FIELD_SLOT_BYTES);
    assert(fcntl(p->fd,F_GETFD)&FD_CLOEXEC);
    assert(!LACClockFieldPublisherOpen(file,1,1)); /* nonblocking exclusive lock */
    assert(!LACClockFieldPublisherOpen(file,16,1));
    closed(p);
    assert(symlink(file,link)==0);
    assert(!LACClockFieldPublisherOpen(link,1,0));
    assert(!LACClockFieldPublisherOpen(link,1,1));
    assert(unlink(link)==0);
    assert(linkat(AT_FDCWD,file,AT_FDCWD,hard,0)==0);
    assert(!LACClockFieldPublisherOpen(hard,1,1));
    assert(!LACClockFieldPublisherOpen(file,1,1));
    assert(unlink(hard)==0);
    assert(chmod(file,0644)==0);
    assert(!LACClockFieldPublisherOpen(file,1,1));
    assert(stat(file,&st)==0 && (st.st_mode&07777)==0644);
    assert(chmod(file,0600)==0);
    if (geteuid()==0) {
        assert(chown(file,12345,(gid_t)-1)==0);
        assert(!LACClockFieldPublisherOpen(file,1,1));
        assert(chown(file,0,(gid_t)-1)==0);
    }
    int fd=open(bad,O_CREAT|O_EXCL|O_RDWR,0600); assert(fd>=0);
    assert(ftruncate(fd,3)==0); close(fd);
    assert(!LACClockFieldPublisherOpen(bad,1,1));
    assert(stat(bad,&st)==0 && st.st_size==3);
    assert(truncate(bad,0)==0);
    assert(!LACClockFieldPublisherOpen(bad,1,0));
    p=LACClockFieldPublisherOpen(bad,1,1); assert(p); closed(p);
    assert(mkfifo(fifo,0600)==0);
    assert(!LACClockFieldPublisherOpen(fifo,1,0));
    assert(!LACClockFieldPublisherOpen(directory,1,0));
    unlink(file); unlink(bad); unlink(fifo);
    puts("PASS publisher file policy: owner/mode/nofollow/hardlink/size/lock/CLOEXEC/unmap");
}

static void slots_and_takeover(void) {
    char path[512]; path_for(path,"slots");
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(path,16,1); assert(p);
    assert(p->mapped_size==(size_t)16*LG_CLOCK_FIELD_SLOT_BYTES);
    LGClockFieldHeader *first=(LGClockFieldHeader *)p->mapping;
    LGClockFieldHeader *last=(LGClockFieldHeader *)(p->mapping+15u*LG_CLOCK_FIELD_SLOT_BYTES);
    first->reserved_20=123; first->reserved_3c=0xabcdef12u;
    assert(publish(p,0));
    uint64_t token=first->token_10;
    assert(first->reserved_20==0 && first->reserved_3c==0xabcdef12u);
    first->reserved_20=77;
    assert(publish(p,0)); assert(first->reserved_20==77);
    assert(publish(p,15)); assert(first->sequence==4 && last->sequence==2);
    for (unsigned i=1;i<15;++i) {
        LGClockFieldHeader *h=(LGClockFieldHeader *)(p->mapping+(size_t)i*LG_CLOCK_FIELD_SLOT_BYTES);
        assert(h->sequence==0 && h->magic==0);
    }
    const size_t full_count=1024u*1024u;
    float *full=malloc(full_count*sizeof(float)); assert(full);
    for (size_t i=0;i<full_count;++i) full[i]=(i&1)?65504:-65504;
    assert(LACClockFieldPublish(p,15,4,1024,1024,2048,2048,full,full_count));
    assert(last->sequence==4 && first->sequence==4);
    assert(!memcmp((unsigned char *)last+64,full,full_count*sizeof(float)));
    free(full);
    assert(!publish(p,16));
    closed(p);
    assert(!LACClockFieldPublisherOpen(path,1,1));
    p=LACClockFieldPublisherOpen(path,16,0); assert(p);
    first=(LGClockFieldHeader *)p->mapping;
    unsigned char foreign_before[80]; memcpy(foreign_before,p->mapping,sizeof(foreign_before));
    assert(!LACClockFieldInvalidate(p,0));
    assert(!memcmp(foreign_before,p->mapping,sizeof(foreign_before)));
    assert(publish(p,0));
    assert(first->sequence==6 && first->token_10 && first->token_10!=token);
    assert(first->reserved_20==0 && first->reserved_3c==0xabcdef12u);
    assert(LACClockFieldInvalidate(p,0)); assert(first->sequence==8 && !first->mach_absolute_time);
    unsigned char snapshot[80] __attribute__((aligned(8)));
    assert(!LGClockFieldCopyStable(p->mapping,p->mapped_size,snapshot,sizeof(snapshot)));
    assert(publish(p,0));
    assert(LGClockFieldCopyStable(p->mapping,p->mapped_size,snapshot,sizeof(snapshot)));
    uint16_t half[4];
    assert(NGClockFieldSnapshotToR16(snapshot,sizeof(snapshot),half,sizeof(half)));
    const uint16_t expected[]={0x3c00,0xbc00,0x3800,0x8000};
    assert(memcmp(half,expected,sizeof(expected))==0);
    closed(p); unlink(path);
    puts("PASS publisher: 16-slot isolation, token takeover cursor reset/preserve, invalidate, R16Float");
}

static void sequence_limits(void) {
    char path[512]; path_for(path,"sequence");
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(path,1,1); assert(p);
    LGClockFieldHeader *h=(LGClockFieldHeader *)p->mapping;
    const uint64_t seeds[]={0,1,2,3,UINT64_MAX-3,UINT64_MAX-2};
    for (unsigned i=0;i<sizeof(seeds)/sizeof(*seeds);++i) {
        h->sequence=seeds[i]; assert(publish(p,0));
        assert(h->sequence==((seeds[i]|UINT64_C(1))+1));
    }
    for (unsigned i=0;i<2;++i) {
        h->sequence=UINT64_MAX-1+i;
        unsigned char before[80]; memcpy(before,p->mapping,sizeof(before));
        assert(!publish(p,0)); assert(memcmp(before,p->mapping,sizeof(before))==0);
    }
    h->sequence=UINT64_MAX-1;
    assert(LACClockFieldInvalidate(p,0));
    assert(h->sequence==UINT64_MAX && !h->mach_absolute_time);
    assert(LACClockFieldInvalidate(p,0)); /* terminal odd remains terminal */
    assert(h->sequence==UINT64_MAX && !h->mach_absolute_time);
    assert(!publish(p,0));
    closed(p);
    p=LACClockFieldPublisherOpen(path,1,0); assert(p);
    assert(!publish(p,0)); /* reopening MUST NOT reset exhausted sequence */
    closed(p); unlink(path);
    puts("PASS publisher sequence: odd recovery, last even, terminal odd, no wrap/reopen ABA");
}

/* All executable tests here are Linux HOST-ONLY. No UIKit or Mach emulation. */
#include <sched.h>
#include <signal.h>
#include <sys/wait.h>

static void validation_and_invalidation(void) {
    char path[512]; path_for(path,"validate");
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(path,1,1); assert(p);
    LGClockFieldHeader *h=(LGClockFieldHeader *)p->mapping;
    assert(!LACClockFieldInvalidate(NULL,0));
    assert(!LACClockFieldInvalidate(p,0)); /* no owned frame yet */
    assert(publish(p,0));
    unsigned char *before=malloc(p->mapped_size); assert(before);
    memcpy(before,p->mapping,p->mapped_size);
#define REJECT(call) do { assert(!(call)); assert(!memcmp(before,p->mapping,p->mapped_size)); } while (0)
#define P(k,w,he,pw,ph,f,n) LACClockFieldPublish(p,0,k,w,he,pw,ph,f,n)
    REJECT(publish(p,1)); REJECT(LACClockFieldInvalidate(p,1));
    REJECT(P(0,2,2,2,2,values,4)); REJECT(P(5,2,2,2,2,values,4));
    REJECT(P(1,0,2,2,2,values,4)); REJECT(P(1,2,0,2,2,values,4));
    REJECT(P(1,1025,1,2,2,values,4)); REJECT(P(1,1,1025,2,2,values,4));
    REJECT(P(1,2,2,2,2,values,3)); REJECT(P(1,2,2,2,2,values,5));
    REJECT(P(1,2,2,2,2,NULL,4));
    const float dimensions[]={0,-1,NAN,INFINITY,2049};
    for (unsigned i=0;i<sizeof(dimensions)/sizeof(*dimensions);++i) {
        REJECT(P(1,2,2,dimensions[i],2,values,4));
        REJECT(P(1,2,2,2,dimensions[i],values,4));
    }
    const float invalid_values[]={NAN,INFINITY,-INFINITY,65505,-65505};
    for (unsigned i=0;i<sizeof(invalid_values)/sizeof(*invalid_values);++i) {
        float bad[4]={0,1,-1,invalid_values[i]};
        REJECT(P(1,2,2,2,2,bad,4));
    }
    REJECT(P(1,2,2,2,2,(const float *)(p->mapping+LG_CLOCK_FIELD_HEADER_SIZE),4));
    uint64_t token=h->token_10;
    h->token_10=token^UINT64_C(0x8000000000000000);
    memcpy(before,p->mapping,p->mapped_size);
    REJECT(LACClockFieldInvalidate(p,0));
    h->token_10=token;
    assert(LACClockFieldInvalidate(p,0));
    assert(h->sequence==4 && h->token_10==token && !h->mach_absolute_time);
    assert(!memcmp(p->mapping+64,values,sizeof(values)));
    assert(LACClockFieldInvalidate(p,0)); assert(h->sequence==6);
    const float limits[]={-65504,65504,FLT_TRUE_MIN,-FLT_TRUE_MIN};
    assert(P(4,2,2,2048,2048,limits,4));
    assert(!memcmp(p->mapping+64,limits,sizeof(limits)));
    assert(chmod(path,0640)==0);
    memcpy(before,p->mapping,p->mapped_size);
    REJECT(publish(p,0)); REJECT(LACClockFieldInvalidate(p,0));
    assert(chmod(path,0600)==0);
    assert(ftruncate(p->fd,(off_t)p->mapped_size+4096)==0);
    REJECT(publish(p,0)); REJECT(LACClockFieldInvalidate(p,0));
    assert(ftruncate(p->fd,(off_t)p->mapped_size)==0);
    assert(publish(p,0));
    assert(unlink(path)==0);
    memcpy(before,p->mapping,p->mapped_size);
    REJECT(publish(p,0)); REJECT(LACClockFieldInvalidate(p,0));
    free(before); closed(p);
#undef REJECT
#undef P
    puts("PASS publisher HOST-ONLY: rejected writes unchanged, finite half limits, alias, owned/foreign invalidation, changed file");
}

static void lock_processes(void) {
    char path[512]; path_for(path,"flock");
    int fd=open(path,O_CREAT|O_EXCL|O_RDWR,0600); assert(fd>=0);
    assert(flock(fd,LOCK_EX|LOCK_NB)==0);
    assert(!LACClockFieldPublisherOpen(path,1,1));
    struct stat st; assert(fstat(fd,&st)==0 && st.st_size==0);
    close(fd);
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(path,1,1); assert(p);
    pid_t child=fork(); assert(child>=0);
    if (!child) {
        close(p->fd); /* child must not accidentally retain the inherited lock */
        _exit(LACClockFieldPublisherOpen(path,1,1) ? 1 : 0);
    }
    int status; assert(waitpid(child,&status,0)==child);
    assert(WIFEXITED(status) && WEXITSTATUS(status)==0);
    closed(p);
    p=LACClockFieldPublisherOpen(path,1,0); assert(p); closed(p);
    unlink(path);
    puts("PASS publisher HOST-ONLY: cross-process flock, no resize while locked, reopen after close");
}

enum { CW=64, CH=32, WRITERS=4, ITERATIONS=600, INVALIDATIONS=600 };
typedef struct Worker { LACClockFieldPublisher *publisher; unsigned kind; } Worker;
static void *writer(void *arg) {
    Worker *w=arg;
    float samples[CW*CH];
    for (unsigned t=0;t<ITERATIONS;++t) {
        for (unsigned i=0;i<CW*CH;++i) samples[i]=(float)(1024*w->kind+t)+(float)(i%17)/32;
        assert(LACClockFieldPublish(w->publisher,0,w->kind,CW,CH,32,16,samples,CW*CH));
    }
    return NULL;
}
static void *invalidator(void *arg) {
    for (unsigned i=0;i<INVALIDATIONS;++i) assert(LACClockFieldInvalidate(arg,0));
    return NULL;
}
typedef struct Shared { unsigned ready, done, accepted, rejected; } Shared;
static void check_snapshot(const unsigned char *snapshot) {
    LGClockFieldHeader h; memcpy(&h,snapshot,sizeof(h));
    assert(h.width==CW && h.height==CH && h.kind>=1 && h.kind<=4 && !(h.sequence&1));
    float first; memcpy(&first,snapshot+64,sizeof(first));
    assert((unsigned)(first/1024)==h.kind);
    for (unsigned i=0;i<CW*CH;++i) {
        float f; memcpy(&f,snapshot+64+i*sizeof(float),sizeof(f));
        assert(f==first+(float)(i%17)/32);
    }
}
static void concurrency(void) {
    char path[512]; path_for(path,"concurrency");
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(path,1,1); assert(p);
    Worker workers[WRITERS];
    for (unsigned i=0;i<WRITERS;++i) workers[i]=(Worker){p,i+1};
    float initial[CW*CH];
    for (unsigned i=0;i<CW*CH;++i) initial[i]=1024+(float)(i%17)/32;
    assert(LACClockFieldPublish(p,0,1,CW,CH,32,16,initial,CW*CH));
    Shared *shared=mmap(NULL,sizeof(*shared),PROT_READ|PROT_WRITE,MAP_SHARED|MAP_ANONYMOUS,-1,0);
    assert(shared!=MAP_FAILED); memset(shared,0,sizeof(*shared));
    pid_t child=fork(); assert(child>=0);
    if (!child) {
        alarm(60);
        unsigned char snapshot[64+CW*CH*sizeof(float)] __attribute__((aligned(8)));
        /* Separate process: test actual shared mmap, not an ISO-C thread seqlock. */
        do {
            if (LGClockFieldCopyStable(p->mapping,p->mapped_size,snapshot,sizeof(snapshot))) {
                check_snapshot(snapshot); ++shared->accepted;
            } else ++shared->rejected;
            __atomic_store_n(&shared->ready,1,__ATOMIC_RELEASE);
        } while (!__atomic_load_n(&shared->done,__ATOMIC_ACQUIRE));
        _exit(0);
    }
    while (!__atomic_load_n(&shared->ready,__ATOMIC_ACQUIRE)) sched_yield();
    pthread_t threads[WRITERS], invalidation;
    for (unsigned i=0;i<WRITERS;++i) assert(!pthread_create(&threads[i],NULL,writer,&workers[i]));
    assert(!pthread_create(&invalidation,NULL,invalidator,p));
    for (unsigned i=0;i<WRITERS;++i) assert(!pthread_join(threads[i],NULL));
    assert(!pthread_join(invalidation,NULL));
    __atomic_store_n(&shared->done,1,__ATOMIC_RELEASE);
    int status; assert(waitpid(child,&status,0)==child);
    assert(WIFEXITED(status) && WEXITSTATUS(status)==0 && shared->accepted);
    LGClockFieldHeader *h=(LGClockFieldHeader *)p->mapping;
    assert(h->sequence==2u*(1u+WRITERS*ITERATIONS+INVALIDATIONS));
    printf("PASS publisher HOST-ONLY: %u concurrent frames + %u invalidations, seq=%llu, %u coherent process snapshots, %u retries\n",
        WRITERS*ITERATIONS,INVALIDATIONS,(unsigned long long)h->sequence,shared->accepted,shared->rejected);
    munmap(shared,sizeof(*shared)); closed(p); unlink(path);
}

int main(void) {
    alarm(90);
    assert(mkdtemp(directory));
    unsigned char resident=0;
    errno=0;
    if (mincore(NULL,4096,&resident)!=-1 || errno!=ENOMEM)
        puts("SKIP HOST mincore residency oracle: iSH stub; real munmap forwarding/return and fd close are checked");
    file_policy(); slots_and_takeover(); sequence_limits();
    validation_and_invalidation(); lock_processes(); concurrency();
    assert(rmdir(directory)==0);
    puts("PASS publisher complete contract (HOST-ONLY; no native iOS execution)");
    return 0;
}
