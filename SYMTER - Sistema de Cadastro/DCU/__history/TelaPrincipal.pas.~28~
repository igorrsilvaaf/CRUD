unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFrmTelaPrincipal = class(TForm)
    PnlFundo1: TPanel;
    Menu: TMainMenu;
    Cadastro1: TMenuItem;
    Financeiro1: TMenuItem;
    Relatrios1: TMenuItem;
    Outros1: TMenuItem;
    Fechar1: TMenuItem;
    Clientes1: TMenuItem;
    Contas1: TMenuItem;
    Produto1: TMenuItem;
    Contatos1: TMenuItem;
    Receber1: TMenuItem;
    Pagar1: TMenuItem;
    Boletos1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    Clientes2: TMenuItem;
    Label1: TLabel;
    BtnClientes: TBitBtn;
    BtnReceber: TBitBtn;
    BtnContas: TBitBtn;
    BtnRelatorio: TBitBtn;
    Btnpagar: TBitBtn;
    BtnContatos: TBitBtn;
    BtnProdutos: TBitBtn;
    BtnBoletos: TBitBtn;
    BtnSair: TBitBtn;
    Label2: TLabel;
    BtnCadastrar: TBitBtn;
    BtnCadastrarReceber: TBitBtn;
    BtnCadastrarContatos: TBitBtn;
    BtnCadastrarPagar: TBitBtn;
    BtnCadastrarprodutos: TBitBtn;
    BtnCadastrarBoletos: TBitBtn;
    procedure Clientes1Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnClientesClick(Sender: TObject);
    procedure Contatos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BtnContatosClick(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure BtnCadastrarContatosClick(Sender: TObject);
    procedure BtnCadastrarprodutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaPrincipal: TFrmTelaPrincipal;

implementation

uses
  UClientes, UPesquisaClientes, UContatos, UPesquisaContatos, UProduto;

{$R *.dfm}

procedure TFrmTelaPrincipal.BtnCadastrarClick(Sender: TObject);
begin
  FrmClientes :=TFrmClientes.Create(nil);
  try
    FrmClientes.ShowModal;
  finally
    FreeAndNil(FrmClientes);
  end;
end;

procedure TFrmTelaPrincipal.BtnCadastrarContatosClick(Sender: TObject);
begin
  FrmContatos := TFrmContatos.Create(nil);
  try
    FrmContatos.ShowModal;
  finally
    FreeAndNil(FrmContatos);
  end;
end;

procedure TFrmTelaPrincipal.BtnCadastrarprodutosClick(Sender: TObject);
begin
  FrmProduto := TFrmProduto.Create(nil);
  try
    FrmProduto.ShowModal;
  finally
    FreeAndNil(FrmProduto);
  end;
end;

procedure TFrmTelaPrincipal.BtnClientesClick(Sender: TObject);
begin
  FrmPesquisaClientes := TFrmPesquisaClientes.Create(nil);
  try
    FrmPesquisaClientes.ShowModal;
  finally
    FreeAndNil(FrmPesquisaClientes);
  end;
end;

procedure TFrmTelaPrincipal.BtnContatosClick(Sender: TObject);
begin
  FrmPesquisaContatos := TFrmPesquisaContatos.Create(nil);
  try
    FrmPesquisaContatos.ShowModal;
  finally
    FreeAndNil(FrmPesquisaContatos);
  end;
end;

procedure TFrmTelaPrincipal.BtnSairClick(Sender: TObject);
begin
  FrmTelaPrincipal.Close;
end;

procedure TFrmTelaPrincipal.Clientes1Click(Sender: TObject);
begin
  FrmClientes := TFrmClientes.Create(nil);
  try
    FrmClientes.ShowModal;
  finally
    FreeAndNil(FrmClientes);
  end;
end;

procedure TFrmTelaPrincipal.Contatos1Click(Sender: TObject);
begin
  FrmContatos := TFrmContatos.Create(nil);
  try
    FrmContatos.ShowModal;
  finally
    FreeAndNil(FrmContatos);
  end;
end;

procedure TFrmTelaPrincipal.Fechar1Click(Sender: TObject);
begin
  FrmTelaPrincipal.Close;
end;

procedure TFrmTelaPrincipal.Produto1Click(Sender: TObject);
begin
  FrmProduto := TFrmProduto.Create(nil);
  try
    FrmProduto.ShowModal;
  finally
    FreeAndNil(FrmProduto);
  end;
end;

end.
