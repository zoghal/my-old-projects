{ Farshad Vahidpour - 1376/6/30 }
PROGRAM QUEENS;
USES Crt;
CONST  CROW    = 8;CCOL    = 8; LASTROW = 8;
VAR Home : Array [1..9,1..9] of Integer;
    row,col,n  : Integer;
PROCEDURE PrintChess;
Var q   : Char;
    s1  : String;
    row,col,n1 : Integer;
Begin
    ClrScr;
    n:=n+1;
    Writeln('Science Dept.   Qazvin Azad University':60);
    Writeln('Status Number = ',n,' th');
    Write('ÚÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄ¿');
    For Row:=1 to CROW do    Begin
       if ( Row <> 1 ) then  Begin
          Writeln;
          Writeln('ÃÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄ´')
       End
       Else
        Writeln;
        For Col:=1 to CCOL do
           if ( Home[row,col] = row ) then  Write('³²²²²')
           else  Write('³    ');
       Write('³');
    End;
    Writeln;
    Writeln('ÀÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÙ');
    q:=Readkey;
    if (q='q') then
        Exit;
End;
PROCEDURE Sets( i:Integer;j:Integer;it:Integer);
Var col,row : Integer;
    old,new : Integer;
Begin
   if (it=1) then   Begin
      Old := -1;
      new:=i;
      Home[ i , j ] := i;
   End
   Else  Begin
      Old := i;
      Home[ i , j ] :=-1;
      New := -1;
   End;
   For Row := i+1 to CROW do
        if Home[ Row , j ] = Old  then  Home[ Row , j ] := New;
        row:=i+1;col:=j+1;
        while ((row<(CROW+1)) AND (col<(CCOL+1))) do  Begin
          if Home[row,col]=Old then  Home[row,col]:=New;
          col:=col+1;row:=row+1;
        End;
        row:=i+1;col:=j-1;
	while ((row<(CROW+1)) AND (col>=1)) do  Begin
          if Home[row,col]=Old then Home[row,col]:=New;
          col:=col-1;row:=row+1;
        End;
End;
PROCEDURE Fill(i:Integer;j:Integer);
Var col : Integer;
Begin
     if Home[ i , j ] = -1 then   Begin
        Sets( i, j, 1 );
        if  i = LASTROW  then   PrintChess
        Else Begin
            For Col:= 1 to CCOL do
            if  Home[ i+1 , Col ] = -1 then  Fill( i+1, Col );
         End;
         Sets( i, j, 0 );
     End;
End;
BEGIN
   ClrScr;
   n:=0;
   For Row := 1 to CROW do
       For Col := 1 to CCOL do
          Home[ Row , Col ] := -1;
   For Col := 1 to CCOL do
       Fill( 1 , Col );
END.
