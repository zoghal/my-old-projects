unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, DBTables, Mask;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Table1: TTable;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin

Table1.Post;
Form1.Query1.Active := false;
Form1.Query1.Active := true;
Form3.Close;

end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
 Table1.Cancel;
 Form3.Close;
end;

end.
