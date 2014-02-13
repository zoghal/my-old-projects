program emil;

uses
  Forms,
  mainU in 'mainU.pas' {Form1},
  aboutu in 'aboutu.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
