program Teste;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {dmDados: TDataModule},
  Unit3 in 'Unit3.pas' {Registrar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TRegistrar, Registrar);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
