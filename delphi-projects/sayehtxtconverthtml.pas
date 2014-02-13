unit sayehtxtconverthtml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    RichEdit: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Const
  DBParodox : array [1..4] of string =('TStringField','TDateField','TFloatField','TSmallintField');
  DBSql     : array [1..4] of string =('NvarChar','NvarChar','float','Int');
  No=69;
  CodeWin : array[1..No] of Byte = (194,199,199,200,200,129,129,202,202,203,203,
                                    204,204,141,141,205,205,206,206,207,208,209,
                                    210,142,211,211,212,212,213,213,214,214,216,
                                    217,218,218,218,218,219,219,219,219,221,222,
                                    222,223,144,225,225,225,227,227,228,228,230,
                                    0229,0229,0229,0229,237,237,237,237,32,198,32
                                    ,32,32,32);

  CodeDos : array[1..No] of byte = (137,139,140,146,147,148,149,150,151,152,153,
                                    154,155,156,157,158,159,161,162,163,164,165,
                                    166,167,168,169,170,171,172,173,174,175,224,
                                    225,226,227,228,229,230,231,232,233,234,235,
                                    236,237,238,239,240,241,242,243,244,245,246,
                                    247,248,249,250,251,252,253,254,160,145,144
                                    ,041,042,32);
var
  Form1: TForm1;
  space,
  addChar : boolean;


implementation

{$R *.dfm}
{-----------------------------}
Function Dos2Win (Ch : Char):Char;
Var
 II :  Byte;
Begin

   if ord(ch) in [144,160,248,248,244,251,252,242] then space := True;
   if ord(ch) =240 then addChar := True;
  For II:= 1 To No Do
   If Ord(ch) = CodeDos[II] then
    Begin
     ch := chr(codeWin[II]);
     Break;
    End;
   Dos2Win := Ch;
End;



Function converting(WinStr:string):ansiString;
var
  NoChar : Integer;
  temp,qq : String[255];
begin
   temp:='';
   QQ:='';
   WinStr := Trim(WinStr);
  For NoChar := 1 to Length(WinStr) Do
   begin
    space := false;
    qq := Dos2Win(WinStr[nochar]);
    if space = true Then
       temp :=  TEMP+qq+' '
    Else
       temp := temp+qq;

    IF addChar= TRUE THEN
      BEGIN
       temp:= TEMP +'C';
       ADDCHAR := FALSE;
      end;
   converting := TRIM(temp);
end;
eND;







{-------------------------------}

procedure TForm1.Button1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
 RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,y : Longint;
  f,f2 : TextFile;
  ch,bc,ac :char;
  temp : string;

begin
 AssignFile(F, OpenDialog1.FileName);
 Reset(F);
 AssignFile(F2,'A.HTM');
 Rewrite(F2);

 Writeln(f2,'<html dir="rtl">');
 Writeln(f2,'<head>');
 Writeln(f2,'<meta http-equiv="Content-Language" content="fa">');
 Writeln(f2,'<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">');
 Writeln(f2,'<title>New Page 1</title>');
 Writeln(f2,'</head>');
 Writeln(f2,'<body>');
 Writeln(f2,'<font face="Tahoma" size="1">');
 bc :=' ';
while not Eof(f) do
  Begin
  read(f,ch);
    if ch in ['¿','Ú','Å','´'] then ch :='.';
    if ch in ['Ä'] then ch :='-';
   if ch in ['³'] then ch :='|';
    temp := dos2win(ch) +  temp;
    if ch = #10 then
     Begin
      RichEdit.Lines.Add(temp);
      temp := '';
     end;


  end;

{ while not Eof(f) do
  Begin
   read(f,ch);
    if ch in ['?','?'] then ch :='.';
    if ch in ['?','Ä','?'] then ch :='_';
    if ch in ['³'] then ch :='|';
    if ch = #32 then temp := '&nbsp;' + temp else
    temp := Dos2Win(ch) +  temp;
    if ch = #10 then
     Begin
      temp := '<p>'+ temp + '</p>';
      Writeln(f2,temp);
      temp := '';
     end;
  END;}

Writeln(f2,'</font>');
Writeln(f2,'</body>');
Writeln(f2,'</html>');

 Closefile(f);
 Closefile(f2);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i : Integer;
  temp,sh : String;
begin
   sh := RichEdit1.Lines.Strings[0];
   For  i := 1 to  Length( sh ) do
     temp := Dos2Win(sh[1]) +  temp;
     
   RichEdit.Lines.Add(RichEdit1.Lines.Strings[0])
end;

end.








