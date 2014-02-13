unit loginU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TloginF = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loginF: TloginF;

implementation

uses mainU;

{$R *.dfm}

procedure TloginF.BitBtn3Click(Sender: TObject);
begin
loginf.Close;
end;

procedure TloginF.BitBtn2Click(Sender: TObject);
begin
  If (Edit1.Text ='user') and (Edit2.Text ='pass') then
  begin
    loginF.Hide;
     mainform.ShowModal;
  end
  else ShowMessage('‰«„ ò«—»—Ì «‘ »«Â „Ì »«‘œ');
end;

end.
