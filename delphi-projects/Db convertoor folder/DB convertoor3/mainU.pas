unit mainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, DBTables, ADODB, Menus,
  ExtCtrls, ComCtrls;

type
  TMainform = class(TForm)
    mainDataSource: TDataSource;
    MainTable: TTable;
    NewTable: TTable;
    NEwDataSource: TDataSource;
    OpenDialog1: TOpenDialog;
    SettingDataSource: TDataSource;
    SettingTable: TTable;
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
    StatusBar1: TStatusBar;
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
    ErrorGrid: TStringGrid;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
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
  Nrow : Word;
implementation

uses pathsqlU, StrUtils, Math, ConvUtils, NdbU, SeletFieldU, Unit1,
  ShowNTF, VarUtils;

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
  temp : String;
begin
   mainform.ADOConnection1.Connected := False;
   mainform.ADOConnection1.ConnectionString := trim(connectionStringSql);
   mainform.ADOCommand1.CommandText:='create table '+ ndb +'( ';
   for ia := 0 To Mainform.MainTable.FieldList.Count -1 Do
    For Xx := 0 to SelectForm.ListBox2.Items.Count -1 Do
     if SelectForm.ListBox2.Items.Strings[xx]= Mainform.MainTable.Fields[ia].DisplayLabel then
      For x:= 1 To 4 Do
      if mainform.MainTable.Fields.Fields[ia].ClassName = DBParodox[x] then
       Begin
         mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+' "'+(mainform.MainTable.Fields[ia].FieldName)+ '" '+dbsql[x];
         If mainform.MainTable.FieldByName(mainform.MainTable.Fields[ia].FieldName).Size <> 0 then
           mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+'('+ inttostr (mainform.MainTable.FieldByName(mainform.MainTable.Fields.Fields[ia].FieldName).Size+20)+')';
         if mainform.MainTable.Fields[ia].ClassName = 'TDateField' then mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+'(10)';
         If xx = SelectForm.ListBox2.Items.Count -1 then
         mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+')'
         else
         mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+', ';
      End;
   mainform.ADOCommand1.Execute();


 mainform.MainTable.First;
while not mainform.MainTable.Eof Do
Begin
  mainform.StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(mainForm.MainTable.RecNo)+' «“ '+IntToStr(mainForm.MainTable.RecordCount)+'„Ì »«‘„ ';
  Mainform.Refresh;
  mainform.ADOCommand1.CommandText :='insert into '+ndb+' values (';
    for ia := 0 To Mainform.MainTable.FieldList.Count -1 Do
    For Xx := 0 to SelectForm.ListBox2.Items.Count -1 Do
     if SelectForm.ListBox2.Items.Strings[xx]= Mainform.MainTable.Fields[ia].DisplayLabel then
     BEgin
      mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+ ':'+ convchar( mainform.MainTable.Fields[ia].FieldName);
      If xx = SelectForm.ListBox2.Items.Count -1 then
       mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText+')'
      Else
       mainform.ADOCommand1.CommandText := mainform.ADOCommand1.CommandText + ',';
     End;
//ShowMessage(Mainform.ADOCommand1.CommandText);
//Exit;
     For xx := 1 To SelectForm.ListBox2.Items.Count Do
//     For ia:= 0 to mainform.MainTable.FieldCount -1 do
//      If SelectForm.ListBox1.Items.Strings[xx] = Mainform.MainTable.Fields[ia].DisplayLabel Then
        BEgin
          temp := trim(SelectForm.ListBox2.Items.Strings[xx-1]);
          If Mainform.MainTable.FieldByName(temp).Value = null Then
          Else
           If Mainform.MainTable.FieldByName(temp).ClassName = 'TStringField' Then
             mainform.ADOCommand1.Parameters.ParamByName(convchar( temp)).Value := converting(Mainform.MainTable.FieldByName(temp).text)
                         Else
             mainform.ADOCommand1.Parameters.ParamByName(convchar(  temp)).Value :=  Mainform.MainTable.FieldByName(temp).Value;
        End;


   mainform.MainTable.Next;
  try
  mainform.ADOCommand1.Execute();
  except
  If  MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then Break;
  End;
  end;

end;

procedure TMainform.N17Click(Sender: TObject);
Var x:Byte;
begin
  SelectForm.ListBox1.Items.Clear;
  SelectForm.ListBox2.Items.Clear;
  nameFileOk := False;
  ndbForm.ShowModal;
  If nameFileOk = False then exit;
  convertOK := False;
  For X:= 0 To MainTable.FieldList.Count -1 Do
   SelectForm.ListBox1.Items.Add( MainTable.Fields[x].DisplayName );
  selectform.ShowModal;
  If nameFileOk = False Then Exit;
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
      Mainform.MainTable.Active := false;
      Mainform.MainTable.Active := true;
      for i := 0 To Mainform.MainTable.FieldList.Count -1 Do
       For Xx := 0 to SelectForm.ListBox2.Items.Count -1 Do
        if SelectForm.ListBox2.Items.Strings[xx]= Mainform.MainTable.Fields[i].DisplayLabel then
         with FieldDefs.AddFieldDef do
          begin
           Name := Mainform.MainTable.Fields[i].DisplayLabel;
           DataType := Mainform.MainTable.Fields[i].DataType;
           if Mainform.MainTable.Fields[i].Size <> 0 then  Size := Mainform.MainTable.Fields[i].Size+10;
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
 Mainform.NewTable.Active :=false;
 Mainform.NewTable.TableName := Mainform.SaveDialog1.FileName;
 Mainform.NewTable.Active :=True;
 Mainform.MainTable.First;
 while not Mainform.MainTable.Eof do
  Begin
   try
    mainform.StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(mainForm.MainTable.RecNo)+' «“ '+IntToStr(mainForm.MainTable.RecordCount)+'„Ì »«‘„ ';
    mainform.NewTable.Last;
    Mainform.NewTable.Insert;
    For X1 := 1 to SelectForm.ListBox2.Items.Count Do
     Begin
       temp := trim(Mainform.NewTable.Fields[x1-1].DisplayName);
       if Mainform.MainTable.FieldByName(temp).Value = null then
       else
        if Mainform.MainTable.FieldByName(Temp).ClassName = 'TStringField' then
         //  Mainform.NewTable.FieldByName(temp).Value := converting( Mainform.MainTable.FieldByName(temp).text)
        Else
           Mainform.NewTable.FieldByName(temp).Value := Mainform.MainTable.FieldByName(temp).Value;
     End;
    Mainform.NewTable.Post;
   Except
     Nrow:= Nrow+1;
     Mainform.ErrorGrid.RowCount := Mainform.ErrorGrid.RowCount +1;
     Mainform.ErrorGrid.Cells[0,Nrow] := IntToStr( Mainform.MainTable.RecNo );
     If MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then
       Break
      Else
       Mainform.NewTable.Cancel;
   end;
       Mainform.MainTable.Next;
    Mainform.Refresh;

  End;
 mainform.StatusBar1.Panels.Items[0].Text := IntToStr(mainform.MainTable.RecordCount)+'—ﬂÊ—œ  »œÌ· ‘œ';
 mainform.MainMenu1.Items[2].Items[2].Enabled := True;
 end;
 End;
{------------------------------------------------------------------------------}

procedure TMainform.N2Click(Sender: TObject);
begin

 ShowMessage('·ÿ›« ﬁ»· «“  »œÌ· ÃœÊ· “»«‰ ÃœÊ· —« ⁄Ê÷ ﬂ‰Ìœ');
 if OpenDialog1.Execute then
 Begin
  Nrow :=0;
  MainTable.Active := False;
  NewTable.Active := False;
  MainTable.TableName := OpenDialog1.FileName;
  MainTable.Active := True;
  MainMenu1.Items.Items[1].Enabled := True;
  Mainform.StatusBar1.Panels.Items[0].Text := '  ⁄œ«œ —ﬂÊ—Â«Ì ÃœÊ· : '+IntToStr(MainTable.RecordCount);
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
 ErrorGrid.RowCount :=1;
 ErrorGrid.FixedRows:=1;

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
      MainTable.Active := false;
      MainTable.Active := true;
     for i := 0 To MainTable.FieldList.Count -1 Do
      with FieldDefs.AddFieldDef do
      begin
        Name := MainTable.Fields[i].DisplayLabel;
        DataType := MainTable.Fields[i].DataType;
        if MainTable.Fields[i].Size <> 0 then  Size := MainTable.Fields[i].Size+10;
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
  NewTable.Active :=false;
  NewTable.TableName := SaveDialog1.FileName;
  NewTable.Active :=True;
  MainTable.First;
  while not MainTable.Eof do
  Begin
    StatusBar1.Panels.Items[0].Text := ' œ— Õ«·  »œÌ· —ﬂÊ—œ'+IntToStr(MainTable.RecNo)+' «“ '+IntToStr(MainTable.RecordCount)+'„Ì »«‘„ ';
    NewTable.Last;
    NewTable.Insert;
    try
     for i1 := 0 To MainTable.FieldList.Count -1 Do
      Begin
       if MainTable.Fields[i1].Value = null then
        else
          if MainTable.Fields[i1].ClassName = 'TStringField' then
           NewTable.Fields[i1].Value := converting(MainTable.Fields[i1].text)
             Else
              NewTable.Fields[i1].Value := MainTable.Fields[i1].Value;
      End;
      NewTable.Post;
    Except
     Nrow:= Nrow+1;
     ErrorGrid.RowCount := ErrorGrid.RowCount +1;
     ErrorGrid.Cells[0,Nrow] := IntToStr( MainTable.RecNo );
     If MessageDlg('›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then
       Break
      Else
       NewTable.Cancel;
    end;
    MainTable.Next;
    Mainform.Refresh;
  End;
   StatusBar1.Panels.Items[0].Text := IntToStr(MainTable.RecordCount)+'—ﬂÊ—œ  »œÌ· ‘œ';
   MainMenu1.Items[2].Items[2].Enabled := True;
 end;
End;


procedure TMainform.N19Click(Sender: TObject);
Var xasd:Byte;
begin
 SelectForm.ListBox1.Items.Clear;
 SelectForm.ListBox2.Items.Clear;
 convertOK := False;
  For Xasd:= 0 To MainTable.FieldList.Count -1 Do
   SelectForm.ListBox1.Items.Add( MainTable.Fields[xasd].DisplayName );
  selectform.ShowModal;
  If convertOK =true then CCustomDbParadox;
end;

procedure TMainform.FormShow(Sender: TObject);
begin
  ErrorGrid.Cells[0,0] := '‘„«—Â —ﬂÊ—œ';
  SettingTable.TableName := 'setting.db';
  SettingTable.Active := True;
  MainMenu1.Items.Items[1].Enabled := False;
  MainMenu1.Items.Items[2].Items[2].Enabled := False;
end;

procedure TMainform.N15Click(Sender: TObject);
var i,i1 : byte;
  Q,x : byte;
  ErrSql : Boolean;
begin

   nameFileOk := False;
   ndbForm.ShowModal;
   If nameFileOk = False then exit;
   if  ADOConnection1.Connected = True then ADOConnection1.Connected := False;
   ADOConnection1.ConnectionString := trim(connectionStringSql);
   ADOCommand1.CommandText:='create table '+ ndb +'( ';
  For Q := 0 To MainTable.FieldCount -1 Do
    Begin
     For x:= 1 To 4 Do
      if MainTable.Fields.Fields[Q].ClassName = DBParodox[x] then
      Begin
         ADOCommand1.CommandText :=ADOCommand1.CommandText+' "'+(MainTable.Fields[Q].FieldName)+ '" '+dbsql[x];
         If MainTable.FieldByName(MainTable.Fields[Q].FieldName).Size <> 0 then
           ADOCommand1.CommandText := ADOCommand1.CommandText+'('+ inttostr (MainTable.FieldByName(MainTable.Fields.Fields[Q].FieldName).Size+20
           )+')';
         if MainTable.Fields[q].ClassName = 'TDateField' then ADOCommand1.CommandText := ADOCommand1.CommandText+'(10)';
         If Q <> MainTable.fieldcount -1 then
         ADOCommand1.CommandText := ADOCommand1.CommandText+', '
         else
         ADOCommand1.CommandText := ADOCommand1.CommandText+')';
        End;
    End;
   ADOCommand1.Execute();

  ADOCommand1.CommandText :='insert into '+ndb+' values (';
    For i:= 0 to MainTable.FieldCount -1 do
     Begin
      ADOCommand1.CommandText :=ADOCommand1.CommandText+ ':'+ CONVCHAR((MainTable.Fields[i].FieldName));
      If i = MainTable.FieldCount -1 then ADOCommand1.CommandText := ADOCommand1.CommandText+')'
       Else ADOCommand1.CommandText := ADOCommand1.CommandText + ',';
     End;
{-------------------------------*}
 MainTable.First;
 while not MainTable.Eof Do
 Begin
  mainform.StatusBar1.Panels.Items[0].Text := '  œ— Õ«·  »œÌ· —ﬂÊ—œ '+IntToStr(mainForm.MainTable.RecNo)+'  «“  '+IntToStr(mainForm.MainTable.RecordCount)+' „Ì »«‘„  ';
  Mainform.Refresh;
  ErrSql := False;
    For i1:= 0 to MainTable.FieldCount -1 do
      try
      if MainTable.Fields[i1].Value = null then
       else
        if MainTable.Fields[i1].ClassName = 'TStringField' then
          ADOCommand1.Parameters.ParamByName((conVchar(MainTable.Fields[i1].FieldName))).Value :=converting(MainTable.Fields[i1].text)
        else
          ADOCommand1.Parameters.ParamByName((conVchar(MainTable.Fields[i1].FieldName))).Value := MainTable.Fields[i1].Value;
        Except
         Nrow:= Nrow+1;
         ErrorGrid.RowCount := ErrorGrid.RowCount +1;
         ErrorGrid.Cells[0,Nrow] := IntToStr( MainTable.RecNo );
         If MessageDlg('!!!›Ì·œ „Ê—œ «‰ Œ«» „‘ﬂ· œ«—œ  «∆Ìœ ﬂ‰Ìœ  «  »œÌ· Œ« „Â Ì«»œ',MTINFORMATION,[mbyes,mbno],0) = mryes then
          Exit Else ErrSql := True;
        End;
  MainTable.Next;
  If  ErrSql = FAlse Then ADOCommand1.Execute();
 end;

end;


procedure TMainform.N10Click(Sender: TObject);
begin
 ShowNTForm.ShowModal;
end;

end.
