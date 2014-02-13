/*
VIRUSCRC.H

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This is the interface to the anti-virus CRC check in VALIDCRC.C and
VIRUSDAT.C.

	This code is public domain.
*/


typedef
  unsigned long crc32_t;

union filecrc
  {
  char searchstr[8];	/* String to search for. */

  struct
    {
    crc32_t polynomial;	/* Polynomial for this file. */
    crc32_t crc;	/* Calculated CRC for this file. */
    } x;
  };


extern const union filecrc _viruscrc;


/* CRC validation return codes. */
enum
  {
  CRC_VALID,	/* CRC is valid. */
  CRC_INVALID,	/* CRC is invalid. */
  CRC_ISZERO,	/* CRC polynomial has been reset to zero. */
  CRC_NOMEM,	/* No memory for data buffer. */
  CRC_FILEERR	/* Program file not found. */
  };


int validatecrc(const char *progname);


/* isvalidcrc() is declared to maintain compatibility with earlier releases. */
#define isvalidcrc(progname)  (validatecrc(progname) == CRC_VALID)
