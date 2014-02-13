program dbc1;

uses
  Forms,
  mainU in 'mainU.pas' {Mainform},
  pathsqlU in 'pathsqlU.pas' {pathsql},
  NdbU in 'NdbU.pas' {ndbForm},
  SeletFieldU in 'SeletFieldU.pas' {SelectForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainform, Mainform);
  Application.CreateForm(Tpathsql, pathsql);
  Application.CreateForm(TndbForm, ndbForm);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.Run;
end.
