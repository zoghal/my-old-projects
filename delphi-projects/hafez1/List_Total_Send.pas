unit List_Total_Send;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids;

type
  TList_total = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  List_total: TList_total;

implementation

uses list_S_r_u;

{$R *.DFM}

procedure TList_total.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Listsend.SendTable1.Filtered := True;
end;

procedure TList_total.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #27 Then List_total.Close;
end;

end.
