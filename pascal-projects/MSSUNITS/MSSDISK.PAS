Unit MssDisk;
Interface
Uses Dos;

Var    R : Registers;
Function ReadSector ( Track , Head , Sector , TReadSector : byte ; var buf ):byte;
Procedure WriteSector ( Track , Head , Sector , TReadSector : byte ; var buf );
function FormatA ( Track,Head,Tsector : byte ; var buf  ):byte;
procedure reseta;
Implementation

function ReadSector ( Track , Head , Sector , TReadSector : Byte ;var buf ):byte;
Begin
     R.Ah := 02;
     R.Dl := 0;
     R.Dh := Head;
     R.Ch := Track;
     R.Cl := Sector;
     R.Al := TReadSector;
     R.Es := Seg(BUF);
     R.Bx := Ofs(BUF);
     Intr($13,r);
     if (r.flags and fcarry)=fcarry then readsector:=r.ah else readsector:=0;
End;
{***************************************************************************}
Procedure WriteSector ( Track , Head , Sector , TReadSector : Byte ;var buf );
Begin
     R.Ah := 03;
     R.Dl := 0;
     R.Dh := Head;
     R.Ch := Track;
     R.Cl := Sector;
     R.Al := TReadSector;
     R.Es := Seg(BUF);
     R.Bx := Ofs(BUF);
     Intr($13,r);
End;
{***************************************************************************}
function FormatA (Track,Head,Tsector: byte; var buf ):byte;
 var
  I : byte;
  TableFormat:array [1..18] of record
              tr,he,r,capacity:byte;
              end;
begin
r.ah:=$05;
r.dl:=0;
r.dh:=head;
r.ch:=track;
r.al:=Tsector;
r.es:=seg(buf);
r.bx:=ofs(buf);
intr($13,r);
if (r.flags and fcarry)=fcarry then
 formata:=r.ah
else
 formata := 0;
end;
{-**************************************************************************}
procedure reseta;
begin
r.ah:=0;
intr($13,r);
end;

end.