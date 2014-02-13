unit list_table;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables;

type
  Tlisttable = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listtable: Tlisttable;

implementation


{$R *.dfm}

end.
