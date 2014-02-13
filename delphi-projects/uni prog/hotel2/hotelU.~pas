unit hotelU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  THotelForm = class(TForm)
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Edit4: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    Edit5: TEdit;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HotelForm: THotelForm;

implementation

uses Unit1, Math;

{$R *.dfm}

procedure THotelForm.SpeedButton1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  
end;

procedure THotelForm.SpeedButton2Click(Sender: TObject);
begin
  MainForm.ADOCommand1.CommandText := 'insert into hotel (name,star,city) values (:p1,:p2,:p3)';
  MainForm.ADOCommand1.Parameters[0].Value := Edit1.Text;
   MainForm.ADOCommand1.Parameters[1].Value := Edit3.Text;
  MainForm.ADOCommand1.Parameters[2].Value := Edit2.Text;
  MainForm.ADOCommand1.Execute;

  ADODataSet1.Close;
  ADODataSet1.Open;
end;

procedure THotelForm.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := ADODataSet1.FieldValues['name'];
  Edit2.Text := ADODataSet1.FieldValues['city'];
  Edit3.Text := ADODataSet1.FieldValues['star'];
  Edit4.Text := ADODataSet1.FieldValues['id'];
end;

procedure THotelForm.SpeedButton3Click(Sender: TObject);
begin
 if Edit4.Text <> '' then
 begin
  MainForm.ADOCommand1.CommandText := 'update hotel  set name=:p1,star=:p2,city=:p3 where id=:p4';
  MainForm.ADOCommand1.Parameters[0].Value := Edit1.Text;
  MainForm.ADOCommand1.Parameters[1].Value := Edit3.Text;
  MainForm.ADOCommand1.Parameters[2].Value := Edit2.Text;
  MainForm.ADOCommand1.Parameters[3].Value := Edit4.Text;
  MainForm.ADOCommand1.Execute;
  ADODataSet1.Close;
  ADODataSet1.Open;
 end;
end;

procedure THotelForm.SpeedButton4Click(Sender: TObject);
begin
    MainForm.ADOCommand1.CommandText := 'delete from hotel where id=:p1 ';
  MainForm.ADOCommand1.Parameters[0].Value := ADODataSet1.FieldValues['id'];
  MainForm.ADOCommand1.Execute;
  ADODataSet1.Close;
  ADODataSet1.Open;
end;

procedure THotelForm.SpeedButton5Click(Sender: TObject);
begin
  HotelForm.Close;
end;

procedure THotelForm.SpeedButton6Click(Sender: TObject);
begin
  If NOT ADODataSet1.Locate('name',Edit5.Text,[]) then
    ShowMessage('ÅÌœ« ‰‘œ')
  else
    DBGrid1.SetFocus;
end;

end.
