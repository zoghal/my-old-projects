deac wind all
Clear
set near on
Set talk Off
use dic index dic
reindex
set color to
defi wind command1 From 8,10 To  17,70 Doub Shado Title " Command Line 1 " color sche 2
acti wind command1
set color to w+/7	
@1,0 Say " ======> [                                               ]"
set color to 1/0	
@1,10 Say "                                               "
set color to w+/7	
@3,0 Say " many    [                                               ]"
set color to 1/0	
@3,10 Say "                                               "
set color to w+/7	
@5,0 Say " Command [                                               ]"
set color to 1/0	
@5,10 Say "                                               "
Key=0
T_KEY=0
keying=Space(50)
Do While key <>13
 key = inkey(0)
 if key = 13
    Exit
 endif
 if key = 127
    T_key = Len (Alltrim(KEYING))
    keying = left(Alltrim(keying),T_key - 1) 
  else
   keying = keying + Chr(key)
   T_key = Len (Alltrim(KEYING))
 Endif
 go top
 set color to 1/0	 
 @5,10 Say "                                               "
 set color to w+/0	
 @5,10 say Alltrim(keying)
 use
 use dic index dic
 do while .not. eof()
  locate for Left(Alltrim(Latin),T_key) = alltrim(keying)
   if found () 
    set color to w+/0	
	@1,10 Say latin
    set color to w+/0	
	@3,10 Say farsi
	exit
   Else
    T_key = t_key - 1
    keying = left(Alltrim(keying),T_key)
   Endif
  enddo
Enddo





