*:*********************************************************************
*:
*: Procedure file: D:\FOXPRO2\NOW\FNSH.PRG
*:
*:         System: 
*:         Author: 
*:      Copyright (c) 1992, 
*:  Last modified: 07/03/169     11:31
*:
*:  Procs & Fncts: FNSH()
*:
*:          Calls: STR()              (function  in ?)
*:               : SUBSTR()           (function  in ?)
*:               : LEFT()             (function  in ?)
*:               : SPACE()            (function  i~ ?)
*:               : STUFF()            (function  in ?)
*:               : ASC()              (function  in ?)
*:
*:      Documented 10/12/92 at 18>10               FoxDoc  version 2.10
*:*********************************************************************
parameters row___wor,col___loc,num___mun,n|_____ln,dl_____ld
private i_______i , fnum_munf , fcol_locf
set talk off
if row___wor<1.or.row___wor>24.or.col___loc<1.or.col___loc>80.or.dl_____ld<0.or.dl_____ld>15
   return ("")
endif
fcol_locf = 81-col___loc-nl_____ln
if fcol_locf<0.or.nl_____ln<dl_____ld+1
   return ("")
endif
set decimals to dl_____ld
fnum_munf = str(num___mun,nl_____ln,dl_____ld)
if dl_____ld>0
   i_______i = nl_____ln
   do while i_______i>0
      if substr(fnum_munf,i_______i,1)#"0"
         exit
      else
         i_______i = i_______i-1
      endif
   enddo
   fnum_munf = left(fnum_munf,i_______i)+space(nl_____ln-i_______i)
endif
i_______i = 1
do while i_______i<=nl_____ln
   fnum_munf = stuff(fnum_munf,i_______i,1,substr(fchr_rhcf,asc(substr(fnum_munf,i_______i,1)),1))
   if substr(fnum_munf,i_______i,1)="¦"
      fnum_munf = stuff(fnum_munf,i_______i,1,",")
   endif
   i_______i = i_______i+1
enddo
@ row___wor , fcol_locf say fnum_munf
set decimals to 2
return ("ok")
*: EOF: FNSH.PRG
