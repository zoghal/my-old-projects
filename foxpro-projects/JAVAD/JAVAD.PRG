clear
use
deac wind all
set date ymd
set color to
set talk off
DO WHILE .T.
@ 1,1,23,78 BOX "ΙΝ»ΊΌΝΘΊ°"
DEFI WIND MSS1 FROM 3,58 TO 11,75 SHADO  TITLE " όσ¬ όψχυ " double COLOR W+/B 
ACTI WIND MSS1
SET COLOR TO W+/B
@1,1 PROMPT "  ΆώΆ› ό‘σ‘ξ "  mess " τ—¨ώ¨ ω“ –‘δ‘σ― Άψ¤ψ "
@2,1 PROMPT "  ‘σ‘‹ξ Άώ¤΅ "  mess " –‘ª¤¥π "
@3,1 PROMPT "  ‘σ‘‹ξ ©ψ¤κ "  mess " ωυ‘χ¤“ ¤Ά –¤ώώη— "
@4,1 prompt "  –‘‹‘‹σ‹¬ "  mess "ωυ‘χ¤“ ω¤‘“¤Ά –‘ώ®ψ— "
@5,1 PROMPT "  <Esc>  ψ¤΅ "  mess " ωυ‘χ¤“ ―ώυ ¥ ψ¤΅ "
MENU TO P1
DO CASE
   CASE P1=1
     DO jadid
   CASE P1=2
		do transbuy
   CASE P1=3
   		do transsel
   CASE P1=4
   		do edit
   CASE P1=5
       do pro_exit  
ENDCASE
ENDDO
***************************************************
proc edit
DO WHILE .T.
DEFI WIND MSS2 FROM 7,44 TO 10,58 SHADO  TITLE " –‘‘σ¬ " double COLOR W+/B 
ACTI WIND MSS2
SET COLOR TO W+/B
@0,1 PROMPT " ‘σ‘ξ Άώ¤΅ "  mess " τ—¨ώ¨ ω“ –‘δ‘σ― Άψ¤ψ "
@1,1 PROMPT " ‘σ‘ξ ©ψ¤κ "  mess "  ‘“—ª –‘δ‘σ― ‘σ¬ "
MENU TO P2
DO CASE
   CASE P2=1
   		DO EDIT_TRANSBUY
   CASE P2=2
      do  EDITE_TRANSSEL
   	  other wise
      deac wind mss2
  exit
ENDCASE
ENDDO
return
***************************************************
proc jadid 
DO WHILE .T.
DEFI WIND MSS2 FROM 4,40 TO 7,58 SHADO  TITLE " ΆώΆ› ό‘σ‘ξ " double COLOR W+/B 
ACTI WIND MSS2
SET COLOR TO W+/B
@0,1 PROMPT " –‘δ‘σ―   Άψ¤ψ "  mess " τ—¨ώ¨ ω“ –‘δ‘σ― Άψ¤ψ "
@1,1 PROMPT " –‘δ‘σ― ©ώ¤ώψ "  mess "  ‘“—ª –‘δ‘σ― ‘σ¬ "
MENU TO P2
DO CASE
   CASE P2=1
     DO new
        CASE P2=2
        do aslah_new
	  other wise
      deac wind mss2
  exit
ENDCASE
ENDDO
return
***************************************************
proc transbuy
DO WHILE .T.
DEFI WIND MSS3 FROM 5,40 TO 8,58 SHADO  TITLE " ‘σ‘ξ Άώ¤΅ " double COLOR W+/B 
ACTI WIND MSS3
SET COLOR TO W+/B
@0,1 PROMPT " –‘δ‘σ―   Άψ¤ψ "  mess " τ—¨ώ¨ ω“ –‘δ‘σ― Άψ¤ψ "
@1,1 PROMPT " –‘δ‘σ― ©ώ¤ώψ "  mess "  ‘“—ª –‘δ‘σ― ‘σ¬ "
MENU TO P2
DO CASE
   CASE P2=1
      DO new_transbuy
   CASE P2=2
   do aslah_transbuy
      other wise
      deac wind mss3
  exit
ENDCASE
ENDDO
return
***************************************************
proc transsel
DO WHILE .T.
DEFI WIND MSS3 FROM 6,40 TO 9,58 SHADO  TITLE " ‘σ‘ξ ©ψ¤κ " double COLOR W+/B 
ACTI WIND MSS3
SET COLOR TO W+/B
@0,1 PROMPT " –‘δ‘σ―   Άψ¤ψ "  mess " τ—¨ώ¨ ω“ –‘δ‘σ― Άψ¤ψ "
@1,1 PROMPT " –‘δ‘σ― ©ώ¤ώψ "  mess "  ‘“—ª –‘δ‘σ― ‘σ¬ "
MENU TO P2
DO CASE
   CASE P2=1
 do  new_transsel
    cASE P2=2
    DO ASLAH_transsel
	  other wise
      deac wind mss3
  exit
ENDCASE
ENDDO
return
***************************************start menu 1 ********************************
proc new
use
use main in 1
defi wind mss4 from 5,13 to 15,65 shado title" ΆώΆ› ό‘σ‘ξ " double COLOR W+/B 
acti wind mss4
cod=space(4)
@1,40  say "ωγ―μ ω¤‘υª" 
@3,42  say "ωγ―μ τ‘χ" 
name=space(20)
@5,43  say "–‘ώ®ψ—" 
nnote=space (40)
@1,2 get cod
@3,2 get name
@5,2 get nnote
read
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " Άώώ‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say " Άώ—¨ϋ φυ―υ‘ώ"
@2,10 prom " ωσ“ "
@2,20 prom " ¤ώ΅ "
menu to p3
 do case
 case p3=1
	appe blan
replace part_name with name, part_no  with cod,descrip  with nnote
use
 case p3=2
 deac wind mss7
 use
 endcase
deac wind mss4
 deac wind mss7
 use
return
*******************
*************************************end menu 1******************************************
proc new_transsel
use
use main
defi wind mss5 from 5,13 to 18,65 shado title" ‘σ‘ξ ©ψ¤κ" double COLOR W+/B 
acti wind mss5
@1,39 say " ωγ―μ ω¤‘υª" 
@3,39 say " ©ψ¤κ  ώ¤‘—" 
@5,32 say "(ΆΆδ †) ©ψ¤κ ΆΆγ—" 
@7,33 say "(ΆΆδ †) ©ψ¤κ –υώμ" 
@9,38 say "    –ώγ®ψ Άξ" 
cod=space(4)
data={ / / }
tedad=0
price=0 
app=.f.
@1,2 get cod
read
go top
scan
locate for part_no=cod 
if found ()
@3,2 get  data
@5,2 get  tedad
read
if tedad>in_stoke  
wait "Ά¤Άχ Άψ›ψ ‘σ‘ξ ΆΆγ— φώ ω“ νχ‘“ ¤Ά" window
exit
endif
@7,2 get  price
@9,2 get  app
read
if app =.t. 
use
use transel
appe blan
repl  part_no with cod,sell_dt with data,sell_qty with tedad,sell_price with price,applied with app
endif
else
wait " Ά¤Άχ Άψ›ψ ω¤‘υª φώ ‘“ ωγ―μ " window 
endif
exit
endscan 
deac wind mss5
return
**********************************************************************************
proc new_transBUY
use
use main 
defi wind mss5 from 5,13 to 18,65 shado title" ‘σ‘ξ Άώ¤΅ " double COLOR W+/B 
acti wind mss5
@1,39 say " ωγ―μ ω¤‘υª" 
@3,39  say " Άώ¤΅  ώ¤‘—" 
@5,32 say "(ΆΆδ †) Άώ¤΅ ΆΆγ—" 
@7,33  say "(ΆΆδ †) Άώ¤΅ –υώμ" 
@9,39  say "    –ώ®ψ Άξ" 
cod=space(4)
data={ / / }
tedad=0
price=0 
app=.f.
@1,2 get cod
read
go top
scan
locate for part_no=cod 
if found ()
@3,2 get  data
@5,2 get  tedad
@7,2 get  price
@9,2 get  app
read
if app =.t. 
use
use tranSBUY in 1
appe blan
repl  part_no with cod,BUY_dt with data,BUY_qty with tedad,BUY_price with price,applied with app
endif
else
wait " Ά¤Άχ Άψ›ψ ω¤‘υª φώ ‘“ ωγ―μ " window 
endif
exit
endscan 
deac wind mss5
return
**********************************************************************************
PROC EDIT_TRANSBUY
USE
USE MAIN IN 1
USE TRANSBUY IN 2
SELECT 2
go top
SCAN
SELECT 2
cod=PART_NO
data=BUY_DT
tedad=BUY_QTY
price=BUY_PRICE
SCAN
SELECT 1
LOCAT FOR COD=PART_NO
IF FOUND()
T_DATA=DATA
T_TEDAD=IN_STOKE+TEDAD  &&*’‘¨ ¤ ωγ―μ ΆΆγ—*
t_lbuy_price=price
t_price=stock_min-price
RePl LASTBUY_DT WITH T_DATA,IN_STOKE WITH T_TEDAD,STOck_MIN WITH T_PRICE,lbuy_price with t_lbuy_price
endif
select 2
delete
pack
ENDSCAN
endscan
WAIT "( ) Άª τ‘›χ όσ¬ νχ‘“ όχ‘¨¤ ¥ψ¤ ω“ –‘ώσυδ " wind
RETURN
*******************************
PROC EDITE_TRANSSEL
USE
USE MAIN IN 1
USE TRANSel IN 2
SELECT 2
go top
SCAN
select 2
cod=PART_NO
data=sell_DT
tedad=sell_QTY
price=sell_PRICE
SCAN
SELECT 1
LOCAT FOR cod=PART_NO
IF FOUND()
T_DATA=DATA
T_TEDAD=IN_STOKE-TEDAD
T_stock_min=STOCK_MIN+PRICE
t_last_price=price
t_price=stock_min+price
RePl LASTsel_DT WITH T_DATA,IN_STOKE WITH T_TEDAD,STOck_MIN WITH T_PRICE,last_price with t_last_price
endif
select 2
delete
pack
ENDSCAN
endscan
WAIT " Άª τ‘›χ όσ¬ νχ‘“ όχ‘¨¤ ¥ψ¤ ω“ –‘ώσυδ " wind
RETURN
***********************************************************************
proc pro_exit
deac wind all
set color to
clear 
clear all
cancel
return
****************************
proc aslah_new
rele all
use
use main in a
defi wind mss4 from 5,13 to 15,65 shado title" ΆώΆ› ό‘σ‘ξ ‘σ¬" double COLOR W+/B 
acti wind mss4
@1,40  say "ωγ―μ ω¤‘υª" 
@3,42  say "ωγ―μ τ‘χ" 
@5,43  say "–‘ώ®ψ—" 
defi wind mss12 from 7,20 to 9,55 shado title"ΆώΆ› ό‘σ‘ξ ‘σ¬" double COLOR W+/B 
acti wind mss12
@0,20  say "ωγ―μ ω¤‘υª" 
cod=space(4)
@0,2 get cod
read
DEAC WIND MSS12
use
use main in a
go top
do while .not. eof()
locate for part_no=cod 
if found ()	
name=part_name
cod=part_no
nnote=descrip
@1,2 get cod
@3,2 get name
@5,2 get nnote
read
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " Άώώ‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say " Άώ—¨ϋ φυ―υ‘ώ"
@2,10 prom " ωσ“ "
@2,20 prom " ¤ώ΅ "
menu to p3
 do case
 case p3=1
replace part_name with name, part_no  with cod,descrip  with nnote
use
 case p3=2
  deac wind mss7
  exit
 endcase
 ELSE 
 WAIT " Ά¤Άχ Άψ›ψ νχ‘“ ¤Ά ¤ΰχ Ά¤ψυ ωγ―μ " WIND
 endif 
 skip
 enddo
 deac wind mss4
 deac wind mss7
 DEAC WIND MSS12
 use
return
******************************
proc aslah_transbuy
rele all
use
use transbuy 
defi wind mss4 from 5,13 to 15,65 shado title" ωΆª ωΆώ¤΅ ύ‘σ‘ξ ‘σ¬ " double COLOR W+/B 
acti wind mss4
@1,40  say "ωγ―μ ω¤‘υª" 
@3,40  say "ωγ―μ  ώ¤‘—" 
@5,40  say "Άώ¤΅ ΆΆγ—" 
@7,41  say "Άώ¤΅ –υώμ" 
defi wind mss12 from 7,20 to 9,55 shado title" ωΆª ωΆώ¤΅ ύ‘σ‘ξ ‘σ¬ " double COLOR W+/B 
acti wind mss12
@0,20  say "ωγ―μ ω¤‘υª" 
cod=space(4)
@0,2 get cod
read
DEAC WIND MSS12
use
use transbuy 
go top
do while .not. eof()
locate for part_no=cod 
if found ()	
data=buy_dt
cod=part_no
tedad=buy_qty
price=buy_price
@1,2 get cod
@3,2 get data
@5,2 get tedad
@7,2 get price
read
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " Άώώ‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say " Άώ—¨ϋ φυ―υ‘ώ"
@2,10 prom " ωσ“ "
@2,20 prom " ¤ώ΅ "
menu to p3
 do case
 case p3=1
 use
use transbuy 
replace buy_dt with data, part_no  with cod,buy_price with price,buy_qty with tedad
use
 case p3=2
  deac wind mss7
  exit
 endcase
 ELSE 
 WAIT " Ά¤Άχ Άψ›ψ νχ‘“ ¤Ά ¤ΰχ Ά¤ψυ ωγ―μ " WIND
 endif 
 cont
 enddo
 deac wind mss4
 deac wind mss7
 DEAC WIND MSS12
 use
return
******************************
proc aslah_transsel
rele all
use
use transel
defi wind mss4 from 5,13 to 15,65 shado title" ωΆª ωΆώ¤΅ ύ‘σ‘ξ ‘σ¬ " double COLOR W+/B 
acti wind mss4
@1,40  say "ωγ―μ ω¤‘υª" 
@3,40  say "ωγ―μ  ώ¤‘—" 
@5,40  say "©ψ¤κ ΆΆγ—" 
@7,41  say "©ψ¤κ –υώμ" 
defi wind mss12 from 7,20 to 9,55 shado title" ωΆª ωΆώ¤΅ ύ‘σ‘ξ ‘σ¬ " double COLOR W+/B 
acti wind mss12
@0,20  say "ωγ―μ ω¤‘υª" 
cod=space(4)
@0,2 get cod
read
DEAC WIND MSS12
use
use transEL
go top
do while .not. eof()
locate for part_no=cod 
if found ()	
data=sell_dt
cod=part_no
tedad=sell_qty
price=sell_price
@1,2 get cod
@3,2 get data
@5,2 get tedad
@7,2 get price
read
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " Άώώ‘— " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say " Άώ—¨ϋ φυ―υ‘ώ"
@2,10 prom " ωσ“ "
@2,20 prom " ¤ώ΅ "
menu to p3
 do case
 case p3=1
 use
use transEL
replace sell_dt with data, part_no  with cod,sell_price with price,sell_qty with tedad
use
 case p3=2
  deac wind mss7
  exit
 endcase
 ELSE 
 WAIT " Ά¤Άχ Άψ›ψ νχ‘“ ¤Ά ¤ΰχ Ά¤ψυ ωγ―μ " WIND
 endif 
 SKIP
 enddo
 deac wind mss4
 deac wind mss7
 DEAC WIND MSS12
 use
return
******************************
