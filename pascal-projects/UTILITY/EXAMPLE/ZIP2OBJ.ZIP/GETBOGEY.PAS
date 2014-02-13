Program GetBogey;
uses XZip;

{$R-,S-,I- }

{$IFDEF STUB }
  {$M 1024, 0, 0 }
{$ELSE }
  {$M 1024, 65536, 65536 }
{$ENDIF }

Function BogeySize : Word; Far; External;
Procedure ExplodeBogey(Var buffer); Far; External;
{$L BOGEY.OBJ }

Procedure ConWrite(s : String); External;
Procedure ConWriteLn(s : String); External;
{$L CONWRITE.OBJ }

Var
  f            : File;
  p            : Pointer;
  s            : String[10];

Begin
  ConWriteLn('Unzipping Bogey to file BOGEY.BIN...');
  Assign(f, 'BOGEY.BIN');
  Rewrite(f, 1);
  If IOResult > 0 Then
    ConWriteLn('error: couldn''t open output file')
  Else
    Begin
      GetMem(p, BogeySize);
      ExplodeBogey(p^);
      ConWrite('Writing ');
      Str(BogeySize, s);
      ConWrite(s);
      ConWriteLn(' bytes.');
      BlockWrite(f, p^, BogeySize);
      If IOResult > 0 Then
        ConWriteLn('error: disk full')
      Else
        Close(f);
    end;
end.