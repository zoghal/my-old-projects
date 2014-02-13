unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, effects, ExtCtrls, VCLBase, EPButtons, mediabtn, MediaLib, BmpCtrls,
  StdCtrls, BoxCtrls, AniCtrls, EPCtrls, EPLabels;

type
  TForm1 = class(TForm)
    epEfButton1: TepEfButton;
    Image1: TImage;
    epEfButton2: TepEfButton;
    epMediaBevel1: TepMediaBevel;
    epBMPRadioButton1: TepBMPRadioButton;
    epBMPRadioButton2: TepBMPRadioButton;
    epBMPRadioButton3: TepBMPRadioButton;
    epBMPRadioButton4: TepBMPRadioButton;
    epBMPRadioButton5: TepBMPRadioButton;
    epBMPRadioButton6: TepBMPRadioButton;
    epBMPRadioButton7: TepBMPRadioButton;
    epBMPRadioButton9: TepBMPRadioButton;
    epMoveForm1: TepMoveForm;
    s: TepRunPanel;
    epLabel1: TepLabel;
    procedure epEfButton2Click(Sender: TObject);
    procedure epEfButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.DFM}

procedure TForm1.epEfButton2Click(Sender: TObject);
begin
 Form1.Close;
end;

procedure TForm1.epEfButton1Click(Sender: TObject);
begin
 if epBMPRAdioButton1.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'History.htm');
   Form3.Show;
  End;
 if epBMPRAdioButton2.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'DECORE.htm');
   Form3.Show;
  End;

 if epBMPRAdioButton3.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'L_series.htm');
   Form3.Show;
  End;

 if epBMPRAdioButton4.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'Decore.htm');
   Form3.Show;
  End;

 if epBMPRAdioButton5.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'Sabad.htm');
   Form3.Show;
  End;

 if epBMPRAdioButton6.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'Sotoon.htm');
   Form3.Show;
  End;

 if epBMPRAdioButton7.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'Zarf.htm');
   Form3.Show;
  End;


  if epBMPRAdioButton9.Checked Then
  Begin
   form3.WebBrowser1.Navigate( ExtractFilePath ( ParamStr ( 0 ) )  + 'Payehgol.htm');
   Form3.Show;
  End;


end;

end.
