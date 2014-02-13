program w2d;

uses
  Forms,
  w2dU in 'w2dU.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
