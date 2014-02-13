unit insertDeug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TinsertDrug = class(TForm)
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  insertDrug: TinsertDrug;

implementation

uses Unit1;

{$R *.dfm}

procedure TinsertDrug.BitBtn2Click(Sender: TObject);
begin
MainForm.DrugTable.Cancel;
end;

procedure TinsertDrug.BitBtn1Click(Sender: TObject);
begin
 MainForm.DrugTable.Post;
end;

end.
