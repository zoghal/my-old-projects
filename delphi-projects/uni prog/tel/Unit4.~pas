unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
begin
    ADOQuery1.Active := False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from tel where name like '+''''+ edit1.text+'%'+'''');
    ADOQuery1.Active := True;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin
  ADOQuery1.Active := False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from tel where family like '+''''+ edit2.text+'%'+'''');
    ADOQuery1.Active := True;
end;

procedure TForm4.Edit3Change(Sender: TObject);
begin
 ADOQuery1.Active := False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from tel where tel like '+''''+ edit3.text+'%'+'''');
    ADOQuery1.Active := True;
end;

procedure TForm4.Edit4Change(Sender: TObject);
begin
  ADOQuery1.Active := False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from tel where mobile like '+''''+ edit4.text+'%'+'''');
    ADOQuery1.Active := True;
end;

procedure TForm4.Edit5Change(Sender: TObject);
begin
  ADOQuery1.Active := False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from tel where fax like '+''''+ edit5.text+'%'+'''');
    ADOQuery1.Active := True;
end;

procedure TForm4.Edit6Change(Sender: TObject);
begin
 ADOQuery1.Active := False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from tel where address like '+''''+ edit6.text+'%'+'''');
    ADOQuery1.Active := True;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form4.Close;
end;

end.
