unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, VCFI, StdCtrls, ComCtrls, ExtCtrls, Gauges;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge4: TGauge;
    Gauge5: TGauge;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
   MainA    : Array [1..5,1..2] Of Byte;

   x,y,t,T1 : Byte;

begin
 For T := 1 To 5 Do
  mAINa[T,2] := T;
 Maina[1,1] := StrToInt( Edit1.Text );
 Maina[2,1] := StrToInt( Edit2.Text );
 Maina[3,1] := StrToInt( Edit3.Text );
 Maina[4,1] := StrToInt( Edit4.Text );
 Maina[5,1] := StrToInt( Edit5.Text );
  For x := 1 To 5 Do
   For y := 1 To 5 Do
    If mainA[y,1] > MAinA [y+1,1] Then
    Begin
      T := mainA[y,1];
      T1 := MainA[y,2];
      MainA[y,1]:= MainA[y+1,1];
      MainA[y,2]:= MainA[y+1,2];
      MainA[y+1,1] := T;
      MainA[y+1,2] := T1;
    End;
 Label6.Caption := Label6.Caption +' '+ IntToStr(Maina[1,2]);
 Gauge1.Progress := 100;
 Sleep(200);
 Label7.Caption := Label7.Caption +' '+ IntToStr(Maina[2,2]);
 Gauge2.Progress := 100;
 Sleep(200);
 Label8.Caption := Label8.Caption +' '+ IntToStr(Maina[3,2]);
 Gauge3.Progress := 100;
 Sleep(200);
 Label9.Caption := Label9.Caption +' '+ IntToStr(Maina[4,2]);
 Gauge4.Progress := 100;
 Sleep(200);
 Label10.Caption := Label10.Caption +' '+ IntToStr(Maina[5,2]);
 Gauge5.Progress := 100;
End;

procedure TForm1.Button2Click(Sender: TObject);
begin
 label6.Caption := 'Number';
 Label7.Caption := 'Number';
 Label8.Caption := 'Number';
 Label9.Caption := 'Number';
 Label10.Caption := 'Number';
 Edit1.Text := '0';
 Edit2.Text := '0';
 Edit3.Text := '0';
 Edit4.Text := '0';
 Edit5.Text := '0';
 Gauge1.Progress := 0 ;
 Gauge2.Progress := 0 ;
 Gauge3.Progress := 0 ;
 Gauge4.Progress := 0 ;
 Gauge5.Progress := 0 ;
end;

end.
