unit Search;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TTSearch = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    IDedit: TEdit;
    Label1: TLabel;
    btnBuscaID: TButton;
    procedure btnBuscaIDClick(Sender: TObject);
    procedure buscaID(idLivro: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TSearch: TTSearch;

implementation

{$R *.dfm}

uses dmSearch;



procedure TTSearch.btnBuscaIDClick(Sender: TObject);
begin
   buscaID(StrToInt(IDedit.Text));
end;

procedure TTSearch.buscaID(idLivro: Integer);
begin
WITH dmCadastro.qrySearch DO
begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM LIVROS WHERE ID = :idLivro');
   params.ParamByName('idLivro').Value := idLivro;
   dmCadastro.qrySearch.Open;
end;
end;

end.
