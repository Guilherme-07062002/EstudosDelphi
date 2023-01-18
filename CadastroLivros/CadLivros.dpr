program CadLivros;

uses
  Vcl.Forms,
  Main in 'Main.pas' {TMain},
  Search in 'Search.pas' {TSearch},
  Excluir in 'Excluir.pas' {TExcluir},
  dmSearch in 'dmSearch.pas' {dmCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTMain, TMain);
  Application.CreateForm(TTSearch, TSearch);
  Application.CreateForm(TTExcluir, TExcluir);
  Application.CreateForm(TdmCadastro, dmCadastro);
  Application.Run;
end.
