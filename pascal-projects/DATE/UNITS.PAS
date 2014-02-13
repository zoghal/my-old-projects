unit units;
interface
Uses dos;
Function Get_Data:String;
implementation
fUNCTION geT_DATA:sTRING;
const
  days : array [0..6] of String[9] =
    ('Sunday','Monday','Tuesday',
     'Wednesday','Thursday','Friday',
     'Saturday');
var
  y, m, d, dow : Word;
  yt,mt,dt:string[22];
bEGIN
  GetDate(y,m,d,dow);
  Str(m,mt );
  Str(y,yt );
  Str(d,dt );
  Get_Data := days[dow]+ ', '+mt +'/'+ dt +'/'+ yt;
END;

Begin
End.