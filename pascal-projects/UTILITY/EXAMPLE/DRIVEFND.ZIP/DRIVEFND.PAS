Unit Drivefnd ;

Interface

uses crt, dos;

var
   R               : Registers ;
   k,
   j,
   i,
   MaxDrives,                     { total number of drives from DOS - maybe more than we have }
   NumbDrives,                    { total number of floppy and hard disk drives }
   NumbHardDrives,                { total number of hard disk drives }
   EquipmentList,                 { list of equipment from DOS }
   NumbFloppies,                  { total number of floppy disk drives }
   ErrorCode       : integer ;

   Ans             : char ;
   Drives          : string[26] ;
   DriveSet        : set of 'A'..'Z' ;

{ procedures and functions }

Procedure FindDrives ;


Implementation

Procedure BiosCall(AH,AL,BH,BL:Byte) ;

var
   R               : Registers ;

begin
   R.AH := AH ;
   R.AL := AL ;
   R.BH := BH ;
   R.BL := BL ;
   Intr($10,R) ;

{   Writeln ('AH = ',R.AH,'  AL = ',R.AL,'BH = ',R.BH,'  BL = ',R.BL) ;}
end ;


Procedure FindDrives ;

begin
   DriveSet := [] ;                 { start with null set }
   Drives := '' ;
   R.AH := $0E ;                    { get maximum drive number from DOS }
   R.DL := $04 ;
   Intr($21,R) ;
   MaxDrives := R.AL ;

   Intr($11,R) ;                    { get equipment list integer }
   EquipmentList := (R.AH shl 8) OR R.AL ;
   If (EquipmentList AND $01) = 0 then NumbFloppies := 0
   else NumbFloppies := ((EquipmentList AND $C0) shr 6) + 1 ;

   NumbDrives := 0 ;
   NumbHardDrives := 0 ;
   if NumbFloppies = 1 then begin
      DriveSet := DriveSet + ['A'] ;
      Drives := Drives + 'A' ;
      inc(NumbDrives) ;
      i := 3 ;
      end ;
   if NumbFloppies = 2 then begin
      DriveSet := DriveSet + ['B'] ;
      Drives := Drives + 'B' ;
      inc(NumbDrives) ;
      i := 3 ;
      end ;
   if NumbFloppies = 3 then begin
      DriveSet := DriveSet + ['C'] ;
      Drives := Drives + 'C' ;
      inc(NumbDrives) ;
      i := 4 ;
      end ;
   if NumbFloppies = 4 then begin
      DriveSet := DriveSet + ['D'] ;
      Drives := Drives + 'D' ;
      inc(NumbDrives) ;
      i := 5 ;
      end ;
   While i <= MaxDrives do begin
      R.AH := $1c ;
      R.DL := i ;
      Intr($21,R) ;
      if R.AL <> 255 then begin
         DriveSet := DriveSet + [chr(64+i)] ;
         Drives := Drives + chr(64+i) ;
         inc(NumbDrives) ;
         inc(NumbHardDrives) ;
         end ;
      inc(i) ;
      end ;
end ;

end .