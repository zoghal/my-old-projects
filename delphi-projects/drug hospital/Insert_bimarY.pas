unit Insert_bimarY;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TInsert_b = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
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
  Insert_b: TInsert_b;

implementation

uses Unit1;

{$R *.dfm}



procedure TInsert_b.BitBtn2Click(Sender: TObject);
begin
 MainForm.BimarTable.Cancel;
end;

procedure TInsert_b.BitBtn1Click(Sender: TObject);
begin
 MainForm.BimarTable.Post
end;

end.
