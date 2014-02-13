unit U;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 OH, NH, EH : Hwnd;
 S       : String;
 S1      : String;
 SH, S1H : ShortString;
begin
 SetLength ( S, 255 );
 SetLength ( S1, 100 );
 OH := FindWindow ( '#32770', 'Dial-up Connection' );
 NH := GetWindow ( OH, gw_Child);
 EH := GetWindow ( NH, gw_HwndLast );
 GetClassName ( NH, PChar(S), 255 );
 GetWindowText ( NH, PChar(S1), 100 );
 While (NH <> EH) Do
  Begin
   StrCat ( PChar(S), '   ' );
   StrCat ( PChar(S), PChar(S1));
   memo1.Lines.Add ( S );
   NH := GetWindow ( NH, gw_HwndNext );
   GetClassName ( NH, PChar(S), 255 );
   GetWindowText ( NH, PChar(S1), 100 );
  End;
 memo1.Lines.Add ( S );
 edit1.text := inttostr(oh);

end;

end.
