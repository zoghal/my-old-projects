clear
clear all
rest from fchr
use
set date ymd
set color to 
set talk off
do while .t.
set color to w+/1
@0,0,24,79 box "���������"
set color to 7/8
@0,0,0,79 box "���������"
set color to
on key label alt+x cancel
defi menu main color sche 3
defi pad a of main prom " ���� " at 0,11
defi pad b of main prom " ������� " 
defi pad c of main prom " ���� ���� "
defi pad d of main prom " ���� ����� "
defi pad e of main prom " ���� ���� " 
*******
on sele pad a of main cancel
on sele pad e of main acti popu input
on sele pad d of main acti popu output
on sele pad c of main acti popu list
on sele pad b of main acti popu need
********************
*********************************************************************
defi popu input from 1,70 margin color sche 2 shado
defi bar 1 of input prom " ����� ��� "
defi bar 2 of input prom "\-"
defi bar 3 of input prom " ����� ���� "
*/////
on sele bar 1 of input do arach
on sele bar 3 of input do reazaye
*********************************************************************
defi popu output from 1,46 margin color sche 2 shado
defi bar 1 of output prom " �����  ��� "
defi bar 2 of output prom "\-"
defi bar 3 of output prom " �����  ���� "
on sele bar 1 of output do list_arach
on sele bar 3 of output do list_reazaye
*********************************************************************
defi popu list from 1,30 margin color sche 2 shado
defi bar 1 of list prom " �����  ��� "
defi bar 2 of list prom "\-"
defi bar 3 of list prom " �����  ���� "
****/**/*/
*on sele bar 1 of list
*on sele bar 3 of list
*********************************************************************
defi popu need from 1,17 margin color sche 2 shado
defi bar 1 of need prom " �����  ��� "
defi bar 2 of need prom "\-"
defi bar 3 of need prom " �����  ���� "
*********************************************************************
acti menu main pad d
enddo
************************* enter procedure ************************
*************************proc input arach********************
procedure arach
use
use mozafari
do input
use
return
*********************** proc input MRs reazaye********************
procedure reazaye
use
use reazaye
do input
use
return
*********************** proc list arach ***************
proc list_arach
use
use mozafari
do list
use
return
********************** proc list MRS reazaye ****************
proc list_reazaye
use
use reazaye
do list
use
return
******************** procedure input ****************************
proc input
defi wind input from 5,20  to 20,60 double shad title " ���� ���� " COLOR W+/B
acti wind input 
***************************** menu 1 *******************************
set cursor off
temp_day=space(10)
@1,35 say "���"
@1,12 say "�����"
@4,33 say "�����"
@7,31 say "�� ���"
@9,30 say "�������� "
@11,32 say "������"
@3,16,5,31 BOX "�ͻ���Ⱥ"
@4,17 SAY " ������������ "
@0,24,2,33 BOX "�ͻ���Ⱥ"
@1,26 SAY "������"
@1,1 say "  /  /  "
set color to w+/3
@7,20 say "���������0"
@9,20 say "���������0"
@11,20 say "���������0"
set color to 15/15
@0,24,2,33 BOX "�ͻ���Ⱥ�"
set color to w+/15
@0,24,2,33 BOX "�ͻ���Ⱥ"
@1,26 SAY "������"
set color to w+/1
key=inkey(0)
temp_day="������"
if key=13 then
defi wind menu from 6,44 to 14,55 COLOR W+/3
acti wind menU
temp_day="������"
SET COLOR TO 7/3,w+/0
@0,1 prom " ������ "
@1,1 prom " ���� � "
@2,1 prom " ���� � "
@3,1 prom " ���� � "
@4,1 prom " ���� � "
@5,1 prom " ���� � "
@6,1 prom " ������ "
menu to m1
do case
	case m1=1
		deac wind menu	
		@1,25 SAY " ������ "
		temp_day="������"
	case m1=2
		deac wind menu	
		@1,25 SAY " ���� � "
		temp_day="���� �"
	case m1=3
		deac wind menu	
		@1,25 SAY "���� � "
		temp_day="���� �"
	case m1=4
		deac wind menu	
		@1,25 SAY "����� � "
		temp_day="���� �"
	case m1=5
		deac wind menu	
		@1,25 SAY "����� � "
		temp_day="���� �"
	case m1=6
		deac wind menu	
		@1,25 SAY "����� � "
		temp_day="���� �"
	case m1=7
		deac wind menu	
		@1,25 SAY " ������ "
		temp_day="������"
endcase
endif
set color to w+/1
@0,24,2,33 BOX "�ͻ���Ⱥ"
@1,25 SAY ' '+temp_day+' '
********************************* end menu 1 *******************************
set cursor on
dat={ / / }
@1,1 get dat
read
set cursor off
***************************** menu 2 *******************************
temp_note=space(10)
set color to 15/15
@3,16,5,31 BOX "�ͻ���Ⱥ�"
set color to w+/15
@3,16,5,31 BOX "�ͻ���Ⱥ"
@4,17 SAY " ������������ "
set color to w+/1
key=inkey(0)
temp_note="������������"
if key=13 then
defi wind menu1 from 8,35 to 18,52 COLOR W+/3
acti wind menU1
temp_note="������������"
SET COLOR TO 7/3,w+/0
@0,1 prom " ������������ "
@1,1 prom " ������������ "
@2,1 prom " ��������� "
@3,1 prom " ������������ "
@4,1 prom " ��������� "
@5,1 prom " ������������ "
@6,1 prom " ����� ������ "
@7,1 prom " ������ ����� "
@8,1 prom " ������������ "
menu to m2
do case
	case m2=1
		deac wind menu1	
		@4,17 SAY " ������������ "
		temp_note="������������"
	case m2=2
		deac wind menu1
		@4,17 SAY " ������������ "
		temp_note="������������"
	case m2=3
		deac wind menu1	
		@4,17 SAY " ��������� "
		temp_note="���������"
	case m2=4
		deac wind menu1	
		@4,17 SAY " ������������ "
		temp_note="������������"
	case m2=5
		deac wind menu1	
		@4,17 SAY " ��������� "
		temp_note="���������"
	case m2=6
		deac wind menu1	
		@4,17 SAY " ������������ "
		temp_note="������������"
	case m2=7
		deac wind menu1	
		@4,17 SAY " ����� ������ "
		temp_note="����� ������"
	case m2=8
		deac wind menu1	
		@4,17 SAY " ������ ����� "
		temp_note="������ �����"
	case m2=9
		deac wind menu1	
		@4,17 SAY " ������������ "
		temp_note="������������"
endcase
endif
set color to w+/1
@3,16,5,31 BOX "�ͻ���Ⱥ"
@4,17 SAY ' '+temp_note+' '
********************************* end menu 1 *******************************
set cursor on
kool_kool=0
back_back=0
forward_forward=0
@7,20 get kool_kool
@9,20 get back_back
read
forward_forward=kool_kool-back_back
set color to w+/3
@11,20 say forward_forward
*************************////**********
defi wind mss5 from 19,25 to 23,55 SHADO DOUBLE COLOR W+/1 TITLE " ����� " 
acti wind mss5
set color to w+/1
@0,12 say "� ����� ��������"
@2,8 prom " �� "
@2,15 prom " ��� "
menu to p3
 do case
 case p3=1
	appe blan
	replace DAY with TEMP_DAY,DATE with DAT,note with temp_note,KOOL with KOOL_kool,BACK with BACK_back,FORWARD with FORWARD_forward
 case p3=2
 endcase
deac wind mss5
deac wind input
set color to w+/1
return
deacti wind input
return
******************************** proc list arach ********************
proc list
set cursor off
defi window mss6 from 3,11 to 22,68 SHADO DOUBLE TITLE " ���� " COLOR W+/B
acti wind mss6
@0,1 say '����������������������������������������������������Ŀ'
@1,1 say '� ������  � �������� �  񋋋��  �   �����  �  ���   �'
@2,1 say '����������������������������������������������������Ĵ'
  i=3
 scan 
@i,1 say '�          �          �          �          �        �' 
  @i,47 say day 
  @i,36 say date
  @i,24 say kool
  @i,13 say back
  @i,2 say forward
   i=i+1
  if i=17
  wait window ".�������� ����� ���� �� ����� "
  i=3
   endif
    endscan
   for a=i to 17
@a,1 say '�          �          �          �          �        �' 
   endfor 
@17,1 say"������������������������������������������������������"
 WAIT  window "�������� �� �����"
 deac wind mss6
 RETURN
