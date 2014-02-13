program hotel;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  hotelU in 'hotelU.pas' {HotelForm},
  roomU in 'roomU.pas' {RoomForm},
  mosaferU in 'mosaferU.pas' {MosaferForm},
  ServiceU in 'ServiceU.pas' {ServicForm},
  takhfifU in 'takhfifU.pas' {takhfifForm},
  fatctorU in 'fatctorU.pas' {FactorForm},
  factorprintU in 'factorprintU.pas' {FactorPrintform},
  littTakhfifU in 'littTakhfifU.pas' {listtakhfifForm},
  Unit2 in 'Unit2.pas' {Form2},
  ChartU in 'ChartU.pas' {chartForm},
  Hotelprintu in 'Hotelprintu.pas' {HotelPrint};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(THotelForm, HotelForm);
  Application.CreateForm(TRoomForm, RoomForm);
  Application.CreateForm(TMosaferForm, MosaferForm);
  Application.CreateForm(TServicForm, ServicForm);
  Application.CreateForm(TtakhfifForm, takhfifForm);
  Application.CreateForm(TFactorForm, FactorForm);
  Application.CreateForm(TFactorPrintform, FactorPrintform);
  Application.CreateForm(TlisttakhfifForm, listtakhfifForm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TchartForm, chartForm);
  Application.CreateForm(THotelPrint, HotelPrint);
  Application.Run;
end.
