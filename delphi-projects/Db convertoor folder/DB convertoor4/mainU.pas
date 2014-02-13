unit mainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, DBTables, ADODB, Menus,
  ExtCtrls, ComCtrls;

type
  TMainform = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    Table2: TTable;
    DataSource2: TDataSource;
    OpenDialog1: TOpenDialog;
    DataSource3: TDataSource;
    Table3: TTable;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    SaveDialog1: TSaveDialog;
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
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Label2: TLabel;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Const
  DBParodox : array [1..4] of string =('TStringField','TDateField','TFloatField','TSmallintField');
  DBSql     : array [1..4] of string =('NvarChar','NvarChar','float','Int');
  No=68;
  CodeWin : array[1..No] of Byte = (194,199,199,200,200,129,129,202,202,203,203,
                                    204,204,141,141,205,205,206,206,207,208,209,
                                    210,142,211,211,212,212,213,213,214,214,216,
                                    217,218,218,218,218,219,219,219,219,221,222,
                                    222,223,144,225,225,225,227,227,228,228,230,
                                    0229,0229,0229,0229,237,237,237,237,ord('ù'),198,ord('ù'),32,32);

  CodeDos : array[1..No] of byte = (137,139,140,146,147,148,149,150,151,152,153,
                                    154,155,156,157,158,159,161,162,163,164,165,
                                    166,167,168,169,170,171,172,173,174,175,224,
                                    225,226,227,228,229,230,231,232,233,234,235,
                                    236,237,238,239,240,241,242,243,244,245,246,
                                    247,248,249,250,251,252,253,254,160,145,144,041,042);
var
  space,
  addChar : boolean;
  Mainform: TMainform;
  connectionStringSql : AnsiString ;
  ndb : string[30];
implementation

uses pathsqlU, StrUtils, Math, ConvUtils, NdbU, SeletFieldU, Unit1;

{$R *.dfm}
{------------------------------------------------------------------------------}
Function Dos2Win (Ch : Char):Char;
Var
 II :  Byte;
Begin

   if ord(ch) in [144,160,248,248,244,251,252,242] then space := True;
   if ord(ch) =240 then addChar := True;
  For II:= 1 To No Do
   If Ord(ch) = CodeDos[II] then
    Begin
     ch := chr(codeWin[II]);
     Break;
    End;
   Dos2Win := Ch;
End;



Function converting(WinStr:string):ansiString;
var
  NoChar : Integer;
  temp,qq : String[255];
begin
   temp:='';
   QQ:='';
   WinStr := Trim(WinStr);
  For NoChar := 1 to Length(WinStr) Do
   begin
    space := false;
    qq := Dos2Win(WinStr[nochar]);
    if space = true Then
       temp :=  TEMP+qq+' '
    Else
       temp := temp+qq;
       
    IF addChar= TRUE THEN
      BEGIN
       temp:= TEMP +'«';
       ADDCHAR := FALSE;
      end;
   converting := TRIM(temp);
end;
eND;


Function ConvChar(str:string):string;
var d : byte;
   KOKO : STRING;
Begin
 KOKO :='';
 For d := 1 to Length(str) do
  Begin
   if (Str[d] = ' ') or ( str[d] = '-')  then
   ELSE
    KOKO := KOKO+STR[D];
  End;
   convchar:=TRIM(KOKO);
End;



function changeDate(str:string):string;
Var mont:string;
Begin
 mont := Str[1]+str[2];
 str[1]:=str[4];
 str[2]:=str[5];
 str[4]:=mont[1];
 str[5]:=mont[2];
 changeDate:=str;
End;
{------*-*-*-*-*-*-*-*-*-*-*-*-*-*}
Procedure CCustomDbSql;
var ia : byte;
  x,xx : byte;
begin
   ndbForm.ShowModal;
   mainform.ADOConnection1.Connected := False;
   mainform.ADOConnection1.ConnectionString := trim(connectionStringSql);
   mainform.ADOCommand1.CommandText:='create table '+ ndb +'( ';
   for ia := 0 To Mainform.Table1.FieldList.Count -1 Do
    For Xx := 0 to SelectForm.ListBox2.Items.Count -1 Do
     if SelectForm.ListBox2.Items.Strings[xx]= Mainform.Table1.Fields[ia].DisplayLabel then
      For x:= 1 To 4 Do
      if mainform.Table1.Fields.Fields[ia].ClassName = DBParodox[x] then
       Begin
         mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+' "'+(mainform.Table1.Fields[ia].FieldName)+ '" '+dbsql[x];
         If mainform.Table1.FieldByName(mainform.Table1.Fields[ia].FieldName).Size <> 0 then
           mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+'('+ inttostr (mainform.Table1.FieldByName(mainform.Table1.Fields.Fields[ia].FieldName).Size+20)+')';
         if mainform.Table1.Fields[ia].ClassName = 'TDateField' then mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+'(10)';
         If xx <> SelectForm.ListBox2.Items.Count -1 then
         mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+', '
         else
         mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+')';
      End;
   mainform.ADOCommand1.Execute();
End;
{
//edit2.Text:= '0 of '+inttostr(Table1.RecordCount);
 mainform.Table1.First;
while not Table1.Eof Do
Begin
  mainform.StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(mainForm.Table1.RecNo)+' «“ '+IntToStr(mainForm.Table1.RecordCount)+'„Ì »«‘„ ';
  Mainform.Refresh;
  ADOCommand1.CommandText :='insert into '+ndb+' values (';
    For i:= 0 to Table1.FieldCount -1 do
     Begin
      ADOCommand1.CommandText :=ADOCommand1.CommandText+ ':'+ CONVCHAR((Table1.Fields[i].FieldName));
      If i = Table1.FieldCount -1 then ADOCommand1.CommandText := ADOCommand1.CommandText+')'
      Else ADOCommand1.CommandText := ADOCommand1.CommandText + ',';
     End;

    For i1:= 0 to Table1.FieldCount -1 do
     Begin                                        V
      try
      if Table1.Fields[i1].Value = null then
       else
        if Table1.Fields[i1].ClassName = 'TStringField' then
          ADOCommand1.Parameters.ParamByName((conVchar(Table1.Fields[i1].FieldName))).Value :=converting(Table1.Fields[i1].text)
        else
          ADOCommand1.Parameters.ParamByName((conVchar(Table1.Fields[i1].FieldName))).Value := Table1.Fields[i1].Value;
        Except
          If  MessageDlg('—ﬂÊ—œ ‘„«—Â '+inttostr(Table1.RecNo)+'„‘ﬂ· œ«—œ',mtWarning,[mbok],0) = mrok then Break;
        End;;
    End;

   Table1.Next;
    try
     ADOConnection1.BeginTrans;
     ADOCommand1.Execute();
     ADOConnection1.CommitTrans;
    except
     ADOConnection1.RollbackTrans;
        If  MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then Break;
    End;
end;
 }
//end;

procedure TMainform.N17Click(Sender: TObject);
Var x:Byte;
begin
 convertOK := False;
  if DBGrid1.Visible = False Then
    BEgin
     ShowMessage('ÂÌç êÊ‰Â ÃœÊ·Ì »—«Ì  „œÌœ ›—«Œ«‰Ì ‰‘œÂ');
     Exit;
    End;
  For X:= 0 To Table1.FieldList.Count -1 Do
   SelectForm.ListBox1.Items.Add( Table1.Fields[x].DisplayName );
  selectform.ShowModal;
  If convertOK =true then CCustomDbSql;


End;

{------*-*-*-*-*-*-*-*-*-*-*-*-*-*}
Procedure CCustomDbParadox;
var
  i,i1,xx,x1 : byte;
  TableFound: Boolean;
  temp : string;
begin
 if mainform.SaveDialog1.Execute then
 Begin
  with TTable.Create(nil) do
   begin
    try
      Active := False;
      DatabaseName := '';
      TableName := Mainform.SaveDialog1.FileName;
      TableType := ttParadox;
      FieldDefs.Clear;
      Mainform.Table1.Active := false;
      Mainform.Table1.Active := true;
      for i := 0 To Mainform.Table1.FieldList.Count -1 Do
       For Xx := 0 to SelectForm.ListBox2.Items.Count -1 Do
        if SelectForm.ListBox2.Items.Strings[xx]= Mainform.Table1.Fields[i].DisplayLabel then
         with FieldDefs.AddFieldDef do
          begin
           Name := Mainform.Table1.Fields[i].DisplayLabel;
           DataType := Mainform.Table1.Fields[i].DataType;
           if Mainform.Table1.Fields[i].Size <> 0 then  Size := Mainform.Table1.Fields[i].Size+10;
          end;

      TableFound := Exists; // check whether the table already exists
      if TableFound then
       if MessageDlg('Overwrite existing table ' + Mainform.SaveDialog1.FileName + '?',
          mtConfirmation, mbYesNoCancel, 0) = mrYes then TableFound := False;
      if not TableFound then
        CreateTable; // create the table
    finally
    Free; // destroy the temporary TTable when done
   end;
 end;
 Mainform.Table2.Active :=false;
 Mainform.Table2.TableName := Mainform.SaveDialog1.FileName;
 Mainform.Table2.Active :=True;
 Mainform.Table1.First;
 while not Mainform.table1.Eof do
  Begin
   try
    mainform.StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(mainForm.Table1.RecNo)+' «“ '+IntToStr(mainForm.Table1.RecordCount)+'„Ì »«‘„ ';
    mainform.Table2.Last;
    Mainform.Table2.Insert;
    For X1 := 1 to SelectForm.ListBox2.Items.Count Do
     Begin
       temp := trim(Mainform.Table2.Fields[x1-1].DisplayName);
       if Mainform.Table1.FieldByName(temp).Value = null then
       else
        if Mainform.Table1.FieldByName(Temp).ClassName = 'TStringField' then
         //  Mainform.Table2.FieldByName(temp).Value := converting( Mainform.Table1.FieldByName(temp).text)
        Else
           Mainform.Table2.FieldByName(temp).Value := Mainform.Table1.FieldByName(temp).Value;
     End;
    Mainform.Table1.Next;
    Mainform.Refresh;
    Mainform.Table2.Post;
   Except
     If MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then Break else Mainform.Table1.Next;
   end;
  End;
 mainform.StatusBar1.Panels.Items[0].Text := IntToStr(mainform.Table1.RecordCount)+'—ﬂÊ—œ  »œÌ· ‘œ'
 end;
 End;
{------------------------------------------------------------------------------}

procedure TMainform.N2Click(Sender: TObject);
var qaz: byte;
begin
 ShowMessage('·ÿ›« ﬁ»· «“  »œÌ· ÃœÊ· “»«‰ ÃœÊ· —« ⁄Ê÷ ﬂ‰Ìœ');
 if OpenDialog1.Execute then
 Begin
  Table1.Active := False;
  Table2.Active := False;
  Table1.TableName := OpenDialog1.FileName;
  Table1.Active := True;
   Table1.Edit;
  for qaz := 0 To Table1.FieldCount -1 Do
   Begin
     if Table1.Fields[qaz].ClassName = 'TDateField' then Table1.Fields[qaz].AsString :='01/01/80';

   End;


  DBGrid1.Visible := True;
  GroupBox2.Visible := True;
  Splitter1.Visible:=  True;
  MainMenu1.Items.Items[1].Enabled := True;
  MainMenu1.Items.Items[2].Items[2].Enabled := True;
  Mainform.StatusBar1.Panels.Items[0].Text := '  ⁄œ«œ —ﬂÊ—Â«Ì ÃœÊ· : '+IntToStr(Table1.RecordCount)
 End;
end;

procedure TMainform.N3Click(Sender: TObject);
begin
 Mainform.Close;
end;

procedure TMainform.N13Click(Sender: TObject);
begin
pathsql.ShowModal;
end;

procedure TMainform.N18Click(Sender: TObject);
var
 i,i1 : byte;
  TableFound: Boolean;
begin
 if SaveDialog1.Execute then
 Begin
  with TTable.Create(nil) do
  begin
    try
      Active := False;
      DatabaseName := '';
      TableName := SaveDialog1.FileName;
      TableType := ttParadox;
      FieldDefs.Clear;
      Table1.Active := false;
      Table1.Active := true;
     for i := 0 To Table1.FieldList.Count -1 Do
      with FieldDefs.AddFieldDef do
      begin
        Name := Table1.Fields[i].DisplayLabel;
        DataType := Table1.Fields[i].DataType;
        if Table1.Fields[i].Size <> 0 then  Size := Table1.Fields[i].Size+10;
      end;
      TableFound := Exists; // check whether the table already exists
      if TableFound then
        if MessageDlg('Overwrite existing table ' + SaveDialog1.FileName + '?',
             mtConfirmation, mbYesNoCancel, 0) = mrYes then
          TableFound := False;
      if not TableFound then
        CreateTable; // create the table
    finally
      Free; // destroy the temporary TTable when done
    end;
  end;
  Table2.Active :=false;
  Table2.TableName := SaveDialog1.FileName;
  Table2.Active :=True;
  Table1.First;
  while not table1.Eof do
  Begin
    StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(Table1.RecNo)+' «“ '+IntToStr(Table1.RecordCount)+'„Ì »«‘„ ';
    Table2.Last;
    Table2.Insert;
    try
     for i1 := 0 To Table1.FieldList.Count -1 Do
      Begin
       if Table1.Fields[i1].Value = null then
        else
          if Table1.Fields[i1].ClassName = 'TStringField' then
           Table2.Fields[i1].Value := converting(Table1.Fields[i1].text)
             Else
              Table2.Fields[i1].Value := Table1.Fields[i1].Value;
      End;
      Table2.Post;
    Except
     If MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then
       Break
      Else
       Table2.Cancel;
    end;
    Table1.Next;
    Mainform.Refresh;
  End;
   StatusBar1.Panels.Items[0].Text := IntToStr(Table1.RecordCount)+'—ﬂÊ—œ  »œÌ· ‘œ'
 end;
End;


procedure TMainform.N19Click(Sender: TObject);
Var xasd:Byte;
begin
 convertOK := False;
  if DBGrid1.Visible = False Then
    BEgin
     ShowMessage('ÂÌç êÊ‰Â ÃœÊ·Ì »—«Ì  „œÌœ ›—«Œ«‰Ì ‰‘œÂ');
     Exit;
    End;
  For Xasd:= 0 To Table1.FieldList.Count -1 Do
   SelectForm.ListBox1.Items.Add( Table1.Fields[xasd].DisplayName );
  selectform.ShowModal;
  If convertOK =true then CCustomDbParadox; 
end;

procedure TMainform.Splitter1Moved(Sender: TObject);
begin
 GroupBox2.Top := Splitter1.Top;
end;

procedure TMainform.N10Click(Sender: TObject);
begin
 GroupBox2.Visible := not GroupBox2.Visible;
end;

procedure TMainform.FormShow(Sender: TObject);
begin
  MainMenu1.Items.Items[1].Enabled := False;
  MainMenu1.Items.Items[2].Items[2].Enabled := False;
end;

procedure TMainform.N15Click(Sender: TObject);
var i,i1 : byte;
  Q,x : byte;
begin
   ndbForm.ShowModal;
   if  ADOConnection1.Connected = True then ADOConnection1.Connected := False;  
   ADOConnection1.ConnectionString := trim(connectionStringSql);
   ADOCommand1.CommandText:='create table '+ ndb +'( ';
  For Q := 0 To Table1.FieldCount -1 Do
    Begin
     For x:= 1 To 4 Do
      if Table1.Fields.Fields[Q].ClassName = DBParodox[x] then
      Begin
         ADOCommand1.CommandText :=ADOCommand1.CommandText+' "'+(Table1.Fields[Q].FieldName)+ '" '+dbsql[x];
         If Table1.FieldByName(Table1.Fields[Q].FieldName).Size <> 0 then
           ADOCommand1.CommandText := ADOCommand1.CommandText+'('+ inttostr (Table1.FieldByName(Table1.Fields.Fields[Q].FieldName).Size+20
           )+')';
         if Table1.Fields[q].ClassName = 'TDateField' then ADOCommand1.CommandText := ADOCommand1.CommandText+'(10)';
         If Q <> Table1.fieldcount -1 then
         ADOCommand1.CommandText := ADOCommand1.CommandText+', '
         else
         ADOCommand1.CommandText := ADOCommand1.CommandText+')';
        End;
    End;
   ADOCommand1.Execute();
//edit2.Text:= '0 of '+inttostr(Table1.RecordCount);
 Table1.First;
while not Table1.Eof Do
Begin
  mainform.StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(mainForm.Table1.RecNo)+' «“ '+IntToStr(mainForm.Table1.RecordCount)+'„Ì »«‘„ ';
  Mainform.Refresh;
  ADOCommand1.CommandText :='insert into '+ndb+' values (';
    For i:= 0 to Table1.FieldCount -1 do
     Begin
      ADOCommand1.CommandText :=ADOCommand1.CommandText+ ':'+ CONVCHAR((Table1.Fields[i].FieldName));
      If i = Table1.FieldCount -1 then ADOCommand1.CommandText := ADOCommand1.CommandText+')'
      Else ADOCommand1.CommandText := ADOCommand1.CommandText + ',';
     End;

    For i1:= 0 to Table1.FieldCount -1 do
     Begin
      try
      if Table1.Fields[i1].Value = null then
       else
        if Table1.Fields[i1].ClassName = 'TStringField' then
          ADOCommand1.Parameters.ParamByName((conVchar(Table1.Fields[i1].FieldName))).Value :=converting(Table1.Fields[i1].text)
        else
          ADOCommand1.Parameters.ParamByName((conVchar(Table1.Fields[i1].FieldName))).Value := Table1.Fields[i1].Value;
        Except
          If  MessageDlg('—ﬂÊ—œ ‘„«—Â '+inttostr(Table1.RecNo)+'„‘ﬂ· œ«—œ',mtWarning,[mbok],0) = mrok then Break;
        End;;
    End;

   Table1.Next;
    try
     ADOConnection1.BeginTrans;
     ADOCommand1.Execute();
     ADOConnection1.CommitTrans;
    except
     ADOConnection1.RollbackTrans;
        If  MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then Break;
    End;
end;

end;


procedure TMainform.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
 if Field.ClassName = 'TDateField' Then
  BEgin
   try
    Field.OnSetText(Field,'ssss');
   Except
      ShowMessage('nooooooooooo');
   end;
  End;

end;

end.
