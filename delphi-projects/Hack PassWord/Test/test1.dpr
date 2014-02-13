program test1;

uses
  Forms,
  test in 'test.pas' {mss};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmss, mss);
  Application.Run;
end.
