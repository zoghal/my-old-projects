unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Table1: TTable;
    Edit1: TEdit;
    Table1Code: TFloatField;
    Table1Tedad: TFloatField;
    Table1Geymat: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
var
  code,tedad,geymat,t : Integer;
begin
   code := FORM1.Query1.FieldByName('code').AsInteger;
   tedad := FORM1.Query1.FieldByName('tedad').AsInteger;
   if tedad <> 0 then
     if Table1.FindKey([code]) then
      BEgin
      Table1.Edit;
      t := Table1.FieldByName('tedad').AsInteger - StrToInt( Edit1.text);
      Table1.FieldByName('tedad').Value := t;
      Table1.Post;
      Form1.Query1.Active := False;
      Form1.Query1.Active := True;
      Form4.Close;
      End;
   Begin
   End
end;

end.
