unit Main_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, ExtCtrls, StdCtrls,Mask, DBCtrls;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Send_u, List_Total_Send, list_S_r_u, list_Sestem_u, about;

{$R *.DFM}

procedure TMainForm.FormShow(Sender: TObject);
begin
 TileMode := Tbvertical;
 Tile;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Height :=488;
  MainForm.Width :=  934;
  ActivateKeyboardLayout(HkL_Next,KLf_Reorder);
End;
procedure TMainForm.N11Click(Sender: TObject);
begin
 Cascade;
end;

procedure TMainForm.N12Click(Sender: TObject);
begin
 TileMode := Tbvertical;
 Tile;
end;

procedure TMainForm.N13Click(Sender: TObject);
begin
 TileMode := Tbhorizontal;
 Tile;
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
 Listsend.SendTable1.Filtered := False;
 list_total.ShowModal;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
 if Listsend.Active Then
   Listsend.DBGrid1.PopupMenu.Items.Items[0].Click;
end;

procedure TMainForm.N15Click(Sender: TObject);
begin
 AboutBox.ShowModal;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
 if Listsend.Active Then
   Listsend.DBGrid1.PopupMenu.Items.Items[1].Click;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
 MainForm.Close;
end;

procedure TMainForm.N16Click(Sender: TObject);
begin
 If List_system.Active then
    Listsend.Show
 Else
    List_system.show;
end;

end.
