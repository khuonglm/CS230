#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"
#include "mm.h"

/* functions prototype */
int mm_init(void);
void* mm_malloc(size_t size);
void mm_free(void* ptr);
void* mm_realloc(void* ptr, size_t size);
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *find_fit(size_t size);
static void place(void *bp, size_t size);
static void insert_new_chunk(char *bp);

/* Basic constants and macros */
#define WSIZE 4 /* Word and header/footer size (bytes) */
#define DSIZE 8 /* Double word size (bytes) */
#define CHUNKSIZE (1<<12) /* Extend heap by this amount (bytes) */
#define BSIZE 16

#define MAX(x, y) ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)          (*(unsigned int *)(p))
#define PUT(p, val)     (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p, 001 allocated, 000 free since size is multiple of 8 */
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_ALLOC(p)    (GET(p) & 0x1)
#define FTRP(p)         ((char *)(p) + GET_SIZE(p) - WSIZE)

/* Given block header ptr p, compute address of next and previous blocks */
#define NEXT_BLKP(p)    ((char *)(p) + GET_SIZE((char *)(p)))
#define PREV_BLKP(p)    ((char *)(p) - GET_SIZE((char *)(p) - WSIZE))

/* Read and write an address at address p */
#define GET_PTR(p)      (*(char **)p)
#define PUT_PTR(p, val) (*(char **)(p) = (val))

/* Get pointers that point the next, previous free blocks */
#define NEXT_PTR(p)     ((char *)(p) + WSIZE)
#define PREV_PTR(p)     ((char *)(p) + DSIZE)

/* Private global variables */
static char *heap_listp;      /* Point to root of free block list */
static char *last_listp;
/* 2^4, 2^5, 2^6, 2^7, 2^8, 2^9, 2^10, 2^11, 2^12, 2^13 */
#define MXSZ 14
#define NBLK 10

/*
 * mm_init - initialize the malloc package.
 * The return value should be -1 if there was a problem in performing the initialization, 0
 * otherwise
 */
int mm_init(void) {
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE + NBLK * WSIZE)) == (void *)-1) /* Allocated fail */
        return -1;
    PUT(heap_listp, 0);                                     /* Alignment padding */
    heap_listp += WSIZE;                                    /* Header */
    char *ptr = heap_listp;
    PUT(ptr, PACK(WSIZE * NBLK + DSIZE, 1));   
    PUT(FTRP(ptr), PACK(WSIZE * NBLK + DSIZE, 1));
    for (unsigned int i = 0; i < NBLK; ++i) {
        ptr += WSIZE;
        PUT_PTR(ptr, NULL);
    }
    last_listp = ptr;
    PUT(ptr + DSIZE, PACK(0, 1));                           /* Epilogue header */    
    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    // printf("%p\n", ptr + DSIZE);
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;
    return 0;
}

static void insert_new_chunk(char *bp) {
    size_t size = GET_SIZE(bp);
    if (size < BSIZE) return;
    char *ptr = heap_listp;
    for (unsigned int i = 5; i < MXSZ; ++i) {
        if (size < (1 << i)) break;
        ptr += WSIZE;
    }

    // printf("insert new chunk %p %d %d %p %p\n", bp, GET_ALLOC(bp), GET_SIZE(bp), heap_listp, ptr);
    char* old_chunk = GET_PTR(NEXT_PTR(ptr));
    // printf("old chunk %p\n", old_chunk);

    while(old_chunk != NULL) {
        if (bp < old_chunk) 
            break;
        ptr = old_chunk;
        old_chunk = GET_PTR(NEXT_PTR(ptr));
    }
    
    // printf("%p %p %p\n", ptr, bp, old_chunk);
    /* connect root to new chunk */
    PUT_PTR(NEXT_PTR(ptr), bp);    
    PUT_PTR(PREV_PTR(bp), ptr);

    /* connect new chunk to the old chunk */
    PUT_PTR(NEXT_PTR(bp), old_chunk);
    if (old_chunk != NULL)
        PUT_PTR(PREV_PTR(old_chunk), bp);
}

static void delete_chunk(char* bp) {
    // printf("delete chunk %p\n", bp);
    if (GET_SIZE(bp) < BSIZE) 
        return;

    char* next_chunk = GET_PTR(NEXT_PTR(bp));
    char* prev_chunk = GET_PTR(PREV_PTR(bp));

    PUT_PTR(NEXT_PTR(prev_chunk), next_chunk);
    if (next_chunk != NULL)
        PUT_PTR(PREV_PTR(next_chunk), prev_chunk);
}

static void *extend_heap(size_t words) {
    // printf("extend heap %d\n", words*WSIZE);
    char *bp;
    size_t size;

    /* Expand size for alignment */
    size = words & 1? (words + 1) * WSIZE: words * WSIZE;
    // printf("%d\n", size);
    if((bp = mem_sbrk(size)) == (void *)-1)
        return NULL;
    
    /* Initialize free block header/footer and the epilogue header */
    bp -= WSIZE;
    PUT(bp, PACK(size, 0));         /* free header block */
    PUT(FTRP(bp), PACK(size, 0));   /* free footer block */
    PUT(NEXT_BLKP(bp), PACK(0, 1)); /* new epilogue header */

    // printf("Epilogue %p\n", NEXT_BLKP(bp));
    /* coalesce if the previous block is free */
    return coalesce(bp);
}

/*
 * coalesce with previous and next blocks
 */
static void *coalesce(void *bp) {
    size_t prev_alloc = GET_ALLOC(PREV_BLKP(bp));
    size_t next_alloc = GET_ALLOC(NEXT_BLKP(bp));
    size_t size = GET_SIZE(bp);

    // printf("coalesce %p %d\n", bp, size);

    // printf("coalesce next block %p %d %d\n", NEXT_BLKP(bp), GET_ALLOC(NEXT_BLKP(bp)), GET_SIZE(NEXT_BLKP(bp)));
    // printf("coalesce prev block %p %d %d\n", PREV_BLKP(bp), GET_ALLOC(PREV_BLKP(bp)), GET_SIZE(PREV_BLKP(bp)));

    if (prev_alloc && next_alloc) {
        insert_new_chunk(bp);
        return bp;
    }

    if (!prev_alloc) delete_chunk(PREV_BLKP(bp));
    if (!next_alloc) delete_chunk(NEXT_BLKP(bp));

    if (!prev_alloc && next_alloc) {
        // printf("case 1 %d\n", GET_SIZE(PREV_BLKP(bp)));
        size += GET_SIZE(PREV_BLKP(bp));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(PREV_BLKP(bp), PACK(size, 0));
        bp = PREV_BLKP(bp);
    } else if (prev_alloc && !next_alloc) {
        // printf("case 2 %d\n", GET_SIZE(NEXT_BLKP(bp)));
        size += GET_SIZE(NEXT_BLKP(bp));
        PUT(bp, PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    } else {
        // printf("case 3 %d %d\n", GET_SIZE(PREV_BLKP(bp)), GET_SIZE(NEXT_BLKP(bp)));
        size += GET_SIZE(PREV_BLKP(bp)) + GET_SIZE(NEXT_BLKP(bp));
        PUT(PREV_BLKP(bp), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    // printf("coalesce %d %d %p\n", GET_SIZE(bp), GET_ALLOC(bp), bp);
    
    insert_new_chunk(bp);
    return bp;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
    // printf("malloc %d\n", size);
    size_t asize;
    char *bp;

    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE) asize = 2 * DSIZE;
    else asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize);
        // printf("%p %d\n", bp, GET_SIZE(bp));
        return bp + WSIZE; 
    }

    /* No fit found. Get more memory and place the block */
    size_t extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)
        return NULL;
        
    place(bp, asize);

    // printf("%p %d\n", bp, GET_SIZE(bp));
    return bp + WSIZE;
}

static void *find_fit(size_t size) {
    // printf("find fit %d\n", size);
    char *ptr = heap_listp;
    for (unsigned int i = 5; i < MXSZ; ++i) {
        if (size < (1 << i)) break;
        ptr += WSIZE;
    }

    char *bp;
    do {
        bp = GET_PTR(NEXT_PTR(ptr));

        while(bp != NULL && GET_SIZE(bp) < size)
            bp = GET_PTR(NEXT_PTR(bp));
        
        ptr += WSIZE;
    } while(ptr != last_listp && bp == NULL);

    // if (bp != NULL) {
    //     printf("find fit %d %d %d %p\n", size, GET_ALLOC(bp), GET_SIZE(bp), bp);
    // } else {
    //     printf("find fit %d %p\n", size, bp);
    // }
    return bp;
}

static void place(void *bp, size_t size) {
    // printf("place %p %d", bp, size);
    size_t bsize = GET_SIZE(bp);

    if (size > bsize) return;

    delete_chunk(bp);

    if (bsize - size < BSIZE) 
        size = bsize;

    bsize -= size;
    PUT(bp, PACK(size, 1));
    PUT(FTRP(bp), PACK(size, 1));
    // printf("place %d %d %d %p\n", size, GET_SIZE(bp), GET_ALLOC(bp), bp);

    if(bsize == 0) return;

    bp = NEXT_BLKP(bp);
    PUT(bp, PACK(bsize, 0));
    PUT(FTRP(bp), PACK(bsize, 0));
    insert_new_chunk(bp);
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void* bp) {
    bp -= WSIZE;
    // printf("free %p", bp);
    size_t size = GET_SIZE(bp);

    PUT(bp, PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    // printf("free %d %d %d %p\n", size, GET_SIZE(bp), GET_ALLOC(bp), bp);

    coalesce(bp);
}

/*
 * mm_realloc
 */
void *mm_realloc(void* ptr, size_t size) {
    if (ptr == NULL) {
        return mm_malloc(size);
    }

    if (size == 0) {
        mm_free(ptr);
        return NULL;
    }

    size_t oldsize = GET_SIZE(ptr - WSIZE);
    size_t asize;
    if (size <= DSIZE) asize = 2 * DSIZE;
    else asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);

    if(asize <= oldsize) {
        if (oldsize - asize >= BSIZE) {
            PUT(ptr + asize, PACK(oldsize - asize, 0));
            mm_free(ptr + asize + WSIZE);
        }
        return ptr;
    } else {
        char *bp = NEXT_BLKP(ptr - WSIZE);
        unsigned int alloc = 0;
        while(oldsize < asize) {
            if (GET_SIZE(bp) == 0) break;
            oldsize += GET_SIZE(bp);
            if (GET_ALLOC(bp)) {
                alloc = 1;
                break;
            }
            bp = NEXT_BLKP(bp);
        }
        if (!alloc) {
            if (asize > oldsize) {
                bp = extend_heap((MAX(CHUNKSIZE, asize - oldsize)) / WSIZE);
                if (bp == NULL)
                    return NULL;
            }

            if (!alloc) {
                place(NEXT_BLKP(ptr - WSIZE), asize - GET_SIZE(ptr - WSIZE));
                asize = GET_SIZE(ptr - WSIZE) + GET_SIZE(NEXT_BLKP(ptr - WSIZE));
                PUT(ptr - WSIZE, PACK(asize, 1));
                PUT(FTRP(ptr - WSIZE), PACK(asize, 1));
                return ptr;
            }
        }
    }

    oldsize = GET_SIZE(ptr - WSIZE);
    char *new_ptr = mm_malloc(size);
    if (!new_ptr) 
        return NULL;

    memcpy(new_ptr, ptr, oldsize);
    mm_free(ptr);
    return new_ptr;
}