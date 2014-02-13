*:*********************************************************************
*:
*: Procedure file: D:\FOXPRO2\NOW\FNTS.PRG
*:
*:         System: 
*:         Author: 
*:      Copyright (c) 1992, 
*:  Last modified: 07/03/169     11:09
*:
*:  Procs & Fncts: FNTS()
*:
*:          Calls: STR()              (function  in ?)
*:               : SUBSTR()           (function  in ?)
*:               : LEFT()             (function  in ?)
*:               : SPACE()            (function  in ?)
*:               : STUFF()            (function  in ?)
*:               : ASC()              (function  in ?)
*:
*:      Documented 10/12/92 at 18:11               FoxDoc  version 2.10
*:*********************************************************************
parameter num___mun,nl_____ln,dl_____ld
private i_______i , nst___tsn
set talk off
if dl_____ld<0.or.dl_____ld>15.or.nl_____ln<dl_____ld+1
   return ("")
endif
set decimals to dl_____ld
nst___tsn = str(num___mun,nl_____ln,dl_____ld)
if dl_____ld>0
   i_______i = nl_____ln
   do while i_______i>0
      if substr(nst___tsn,i_______i,1)#"0"
         exit
      else
         i_______i = i_______i-1
      endif
   enddo
   nst___tsn = left(nst___tsn,i_______i)+space(nl_____ln-i_______i)
endif
i_______i = 1
do while i_______i<=nl_____ln
   nst___tsn = stuff(nst___tsn,i_______i,1,substr(fchr_rhcf,asc(substr(nst___tsn,i_______i,1)),1))
   if substr(nst___tsn,i_______i,1)="¦"
      nst___tsn = stuff(nst___tsn,i_______i,1,",")
   endif
   i_______i = i_______i+1
enddo
set decimals to 2
return (nst___tsn)
*: EOF: FNTS.PRG
