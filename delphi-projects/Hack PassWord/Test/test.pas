unit test;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  Tmss = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mss: Tmss;
  OH,cH,eh : hwnd;
  NameH     : STring;
  ClassN,
  s : String;

implementation

{$R *.dfm}

procedure Tmss.Button1Click(Sender: TObject);
begin
 SetLength( NameH,255);
 SetLength(ClassN,255);
 OH := FindWindow('#32770','Connect To');
// OH := FindWindow('TForm1','Form1');
  AttachThreadInput ( GetWindowThreadProcessId(oh,nil),
                     GetWindowThreadProcessId( mss.Handle,nil),
                     True );
 Edit2.Text := Inttostr(OH);
 GetWindowText(oh,Pchar(NameH),255);
 Edit1.Text := NameH;
 ch := GetWindow(oh,GW_CHILD);
 Eh := GetWindow(ch,GW_HWNDLAST);
 GetWindowText(ch,Pchar(NameH),255);
 GetClassName (ch,Pchar(ClassN),255);
 WHile Ch <> Eh DO
 Begin
  StrCat(Pchar (ClassN),'    ');
  StrCat(Pchar(ClassN),Pchar(NameH));
  Memo1.Lines.Add(ClassN);
  ch := GetWindow(ch,GW_hwndNExt);
  GetWindowText(ch,Pchar(NameH),255);
  GetClassName (ch,Pchar(ClassN),255);
 End;
// *********
end;

procedure Tmss.Button2Click(Sender: TObject);
begin
 Memo1.Clear;
end;

end.
