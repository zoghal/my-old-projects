unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB;

type
  TMainForm = class(TForm)
    SpeedButton1: TSpeedButton;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses hotelU, roomU, mosaferU, ServiceU, takhfifU, fatctorU, littTakhfifU;

{$R *.dfm}

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
 RoomForm.ADODataSet1.Active := False;
 RoomForm.ADODataSet2.Active := False;

 RoomForm.ADODataSet1.Active := True;
 RoomForm.ADODataSet2.Active := True;
  roomform.ShowModal;

end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  HotelForm.ADODataSet1.Active :=False;
  HotelForm.ADODataSet1.Active := True;
  hotelform.ShowModal;

end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
 MosaferForm.ADODataSet2.Active := False;
 MosaferForm.ADODataSet_hotel.Active := False;
 MosaferForm.ADODataSet2.Active := True;
 MosaferForm.ADODataSet_hotel.Active := True;
 mosaferform.ShowModal;
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
 takhfifForm.ADODataSet1.Active := False;
 takhfifForm.ADODataSet2.Active := False;

 takhfifForm.ADODataSet1.Active := True;
 takhfifForm.ADODataSet2.Active := True;
  takhfifForm.ShowModal;
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
 ServicForm.ADODataSet1.Active := False;
 ServicForm.ADODataSet2.Active := False;

 ServicForm.ADODataSet1.Active := True;
 ServicForm.ADODataSet2.Active := True;
  ServicForm.ShowModal;
end;

procedure TMainForm.SpeedButton7Click(Sender: TObject);
begin

  factorform.ShowModal;
end;

procedure TMainForm.SpeedButton8Click(Sender: TObject);
begin
  listtakhfifForm.ShowModal;
end;

end.
