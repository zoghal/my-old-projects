Program year;
uses crt;
Var
  Years,Month,day,
  t,
  h,m,s : longint;

Begin
 clrscr;
 WRite('Enter Year :=');
 REadln(years);
 WRite('Enter month :=');
 REadln(month);
 WRite('Enter day :=');
 REadln(day);

 h := ((years * 365) + (month*30) + day)*24;
 m := h * 60 ;
 s := m * 60;

 writeln ('Hours := ',h);
 writeln ('mints := ',m);
 writeln ('scon. := ',s);


End.