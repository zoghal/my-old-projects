unit CDROM;
{
                          CD-ROM Turbo Pascal Unit

                                  Made by
                                XTREME 1994

                              XTM:0001-63-001

                  See CDROM.DOC for complete documentation
}
interface

var
 CD_Available   : Boolean;
 CD_Error,
 CD_Drive       : Word;


function CD_Volume_Size : LongInt;

function CD_Tray_Open : Boolean;

procedure CD_Open_Tray;

procedure CD_Close_Tray;

procedure CD_Lock_Tray;

procedure CD_Unlock_Tray;

function CD_Playing : Boolean;

function CD_Play(Track : Byte; Len : longint) : boolean;

procedure CD_Stop;

procedure CD_Resume;

function CD_Media_Changed : Boolean;

function CD_Track_Start(Track : Byte) : Longint;

function CD_Track_Stop(Track : Byte) : Longint;

function CD_Track_Length(Track : Byte) : Longint;

function CD_Track_Time(Track : Byte) : Word;

function CD_First_Track : Byte;

function CD_Last_Track : Byte;

function CD_Current_Track : Byte;

function CD_Current_Track_Time : Word;

function CD_Current_Disk_Time : Word;

implementation

type
 IOCTLCommandType    = record
                        CommandCodeField     : Byte;
                        CodeField            : Byte;
                        BufferSize           : Byte;
                       end;
 PlayCommandType    = record
                       CommandCodeField     : Byte;
                       CodeField            : Byte;
                       BufferSize           : Byte;
                      end;

const
 CD_IOCTLI_Device_Status       : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 6;
                                                buffersize       : 5);
 CD_IOCTLI_Volume_Size         : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 8;
                                                buffersize       : 5);
 CD_IOCTLI_Media_Changed       : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 9;
                                                buffersize       : 2);
 CD_IOCTLI_Audio_Disk_Info     : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 10;
                                                buffersize       : 7);
 CD_IOCTLI_Audio_Track_Info    : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 11;
                                                buffersize       : 7);
 CD_IOCTLI_Audio_QChannel_Info : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 12;
                                                buffersize       : 11);
 CD_IOCTLI_UPC_Code            : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 14;
                                                buffersize       : 11);
 CD_IOCTLI_Audio_Status_Info   : IOCTLCommandType = (commandcodefield : 3;
                                                codefield        : 15;
                                                buffersize       : 11);
 CD_IOCTLO_Eject_Disk          : IOCTLCommandType = (commandcodefield : 12;
                                                codefield        : 0;
                                                buffersize       : 1);
 CD_IOCTLO_Lock_Unlock_Door    : IOCTLCommandType = (commandcodefield : 12;
                                                codefield        : 1;
                                                buffersize       : 2);
 CD_IOCTLO_Reset_Drive         : IOCTLCommandType = (commandcodefield : 12;
                                                codefield        : 2;
                                                buffersize       : 1);
 CD_IOCTLO_Close_Tray          : IOCTLCommandType = (commandcodefield : 12;
                                                codefield        : 5;
                                                buffersize       : 1);

var
 Buffer : array[1..130] of byte;
 W1     : Word;
 TempI  : Integer;

function BCD2LongInt(L : LongInt) : Longint;

var
 TempL  : LongInt;

begin
 templ := (((l shr 28)mod 16)*10000000)+
          (((l shr 24)mod 16)*1000000)+
          (((l shr 20)mod 16)*100000)+
          (((l shr 16)mod 16)*10000)+
          (((l shr 12)mod 16)*1000)+
          (((l shr 8) mod 16)*100)+
          (((l shr 4) mod 16)*10)+
          (l mod 16);
 BCD2LongInt := Templ;
end;

function LongInt2BCD(L : LongInt) : Longint;

var
 TempL  : LongInt;

begin
 templ := (((l div 10000000)mod 10)shr 28)+
          (((l div 1000000)mod 10)shr 24)+
          (((l div 100000)mod 10)shr 20)+
          (((l div 10000)mod 10)shr 16)+
          (((l div 1000)mod 10)shr 12)+
          (((l div 100)mod 10)shr 8)+
          (((l div 10)mod 10)shr 4)+
          (l mod 10);
 LongInt2BCD := Templ;
end;

Function Red2HSG(L1 : LongInt) : LongInt;

Var
 l : LongInt;

begin
  l :=     LongInt((l1 shr 16) and $FF) * 4500;
  l := l + LongInt((l1 shr  8) and $FF) * 75;
  l := l + LongInt((l1       ) and $FF);
  Red2HSG := l - 150;
end;

procedure IOCTL_Converse(Command : IOCTLCommandType; var R);


type
 XferType       = record
                   B            : array[1..130] of byte;
                  end;
 IOCTLType     = Record
                  Length       : Byte;
                  Subunit      : Byte;
                  CommandCode  : Byte;
                  Status       : Word;
                  Reserved     : array[1..8] of byte;

                  MediaDisc    : Byte;
                  XferAddr     : Pointer;
                  NbrXfer      : Word;
                  StartSect    : Word;
                  ReqID        : Pointer;
                 end;

var
 IOCTL         : IOCTLType;
 Xfer          : Xfertype;
 W1,
 W2            : Word;

begin
 with ioctl do
  begin
   length := sizeof(ioctl);
   subunit := 0;
   commandcode := command.commandcodefield;
   status := 0;
   mediadisc := 0;
   xferaddr := addr(xfer);
   nbrxfer := sizeof(xfer);
   startsect := 0;
   reqid := nil;
  end;
 with xfer do
  begin
   for w1 := 1 to command.buffersize do
    b[w1] := 0;
   b[1] := command.codefield;
   move(r, ptr(seg(b), ofs(b)+1)^, command.buffersize-1);
  end;
 w1 := seg(ioctl);
 w2 := ofs(ioctl);
 asm
  mov   ax,1510h
  mov   cx,CD_Drive
  mov   es,w1
  mov   bx,w2
  int   2fh
 end;
 move(ptr(seg(xfer), ofs(xfer)+1)^, r, command.buffersize-1);
 cd_error := ioctl.status;
end;

procedure CD_IOCTLO_Play_Audio(Start, Nbr : LongInt);


const
 CommandCodeField       = 3;
 CodeField              = 6;
 BufferSize             = 5;

type
 PlayType     = Record
                  Length       : Byte;
                  Subunit      : Byte;
                  CommandCode  : Byte;
                  Status       : Word;
                  Reserved     : array[1..8] of byte;

                  AddrMode     : Byte;
                  StartSect    : LongInt;
                  NumRead      : LongInt;
                 end;

var
 TempL         : LongInt;
 Play          : PlayType;
 W1,
 W2            : Word;

begin
 with play do
  begin
   length := sizeof(play);
   subunit := 0;
   commandcode := 132;
   status := 0;
   addrmode := 0;
   startsect := start;
   numread := nbr;
  end;
 w1 := seg(play);
 w2 := ofs(play);
 asm
  mov   ax,1510h
  mov   cx,CD_Drive
  mov   es,w1
  mov   bx,w2
  int   2fh
 end;
end;

procedure CD_IOCTLO_Stop_Audio;

type
 StopType     = Record
                  Length       : Byte;
                  Subunit      : Byte;
                  CommandCode  : Byte;
                  Status       : Word;
                  Reserved     : array[1..8] of byte;
                 end;

var
 W1,
 W2     : Word;
 Stop   : StopType;

begin
 with stop do
  begin
   length := sizeof(stop);
   subunit := 0;
   commandcode := 133;
   status := 0;
  end;
 w1 := seg(stop);
 w2 := ofs(stop);
 asm
  mov   ax,1510h
  mov   cx,CD_Drive
  mov   es,w1
  mov   bx,w2
  int   2fh
 end;
end;

procedure CD_IOCTLO_Resume_Audio;

type
 ResumeType     = Record
                   Length       : Byte;
                   Subunit      : Byte;
                   CommandCode  : Byte;
                   Status       : Word;
                   Reserved     : array[1..8] of byte;
                  end;

var
 W1,
 W2     : Word;
 Resume : ResumeType;

begin
 with resume do
  begin
   length := sizeof(resume);
   subunit := 0;
   commandcode := 136;
   status := 0;
  end;
 w1 := seg(resume);
 w2 := ofs(resume);
 asm
  mov   ax,1510h
  mov   cx,CD_Drive
  mov   es,w1
  mov   bx,w2
  int   2fh
 end;
end;

function CD_Init : Boolean;

var
 W      : Word;
 B      : Byte;

begin
 asm
  mov   ax,1500h
  mov   bx,0
  mov   cx,0
  int   2fh
  mov   w,bx
  mov   b,cl
 end;
 CD_Drive := 65535;
 cd_init := w > 0;
 if w > 0 then
  begin
   CD_Drive := b;
  end;
end;

{*********************** Interface part ********************}

function CD_Volume_Size : LongInt;

var
 Buffer  : array[1..130] of Byte;
 Temp    : LongInt;

begin
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_volume_size, buffer);
   move(buffer, temp, 4);
   cd_volume_size := temp;
  end;
end;

function CD_Tray_Open : Boolean;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_device_status, buffer);
   cd_tray_open := (buffer[1] and 1) <> 0;
  end;
end;

procedure CD_Open_Tray;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   cd_ioctlo_stop_audio;
   ioctl_converse(cd_ioctlo_eject_disk, buffer);
  end;
end;

procedure CD_Close_Tray;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  ioctl_converse(cd_ioctlo_close_tray, buffer);
end;

procedure CD_Lock_Tray;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   buffer[1] := 1;
   ioctl_converse(cd_ioctlo_lock_unlock_door, buffer);
  end;
end;

procedure CD_Unlock_Tray;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   buffer[1] := 0;
   ioctl_converse(cd_ioctlo_lock_unlock_door, buffer);
  end;
end;

function CD_Playing : Boolean;

var
 Buffer : array[1..130] of byte;

begin
 cd_playing := false;
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_device_status, buffer);
   cd_playing := (cd_error and 512) <> 0;
  end;
end;

function CD_Play(Track : Byte; Len : longint) : boolean;

var
 W      : Word;

begin
 if cd_available then
  begin
   cd_stop;
   cd_ioctlo_play_audio(red2hsg(cd_track_start(track)), len);
   cd_play := cd_playing;
  end;
end;

procedure CD_Stop;

begin
 if cd_available then
  cd_ioctlo_stop_audio;
end;

procedure CD_Resume;

begin
 if cd_available then
  cd_ioctlo_resume_audio;
end;

function CD_Media_Changed : Boolean;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_media_changed, buffer);
   if (buffer[1] = 0) or (buffer[1] = 255) then
    cd_media_changed := true
   else
   if buffer[1] = 1 then
    cd_media_changed := false;
  end;
end;

function CD_Track_Start(Track : Byte) : Longint;

var
 Buffer      : array[1..130] of byte;
 TempL       : LongInt;

begin
 buffer[1] := track;
 ioctl_converse(cd_ioctli_audio_track_info, buffer);
 move(ptr(seg(buffer), ofs(buffer)+1)^, templ, 4);
 cd_track_start := templ;
end;

function CD_Track_Stop(Track : Byte) : Longint;

var
 Buffer      : array[1..130] of byte;
 TempL       : LongInt;

begin
 ioctl_converse(cd_ioctli_audio_disk_info, buffer);
 move(ptr(seg(buffer), ofs(buffer)+2)^, templ, 4);
 if track < buffer[2] then
  begin
   buffer[1] := track+1;
   ioctl_converse(cd_ioctli_audio_track_info, buffer);
   move(ptr(seg(buffer), ofs(buffer)+1)^, templ, 4);
  end;
 cd_track_stop := templ;
end;

function CD_Track_Length(Track : Byte) : Longint;

begin
 cd_track_length := red2hsg(cd_track_stop(track))-
                    red2hsg(cd_track_start(track));
end;

function CD_Track_Time(Track : Byte) : Word;

begin
 cd_track_time := round(cd_track_length(track) / 75);
end;

function CD_First_Track : Byte;

var
 Buffer : array[1..130] of byte;

begin
 ioctl_converse(cd_ioctli_audio_disk_info, buffer);
 cd_first_track := buffer[1];
end;

function CD_Last_Track : Byte;

var
 Buffer : array[1..130] of byte;

begin
 ioctl_converse(cd_ioctli_audio_disk_info, buffer);
 cd_last_track := buffer[2];
end;

function CD_Current_Track_Time : Word;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_audio_qchannel_info, buffer);
   cd_current_track_time := buffer[4]*60+buffer[5];
  end;
end;

function CD_Current_Track : Byte;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_audio_qchannel_info, buffer);
   cd_current_track := bcd2longint(buffer[2]);
  end;
end;

function CD_Current_Disk_Time : Word;

var
 Buffer : array[1..130] of byte;

begin
 if cd_available then
  begin
   ioctl_converse(cd_ioctli_audio_qchannel_info, buffer);
   cd_current_disk_time := buffer[8]*60+buffer[9];
  end;
end;

begin
 CD_Available := CD_Init;
end.