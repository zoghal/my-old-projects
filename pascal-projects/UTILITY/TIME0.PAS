
Var
Time  : LongInt Absolute $0040:$006C;
 S, S1 : String[10];
Begin
 Str ( Round ( Time / 18.206 ) Div 3600 Mod 24, S );
 If Length ( S ) < 2 Then
  S := '0' + S;
 Str ( Round ( Time / 18.206 ) Div 60 Mod 60, S1 );
 If Length ( S1 ) < 2 Then
  S1 := '0' + S1;
 S := S + ':' + S1 + ':';
 Str ( Round ( Time / 18.206 ) Mod 60, S1 );
 If Length ( S1 ) < 2 Then
  S1 := '0' + S1;
 S := S + S1;
 write(s);
 readln;
 end.