unit mainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, Menus, ComCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    memo1: TMemo;
    memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    Table1: TTable;
    Table1Emil: TStringField;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    OpenFile1: TMenuItem;
    Exit1: TMenuItem;
    process1: TMenuItem;
    Start1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure OpenFile1Click(Sender: TObject);
    procedure Start1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Filename : String;
  path : String;

implementation

uses Math, aboutu;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  Begin
   Filename := OpenDialog1.FileName;
  End;
end;



procedure TForm1.Button2Click(Sender: TObject);
var
  fp : TextFile;
  ch : Char;
  eemil : String;
  i :   Integer;
  imp , exp : Integer;
begin
  AssignFile(fp,Filename);
  Reset(fp);
  imp :=0;
  exp:= 0;
  Table1.TableName := path+'/emil.db';
  Table1.EmptyTable;
  while not Eof(fp) do
  Begin
    Read(fp,ch);
     if ch in ['a'..'z','A'..'Z','0'..'9','@','_','.'] then
       eemil := eemil + ch
     Else
      if ch =',' then
       Begin
       imp := imp +1;
       Table1.Active := True;
       if not Table1.FindKey([eemil]) then
       Begin
        Table1.Insert;
          Table1Emil.AsString := eemil;
          Table1.Post;
       End ;
       Table1.Active := False;
       eemil :='';
       End;
  end;
  Table1.Active := True;
  Table1.First;
  exp := Table1.RecordCount;
;
  for i:= 1 To Table1.RecordCount -1 do
   Begin
      if StrPos(pchar(LowerCase (Table1Emil.asstring)),'@yahoo.com') <> nil then memo2.Lines.Add((Table1Emil.AsString)) else
      if StrPos(pchar(LowerCase (Table1Emil.asstring)),'@gmail.com') <> nil then memo1.Lines.Add(Table1Emil.AsString) else
      if StrPos(pchar(LowerCase (Table1Emil.asstring)),'@hotmail.com') <> nil then memo3.Lines.Add(Table1Emil.AsString) else
       Memo4.Lines.Add(LowerCase (Table1Emil.AsString));
    Table1.Next;
   end;
  Table1.Active := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
memo1.Lines.SaveToFile('gmail list.txt');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
memo2.Lines.SaveToFile('yahoo list.txt');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
memo3.Lines.SaveToFile('msn list.txt');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
memo4.Lines.SaveToFile('other list.txt');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
GetDir(0,path);

end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  Begin
   Filename := OpenDialog1.FileName;
   memo1.Clear;
   memo2.Clear;
   memo3.Clear;
   memo4.Clear;
   StatusBar1.Panels[0].Text := 'Import : ';
   StatusBar1.Panels[1].Text := 'Import : ';
  End;
end;

procedure TForm1.Start1Click(Sender: TObject);
var
  fp : TextFile;
  ch : Char;
  eemil : String;
  i :   Integer;
  imp , exp : Integer;
begin
  AssignFile(fp,Filename);
  Reset(fp);
  imp :=0;
  exp:= 0;
  Table1.TableName := path+'/emil.db';
  Table1.EmptyTable;
  while not Eof(fp) do
  Begin
    Read(fp,ch);
     if ch in ['a'..'z','A'..'Z','0'..'9','@','_','.'] then
       eemil := eemil + ch
     Else
      if ch =',' then
       Begin
       imp := imp +1;
       Table1.Active := True;
       if not Table1.FindKey([eemil]) then
       Begin
        Table1.Insert;
          Table1Emil.AsString := eemil;
          Table1.Post;
       End ;
       Table1.Active := False;
       eemil :='';
       End;
  end;
  Table1.Active := True;
  Table1.First;
  exp := Table1.RecordCount;
  StatusBar1.Panels[0].Text :=   StatusBar1.Panels[0].Text+inttostr(imp);
  StatusBar1.Panels[1].Text :=   StatusBar1.Panels[1].Text+inttostr(exp);

  for i:= 1 To Table1.RecordCount -1 do
   Begin
      if StrPos(pchar(LowerCase (Table1Emil.asstring)),'@yahoo.com') <> nil then memo2.Lines.Add(Table1Emil.AsString) else
      if StrPos(pchar(LowerCase (Table1Emil.asstring)),'@gmail.com') <> nil then memo1.Lines.Add(Table1Emil.AsString) else
      if StrPos(pchar(LowerCase (Table1Emil.asstring)),'@hotmail.com') <> nil then memo3.Lines.Add(Table1Emil.AsString) else
       Memo4.Lines.Add(LowerCase (Table1Emil.AsString));
    Table1.Next;
   end;
  Table1.Active := False;

end;

procedure TForm1.About1Click(Sender: TObject);
begin
 aboutbox.ShowModal;
end;

end.
