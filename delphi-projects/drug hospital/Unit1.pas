unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, DB, DBTables, Grids, DBGrids, StdCtrls,
  CheckLst, ValEdit, ComCtrls;

type
  TMainForm = class(TForm)
    MainMenu2: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    BimarTable: TTable;
    BimarDataSource: TDataSource;
    DrugTable: TTable;
    DrugDataSource: TDataSource;
    TableTable: TTable;
    TableDataSource: TDataSource;
    DrugTableCode: TAutoIncField;
    DrugTableName: TStringField;
    DrugTableUSE: TFloatField;
    BimarTableCode: TAutoIncField;
    BimarTableName: TStringField;
    BimarTableFamili: TStringField;
    BimarTableID: TFloatField;
    BimarTableAddres: TStringField;
    BimarTableCode_meli: TStringField;
    BimarTableFather_n: TStringField;
    BimarTableRoom: TFloatField;
    BimarTableTakht: TFloatField;
    Timer1: TTimer;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid4: TDBGrid;
    TableTableCodeb: TFloatField;
    TableTableCoded: TFloatField;
    TableTableLasttimeUse: TTimeField;
    TableTableOk: TBooleanField;
    Query1Code: TIntegerField;
    Query1Name: TStringField;
    Query1Famili: TStringField;
    Query1ID: TFloatField;
    Query1Addres: TStringField;
    Query1Code_meli: TStringField;
    Query1Father_n: TStringField;
    Query1Room: TFloatField;
    Query1Takht: TFloatField;
    Query1Code_1: TIntegerField;
    Query1Name_1: TStringField;
    Query1USE: TFloatField;
    Query1Codeb: TFloatField;
    Query1Coded: TFloatField;
    Query1LasttimeUse: TTimeField;
    Query1Ok: TBooleanField;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Insert_bimarY, insertDeug, tabledrug, edit_bimar, edit_drug,
  list_table;

{$R *.dfm}

procedure TMainForm.N4Click(Sender: TObject);
begin
 BimarTable.Insert;
 insert_b.ShowModal;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
 DrugTable.Insert;
 insertdrug.ShowModal;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
     tableform.ShowModal;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var Parm1 :String;
 okDrug : Boolean;
begin
 okDrug := False;
 if TableTable.FindField('lasttimeuse').AsString = timetostr(time) then
 Begin
  TableTable.Edit;
  TableTableOk.AsBoolean := True;
  TableTableLasttimeUse.AsDateTime :=  time+ StrToTime(DrugTableUSE.AsString);
  okDrug := True;
  TableTable.Post;
 end;
if okDrug = True  then
Begin
 Query1.Active:= False;
 Query1.SQL.Clear;
 parm1 := 'select * from bimar,drug,tempt  where tempt.ok= '+#39+'t'#39+ ' and tempt.Codeb = bimar.Code and tempt.coded=drug.code';
 Query1.SQL.Add(parm1);
 Query1.Active := True;
End;

end;

procedure TMainForm.N7Click(Sender: TObject);
begin
 editbimar.ShowModal;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
 editdrug.ShowModal;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  listtable.ShowModal;
end;
end.
