program dbc1;

uses
  Forms,
  mainU in 'mainU.pas' {Mainform},
  pathsqlU in 'pathsqlU.pas' {pathsql},
  NdbU in 'NdbU.pas' {ndbForm},
  SeletFieldU in 'SeletFieldU.pas' {SelectForm},
  ShowNTF in 'ShowNTF.pas' {ShowNTForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainform, Mainform);
  Application.CreateForm(Tpathsql, pathsql);
  Application.CreateForm(TndbForm, ndbForm);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.CreateForm(TShowNTForm, ShowNTForm);
  Application.Run;
end.
