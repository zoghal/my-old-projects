program dbc;

uses
  Forms,
  mainU in 'mainU.pas' {Mainform},
  pathsqlU in 'pathsqlU.pas' {pathsql};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainform, Mainform);
  Application.CreateForm(Tpathsql, pathsql);
  Application.Run;
end.
