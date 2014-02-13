CLEAR
load sepand.bin
deac wind all
rest from fchr
use
SET TALK OFF
SET CLOCK ON
******
set color to n/n
clear
set color to w+/1
pass=space(5)
i=0
for b=1 to 10
defi wind pass from 10,20 to 12,57 double shado title "pass word" COLOR W+/B
acti wind pass
@0,13 say " ¢ş÷î ¢¤ø ¤ ¢ø¤ø ¥õ¤" 
set color to w+/3
@0, 5 say "   "
stor 0 to p1,p2,p3,pass,key
for d=1 to 3
key=inkey(0)
@0,4+d say "*"
if key=109 .or. key=77
p1=1
endif
if key=115 .or. key=83
p2=1
endif
if key=115 .or. key=83
p3=1
endif
endfor
pass=p1+p2+p3
if pass=3
wait "(: !¢‹‹‹‹ş¢‹‹‹õ © ø‹‹‹‹‹¡ ù‹‹‹‹‹õ‘‹‹‹‹‹÷¤‹‹‹‹“ ù‹‹‹‹‹‹‹‹“  " window timeout 0.5
exit
endif
wait "  ! –¨ ù‘“—ª ¥õ¤  " window timeout 0.4
i=i+1
if i=3 
quit
endif
endfor
deac wind pass
*****
clear
DO WHILE .T.
@ 1,1,23,78 BOX "ÉÍ»º¼ÍÈº°"
DEFI WIND MSS1 FROM 3,56 TO 10,75 SHADO  TITLE " ù¨¤¢õ ùõ‘÷¤“ " double COLOR W+/B 
ACTI WIND MSS1
SET COLOR TO W+/B
@1,1 PROMPT "   –‘ä‘ó¯¢ø¤ø "  mess " ô—¨ş¨ ù“ –‘ä‘ó¯ ¢ø¤ø "
@2,1 PROMPT "   ©¤¥‹‹‹‹‹‹ğ "  mess " –‘ª¤¥ğ "
@3,1 PROMPT "   –‘‹÷‘‹î‹‹õ "  mess " ùõ‘÷¤“ ¤¢ –¤şşç— "
@4,1 prompt "    í‹‹‹‹õ‹‹‹‹î "  mess "ùõ‘÷¤“ ù¤‘“¤¢ –‘Ÿş®ø— "
@5,1 PROMPT "    <Esc>  šø¤¡ "  mess " ùõ‘÷¤“ ¯şŸõ ¥ šø¤¡ "
MENU TO P1
DO CASE
   CASE P1=1
     DO NEW
   CASE P1=2
		do screen
   CASE P1=3
   		do need
   CASE P1=4
   		do help	
   CASE P1=5
	EXIT
      other wise
  exit
ENDCASE
ENDDO
*********** GO WINDOW ***********
 FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS1 BY 0,-I
   ENDFOR
    FOR I=1 TO 5
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS1 BY I,0
    ENDFOR
      FOR I=1 TO 10
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS1 BY 0,I
    ENDFOR
******** WIN MSS3 **********
 DEFI WIND MSS3 FROM 18,54 TO 24,76 SHADO DOUBLE COLOR W+/B
 ACTI WIND MSS3
 @1,3 SAY " ¤¢ş¢ ¢şõ ù“ "
 @2,8 SAY " ‘— "
 @3,5 SAY "¤ğş¢ ùõ‘÷¤“ "
 DEAC WIND MSS1
************ GO WIN MSS3 ***********
     FOR I=1 TO 4
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS3 BY -I,0
    ENDFOR
	  FOR I=1 TO 7
    FOR X=1 TO 30000
    ENDFOR
    MOVE WIND MSS3 BY 0,-I
    ENDFOR
WAIT " " TIMEOUT 1
    DEAC WIND ALL
SET COLOR TO W+/B
CLEAR
******** PROC NEW *******
PROC NEW
do while .t.
DEFI WIND MSS2 FROM 4,34 TO 11,57 SHADO DOUBLE TITLE " –‘ä‘ó¯ ¢ø¤ø " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "      ¢ş¢› §ø¤¢ ô‘÷ " mess " ¢ş¢› §¤¢ ô‘÷ ö¢¤î ¢¤ø "
@ 1,1 PROMPT "   ¢ş¢› ö¥øõ ©÷¢ " mess "¢ş¢› ¥øõ ©÷¢ ô‘÷ ö¢¤î ¢¤ø "
@ 2,1 PROMPT "       ¢ş¢› ö¤‘îõû " mess "¢ş¢› ¤‘îõû ô‘÷ ö¢¤î ¢¤ø "
@ 3,1 PROMPT "           §ø¤¢ é£Ÿ " mess "ù¢ª é£Ÿ §ø¤¢ ö¢¤î é£Ÿ"
@ 4,1 PROMPT "    ö¥øõ ©÷¢ é£Ÿ " mess "  ¥øõ ©÷¢ ö¢¤î é£Ÿ"
@ 5,1 prompt "          ¤‘îõû é£Ÿ " mess "¤‘îõû ö¢¤î é£Ÿ"
MENU TO P2
DO CASE
   CASE P2=1
	  DO BOOK
   CASE p2=2
      do jadid
   CASE P2=3
	  do hamkar
   CASE P2=4
   	do del_book
   CASE P2=5
      	do del_student
   case p2=6
       do del_hamkar
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
********** PROC student jadid **********
PROC jadid
set cursor on
use
use student 
defi window mss4 from 5,20 to 19,60 SHADO DOUBLE TITLE " ¢ş¢› ö¤øõ ©÷¢ " COLOR W+/B
acti wind mss4
clear
@1,24 say  "  ¥øõ ©÷¢ ¢î"
@3,24 say " ¥øõ ©÷¢ ô‘÷"
@5,24 say "  üğ¢ø÷‘¡ ô‘÷"
@7,24 say "       ¤¢• ô‘÷"
@9,24 say "ùõ‘÷¨‘÷ª ù¤‘õª"  
@11,24say "      ¢óø— ñŸõ"
set color to w+/3
nd=space(13) 
fd=space(9) 
pd=space(8)
md=space(7)
sd=space(8)
kd=space(10)
kd=fSTR(1,22,kd)
wait " "
nd=fstr(3,22,nd)
wait " "
nd=alltrim(nd)
fd=fstr(5,22,fd)
wait " "
fd=alltrim(fd)
pd=fstr(7,22,pd)
wait " "
pd=alltrim(pd)
Sd=fstr(9,22,Sd)
wait " "
md=fstr(11,22,md)
wait " "
md =alltrim(md)
defi window mss5 from 19,20 to 23,60 SHADO DOUBLE TITLE " ¢şş‘— " COLOR W+/B
acti wind mss5
set color to w+/1
@0,22 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,10 prom " ùó“ "
@2,20 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
	appe blan
	replace name with fsis(nd),famely with fsis(fd),cod with kd,nsnas with sd,mt with fsis(md),nafader with fsis(pd)
 case p3=2
 endcase
hide wind mss4
hide wind mss5
set color to w+/1
return
******* end proc *******
******* proc book ******
proc book
set cursor on
use
use BOOK 
defi window mss6 from 5,20 to 18,60 SHADO DOUBLE TITLE " ¢ş¢› §¤¢ " COLOR W+/B
acti wind mss6
clear
@1,26 say "    ’‘—î ¢î"
@3,26 say "   ’‘—î ô‘÷"
@5,26 say " ¢Ÿø ¢¢ã—"
@7,26 say " üóø“ì ù¤õ÷"
set color to w+/3
nk=space(15)
kk=space(5)
vk=space(1)
nuk=space(2)
kk=fnum(1,22,kk,5,1)
wait " "
nk=fstr(3,22,nk)
wait " "
*******msss*******
nk=alltrim(nk)
********msss******
vk=fnum(5,22,vk,3,1)
wait " "
**************** strat menu number ************************************
@ 6,20,8,25 BOX "ÉÍ»º¼ÍÈº"
@7,21 say " 10 "
a=inkey(0)    
if a=13 then  
defi wind mss8 from 12,39 to 15,46 double shad color w+/3
acti wind mss8
set color to 0/3
@0,1 prom " 10 "
@1,1 prom " 12 "
menu to p4
do case
	case p4=1
		type=0
	case p4=2
		type=1
endcase
deac wind mss8
if type=0
@7,21 say " 10 "
nuk="10"
ENDIF
if type=1
@7,21 say " 12 "
nuk="12"
ENDIF
else
nuk="10"
endif
********** END MENU number ***************
defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ¢şş‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,10 prom " ùó“ "
@2,20 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
	appe blan
replace name with fsis(nK),COD with KK,VAHeD with VK,NUMBER with NUK
 case p3=2
 endcase
hide wind mss6
hide wind mss7
set color to w+/1
return
********* end proc**********
******** hamkar ***********
proc hamkar
set cursor on
use
use hamkar in 1
defi window mss6 from 5,18 to 18,63 SHADO DOUBLE TITLE " ¢ş¢› ¤‘îõû " COLOR W+/B
acti wind mss6
clear
@1,24 say "          ¤‘îõû ¢î"
@3,24 say " üğ¢ø÷‘¡ ô‘÷ø ô‘÷"
@5,24 say "           –‘óş¬Ÿ—"
@7,24 say " ù¢÷û¢  ©¥øõ §ø¤¢"
set color to w+/3
nh=space(20)
kh=space(10)
th=space(15)
drh=space(20)
kh=fnum(1,22,kh,10,0)
wait " "
nh=fstr(3,22,nh)
wait " "
nh=alltrim(nh)
******** MENU TEHSELAT ******
@ 4,20,6,32 BOX "ÉÍ»º¼ÍÈº"
@5,21 say "  ôó•ş¢¤ş¥ "
a=inkey(0)    
if a=13 then  
defi wind mss8 from 10,35 to 19,50 double shad color w+/3
acti wind mss8
set color to 0/3
@0,3 prom "  ôó•ş¢¤ş¥ "
@1,3 prom "     ôó•ş¢ "
@2,3 prom " ôó•ş¢ ëøê "
@3,3 prom "    §÷‘¨şó "
@4,3 prom "§÷‘¨şó ëøê "
@5,3 prom "     ¤—î¢ "
@6,3 prom "      «¬¡— "
@7,3 prom "  «¬¡— ëøê "
menu to p4
do case
	case p4=1
		type=0
	case p4=2
		type=1
	case p4=3
		type=2
	case p4=4
		type=3
	case p4=5
		type=4
	case p4=6
		type=5
	case p4=7
		type=6
	case p4=8
		type=7
endcase
deac wind mss8
if type=0
@5,21 say "  ôó•ş¢¤ş¥ "
TH="  ôó•ş¢¤ş¥"
ENDIF
if type=1
@5,21 say "     ôó•ş¢ "
TH="     ôó•ş¢"
ENDIF
if type=2
@5,21 say " ôó•ş¢ ëøê "
TH=" ôó•ş¢ ëøê"
ENDIF
If type=3
@5,21 say "    §÷‘¨şó "
TH="    §÷‘¨şó"
ENDIF
if type=4
@5,21 say "§÷‘¨şó ëøê "
TH="§÷‘¨şó ëøê"
ENDIF
if type=5
@5,21 say "     ¤—î¢ "
TH ="     ¤—î¢"
endif
if type=6
@5,21 say "      «¬¡— "
TH ="     «¬¡—"
endif
if type=7
@5,21 say "  «¬¡— ëøê "
TH ="  «¬¡— ëøê"
endif
********** END MENU TAHSELAT ***************
drh=fstr(7,22,drh)
drh=alltrim(drh)
else  
TH="ôó•ş¢¤ş¥"
drh=fstr(7,22,drh)
drh=alltrim(drh)
endif 
th=alltrim(th)
wait " "
defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ¢şş‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,10 prom " ùó“ "
@2,20 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
	appe blan
replace name with fsis(nh),COD with Kh,tahsel with fsis(th),dars with fsis(drh)
 case p3=2
 endcase
hide wind mss6
hide wind mss7
set color to w+/1
return
********** end proc hamkar ****************
******************* del * * ** * 
proc del_book
set cursor off
use
use book
defi window mss from 4,18 to 20,62 SHADO DOUBLE TITLE " §¤¢ é£Ÿ " COLOR W+/B
acti wind mss
@1,20 say " :¢ş÷î ¢¤ø ¤ ’‘—î ¢î"
@5,12 say " – ‘‹‹¬‹‹‹¡‹‹‹ª‹‹õ " 
@6,1 say 'ÚÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ¿'
@7,1 say '³ëù¤õ÷³¢Ÿø –³   §¤¢  ô‘‹‹‹‹÷   ³ §¤¢¢î ³'
@8,1 say 'ÃÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´'
@9,1 say '³     ³      ³                  ³       ³'
@10,1 say "ÀÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÙ"
kk=space (5)
kk=fnum(1,8,kk,5,1)
wait " "
go top
do while .not. eof()
locate for cod=kk 
if found ()
@ 9,35 say cod
@ 9,18 say fsis(name)
@ 9,9 say vahed
@ 9,3 say number
defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ¢şş‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,10 prom " ùó“ "
@2,20 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
 DELE
 PACK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ¢¤¢÷ ¢ø›ø ¤à÷ ¢¤øõ ¢î "
endif
enddo
deac wind mss
use
return
*** ******** * *end*******
****************** proc del_student
proc del_student
set cursor off
use
use student
defi window mss from 5,7 to 18,72 SHADO DOUBLE TITLE " ö¤øõ ©÷¢ é£¡" COLOR W+/B
acti wind mss
@1,36 say " :¢ş÷î ¢¤ø ¤ ¥øõ©÷¢ ¢î"
@3,23 say " – ‘‹‹¬‹‹‹¡‹‹‹ª‹‹õ " 
@5,1 SAY'ÚÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ¿'
@6,1 SAY'³ùõ‘÷¨‘÷ª³¢óø—ñŸõ³¤¢• ô‘÷ ³ üó‹şõ‘ê ³ ô‘‹‹‹‹‹‹‹‹÷ ³ ¢‹‹‹‹‹î  ³'
@7,1 SAY'ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄ´'
@8,1 say'³        ³       ³        ³         ³             ³          ³'
@9,1 say 'ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ'
kk=space (10)
kk=fnum(1,15,kk,10,0)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
 @8,52 say COD
 @8,38 say fsis(name)
 @8,28 say fsis(famely)
 @8,19 say fsis(nafader)
 @8,2 say nsnas
 @8,11 say fsis(mt)
 defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ¢şş‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,10 prom " ùó“ "
@2,20 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
 DELE
 PACK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ¢¤¢÷ ¢ø›ø ¤à÷ ¢¤øõ ¢î "
endif
enddo
deac wind mss
use
return
******* * * *   * ***
****************** proc del_hamkar
proc del_hamkar
set cursor off
use
use hamkar
defi window mss from 5,5 to 18,75 SHADO DOUBLE TITLE " ¤‘îõû é£¡" COLOR W+/B
acti wind mss
@1,36 say " :¢ş÷î ¢¤ø ¤ ¤‘îõû ¢î"
@3,23 say " – ‘‹‹¬‹‹‹¡‹‹‹ª‹‹õ " 
@5,1 say 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ¿'
@6,1 say '³        §ø¤¢ ô‘‹÷   ³ –‘óş‹¬Ÿ— ³    üğ¢ø÷‘¡ô‘÷øô‘÷ ³¢‹‹‹‹‹‹‹‹‹î ³'
@7,1 say 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄ´'
@8,1 say '³                    ³          ³                    ³            ³'
@9,1 say 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÙ'
kk=space (10)
kk=fnum(1,15,kk,10,0)
wait "     "
go top
do while .not. eof()
locate for cod=kk 
if found ()
@8,57 say COD
@8,34 say fsis(name)
@8,23 say fsis(tahsel)
@8,2 say fsis(dars)
 defi window mss7 from 19,20 to 23,60 SHADO DOUBLE TITLE " ¢şş‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "Œ ¢ş—¨û öõ¯õ‘ş"
@2,10 prom " ùó“ "
@2,20 prom " ¤ş¡ "
menu to p3
 do case
 case p3=1
 DELE
 PACK
 deac wind mss7
 exit
 case p3=2
 DEAC WIND MSS7
 DEAC WIND MSS
 exit
 endcase
else
wait window " ¢¤¢÷ ¢ø›ø ¤à÷ ¢¤øõ ¢î "
endif
enddo
deac wind mss
use
return
************************************ end proc new *******************************
*********************************strat proc screen ******************************
proc screen
 do while .t.
DEFI WIND MSS2 FROM 5,32 TO 12,57 SHADO DOUBLE TITLE " –‘ä‘ó¯ ©¤¥ğ " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "            §ø¤¢ –¨şó " mess "  §ø¤¢ –‘¬¡ªõ –¨şó ©ş‘õ÷ "
@ 1,1 PROMPT "     ö¥øõ ©÷¢ –¨şó " mess "  ö¥øõ ©÷¢ –‘¬¡ªõ –¨şó ©ş‘õ÷ "
@ 2,1 PROMPT "         ö¤‘îõû –¨şó " mess "  ö¤‘îõû –‘¬¡ªõ –¨şó ©ş‘õ÷"
@ 3,1 PROMPT "        §ø¤¢ –¨şó ”‘ " mess " §ø¤¢ –‘¬¡ªõ –¨şó ”‘"
@ 4,1 PROMPT " ö¥øõ ©÷¢ –¨şó ”‘ " mess "   ö¥øõ ©÷¢ –‘¬¡ªõ –¨şó ”‘"
@ 5,1 prompt "       ¤‘îõû –¨şó ”‘ " mess " ö¤‘îõû –‘¬¡ªõ –¨şó ”‘"
MENU TO P2
DO CASE
   CASE P2=1
	use
	use book index book
	reindex
 		do l_dars
   CASE p2=2
   		use
		use student index student
		reindex
    	DO l_student
   CASE P2=3
	    use
		use hamkar index hamkar
		reindex	
    	do l_hamkar
   CASE P2=4
   		set printer on
   		set device to printer
   		do pri_book   
		set device to screen
   		set printer off
   CASE P2=5
   		set printer on
   		set device to printer
   		do pri_student
   		set printer off
		set device to screen
  case p2=6
   		set printer on
   		set device to printer
   		do pri_hamkar
		set device to screen
   		set printer off
 other wise
  		exit
ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
*******************	**************
proc l_dars
set cursor off
defi window mss6 from 3,17 to 22,61 SHADO DOUBLE TITLE " §ø¤¢ –¨şó " COLOR W+/B
acti wind mss6
@0,1 say 'ÚÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ¿'
@1,1 say '³ëù¤õ÷³¢Ÿø –³   §¤¢  ô‘‹‹‹‹÷   ³ §¤¢¢î ³'
@2,1 say 'ÃÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´'
  i=3
 scan 
  @i,1  say '³     ³      ³                  ³       ³'
  @i,35 say COD
  @i,18 say fsis(name)
  @i,9 say vahed
  @i,3 say number
   i=i+1
  if i=17
  wait window ".¢şû¢¤‘¨ê ùõ¢ ı¤“ ¤ ı¢şóî "
  i=3
   endif
    endscan
   for a=i to 17
    @a,1  say '³     ³      ³                  ³       ³'
   endfor 
   @17,1 say "ÀÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÙ"
 WAIT  window "¢şû¢¤ªê ¤ ı¢şóî"
 deac wind mss6
 use
 RETURN
*************************
*******************	**************
proc l_student
set cursor off
defi window mss6 from 3,6 to 22,71 SHADO DOUBLE TITLE " ö¥øõ ©÷¢ –¨şó " COLOR W+/B
acti wind mss6
@0,1 SAY'ÚÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ¿'
@1,1 SAY'³ùõ‘÷¨‘÷ª³¢óø—ñŸõ³¤¢• ô‘÷ ³ üó‹şõ‘ê ³ ô‘‹‹‹‹‹‹‹‹÷ ³ ¢‹‹‹‹‹î  ³'
@2,1 SAY'ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄ´'
  i=3
 scan 
  @I,1 say '³        ³       ³        ³         ³             ³          ³'
  @i,52 say COD
  @i,38 say fsis(name)
  @i,28 say fsis(famely)
  @i,19 say fsis(nafader)
  @i,2 say nsnas
  @i,11 say fsis(mt)
    i=i+1
  if i=17
  wait window ".¢şû¢¤‘¨ê ùõ¢ ı¤“ ¤ ı¢şóî "
  i=3
  endif
  endscan
    for a=i to 17
    @a,1 say '³        ³       ³        ³         ³             ³          ³'
   endfor 
 @17,1 say 'ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ'
 WAIT  window "¢şû¢¤ªê ¤ ı¢şóî"
 deac wind mss6
 use
 RETURN
*************************
*******************************
proc l_hamkar
set cursor off
defi window mss6 from 3,4 to 22,74 SHADO DOUBLE TITLE " ö¤‘îõû –¨şó " COLOR W+/B
acti wind mss6
@0,1 say 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ¿'
@1,1 say '³        §ø¤¢ ô‘‹÷   ³ –‘óş‹¬Ÿ— ³    üğ¢ø÷‘¡ô‘÷øô‘÷ ³¢‹‹‹‹‹‹‹‹‹î ³'
@2,1 say 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄ´'
  i=3
 scan 
  @i,1 say  '³                    ³          ³                    ³            ³'
  @i,57 say COD
  @i,34 say fsis(name)
  @i,23 say fsis(tahsel)
  @i,2 say fsis(dars)
      i=i+1
  if i=17
  wait window ".¢şû¢¤‘¨ê ùõ¢ ı¤“ ¤ ı¢şóî "
  i=3
  endif
  endscan
  for a=i to 17
  @a,1 say '³                    ³          ³                    ³            ³'
 endfor 
 @17,1 say 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÙ'
  WAIT  window "¢şû¢¤ªê ¤ ı¢şóî"
 deac wind mss6
 use
 RETURN
******************
**************************** end list *************************************
******** proc need menu ****
****** proc need *********
proc need
 do while .t.
DEFI WIND MSS10 FROM 6,34 TO 10,56 SHADO DOUBLE TITLE " –‘÷‘îõ " COLOR W+/B
ACTI WIND MSs10
@0,1 PROMPT " –¤‹‹ş‹‹ş‹‹‹ç‹‹— "  mess " ùõ‘÷¤“ Background ‘ş ù÷şõ¥ ø Font ‘ş ôóì ¤şşç— "
@1,1 prompt " ’¨Ÿ¤“ù¢ª’—¤õ–¨şó "  mess "‘úî÷‘“ ù¢ª §îş¢÷ –¨şó"
@2,1 PROMPT " ¤‹‹‹ğ‹‹‹‹•‘‹‹‹‹ "  mess " ü¨¤‘ê ”‘ ü¤“ ¤ğ•‘ ü¥‘¨ ù¢‘õ "
MENU TO P10
DO CASE
   CASE P10=1
   			DO font
   CASE p10=2
   			do index
   case p10=3
   			do printer
   other wise
  exit
   ENDCASE
  enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS10 BY 0,-I
   ENDFOR
   hide wind mss10
RETURN
********** proc font  *******
proc font
 do while .t.
DEFI WIND MSS2 FROM 6,15 TO 9,36 SHADO DOUBLE TITLE " ¤şşç— " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "  é ø ¤‹‹‹‹‹‹‹‹Ÿ " mess " ùõ‘÷¤“ ôóì ¤şşç— "
@ 1,1 PROMPT " ¢  ¢‹‹‹‹‹‹‹‹ä "  mess " öş—‘ó ø ü¨¤‘ê –¤£ø¬ ù“¢¢ä ©ş‘õ÷ ¤şşç— "
MENU TO P2
DO CASE
   CASE P2=1
   			DO HROF
   CASE p2=2
   			do number
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
********** proc hrof  *******
proc hrof
 do while .t.
DEFI WIND MSS3 FROM 6,4 TO 11,18 SHADO DOUBLE TITLE " ¯ø¯‹¡ " COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "   í¥‘÷ ¯¡ " 
@ 1,1 PROMPT "   ¤•ø— ¯¡ " 
@ 2,1 PROMPT " ü¥—÷‘ê ¯¡ " 
@ 3,1 PROMPT " ù¥ø¤ş• ¯¡ " 
MENU TO P2
DO CASE
   CASE P2=1
   		call sepand with "í¥‘÷ ¯¡"
   CASE p2=2
		call sepand with "¤•ø— ¯¡"
   CASE P2=3
   		call sepand with "ü¥—÷‘ê ¯¡"
   CASE P2=4
   		call sepand with  "ù¥ø¤ş• ¯¡"
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*************************end proc ************
********** proc number  *******
proc number
 do while .t.
DEFI WIND MSS3 FROM 7,2 TO 10,18 SHADO DOUBLE TITLE " ¢¢ä " COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT " ü¨¤‘ê ¢¢ä " 
@ 1,1 PROMPT "  öş—ò ¢¢ä " 
MENU TO P2
DO CASE
   CASE P2=1
   		call sepand with "  ü¨¤‘ê ¢¢ä ©ş‘õ÷"
   CASE p2=2
		call sepand with "  öş—ò ¢¢ä ©ş‘õ÷"
   other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*************************
********************** proc print ****************
proc printer
 do while .t.
DEFI WIND MSS2 FROM 8,15 TO 12,36 SHADO DOUBLE TITLE " ¤ğ•‘ " COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT " ¤ğ•‘ ö¢¤î ü¨¤‘ê " mess "¤ğ•‘ ö¢¤î ü¨¤‘ê "
@ 1,1 PROMPT "       ¢¢ä ”‘ "  mess " öş—‘ó ‘ş ü¨¤‘ê –¤ø¬ ù“ ¢¢ä ”‘ "
@ 2,1 PROMPT "     ¤ğ•‘ ö‘Ÿ—õ "  mess " ”‘ ü¤“ ¤ğ•‘ –¨— "
MENU TO P2
DO CASE
   CASE P2=1
	 	call sepand with "ñ‘ãê ü¨¤‘ê ¤ğ•‘"
	 	wait wind " .¢ª ü¨¤‘ê ¤ğ•‘ " 
   CASE p2=2
   		do  printer_num
   case p2=3
   		call sepand with "¤ğ•‘ ù“ ôòä ñ‘¨¤"
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
************************ printer_num*****************
proc printer_num
 do while .t.
DEFI WIND MSS3 FROM 9,5 TO 12,17 SHADO DOUBLE TITLE " ¢¢ä ”‘ " COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT " ü‹¨¤‘‹ê " 
@ 1,1 PROMPT " ö‹ş‹—‘ó " 
MENU TO P2
DO CASE
   CASE P2=1
   		call sepand with "ü¨¤‘ê ¢¢ä ”‘"
   		wait window " ¢ª ü¨¤‘ê ,¢¢ä ”‘ ü¤“ ¤ğ•‘ " timeout 0.1
   CASE p2=2
		call sepand with "öş—ò ¢¢ä ”‘"
		wait window " ¢ª öş—‘ó ,¢¢ä ”‘ ü¤“ ¤ğ•‘ " timeout 0.1
   other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 15
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
**********************
************************** print ****************************
proc pri_book
use
use book index book
@0,1 say 'ÚÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ¿'
@1,1 say '³ëù¤õ÷³¢Ÿø –³   §¤¢  ô‘‹‹‹‹÷   ³ §¤¢¢î ³'
@2,1 say 'ÃÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄ´'
  i=3
 scan 
  @i,1  say '³     ³      ³                  ³       ³'
  @i,35 say COD
  @i,18 say fsis(name)
  @i,9 say vahed
  @i,3 say number
   i=i+1
   endscan
 @i,1 say "ÀÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÙ"
 clear
return
***********end proc pri_book ************
proc pri_student
use
use student index student
@0,1 SAY'ÚÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ¿'
@1,1 SAY'³ùõ‘÷¨‘÷ª³¢óø—ñŸõ³¤¢• ô‘÷ ³ üó‹şõ‘ê ³ ô‘‹‹‹‹‹‹‹‹÷ ³ ¢‹‹‹‹‹î  ³'
@2,1 SAY'ÃÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄ´'
  i=3
scan 
  @I,1 say '³        ³       ³        ³         ³             ³          ³'
  @i,52 say COD
  @i,38 say fsis(name)
  @i,28 say fsis(famely)
  @i,19 say fsis(nafader)
  @i,2 say nsnas
  @i,11 say fsis(mt)
   i=i+1
   endscan
      @i,1 say 'ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ'
 clear
return
***************** end proc pri_strudent ****************
***************** proc pri_hamkar **************
proc pri_hamkar
use
use hamkar index hamkar
@0,1 say 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ¿'
@1,1 say '³        §ø¤¢ ô‘‹÷   ³ –‘óş‹¬Ÿ— ³    üğ¢ø÷‘¡ô‘÷øô‘÷ ³¢‹‹‹‹‹‹‹‹‹î ³'
@2,1 say 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄ´'
  i=3
scan 
	@i,1 say  '³                    ³          ³                    ³            ³'
   i=i+1
  @i,57 say COD
  @i,34 say fsis(name)
  @i,23 say fsis(tahsel)
  @i,2 say fsis(dars)
   endscan
    @i,1 say 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÙ'
 clear
return
*************** ******************* end print *******************
********** index *********
proc index
 do while .t.
DEFI WIND MSS2 FROM 7,21 TO 11,36 SHADO DOUBLE TITLE " ’¨Ÿ¤“" COLOR W+/B
ACTI WIND MSS2
@ 0,1 PROMPT "       §¤¢ " 
@ 1,1 PROMPT " ¥øõ ©÷¢ " 
@ 2,1 PROMPT "     ¤‘îõû " 
MENU TO P2
DO CASE
   CASE P2=1
   			DO in_dars
   CASE p2=2
   			do in_student
   case p2=3 
   			do in_hamkar			
  other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS2 BY 0,-I
   ENDFOR
   hide wind mss2
RETURN
***********
***** proc in_dars ****
proc in_dars
do while .t.
DEFI WIND MSS3 FROM 7,8 TO 12,22 SHADO DOUBLE TITLE " ’¨Ÿ¤“" COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "    ’‘—î ¢î" 
@ 1,1 PROMPT "   ’‘—î ô‘÷" 
@ 2,1 PROMPT " ¢Ÿø ¢¢ã—" 
@ 3,1 PROMPT " üóø“ì ù¤õ÷" 
MENU TO P2
DO CASE
   CASE P2=1
   		use
   		use book in 1
   		index on cod to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
       caSE p2=2
   	      		use
   		use book in 1
   		index on name to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
   case p2=3 
     		use
   		use book in 1
   		index on vahed to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
   case p2=4
     		use
   		use book in 1
   		index on number to temp
   		set index to temp
     	do l_dars
     	use
     	erase temp.idx
   other wise
  exit
   ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
**************************** ******* ****** ***
***** proc in_student ****
proc in_student
do while .t.
DEFI WIND MSS3 FROM 8,8 TO 15,22 SHADO DOUBLE TITLE " ’¨Ÿ¤“" COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "        ¢î " 
@ 1,1 PROMPT "       ô‘÷ " 
@ 2,1 PROMPT "    üóşõ‘ê " 
@ 3,1 PROMPT "   ¤¢• ô‘÷ " 
@ 4,1 PROMPT "  ¢óø— ñŸõ " 
@ 5,1 PROMPT "  ùõ‘÷¨‘÷ª " 
MENU TO P2
DO CASE
   CASE P2=1
   		use
   		use student in 1
   		index on cod to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
    case p2=2
   		use
   		use student in 1
   		index on name to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
	case p2=3
  		use
   		use student in 1
   		index on famely to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
   case p2=4
   		use
   		use student in 1
   		index on nafader to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
     case p2=5
      	use
   		use student in 1
   		index on mt to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
    case p2=6
    	USE
        use student in 1
   		index on nsnas to temp
   		use 
   		use student index temp
     	do l_student
     	use
     	erase temp.idx
    other wise
  		exit
ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*********
*************** proc hamker
proc in_hamkar
do while .t.
DEFI WIND MSS3 FROM 9,2 TO 14,22 SHADO DOUBLE TITLE " ’¨Ÿ¤“" COLOR W+/B
ACTI WIND MSS3
@ 0,1 PROMPT "              ¢î " 
@ 1,1 PROMPT " üğ¢ø÷‘¡ô‘÷øô‘÷ " 
@ 2,1 PROMPT "         –‘óş¬Ÿ— " 
@ 3,1 PROMPT "        §ø¤¢ ô‘÷ " 
MENU TO P2
DO CASE
   CASE P2=1
   		use
   		use hamkar in 1
   		index on cod to temp
   		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
    case p2=2
   		use
   		use hamkar in 1
   		index on name to temp
		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
	case p2=3
  		use
   		use hamkar in 1
   		index on tahsel to temp
   		set index to temp
   		do l_hamkar
     	use
     	erase temp.idx
   case p2=4
   		use
   		use hamkar
   		index on dars to temp
   		set index to temp
     	do l_hamkar
     	use
     	erase temp.idx
    other wise
  		exit
ENDCASE
   enddo
   FOR I=1 TO 10
   FOR X=1 TO 30000
   ENDFOR
   MOVE WIND MSS3 BY 0,-I
   ENDFOR
   hide wind mss3
RETURN
*****
********************* help *************
proc help
defi wind help from 5,13 to 20,65  shado title " í‹õ‹î " double
acti wind help
@0,9 say "  ôşŸ¤ó ö‘‹õ‹Ÿ¤‹ó ùóó ô‹¨‹‹“ "
@2,1 say "¤¢ ü÷‘ª‘î ü÷‘õ ø ü÷¥ø¨ ö‘ş‘ì ı¤‘îõû‘“ ù¦ø¤• öş"
@3,1 say "ö‘“¤úõ ¢÷ø¢¡ ı¤‘ş ø íõî ‘“ ô¤‘ú ñ¨÷ ı‘ú÷‘“¥ §¤¢"
@4,1 say "ù¢ª ùşú— ı¤‘ş—¡“ ı‘ì ù¯ø“¤õ ¤ş“¢ ı‘úşş‘õ÷û¤ ‘“ø"
@5,46 say ".–¨"
@6,1 say "¢ş¤ø ñõä ù“¤ ù¢‘ê—¨ ñ‘õî ùõ‘÷¤“ öş¥ôş¤ø¢şõ"
@8,36 say ": ùõ‘÷¤“ ş®ø— "
@10,1 say "íş ‘úş¢÷õ¥‘ş÷ ¥ ü®ã“ ¥ù¢ª ù—ê¤ğ ô‘úóùõ‘÷¤“ öş "
@11,1 say "ôş÷î¤—õî ùõ‘÷¤“ öş íõî ù“¤ öôşûø¡ üõ ùî ù¨¤¢õ " 
@12,17 say  "(: !¤—óõ‘î ıùõ‘÷¤“ ‘— ¤¢úğ÷ ¢¡ "
a= inkey(0)
deac wind help
 SET COLOR TO W+/B
return 