program mss;

uses
  Forms,
  windows,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.RES}
var
  Logo : Tform2;

begin
  Logo := Tform2.Create(Nil);
  Logo.Show;
  Logo.Update;
  sleep(2000);
  Logo.Free;

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
