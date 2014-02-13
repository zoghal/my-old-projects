program convDBF2SQL;

uses
  Forms,
  mainU in 'mainU.pas' {Form1},
  Adate in 'ADATE.PAS';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
