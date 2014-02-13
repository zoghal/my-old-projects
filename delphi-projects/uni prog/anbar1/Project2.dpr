program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {data: TDataModule},
  Unit3 in 'Unit3.pas' {kharidForm},
  Unit4 in 'Unit4.pas' {froshForm},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Froshkala},
  Unit7 in 'Unit7.pas' {mahsool},
  Unit8 in 'Unit8.pas' {kharid},
  Unit9 in 'Unit9.pas' {frosh},
  Unit10 in 'Unit10.pas' {kharidkala};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdata, data);
  Application.CreateForm(TkharidForm, kharidForm);
  Application.CreateForm(TfroshForm, froshForm);
  Application.CreateForm(TFroshkala, Froshkala);
  Application.CreateForm(Tmahsool, mahsool);
  Application.CreateForm(Tkharid, kharid);
  Application.CreateForm(Tfrosh, frosh);
  Application.CreateForm(Tkharidkala, kharidkala);
  Application.Run;
end.
