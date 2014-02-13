unit takhfifU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TtakhfifForm = class(TForm)
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  
  takhfifForm: TtakhfifForm;
implementation

uses Unit1, DateUtils;

{$R *.dfm}

procedure TtakhfifForm.BitBtn1Click(Sender: TObject);
begin
   Edit1.Text := '';
end;

procedure TtakhfifForm.BitBtn2Click(Sender: TObject);
begin
  with MainForm.ADOCommand1 do
  begin
       CommandText := 'insert into servic (mosafer_id,servic,price,odate,types) values(:p1,:p2,:p3,:p4,:p5)';
    Parameters[0].Value := DBLookupComboBox1.KeyValue;
    Parameters[1].Value := ComboBox1.Text;
    Parameters[2].Value :=  StrToInt( Edit1.Text)*-1;
    Parameters[3].Value := DateToStr(now);
    Parameters[4].Value := 1;
    Execute;
  end;
  ADODataSet2.Close;
  ADODataSet2.Open;
end;

procedure TtakhfifForm.BitBtn5Click(Sender: TObject);
begin
   MainForm.ADOCommand1.CommandText := 'delete from servic where code=:p1';
      MainForm.ADOCommand1.Parameters[0].Value := ADODataSet2.FieldValues['code'];
  MainForm.ADOCommand1.Execute;

  ADODataSet2.Close;
  ADODataSet2.Open;
end;

procedure TtakhfifForm.BitBtn3Click(Sender: TObject);
begin
  takhfifForm.Close;
end;

end.
