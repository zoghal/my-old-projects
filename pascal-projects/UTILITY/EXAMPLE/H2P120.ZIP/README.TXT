ReadMe.Txt for H2Pas
====================

H2Pas is a quick and dirty hack to convert C-Header files to Pascal units.

If you make modifications, please drop me a copy at
  Peter Sawatzki, CompuServe 100031,3002

In it's current implementation (1.20) H2Pas does the following:

- convert structs
- convert constant defines
- convert procedure/function headers
- 'convert' comments of style /* xxxx */ to { xxxx }
  and comments of style // yyyy to { yyy }
- make use of IMPort files to resolve DLL index entries
- output C and Pascal code to verify correctness of C and Pascal
  structure sizes

How to use and generate import files:
-------------------------------------

if a EXEHDR type .IMP file is present for the DLL with information
about the entry points of a function, H2Pas outputs an unit implementation
section with entries of the form:

  Function Ctl3DEnabled;                  External 'CTL3D'    Index    5;

where the appropriate indices are resolved from information gathered
from the .IMP file.

To generate the .IMP file for a DLL -say CTL3D.DLL- one must do the following:

  EXEHDR CTL3D.DLL >CTL3D.IMP


How to execute H2Pas
--------------------

Usage:

H2Pas Ctl3D.H Ctl3D.Pas [Ctl3D.Imp]

where Ctl3D.H is the source C header file,
      Ctl3D.Pas is the destination pascal unit to be generated
  and Ctl3D.Imp is an optional import file generated from EXEHDR

H2Pas.Ini
---------

currently H2Pas.Ini has two areas for customization:

[TypeMap]
C-Type = Pascal-Type

maps a certain C-type to a Pascal type (see sample H2Pas.Ini)

[ModMap]
modifier

a list of modifiers that H2Pas should ignore (see sample H2Pas.Ini)

written by

  Peter Sawatzki
  Buchenhof 3
  58091 Hagen / Germany
  CompuServe: 100031,3002



