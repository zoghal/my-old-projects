unit tabledrug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, Menus, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, Mask;

type
  TTableForm = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    procedure N1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TableForm: TTableForm;

implementation

uses Unit1, Math;


{$R *.dfm}

procedure TTableForm.N1Click(Sender: TObject);
var XX : Integer;
begin

 DBGrid1.Enabled := False;
 MainForm.DrugTable.First;
 ComboBox1.Items.Clear;
 For xx := 1 to MainForm.DrugTable.RecordCount do
  Begin
   MainForm.DrugTable.RecNo := xx;
   ComboBox1.Items.Add(MainForm.DrugTableName.AsString);
  end;
  ComboBox1.Text:='';
  MaskEdit1.Text:='';
 Panel1.Visible := True;
end;

procedure TTableForm.BitBtn2Click(Sender: TObject);
begin
  DBGrid1.Enabled := True;
 Panel1.Visible := False;
end;

procedure TTableForm.BitBtn1Click(Sender: TObject);
var xx : Integer;
begin
 MainForm.TableTable.Insert;
 If ComboBox1.Text='' then ShowMessage('œ«—ÊÌÌ «‰ Œ«» ‰‘œÂ')
 else
  for xx := 0 to MainForm.DrugTable.RecordCount do
  Begin
   MainForm.DrugTable.RecNo := xx;
   if MainForm.DrugTable.FindField('name').AsString =trim(ComboBox1.Text) then
   begin
   MainForm.TableTableCoded.AsInteger := MainForm.DrugTableCode.AsInteger;
   Break;
   end
  End;
  MainForm.TableTableCodeb.AsInteger := MainForm.BimarTableCode.AsInteger;
  MainForm.TableTableLasttimeUse.AsString:= MaskEdit1.Text;
  MainForm.TableTable.Post;
  DBGrid1.Enabled := True;
  Panel1.Visible := False;

end;

end.
