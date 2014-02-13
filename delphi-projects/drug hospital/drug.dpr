program drug;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Insert_bimarY in 'Insert_bimarY.pas' {Insert_b},
  insertDeug in 'insertDeug.pas' {insertDrug},
  tabledrug in 'tabledrug.pas' {TableForm},
  edit_bimar in 'edit_bimar.pas' {editbimar},
  edit_drug in 'edit_drug.pas' {editdrug},
  list_table in 'list_table.pas' {listtable};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInsert_b, Insert_b);
  Application.CreateForm(TinsertDrug, insertDrug);
  Application.CreateForm(TTableForm, TableForm);
  Application.CreateForm(Teditbimar, editbimar);
  Application.CreateForm(Teditdrug, editdrug);
  Application.CreateForm(Tlisttable, listtable);
  Application.Run;
end.
