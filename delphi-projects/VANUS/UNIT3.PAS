unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OleCtrls, SHDocVw, HTTPApp, StdCtrls, WEBVWLib_TLB, Buttons, ComCtrls,
  ToolWin, VCLBase, AniCtrls;

type
  TForm3 = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.DFM}

procedure TForm3.Button1Click(Sender: TObject);
begin
 WebBrowser1.Navigate('I:\PROGRAM\Video.htm');
end;

end.
