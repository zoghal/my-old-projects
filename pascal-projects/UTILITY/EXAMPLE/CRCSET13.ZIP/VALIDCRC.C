/*
VALIDCRC.C

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This module validates the CRC of the program in which it is linked.
The code was designed as an anti-virus algorithm.  The CRC is a very effective
method of detecting viruses; any virus that attaches itself to the program
changes the CRC of the program.  The response to an invalid CRC is entirely up
to the programmer.

	This code is public domain.
*/


#include <dos.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "viruscrc.h"


/* Macros to extract low and high bytes of a word. */
#define lowb(x)  (*(unsigned char *)&(x))
#define hib(x)   (*((unsigned char *)&(x) + 1))

/* Macros to extract low and high words of a dword. */
#define loww(x)  (*(unsigned short *)&(x))
#define hiw(x)   (*((unsigned short *)&(x) + 1))


void *bufalloc(size_t *size, size_t minsize);


#if defined(__TURBOC__)

#include <dir.h>
#define findprog(progname, pn)  strcpy(pn, searchpath(progname))
#define argv0  _argv[0]

#elif defined(_MSC_VER) || defined(_QC)

#define findprog(progname, pn)  _searchenv(progname, getenv("PATH"), pn)
extern char **__argv;
#define argv0  __argv[0]

#else
#error Unknown compiler.
#endif


/***/
/* Calculate CRC of active program and compare it to CRC in _viruscrc. */
int validatecrc(const char *progname)
{
int retcode;			/* Function return code. */

if (_viruscrc.x.polynomial != 0)
  {
  unsigned char *buffer;	/* Buffer for program image. */
  size_t bufsize;		/* Buffer size. */

  /* Allocate 8k buffer if possible, but get at least 512 bytes. */
  bufsize = 8192;
  buffer = bufalloc(&bufsize, 512);

  if (buffer)
    {
    char pn[80];		/* Fully qualified program name. */
    FILE *progfile;		/* Program file. */

    if (_osmajor < 3)
      /* Search PATH for program specified in progname. */
      findprog(progname, pn);
    else
      /* Under DOS versions 3 and above, the program name is in argv[0] (passed as argv0). */
      strcpy(pn, argv0);

    if ((progfile = fopen(pn, "rb")) != NULL)
      {
      crc32_t table[256];	/* CRC table. */
      register crc32_t *halfi;	/* Pointer to CRC of i / 2. */
      crc32_t crc;		/* Current CRC. */

      register size_t i;	/* Byte counter. */
      unsigned char *bufptr;	/* Pointer to walk through buffer. */

      /* Generate a CRC lookup table for faster calculation. */
      for (i = 0, halfi = table, table[0] = 0; i < 256; i += 2, halfi++)
	if (hib(hiw(*halfi)) & 0x80)
	  table[i] = (table[i + 1] = *halfi << 1) ^ _viruscrc.x.polynomial;
	else
	  table[i + 1] = (table[i] = *halfi << 1) ^ _viruscrc.x.polynomial;

      crc = 0;
      while ((i = fread(buffer, 1, bufsize, progfile)) != 0)
	for (bufptr = buffer; i--; bufptr++)
	  crc = (crc << 8) ^ table[hib(hiw(crc)) ^ *bufptr];

      fclose(progfile);

      retcode = crc == _viruscrc.x.crc ? CRC_VALID : CRC_INVALID;
      }
    else
      retcode = CRC_FILEERR;

    free(buffer);
    }
  else
    retcode = CRC_NOMEM;
  }
else
  /* CRC polynomial must be something other than 0. */
  retcode = CRC_ISZERO;

return (retcode);
}
