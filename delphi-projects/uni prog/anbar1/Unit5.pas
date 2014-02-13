unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Math, Unit1;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
{If (Edit1.Text = 'user') and
   (Edit2.Text = 'pass') then
     BEgin
     Form5.Hide;
     form1.Show;
     End
     else ShowMessage('user & pass incorect');}
          Form5.Hide;
     form1.Show;
   end;

end.
