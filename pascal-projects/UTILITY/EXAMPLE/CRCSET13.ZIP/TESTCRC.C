/*
TESTCRC.C

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This program demonstrates the anti-virus CRC algorithm in VALIDCRC.C.
The response to an invalid CRC is entirely up to the programmer.

	This code is public domain.
*/


#include <stdio.h>
#include <stdlib.h>

#include "viruscrc.h"


/***/
main()
{
switch (validatecrc("TESTCRC.EXE"))
  {
  case CRC_VALID:
    puts("CRC is valid.");
    break;
    
  case CRC_INVALID:
  case CRC_ISZERO:
    fputs("*** WARNING *** Program's CRC is invalid.\n"
	  "This program may have been infected by a virus.\n", stderr);
    break;

  case CRC_NOMEM:
    fputs("Insufficient memory to run CRC calculation.\n", stderr);
    break;

  case CRC_FILEERR:
    fputs("Program file not found; cannot calculate CRC.\n", stderr);
    break;
  }

return (0);
}
