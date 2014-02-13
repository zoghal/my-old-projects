{ --------------------------------------------------------------------------- }
{ DRIVES.PAS  DrvTypes unit demonstration program.		Version 2.00  }
{                                                                             }
{ *** PUBLIC DOMAIN ***                                                       }
{ *** THERE ARE NO WARRANTIES TO THIS CODE AND AS-IS BASIS IS ASSUMED ***     }
{                                                                             }
{ Written by Bobby Z. and Mr. Byte                                            }
{ --------------------------------------------------------------------------- }

Program Drives;

{$M 2048,0,0} { stacksize = 2048 bytes, safe }
{$S-,I-,R-}   { disable stack, I/O and range checking }

uses DrvTypes;

function FloppyDrives : byte; assembler;
{ - returns number of floppy drives in system }
asm
        int 11h
        test al,00000001b
        jz  @@1
{$IFOPT G+}
        shr al,6
{$ELSE}
        mov cl,6
        shr al,cl
{$ENDIF}
        and al,3
        inc al
        retn
@@1:
        xor al,al
end;

var C : Char;
    T : array[1..26] of Byte;
    D : Word;

procedure WriteDescription( C : Char; const Desc : String );
 begin
  WriteLn('Drive ',C,': is ',Desc);
 end;

begin
 WriteLn('Drive Map  Version 2.0  Written by Mr. Byte and Bobby Z.'#13#10);
 asm
	mov	ah,30h
	int	21h
	mov	D,ax
 end;
 if (Lo(D) < 3) or ((Lo(D)=3) and (Hi(D) < 30)) then
  begin
   WriteLn('DOS version is ',Hi(D),'.',Lo(D),'!!! Where did you get this dinosaur?');
   Halt;
  end;
 Write('Scanning drives, please wait...');
 for C := #1 to #26 do
  T[Byte(C)] := GetDriveType(Byte(C));
 Write(#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8#8);
 for C := 'A' to 'Z' do
  case T[Byte(C)-Byte('A')+1] of
   dtCDROM : WriteDescription(C,'CD-ROM drive.');
   dtSUBST : WriteDescription(C,'SUBST''ed drive.');
   dtRemote: WriteDescription(C,'remote (network) drive.');
   dtFixed : WriteDescription(C,'local hard drive.');
   dtRemovable:
       if (Byte(C)-Byte('A')+1) in [1..FloppyDrives] then
        WriteDescription(C,'removable (floppy) drive.')
       else
        WriteDescription(C,'phantom floppy drive.');
   dtDblSpace: WriteDescription(C,'DoubleSpace compressed drive.');
   { need Stacker 1,2,3 check algos badly... }
   dtStacker4: WriteDescription(C,'Stacker 4 compressed drive.');
   dtRAMDrive: WriteDescription(C,'RAM drive.');
   dtDublDisk: WriteDescription(C,'Vertisoft DoubleDisk 2.6 compressed drive.');
   dtBernoully: WriteDescription(C,'Bernoully drive.');
   dtDiskreet: WriteDescription(C, 'Norton Diskreet drive.');
   dtSuperStor: WriteDescription(C, 'SuperStor compressed drive.')
  end
end. { Drives }
