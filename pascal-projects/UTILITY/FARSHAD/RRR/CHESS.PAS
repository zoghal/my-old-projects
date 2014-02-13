program chess;
uses crt;
const CROW=8;CCOL=8;LASTROW=8;
var
home:array[1..9,1..9] of integer;
row,col:integer;

procedure print_chess;
var q:char;
    s1:string;
    row,col,n:integer;
begin
    clrscr;
    n:=n+1;
    writeln;
    write('ÚÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄ¿');
    for Row:=1 to CROW do
    begin
       if Row <> 1 then
       begin
           writeln;
           writeln('ÃÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄ´')
       end
       else
       begin
        writeln;
       end;
       for Col:=1 to CCOL do
       if home[row,col]=row then write('³²²²²' )
       else write('³    ');
       write('³');
    end;
    writeln;
    writeln('ÀÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÙ');
        q:=readkey;
        if q='q' then exit;
        if n=2 then
             write('THEN THERE ARE 92 WAY FOR GET 8 QUEEN AT CHESS PLANE ');
        clrscr;
end;


procedure sets( i:integer;j:integer;it:integer);
var col,row:integer;
  old,new:integer;
begin
        if  it=1  then begin
                Old := -1;
                new:=i;
                home[ i , j ] := i;
         end
         else
         begin
                Old := i;
                home[ i , j ] :=-1;
                New := -1;
         end;
         for Row := i+1 to CROW do
                 if home[ Row , j ] = Old  then
         home[ Row , j ] := New;
        row:=i+1;col:=j+1;
        while ((row<(CROW+1)) AND (col<(CCOL+1))) do
        begin
        if home[row,col]=Old then
        home[row,col]:=New;
        col:=col+1;row:=row+1;
        end;
        row:=i+1;col:=j-1;
	while ((row<(CROW+1)) AND (col>=1)) do
        begin
        if home[row,col]=Old then
        home[row,col]:=New;
        col:=col-1;row:=row+1;
{        print_chess;}
        end;
end;

procedure fill(i:integer;j:integer);
var col:integer;
begin
     if home[ i , j ] = -1 then
     begin
      sets( i, j, 1 );
      if  i = LASTROW  then
        print_chess
      else begin
        for Col:= 1 to CCOL do
           if  home[ i+1 , Col ] = -1 then
             fill( i+1, Col );
      end;
      sets( i, j, 0 );
    end;
end;

begin
         clrscr;
       for Row := 1 to CROW do
       for Col := 1 to CCOL do
          home[ Row , Col ] := -1;
    for Col := 1 to CCOL do
       fill( 1 , Col );
end.
