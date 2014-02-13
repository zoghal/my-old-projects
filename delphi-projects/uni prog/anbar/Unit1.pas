unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBTables, Buttons;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    input1: TMenuItem;
    Output1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1tedad: TFloatField;
    Query1geymat: TFloatField;
    Query1code: TFloatField;
    Query1name: TStringField;
    SpeedButton1: TSpeedButton;
    Table1: TTable;
    DataSource2: TDataSource;
    SpeedButton2: TSpeedButton;
    procedure input1Click(Sender: TObject);
    procedure Output1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.input1Click(Sender: TObject);
begin
  Form2.Table1.Insert;
 form2.ShowModal
end;

procedure TForm1.Output1Click(Sender: TObject);
begin
 Form3.Table1.Insert;
 form3.ShowModal;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
   SpeedButton1.Click();
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 if Edit1.Text ='' then
 BEgin
 Query1.Active := faLse;
 Query1.SQL.Clear;
 Query1.SQL.Add('select anbar.tedad,anbar.geymat,anbar.code,jens.name from anbar,jens where anbar.code=jens.code');
 Query1.Active := True;
 End;
 BEgin
 Query1.Active := faLse;
 Query1.SQL.Clear;
 Query1.SQL.Add('select anbar.tedad,anbar.geymat,anbar.code,jens.name from anbar,jens '+
                'where anbar.code=jens.code  and anbar.code ='+#39+Edit1.Text+#39);
 Query1.Active :=True;
 end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
 if Edit2.Text ='' then
 BEgin
 Query1.Active := faLse;
 Query1.SQL.Clear;
 Query1.SQL.Add('select anbar.tedad,anbar.geymat,anbar.code,jens.name from anbar,jens where anbar.code=jens.code');
 Query1.Active := True;
 End;
 BEgin
 Query1.Active := faLse;
 Query1.SQL.Clear;
 Query1.SQL.Add('select anbar.tedad,anbar.geymat,anbar.code,jens.name from anbar,jens '+
                'where anbar.code=jens.code  and jens.name like'+#39+Edit2.Text+'%'+#39);
 Query1.Active :=True;
 end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  form5.close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   form5.close;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form3.Table1.Edit;
 form3.ShowModal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

end.
