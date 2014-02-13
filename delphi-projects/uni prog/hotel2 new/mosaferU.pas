unit mosaferU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TMosaferForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit10: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    DataSource_hotel: TDataSource;
    ADODataSet_hotel: TADODataSet;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    DataSource2: TDataSource;
    ADODataSet2: TADODataSet;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Edit6: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MosaferForm: TMosaferForm;

implementation

uses Unit1, StrUtils;

{$R *.dfm}

procedure TMosaferForm.BitBtn1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit10.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit8.Text:='';
  Edit9.Text :='';
  Edit6.Text := DateToStr( now);
end;

procedure TMosaferForm.BitBtn2Click(Sender: TObject);
begin
  MainForm.ADOCommand1.CommandText := 'insert into mosafer (name,sh,nfather,sadere,tel,addr,total,type,indate,roomid)'+
    '                                         values (:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10)';
   MainForm.ADOCommand1.Parameters[0].Value := Edit2.Text;
   MainForm.ADOCommand1.Parameters[1].Value := Edit3.Text;
   MainForm.ADOCommand1.Parameters[2].Value := Edit4.Text;
   MainForm.ADOCommand1.Parameters[3].Value := Edit5.Text;
   MainForm.ADOCommand1.Parameters[4].Value := Edit8.Text;
   MainForm.ADOCommand1.Parameters[5].Value := Edit9.Text;
   MainForm.ADOCommand1.Parameters[6].Value := Edit10.Text;
   MainForm.ADOCommand1.Parameters[7].Value := ComboBox1.Text;
  MainForm.ADOCommand1.Parameters[8].Value := Edit6.Text;
  MainForm.ADOCommand1.Parameters[9].Value := ADODataSet_hotel.FieldValues['roomcode'];
  MainForm.ADOCommand1.Execute;

  ADODataSet2.Close;
  ADODataSet2.Open;
end;

procedure TMosaferForm.BitBtn5Click(Sender: TObject);
begin
   MainForm.ADOCommand1.CommandText := 'delete from mosafer where codem=:p1';
      MainForm.ADOCommand1.Parameters[0].Value := ADODataSet2.FieldValues['codem'];
  MainForm.ADOCommand1.Execute;

  ADODataSet2.Close;
  ADODataSet2.Open;
end;

procedure TMosaferForm.DBGrid2CellClick(Column: TColumn);
begin
  Edit1.Text := ADODataSet2.FieldValues['codem'];
  Edit2.Text := ADODataSet2.FieldValues['name'];
  Edit3.Text := ADODataSet2.FieldValues['sh'];
  Edit4.Text := ADODataSet2.FieldValues['nfather'];
  Edit5.Text := ADODataSet2.FieldValues['sadere'];
  if ADODataSet2.FieldValues['type'] ='Õ÷Ê—Ì' then
    ComboBox1.ItemIndex := 0
  else
    ComboBox1.ItemIndex := 1;
  Edit8.Text := ADODataSet2.FieldValues['tel'];
  Edit9.Text := ADODataSet2.FieldValues['addr'];
  Edit10.Text := ADODataSet2.FieldValues['total'];
  Edit6.Text := ADODataSet2.FieldValues['indate'];

  ADODataSet_hotel.Locate('roomcode',ADODataSet2.FieldValues['roomid'],[]);
  DBGrid1.SetFocus;
end;

procedure TMosaferForm.BitBtn4Click(Sender: TObject);
begin
   If  Edit1.Text <> ''  then
   begin
    MainForm.ADOCommand1.CommandText := 'update  mosafer set name=:p1,sh=:p2,nfather=:p3,sadere=:p4,tel=:p5,addr=:p6,total=:p7,type=:p8,indate=:p9,roomid=:p10 where codem=:p11';
   MainForm.ADOCommand1.Parameters[0].Value := Edit2.Text;
   MainForm.ADOCommand1.Parameters[1].Value := Edit3.Text;
   MainForm.ADOCommand1.Parameters[2].Value := Edit4.Text;
   MainForm.ADOCommand1.Parameters[3].Value := Edit5.Text;
   MainForm.ADOCommand1.Parameters[4].Value := Edit8.Text;
   MainForm.ADOCommand1.Parameters[5].Value := Edit9.Text;
   MainForm.ADOCommand1.Parameters[6].Value := Edit10.Text;
   MainForm.ADOCommand1.Parameters[7].Value := ComboBox1.Text;
  MainForm.ADOCommand1.Parameters[8].Value := Edit6.Text;
  MainForm.ADOCommand1.Parameters[9].Value := ADODataSet_hotel.FieldValues['roomcode'];
  MainForm.ADOCommand1.Parameters[10].Value := Edit1.Text;
  MainForm.ADOCommand1.Execute;

  ADODataSet2.Close;
  ADODataSet2.Open;
   end;

end;

procedure TMosaferForm.BitBtn3Click(Sender: TObject);
begin
  MosaferForm.Close;
end;

end.
