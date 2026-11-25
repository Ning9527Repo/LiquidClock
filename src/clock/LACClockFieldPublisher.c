#if !defined(__APPLE__) && !defined(_POSIX_C_SOURCE)
#define _POSIX_C_SOURCE 200809L
#endif
#include "LACClockFieldPublisher.h"
#include "../../field/clock_field_protocol.h"
#include <errno.h>
#include <fcntl.h>
#include <math.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>
#include <sys/file.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#if defined(__APPLE__)
#include <mach/mach_time.h>
static uint64_t lac_monotonic_ticks(void) { return mach_absolute_time(); }
#else
#include <time.h>
static uint64_t lac_monotonic_ticks(void) {
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (uint64_t)ts.tv_sec * UINT64_C(1000000000) + (uint64_t)ts.tv_nsec;
}
#endif

#if __BYTE_ORDER__ != __ORDER_LITTLE_ENDIAN__
#error "The recovered field protocol is little-endian"
#endif

struct LACClockFieldPublisher {
    int fd;
    uint32_t slot_count;
    size_t mapped_size;
    unsigned char *mapping;
    uint64_t token;
    pthread_mutex_t lock;
};

static int size_for_slots(uint32_t slots, size_t *out) {
    if (!out || (slots != 1u && slots != 16u)) return 0;
    if ((size_t)LG_CLOCK_FIELD_SLOT_BYTES > SIZE_MAX / (size_t)slots) return 0;
    *out = (size_t)slots * (size_t)LG_CLOCK_FIELD_SLOT_BYTES;
    return 1;
}

static int safe_file(const struct stat *st) {
    return S_ISREG(st->st_mode) && st->st_uid == geteuid() && st->st_nlink == 1 &&
           (st->st_mode & 07777) == 0600;
}

LACClockFieldPublisher *LACClockFieldPublisherOpen(const char *path,
                                                    uint32_t slot_count,
                                                    int create_if_missing) {
    size_t expected = 0;
    if (!path || !*path || !size_for_slots(slot_count, &expected)) return NULL;
    /* Final component must never follow a symlink. Parent directories must be
     * trusted by the caller; O_NOFOLLOW does not secure the ancestor chain. */
#if !defined(O_NOFOLLOW) || !defined(O_CLOEXEC)
#error "A fail-closed publisher requires O_NOFOLLOW and O_CLOEXEC"
#endif
    const int flags = O_RDWR | O_CLOEXEC | O_NOFOLLOW | O_NONBLOCK;
    int created = 0;
    int fd = -1;
    if (create_if_missing) {
        fd = open(path, flags | O_CREAT | O_EXCL, 0600);
        if (fd >= 0) created = 1;
        else if (errno != EEXIST) return NULL;
    }
    if (fd < 0) fd = open(path, flags);
    if (fd < 0) return NULL;
    struct stat st;
    /* Lock before sizing: never resize a file that a cooperating writer owns.
     * A failed creation is left in place, not unlinked by a racy path lookup. */
    if (flock(fd, LOCK_EX | LOCK_NB) != 0 ||
        (created && fchmod(fd,0600) != 0) || fstat(fd,&st) != 0 || !safe_file(&st)) {
        close(fd); return NULL;
    }
    if (st.st_size == 0 && create_if_missing) {
        if (ftruncate(fd, (off_t)expected) != 0 || fstat(fd, &st) != 0 || !safe_file(&st)) {
            close(fd); return NULL;
        }
    }
    if (st.st_size != (off_t)expected) { close(fd); return NULL; }
    void *map = mmap(NULL, expected, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (map == MAP_FAILED) { close(fd); return NULL; }
    LACClockFieldPublisher *p = calloc(1, sizeof(*p));
    if (!p) { munmap(map, expected); close(fd); return NULL; }
    p->fd = fd; p->slot_count = slot_count; p->mapped_size = expected;
    p->mapping = (unsigned char *)map;
    /* Incarnation discriminator, not authentication or cryptographic entropy. */
    p->token = lac_monotonic_ticks() ^ ((uint64_t)(uint32_t)getpid() << 32) ^
               (uint64_t)(uintptr_t)p;
    if (!p->token) p->token = 1u;
    if (pthread_mutex_init(&p->lock, NULL) != 0) {
        munmap(map, expected); close(fd); free(p); return NULL;
    }
    return p;
}

void LACClockFieldPublisherClose(LACClockFieldPublisher *p) {
    if (!p) return;
    pthread_mutex_lock(&p->lock);
    if (p->mapping) munmap(p->mapping, p->mapped_size);
    p->mapping = NULL;
    if (p->fd >= 0) close(p->fd);
    p->fd = -1;
    pthread_mutex_unlock(&p->lock);
    pthread_mutex_destroy(&p->lock);
    free(p);
}

static int mapping_valid(LACClockFieldPublisher *p) {
    struct stat st;
    return p->mapping && p->fd >= 0 && fstat(p->fd,&st) == 0 &&
           safe_file(&st) && st.st_size == (off_t)p->mapped_size;
}

/* Called under the publisher mutex. Never reset or wrap a sequence, even on
 * reopening: equality-based readers must not see ABA. Recover an abandoned
 * odd sequence by finishing at the next even value. UINT64_MAX is terminal. */
static int begin_write(LGClockFieldHeader *h, uint64_t *even) {
    const uint64_t seq = __atomic_load_n(&h->sequence,__ATOMIC_ACQUIRE);
    if (seq >= UINT64_MAX-1u) return 0;
    const uint64_t odd = seq | UINT64_C(1);
    *even = odd+1u;
    __atomic_store_n(&h->sequence,odd,__ATOMIC_RELEASE);
    /* Stronger than the recovered writer: post-odd DMB / full barrier orders
     * visibility before any metadata/payload changes. Not an ISO-C seqlock. */
    __atomic_thread_fence(__ATOMIC_SEQ_CST);
    return 1;
}

int LACClockFieldPublish(LACClockFieldPublisher *p, uint32_t slot,
                         uint32_t kind, uint32_t width, uint32_t height,
                         float points_width, float points_height,
                         const float *field, size_t sample_count) {
    if (!p || !field || slot >= p->slot_count || kind < 1u || kind > 4u ||
        !width || !height || width > 1024u || height > 1024u ||
        (uint64_t)width * height * sizeof(float) > LG_CLOCK_FIELD_PIXEL_BYTES ||
        sample_count != (size_t)width * height ||
        !isfinite(points_width) || !isfinite(points_height) ||
        points_width <= 0.0f || points_height <= 0.0f ||
        points_width > 2048.0f || points_height > 2048.0f) return 0;
    for (size_t i = 0; i < sample_count; ++i)
        if (!isfinite(field[i]) || fabsf(field[i]) > 65504.0f) return 0;
    pthread_mutex_lock(&p->lock);
    if (!mapping_valid(p)) { pthread_mutex_unlock(&p->lock); return 0; }
    const uintptr_t input=(uintptr_t)field, mapped=(uintptr_t)p->mapping;
    const size_t bytes=sample_count*sizeof(float);
    if (input >= mapped ? input-mapped < p->mapped_size : mapped-input < bytes) {
        pthread_mutex_unlock(&p->lock); return 0;
    }
    const uint64_t timestamp = lac_monotonic_ticks();
    if (!timestamp) { pthread_mutex_unlock(&p->lock); return 0; }
    unsigned char *base = p->mapping + (size_t)slot * LG_CLOCK_FIELD_SLOT_BYTES;
    LGClockFieldHeader *h = (LGClockFieldHeader *)base;
    uint64_t even;
    if (!begin_write(h,&even)) { pthread_mutex_unlock(&p->lock); return 0; }
    if (h->token_10 != p->token)
        __atomic_store_n(&h->reserved_20,UINT64_C(0),__ATOMIC_RELEASE);
    h->magic = LG_CLOCK_FIELD_MAGIC;
    h->version = LG_CLOCK_FIELD_VERSION;
    h->token_10 = p->token;
    h->mach_absolute_time = timestamp;
    h->width = width; h->height = height;
    h->points_width = points_width; h->points_height = points_height;
    h->kind = kind;
    memcpy(base + LG_CLOCK_FIELD_HEADER_SIZE, field, sample_count * sizeof(float));
    __atomic_store_n(&h->sequence, even, __ATOMIC_RELEASE);
    pthread_mutex_unlock(&p->lock);
    return 1;
}

int LACClockFieldInvalidate(LACClockFieldPublisher *p, uint32_t slot) {
    if (!p || slot >= p->slot_count) return 0;
    pthread_mutex_lock(&p->lock);
    if (!mapping_valid(p)) { pthread_mutex_unlock(&p->lock); return 0; }
    LGClockFieldHeader *h = (LGClockFieldHeader *)(p->mapping +
                                                (size_t)slot*LG_CLOCK_FIELD_SLOT_BYTES);
    uint64_t even;
    if (h->token_10 != p->token) { pthread_mutex_unlock(&p->lock); return 0; }
    if (!begin_write(h,&even)) {
        /* Exhausted sequence can still fail closed: terminal odd, never reset. */
        __atomic_store_n(&h->sequence,UINT64_MAX,__ATOMIC_RELEASE);
        __atomic_thread_fence(__ATOMIC_SEQ_CST);
        h->mach_absolute_time = 0;
        pthread_mutex_unlock(&p->lock);
        return 1;
    }
    h->mach_absolute_time = 0;
    __atomic_store_n(&h->sequence,even,__ATOMIC_RELEASE);
    pthread_mutex_unlock(&p->lock);
    return 1;
}
