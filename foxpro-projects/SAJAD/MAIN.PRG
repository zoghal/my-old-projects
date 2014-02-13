clea all
CLEAR PROMPT
set talk off
on key label alt+x do sexit
set color to
set clock on
clea
REST FROM fchr
@1,0,25,80 Box 'ษอปบผอศบฑ'
REST FROM fchr
do while .t.
**************************** Menu Main ********************************
DEFINE MENU _main BAR AT LINE 0 Color Sche 4
defi pad One of _main prompt "๘คก"
defi pad Two of _main prompt "üคþ๐ –จþ๓" 
defi pad Thre of _main prompt "–‘ไ‘๓ฏ ้ฃ"
defi pad Fure of _main prompt "–‘ไ‘๓ฏ ข๘ค๘"

on sele pad One of _mAIN Do sExit
on sele pad two of _mAIN ACTI POPU list
on sele pad thre of _mAIN ACTI POPU deleted
on sele pad Fure of _mAIN ACTI POPU INFORMATION
****************

*-*-*-*-*-*-*-*-*-*-*-*-*-*-* Popups *-*-*-*-*-----
defi popu INFORMATION from 2,27 shad marg color sche 4
defi bar 1 of INFORMATION prompt "   ข๘ ’‘ก—๗"
defi bar 2 of INFORMATION prompt "\-"
defi bar 3 of INFORMATION prompt " ๘ช๗ข –‘ฌกช๕"
defi bar 4 of INFORMATION prompt "\-"
defi bar 5 of INFORMATION prompt "งคข ๖ขค๎ ๙๊‘ฌ"
on sele bar 1 of information do input_sele
on sele bar 3 of information do input_studen
on sele bar 5 of information do input_book
*++++++++++++++++++++++++++++++++++++++++++
defi popu deleted from 2,15 shad marg color sche 4
defi bar 1 of deleted prompt "  ข๘ ’‘ก—๗"
defi bar 2 of deleted prompt "\-"
defi bar 3 of deleted prompt "๘ช๗ข –‘ฌกช๕"
defi bar 4 of deleted prompt "\-"
defi bar 5 of deleted prompt "          งคข"
on sele bar 1 of DELETED do DEL_sele
on sele bar 3 of DELETED do DEL_STU
on sele bar 5 of DELETED do DEL_BOOK
*++++++++++++++++++++++++++++++++++++++++++
defi popu list from 2,5 shad marg color sche 4
defi bar 1 of list prompt "ข๎ ’จค“"
on sele bar 1 of list do list
*-*-*--*-*-*-*-*-*-*-*-*-*-*- end popup *-*-*-*-*-*-*-
Acti menu _main pad fure
enddo

************************ Procedure Program ***************************
Proc sexit
set color to
 Clea 
 Cancel
Return 
*////////////////
Proc input_studen
defin wind input1 from 7,8 to 17,72 doub shad color sche 1
acti wind input1
@0,32 SAY "[               ] ü๐ข๘๗‘ก ๔‘๗"
@2,32 SAY "[               ] ๔‘๗"
@4,32 SAY "[               ] คข•๔‘๗"
@6,43 SAY "[    ] ข๓๘— ๑‘จ"
@0,1 SAY "[               ] ข๓๘—๕"
@2,1 SAY "[               ] ๙—ชค"
@4,1 SAY "[               ] üþ๘ช๗ขข๎"
@6,12 SAY "[    ] üข๘ค๘ ๑‘จ"
Famele1 = space(15)
Famele1 = fstr (0,47,Famele1)
wait ""timeout 0.1
Famele1 = alltrim (famele1)

Name1 = Space (15)
name1 = fstr (2,47,name1)
wait ""timeout 0.1
name1 = alltrim (name1)

Namef = Space (15)
namef = fstr (4,47,namef)
wait ""timeout 0.1
namef = alltrim (namef)

year_br1 = Space (4)
year_br1 = fnum (6,47,year_br1,4,0)
wait ""timeout 0.1
year_br1 = alltrim (year_br1)

city1 = Space (15)
city1 = fstr (0,16,city1)
wait ""timeout 0.1
city1 = alltrim (city1)

Type1 = Space (15)
Type1 = fstr (2,16,Type1)
wait ""timeout 0.1
type1 = alltrim (type1)

Code1 = space (15)
code1 = Fnum (4,16,code1,15,0)
wait ""timeout 0.1
code1= alltrim (code1)

year_enter1 = Space (4)
year_enter1 = fnum (6,16,year_enter1,4,0)
wait ""timeout 0.1
year_enter1 = alltrim (year_enter1) 

@8,20 Prompt "Save"
@8,30 Prompt "Cancel"
Menu to m1 
set color to
do case m1
 case m1= 1
  use
  use daneshjo
  APPEND BLANK
  repl name with fsis (name1)
  repl famele with fsis (famele1 )
  repl n_fa with fsis (namef )
  repl code with fsis (code1 )
  repl city with fsis (city1)
  repl y_br with fsis (year_br1)
  repl y_enter with fsis (year_enter1)
  repl Type with fsis (type1)
 endcase
deac wind input1
return
****************************************
Proc input_book
use
defin wind input2 from 5,25 to 19,56 doub shad color sche 1
acti wind input2
@0,1 say "[               ] งคข ๔‘๗"
@2,10 say "[      ] งคข ข๎"
@4,12 say "[    ] ข๘ ขขใ—"
@6,1 say "[               ] ข‘—จ ๔‘๗"
@8,12 say "[    ]  –ไ‘จ"
@10,13 say "[   ] ฅ๘ค"

rest from fchr
Book1 = space (15)	
book1 = fstr (0,16,book1)
book1= alltrim (book1)
wait "" timeout 0.1

code1 = space (6)
code1 = fnum (2,16,code1,6,1)
code1 = alltrim ( code1)
wait "" timeout 0.1

tedad_v1 =space (4)
tedad_v1 = fnum (4,16,tedad_v1,4,1)
tedad_v1 = alltrim (tedad_v1)
wait "" timeout 0.1

n_t1 = space (15)
n_t1 = fstr (6,16,n_t1)
n_t1 = alltrim (n_t1)
wait "" timeout 0.1

time1 = space (4)
time1 = fnum (8,16,time1,4,1)
time1 = alltrim (time1)
wait "" timeout 0.1

day1 = space (3)
day1 = fnum (10,16,day1,3,0)
day1 = alltrim (day1)
wait "" timeout 0.1

@12,8 Prompt "Save"
@12,16 Prompt "Cancel"
Menu to m1 
set color to
do case m1
 case m1= 1
  use
  use book
  APPEND BLANK
  repl n_b with fsis (book1)
  repl n_t with fsis (n_t1 )
  repl code with fsis (code1 )
  repl tedad_v with fsis (tedad_v1)
  repl time with fsis (time1)
  repl day with fsis (day1)
 endcase
deac wind input2
Return
*******************************************
Proce input_sele
defin wind input3 from 11,20 to 13,56 doub shad color sche 1
acti wind input3
rest from fchr
@0,2 Say "[               ] ฅ๘๕ ฉ๗ข ข๎"
code1 = space (15)
TempCode =Space (15)
code1 = fnum (0,17,code1,15,0)
code1 = alltrim (fsis (code1))
wait " " timeout 0.1
use
use daneshjo
go top
loca for code =code1
 if found()
   TempCode1 = Code 
  deac wind input3
  defin wind mess1 from 8,18 to 16,61 doub shad color sche 1
  acti wind mess1
  @0,1 sAY "[ "+ALLTRIM(FSIS(fAMELE))+" "+ALLTRIM(FSIS (NAME))+" ] : ü๐ข๘๗‘ก ๔‘๗๘๔‘๗ "
  @2,14 SAY "[ "+ALLTRIM(FSIS(TYPE))+" ] : ๙—ชค" 
  @4,20 SAY "[ "+ALLTRIM(FSIS(CODE))+" ] : ข๎"
  @6,8 Prompt "Ok"
  @6,16 Prompt "Cancel"
  Menu to m1 
  set color to
  do case m1
   case m1= 1
    ****
     deac wind mess1
  		num =0
  		do while not num >=  24
        defin wind list from 8,6 to 16,73 doub shad color sche 1
  		acti wind list
  		@0,1 Say "ษอออออหออออออหอออออออออออออออหออออออออหออออออออหอออออออออออออออป"
  		@1,1 Say "บ ฅ๘ค บ –ไ‘จ บ   ข‘—จ๔‘๗    บ ข๘ – บ งคข ข๎ บ     งคข๔‘๗    บ"
  		@2,1 Say "ฬอออออฮออออออฮอออออออออออออออฮออออออออฮออออออออฮอออออออออออออออน"
  		@3,1 Say "บ     บ      บ               บ        บ        บ               บ"
  		@4,1 Say "ศอออออสออออออสอออออออออออออออสออออออออสออออออออสอออออออออออออออผ"
 		Code1 = space (6) 		
 		tempcode2 = space (6)
 		code1 =fnum (3,46,code1,6,1)
 		wait " " timeout 0.1	
 		code1 =alltrim (fsis (code1))
 		use
 		use book
 		go top
 		loca for code =code1
 		IF found()
 		tempcode2=code
		@3,3 Say Fsis ( day)
		@3,9 Say Fsis ( time)
		@3,15 Say Fsis ( n_t )
		@3,33 Say Fsis ( tedad_v)
		@3,49 Say Fsis ( N_b )
	  	temp = space (200)
		@6,16 Prompt "Save"
		@6,32 Prompt "Skip"
		@6,42 Prompt "Exit"
  		Menu to m2 
		do case m2
   		case m2= 1
			num = num + val ( tedad_v)
			use
			use select
			appe blan
			repl code with tempcode1
			repl sele with tempcode2
		case m2=3
		 exit
		endcase
		else 
		 wait "nooooooooooo " window 		 
 		endif	
  		deac wind list
 		enddo
  		deac wind list
  
    ***** 
   OTHERWISE
    deac wind mess1
  ENDCASE
  else
  deac wind input3
  wait 'ขคข๗ ข๘๘ ฅ๘๕ ฉ๗ข ข๎ ' window 
 endif

return
*************************************************
PROC DEL_STU
defin wind input3 from 11,20 to 13,56 doub shad color sche 1
acti wind input3
@0,2 Say "[               ] ฅ๘๕ ฉ๗ข ข๎"
code1 = space (15)
code1 = fnum (0,17,code1,15,0)
code1 = alltrim (fsis (code1))
wait " " timeout 0.1
use
use daneshjo
go top
loca for code =code1
 if found()
  deac wind input3
  defin wind mess1 from 8,18 to 16,61 doub shad color sche 1
  acti wind mess1
  @0,1 sAY "[ "+ALLTRIM(FSIS(fAMELE))+" "+ALLTRIM(FSIS (NAME))+" ] : ü๐ข๘๗‘ก ๔‘๗๘๔‘๗ "
  @2,17 SAY "[ "+ALLTRIM(FSIS(TYPE))+" ] : ๙—ชค" 
  @4,14 SAY "[ "+ALLTRIM(FSIS(CODE))+" ] : ข๎"
  @6,8 Prompt "Ok"
  @6,16 Prompt "Cancel"
  Menu to m1 
  set color to
  do case m1
   case m1= 1
     DELETE
     PACK
     DEAC WIND  MESS1
     WAIT "ขช ํ‘• ขค๘๎ค" WINDOW 
   CASE M1=2
    DEAC WIND MESS1  
  ENDCASE
 ELSE 
  DEAC WIND INPUT3 
   wait 'ขคข๗ ข๘๘ ฅ๘๕ ฉ๗ข ข๎ ' window 
 ENDIF
RETURN
**********************************
PROC DEL_BOOK
defin wind input3 from 11,20 to 13,56 doub shad color sche 1
acti wind input3
@0,2 Say "[               ] งคข ข๎"
code1 = space (6)
code1 = fnum (0,17,code1,6,1)
code1 = alltrim (fsis (code1))
wait " " timeout 0.1
use
use BOOK
go top
loca for code =code1
 if found()
  deac wind input3
  defin wind mess1 from 8,27 to 16,53 doub shad color sche 1
  acti wind mess1
  @0,1 sAY "[ "+ALLTRIM(FSIS (N_B))+" ] : ’‘—๎ ๔‘๗ "
  @2,1 SAY "[ "+ALLTRIM(FSIS(N_T))+" ] : ข‘—จ ๔‘๗" 
  @4,1 SAY "[ "+ALLTRIM(FSIS(TEDAD_V))+" ] :ข๘ ขขใ—"
  @6,8 Prompt "Ok"
  @6,16 Prompt "Cancel"
  Menu to m1 
  set color to
  do case m1
   case m1= 1
     DELETE
     PACK
     DEAC WIND  MESS1
     WAIT "ขช ํ‘• ขค๘๎ค" WINDOW 
   CASE M1=2
    DEAC WIND MESS1  
  ENDCASE
 ELSE 
  DEAC WIND INPUT3 
   wait 'ขคข๗ ข๘๘ ฅ๘๕ ฉ๗ข ข๎ ' window 
 ENDIF
RETURN
***********************************
proc del_sele
defin wind input3 from 11,20 to 13,56 doub shad color sche 1
acti wind input3
rest from fchr
@0,2 Say "[               ] ฅ๘๕ ฉ๗ข ข๎"
code1 = space (15)
code1 = fnum (0,17,code1,15,0)
code1 = alltrim (fsis (code1))
wait " " timeout 0.1
use
use daneshjo
go top
loca for code =code1
 if found()
 TempCode10 =Space (15)
  tempcode10 = Code 
  deac wind input3
  defin wind mess1 from 8,18 to 16,61 doub shad color sche 1
  acti wind mess1
  @0,1 sAY "[ "+ALLTRIM(FSIS(fAMELE))+" "+ALLTRIM(FSIS (NAME))+" ] : ü๐ข๘๗‘ก ๔‘๗๘๔‘๗ "
  @2,14 SAY "[ "+ALLTRIM(FSIS(TYPE))+" ] : ๙—ชค" 
  @4,20 SAY "[ "+ALLTRIM(FSIS(CODE))+" ] : ข๎"
  @6,8 Prompt "Ok"
  @6,16 Prompt "Cancel"
  Menu to m1 
  set color to
  do case m1
   case m1= 1
    ****
defin wind inputq from 11,20 to 13,56 doub shad color sche 1
acti wind inputq
@0,2 Say "[               ] : งคข ข๎"
code1 = space (15)
code1 = fnum (0,17,code1,6,1)
wait  "" timeout 0.1
code1 = alltrim (fsis (code1))
use
use select
loca for code = tempcode10 .and. sele =code1
If found ()
 deac wind all
 wait "ขþขค๐ ํ‘• ๘ ขช ขþ• งคข" window
 delete 
 pack
 else 
 deac wind all
 wait "–จ ๙ขค๎๗ ข๘ ’‘ก—๗ ข๎ ๖þ ‘“ üจคข ๘ ฉ๗ข" window
 endif
    ***** 
   OTHERWISE
    deac wind mess1
  ENDCASE
  else
  deac wind input3
  wait 'ขคข๗ ข๘๘ ฅ๘๕ ฉ๗ข ข๎ ' window 
 endif
return
**********************************************
proc list
	num =0
    defin wind list from 2,5 to 22,72 doub shad color sche 1
  	acti wind list
  	use
  	use book
  	i=1
  	num=1
  		@0,1 Say "ษอออออหออออออหอออออออออออออออหออออออออหออออออออหอออออออออออออออป"
  		@1,1 Say "บ ฅ๘ค บ –ไ‘จ บ   ข‘—จ๔‘๗    บ ข๘ – บ งคข ข๎ บ     งคข๔‘๗    บ"
  		@2,1 Say "ฬอออออฮออออออฮอออออออออออออออฮออออออออฮออออออออฮอออออออออออออออน"
  		do while .not. eof()  
  		if num = 20 
  		 i=1
  		 num =1
  	    wait" " 
  		endif
  		@2+i,46 say  fsis(n_b)
  		@2+i,40 say  fsis(code)
  		@2+i,30 say  fsis(tedad_v)
  		@2+i,25 say  fsis(n_t)
  		@2+i,20 say  fsis(time)
  		@2+i,15 say  fsis(day)
  		@2+i,1 Say "บ     บ      บ               บ        บ        บ               บ"
  		i = i+1
  		 num = num +1
  		enddo   
  **********
   CASE M1=2
    EXIT
   ENDCASE
  ELSE
  WAIT " NO BOOK " WINDOW
  ENDIF

return
*  		@4,1 Say "ศอออออสออออออสอออออออออออออออสออออออออสออออออออสอออออออออออออออผ"
