unit list_Sestem_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, Menus;

type
  TList_system = class(TForm)
    DataSource1: TDataSource;
    ListSystemPopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGrid1: TDBGrid;
    SystemTable1: TTable;
    SystemTable1Type: TStringField;
    SystemTable1Note: TStringField;
    SystemTable1Tbacked: TStringField;
    SystemTable1Backed: TBooleanField;
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SystemTable1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  List_system: TList_system;

implementation

uses system_u, list_S_r_u;



{$R *.DFM}

procedure TList_system.N1Click(Sender: TObject);
begin
 SystemTable1.Append;
 SystemForm.ShowModal;

end;

procedure TList_system.N3Click(Sender: TObject);
begin
 SystemTable1.Edit;
 SystemForm.ShowModal;
end;

procedure TList_system.N2Click(Sender: TObject);
begin
  if MessageDlg( '¬Ì« Ê«ﬁ⁄«‰ „ÌùŒÊ«ÂÌœ ”Ì” „ Õ–› ‘Êœ',mtWarning,[mbYes,mbno],0)= MrYes Then
   SystemTable1.Delete;

end;

procedure TList_system.SystemTable1CalcFields(DataSet: TDataSet);
begin
 if SystemTable1Backed.AsBoolean Then
    SystemTable1Tbacked.Value :='œ«œÂ ‘œÂ'
 ElSE
    SystemTable1Tbacked.Value :='œ«œÂ ‰‘œÂ';
end;

procedure TList_system.FormCreate(Sender: TObject);
begin
  list_system.SystemTable1.Active := False;
  list_system.SystemTable1.TableName := ExtractFilePath ( ParamStr ( 0 ) )  +
                        'System.DB';
  list_system.SystemTable1.Active := True;
end;

end.
