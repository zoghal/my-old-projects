unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
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
 OH, NH : Hwnd;
 S      : String;
begin
 SetLength ( S, 255 );
 edit2.Text := inttostr(edit4.Handle);
 OH := FindWindow ( 'TForm1', 'Form1' );
 NH := GetWindow ( OH, gw_Child );
 While NH <> edit4.Handle Do
  NH := GetWindow ( NH, gw_HwndNext );
 edit1.text := inttostr(NH);
 GetWindowText ( NH, PChar(S), 255 );
 edit3.Text := S;
end;

end.
