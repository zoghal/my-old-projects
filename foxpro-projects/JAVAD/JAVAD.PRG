clear
use
deac wind all
set date ymd
set color to
set talk off
DO WHILE .T.
@ 1,1,23,78 BOX "�ͻ���Ⱥ�"
DEFI WIND MSS1 FROM 3,58 TO 11,75 SHADO  TITLE " �� ���� " double COLOR W+/B 
ACTI WIND MSS1
SET COLOR TO W+/B
@1,1 PROMPT "  ���� ���� "  mess " ����� �� ���� ���� "
@2,1 PROMPT "  ��� ���� "  mess " ������� "
@3,1 PROMPT "  ��� ���� "  mess " ������ �� ������ "
@4,1 prompt "  ������󋬐 "  mess "������ ������ ������� "
@5,1 PROMPT "  <Esc>  ���� "  mess " ������ ���� �� ���� "
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
DEFI WIND MSS2 FROM 7,44 TO 10,58 SHADO  TITLE " ����� " double COLOR W+/B 
ACTI WIND MSS2
SET COLOR TO W+/B
@0,1 PROMPT " ��� ���� "  mess " ����� �� ���� ���� "
@1,1 PROMPT " ��� ���� "  mess "  ������ ���� ��� "
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
DEFI WIND MSS2 FROM 4,40 TO 7,58 SHADO  TITLE " ���� ���� " double COLOR W+/B 
ACTI WIND MSS2
SET COLOR TO W+/B
@0,1 PROMPT " ����   ���� "  mess " ����� �� ���� ���� "
@1,1 PROMPT " ���� ������ "  mess "  ������ ���� ��� "
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
DEFI WIND MSS3 FROM 5,40 TO 8,58 SHADO  TITLE " ��� ���� " double COLOR W+/B 
ACTI WIND MSS3
SET COLOR TO W+/B
@0,1 PROMPT " ����   ���� "  mess " ����� �� ���� ���� "
@1,1 PROMPT " ���� ������ "  mess "  ������ ���� ��� "
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
DEFI WIND MSS3 FROM 6,40 TO 9,58 SHADO  TITLE " ��� ���� " double COLOR W+/B 
ACTI WIND MSS3
SET COLOR TO W+/B
@0,1 PROMPT " ����   ���� "  mess " ����� �� ���� ���� "
@1,1 PROMPT " ���� ������ "  mess "  ������ ���� ��� "
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
defi wind mss4 from 5,13 to 15,65 shado title" ���� ���� " double COLOR W+/B 
acti wind mss4
cod=space(4)
@1,40  say "��� �����" 
@3,42  say "��� ���" 
name=space(20)
@5,43  say "�������" 
nnote=space (40)
@1,2 get cod
@3,2 get name
@5,2 get nnote
read
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
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
defi wind mss5 from 5,13 to 18,65 shado title" ��� ����" double COLOR W+/B 
acti wind mss5
@1,39 say " ��� �����" 
@3,39 say " ���� �����" 
@5,32 say "(��� �) ���� ����" 
@7,33 say "(��� �) ���� ����" 
@9,38 say "    ���� ��" 
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
wait "����� ���� ��� ���� ��� �� ���� ��" window
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
wait " ����� ���� ����� ��� �� ��� " window 
endif
exit
endscan 
deac wind mss5
return
**********************************************************************************
proc new_transBUY
use
use main 
defi wind mss5 from 5,13 to 18,65 shado title" ��� ���� " double COLOR W+/B 
acti wind mss5
@1,39 say " ��� �����" 
@3,39  say " ���� �����" 
@5,32 say "(��� �) ���� ����" 
@7,33  say "(��� �) ���� ����" 
@9,39  say "    ���� ��" 
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
wait " ����� ���� ����� ��� �� ��� " window 
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
T_TEDAD=IN_STOKE+TEDAD  &&*���� �� ��� ����*
t_lbuy_price=price
t_price=stock_min-price
RePl LASTBUY_DT WITH T_DATA,IN_STOKE WITH T_TEDAD,STOck_MIN WITH T_PRICE,lbuy_price with t_lbuy_price
endif
select 2
delete
pack
ENDSCAN
endscan
WAIT "(�) �� ����� �� ���� ����� ��� �� ������ " wind
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
WAIT " �� ����� �� ���� ����� ��� �� ������ " wind
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
defi wind mss4 from 5,13 to 15,65 shado title" ���� ���� ���" double COLOR W+/B 
acti wind mss4
@1,40  say "��� �����" 
@3,42  say "��� ���" 
@5,43  say "�������" 
defi wind mss12 from 7,20 to 9,55 shado title"���� ���� ���" double COLOR W+/B 
acti wind mss12
@0,20  say "��� �����" 
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
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
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
 WAIT " ����� ���� ���� �� ��� ���� ��� " WIND
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
defi wind mss4 from 5,13 to 15,65 shado title" ��� ����� ���� ��� " double COLOR W+/B 
acti wind mss4
@1,40  say "��� �����" 
@3,40  say "��� �����" 
@5,40  say "���� ����" 
@7,41  say "���� ����" 
defi wind mss12 from 7,20 to 9,55 shado title" ��� ����� ���� ��� " double COLOR W+/B 
acti wind mss12
@0,20  say "��� �����" 
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
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
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
 WAIT " ����� ���� ���� �� ��� ���� ��� " WIND
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
defi wind mss4 from 5,13 to 15,65 shado title" ��� ����� ���� ��� " double COLOR W+/B 
acti wind mss4
@1,40  say "��� �����" 
@3,40  say "��� �����" 
@5,40  say "���� ����" 
@7,41  say "���� ����" 
defi wind mss12 from 7,20 to 9,55 shado title" ��� ����� ���� ��� " double COLOR W+/B 
acti wind mss12
@0,20  say "��� �����" 
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
defi window mss7 from 17,20 to 21,60 SHADO DOUBLE TITLE " ����� " COLOR W+/B
acti wind mss7
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
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
 WAIT " ����� ���� ���� �� ��� ���� ��� " WIND
 endif 
 SKIP
 enddo
 deac wind mss4
 deac wind mss7
 DEAC WIND MSS12
 use
return
******************************
