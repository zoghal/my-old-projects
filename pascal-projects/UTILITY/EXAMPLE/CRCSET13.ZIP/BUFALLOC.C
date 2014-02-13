/*
BUFALLOC.C

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This module allocates a simple memory buffer whose size depends on the
amount of memory available.  The size of the buffer is halved each time the
allocation fails until memory is successfully allocated or the size goes below
the minimum size requested.

	This code is public domain.
*/


#include <stdlib.h>


/***/
/* Allocate a buffer of flexible size. */
void *bufalloc(size_t *size, size_t minsize)
{
void *buffer;	/* Buffer allocated. */
size_t bufsize;	/* Size of buffer allocated. */

/* Allocate as big a buffer as possible (at least minsize). */
for (bufsize = *size; bufsize >= minsize && !(buffer = malloc(bufsize)); bufsize /= 2);

/* Save buffer size. */
*size = bufsize;

return (buffer);
}
