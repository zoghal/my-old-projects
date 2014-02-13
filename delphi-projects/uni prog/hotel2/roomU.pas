unit roomU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Grids, DBGrids, Buttons;

type
  TRoomForm = class(TForm)
    ADODataSet1: TADODataSet;
    ADODataSet2: TADODataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RoomForm: TRoomForm;
  temp : Integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TRoomForm.SpeedButton1Click(Sender: TObject);
begin
Edit1.Text :='';
Edit2.Text :='';
end;

procedure TRoomForm.SpeedButton2Click(Sender: TObject);
begin
  if  ADODataSet2.Locate('room_num;hotel_id',VarArrayOf([Edit1.Text,DBLookupComboBox1.KeyValue]),[]) then
     ShowMessage('ﬁ»·« «Ì‰ « «ﬁ À»  ‘œÂ')
  else
  begin
  MainForm.ADOCommand1.CommandText := 'insert into room (hotel_id,room_num,price) values (:p1,:p2,:p3)';
  MainForm.ADOCommand1.Parameters[0].Value := DBLookupComboBox1.KeyValue;
   MainForm.ADOCommand1.Parameters[1].Value := Edit1.Text;
  MainForm.ADOCommand1.Parameters[2].Value := Edit2.Text;
  MainForm.ADOCommand1.Execute;

  ADODataSet2.Close;
  ADODataSet2.Open;
  end;
end;

procedure TRoomForm.SpeedButton4Click(Sender: TObject);
begin
  MainForm.ADOCommand1.CommandText := 'delete from room where room_num=:p1';
  MainForm.ADOCommand1.Parameters[0].Value := ADODataSet2.FieldValues['room_num'];
  MainForm.ADOCommand1.Execute;
  ADODataSet2.Close;
  ADODataSet2.Open;
end;

procedure TRoomForm.DBGrid1CellClick(Column: TColumn);
begin
   Edit1.Text := ADODataSet2.FieldValues['room_num'];
   Edit2.Text := ADODataSet2.FieldValues['price'];
   temp := ADODataSet2.FieldValues['roomcode'];
end;

procedure TRoomForm.SpeedButton3Click(Sender: TObject);
begin
 MainForm.ADOCommand1.CommandText := 'update room set room_num=:p1,price=:p2 where roomcode=:p3';
  MainForm.ADOCommand1.Parameters[0].Value := Edit1.Text;
  MainForm.ADOCommand1.Parameters[1].Value := Edit2.Text;
  MainForm.ADOCommand1.Parameters[2].Value :=  IntToStr(temp);
  MainForm.ADOCommand1.Execute;

  ADODataSet2.Close;
  ADODataSet2.Open;
end;

procedure TRoomForm.SpeedButton5Click(Sender: TObject);
begin
  RoomForm.Close;
end;

end.
