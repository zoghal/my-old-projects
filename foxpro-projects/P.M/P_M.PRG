clear all
use
rest from fchr
set date ymd
set color to
set talk off
set cursor off
on key label alt+x cancel
do while .t.
set color to w+/1
@0,0,24,79 box "���������"
defi popup main from 2,55 title "�� ����" shado margin color sche 4
defi bar 1 of main prom " ��䑋󋯐 ���� "
defi bar 2 of main prom " ���� ������ "
defi bar 3 of main prom " ��䑋󋯐 飋� "
defi bar 4 of main prom " ���󋯐 ����� "
defi bar 5 of main prom "           ���� "
on sele bar 5 of main  cancel
on sele bar 1 of main do input
on sele bar 2 of main do edit
on sele bar 3 of main do delete
on sele bar 4 of main do list
acti popup main
enddo
***************************** proc input ******************************
proc input 
defi wind input from 4,20 to 20,60  title " ���� ���� "  double  shado color sche 4
activ wind input
set color to 0/7
set cursor on
c=space(8)
@1,31 say "��� �� "
@3,30 say "��� ���" 
@5,25 say " �� ��� ����� " 
@5,8 say " �� " 
@7,28 say " ��� ���� "
@9,28 say " ��� ���� "
@11,16 say " ��� ���� ���� ����� "
@13,27 say '������� ���'
@1,22 get c
read
c=upper(c)
test=space(2)
use
use const
go top
do while .not. eof()
locate for cod=left(c,2)
if found() 
@5,13 say alltrim(name)
uu=space(14)
uu=alltrim(name)
@5,4 say alltrim(model)
m=space(5)
m=alltrim(model)
test='ok'
else 
wait " ���� ����� ��� ����� " timeout 0.5 wind
test='no'
deac wind input
exit
endif
exit
enddo
if test='ok' then
na=space(15)
na=fstr(3,27,na)
set color to 0/7
wait " " timeout 0.0
tz=space(5)
@9,23 get tz
read
set color to 0/7
if val(tz) > 50000
k=space(13)
@7,16 say '�����������'
k='�����������'
else
@7,19 say '���� ���'
k='���� ���'
endif 
dat={ / / }
@11,7 get dat
read
omr_g=space(2)
omr_g='00'
@13,24 say omr_G
defi window ok from 20,20 to 24,60 SHADO DOUBLE TITLE " ����� " COLOR sche 1
acti wind ok
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 	use 
 	use dbmain
	appe blan
replace name with na,COD with c,omr with omr_g,u with uu,model with m,klas with k, date with dat,tedad with tz
 case p3=2
 endcase
deac wind ok
deac wind input
set color to 0/7
set cursor off
endif
return
*****************************proc edit********************************
proc edit
use
set cursor on
defi wind input_cod from 11,23 to 13,57 double shado color sche 4
aCTI wind input_cod
set color to 0/7
@0,12 say "���� ���� �� �� ���"
c=space (8)
@0,3 get c
read
use
use dbmain
GO TOP
do while .not. eof() 
locate for cod=upper(c)
if found()
rec=0
rec=RECCOUNT()
deac wind input_cod
defi wind input from 4,20 to 20,60  title " ���� ������ "  double  shado color sche 4
activ wind input
set color to 0/7
@1,31 say "��� �� "
@3,30 say "��� ���" 
@5,25 say " �� ��� ����� " 
@5,8 say " �� " 
@7,28 say " ��� ���� "
@9,28 say " ��� ���� "
@11,16 say " ��� ���� ���� ����� "
@13,27 say '������� ���'
c=space(5)
c=cod
@1,22 get c
read
c=upper(c)
test=space(2)
use
use CONST
go top
do while .not. eof()
locate for cod=left(c,2)
if found() 
@5,13 say alltrim(name)
uu=space(14)
uu=alltrim(NAME)
@5,4 say alltrim(model)
m=space(5)
m=alltrim(model)
test='ok'
else 
wait " ���� ����� ��� ����� " timeout 0.5 wind
test='no'
deac wind input
exit
endif
exit
enddo
use
USE DBMAIN
GO rec
na=space(15)
na=name
na=fstr(3,27,na)
set color to 0/7
wait " " timeout 0.0
tz=space(5)
tz=tedad
@9,23 get tz
read
set color to 0/7
if val(tz) > 50000
k=space(13)
@7,16 say '�����������'
k='�����������'
else
@7,19 say '���� ���'
k='���� ���'
endif 
dat={ / / }
dat=date
@11,7 get dat
read
omr_g=space(2)
omr_g=omr
temp=0
temp=val(omr_g)
temp=temp+1
omr_g='0'+alltrim(str(temp,2,0))
@13,24 say omr_G
set color to
defi window ok from 20,20 to 24,60 SHADO DOUBLE TITLE " ����� " COLOR sche 1
acti wind ok
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 	use 
 	use dbmain
replace name with na,COD with c,omr with omr_g,u with uu,model with m,klas with k, date with dat,tedad with tz
 case p3=2
 endcase
deac wind ok
deac wind input
set color to 0/7
set cursor off
exit
else
wait "��� ���� ��� ���� �����" wind timeout 1
deac wind input_cod
endif
enddo
return
****************************************************************************
proc list
defi wind input_cod from 3,0 to 22,79 double shado color sche 4
aCTI wind input_cod
set color to 0/7
use
use dbmain 
@0,0 SAY'����������������������������������������������������������������������������Ŀ'
@1,0 SAY'�� ��� ������ ���� �� ��� ���� �  ��  ��� �����  �   ���������   � ������ �'
@2,0 SAY'����������������������������������������������������������������������������Ĵ'
i=3
scan 
@I,0 say '�     �        �     �            �                 �               �        �'
@i,69 say COD
@i,53 say ltrim(name)
@i,35 say rtrim(model+u)
@i,22 say alltrim(klas)
@i,16 say tedad
@i,7 say date
@i,1 say omr
i=i+1
  if i=17
  wait window ".�������� ����� ���� �� ����� "
    i=3
    endif
endscan
for a=i to 17
 @a,0  say '�     �        �     �            �                 �               �        �'
endfor 
@17,0 say '������������������������������������������������������������������������������'
wait " Press any continu" window
deac wind input_cod
return
**************************************************************************************************************
proc delete
use
set cursor on
defi wind input_cod from 11,23 to 13,57 double shado color sche 4
aCTI wind input_cod
set color to 0/7
@0,12 say "���� ���� �� �� ���"
c=space (8)
@0,3 get c
read
use
c=upper(c)
use dbmain
GO TOP
do while .not. eof() 
locate for cod=upper(c)
if found()
defi window ok from 20,20 to 24,60 SHADO DOUBLE TITLE " ����� " COLOR sche 1
acti wind ok
set color to w+/1
@0,22 say "� ����� ��������"
@2,10 prom " �� "
@2,20 prom " ��� "
menu to p3
 do case
 case p3=1
 	use 
 	use dbmain
	DELETE
	PACK
	WAIT ".�� 푕 ��� ���� ���� " wind 
ENDCASE
else
	WAIT ".��� ���� ��� ���� ���� " wind 
endif
enddo
deac wind ok
deac wind input_cod

return


