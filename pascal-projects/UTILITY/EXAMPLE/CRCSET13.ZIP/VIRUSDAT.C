/*
VIRUSDAT.C

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9

March 24, 1991

	This module defines the _viruscrc variable used by the anti-virus CRC
check.  The default search string used by the CRCSET.EXE program is DEAN_CRC
but may be changed by either modifying this file or defining another instance
of _viruscrc in another file earlier in the program link.

	This code is public domain.
*/


#include "viruscrc.h"


const union filecrc _viruscrc =
  {
  'D', 'E', 'A', 'N', '_', 'C', 'R', 'C'
  };
