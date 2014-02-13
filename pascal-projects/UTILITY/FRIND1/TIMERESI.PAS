{$M 1024,0,0}
Uses Dos;
Var
 Time  : LongInt Absolute $0040:$006C;
(* *********************************************************************** *)
Procedure Writetime ( X, Y : ShortInt; BG, FG : Byte; Const S : String );
Var
     SegC, OfsC : Word;
     I, EndStr  : Byte;
Begin
     SegC := $B800;
     OfsC := ( Y - 1 ) * 160 + X * 2 - 2;
     EndStr := Ord ( S[0] );
     For I := 1 To EndStr Do
       Begin
          MemW[SegC:OfsC] := ( BG ShL 4 + FG ) ShL 8 + Ord ( S[i] );
          Inc ( OfsC, 2 );
       End;
End;
(* ************************************************************************ *)
Procedure p; interrupt;
Var
    S, S1 ,S2: String[10];
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
      str(round(time/1.8206) mod 10,s2);
     S := S + S1+'.'+S2;
     Writetime ( 71, 1, 1, 15, S );
End;
Begin
     SwapVectors;
     Exec ('a:\sepand.exe' , '');
     Exec ( 'a:\bak.exe', '' );
     SwapVectors;
     SetIntVec ( $1C, Addr ( P ) );
     Keep ( 0 );
End.