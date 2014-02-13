unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB, StdCtrls;

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
    Label4: TLabel;
    Label3: TLabel;
    SpeedButton9: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses roomU, hotelU, mosaferU, takhfifU, ServiceU, fatctorU, littTakhfifU,
  ChartU;



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
  FactorForm.ADODataSet2.Close;
  FactorForm.ADODataSet2.Open;
  factorform.ShowModal;
end;

procedure TMainForm.SpeedButton8Click(Sender: TObject);
begin
  listtakhfifForm.ShowModal;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  MainForm.Close
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
 chartForm.ShowModal;
end;

end.
