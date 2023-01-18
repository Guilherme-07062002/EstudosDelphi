unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    titulo: TEdit;
    Label3: TLabel;
    autor: TEdit;
    Label4: TLabel;
    comboGenero: TComboBox;
    Label5: TLabel;
    radioPort: TRadioButton;
    radioEng: TRadioButton;
    radioEsp: TRadioButton;
    checkDisp: TCheckBox;
    Label6: TLabel;
    resumo: TMemo;
    Label7: TLabel;
    checkInternet: TCheckBox;
    checkTelefone: TCheckBox;
    checkFisica: TCheckBox;
    excluir: TButton;
    cadastrar: TButton;
    pesquisar: TButton;
    procedure pesquisarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure cadastrarClick(Sender: TObject);
    procedure addLivro(id: Integer; titulo: String; autor: String;
      genero: String; idioma: String; disponivel: Integer; resumo: String;
      canal: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMain: TTMain;
  contador: Integer;
  generoAdd: String;
  idiomaAdd: String;
  dispAdd : Integer;
  canalAdd: String;

implementation

{$R *.dfm}

uses Search, excluir, dmSearch;

procedure TTMain.addLivro(id: Integer; titulo: String; autor: String;
  genero: String; idioma: String; disponivel: Integer; resumo: String; canal: String);
begin
  WITH dmCadastro.addQry DO
  begin
    SQL.Clear;

    SQL.Add('INSERT INTO livros values(:id, :titulo, :autor, :genero, :idioma, :disponivel,:resumo, :canal)');
    params.ParamByName('id').Value := id;
    params.ParamByName('titulo').Value := titulo;
    params.ParamByName('autor').Value := autor;
    params.ParamByName('genero').Value := genero;
    params.ParamByName('idioma').Value := idioma;
    params.ParamByName('disponivel').Value := disponivel;
    params.ParamByName('resumo').Value := resumo;
    params.ParamByName('canal').Value := canal;

    dmCadastro.addQry.ExecSQL;
  end;
  showMessage('Livro cadastrado!');
end;

procedure TTMain.cadastrarClick(Sender: TObject);
begin
  with dmCadastro.addQry DO
  begin
    Close;
    SQL.Clear;
    dmCadastro.addQry.SQL.Add('SELECT COUNT(ID) FROM livros');
    dmCadastro.addQry.Open();
  end;

  contador := dmCadastro.addQry.FieldByName('COUNT').AsInteger;
  if (comboGenero.ItemIndex = 0) then
    generoAdd := 'romance'
  else if (comboGenero.ItemIndex = 1) then
    generoAdd := 'autoajuda'
  else if (comboGenero.ItemIndex = 2) then
    generoAdd := 'bibliograf';


  if(radioPort.Checked = true) then
   idiomaAdd := 'portugues'
  else if (radioEng.Checked = true) then
  idiomaAdd := 'ingles'
  else if (radioEsp.Checked = true) then
  idiomaAdd := 'espanhol';

  if(checkDisp.Checked = true) then
   dispAdd := 1
   else if (checkDisp.Checked = false) then
   dispAdd := 0;

  if(checkInternet.Checked = true) then
    canalAdd := 'internet'
  else if (checkTelefone.Checked = true) then
    canalAdd := 'telefone'
  else if (checkFisica.Checked = true) then
    canalAdd := 'lojafisica';


  addLivro((contador + 1), titulo.Text, autor.Text, generoAdd, idiomaAdd, dispAdd, resumo.Text, canalAdd);
end;

procedure TTMain.excluirClick(Sender: TObject);
begin
  TExcluir.Show;
end;

procedure TTMain.pesquisarClick(Sender: TObject);
begin
  TSearch.Show;
  dmCadastro.qrySearch.Active := true;
end;

end.
