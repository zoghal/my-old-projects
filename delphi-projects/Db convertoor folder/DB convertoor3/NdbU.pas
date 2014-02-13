unit NdbU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TndbForm = class(TForm)
    NDBEdit: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure NDBEditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ndbForm: TndbForm;
  nameFileOk : Boolean;
implementation

uses mainU, Math, StdConvs;

{$R *.dfm}

procedure TndbForm.BitBtn1Click(Sender: TObject);
begin
 If NDBEdit.Text = '' Then
  Begin
   ShowMessage('‰«„Ì »—«Ì ÃœÊ· ÃœÌœ Ê«—œ ‰‘œÂ');
   NDBEdit.SetFocus;
  end
 Else
  Begin
   ndb := NDBEdit.Text;
   nameFileOk := True;
   ndbForm.Close;

  End;
end;

procedure TndbForm.NDBEditKeyPress(Sender: TObject; var Key: Char);
begin
 If key =#13 then BitBtn1.Click;
end;

end.
