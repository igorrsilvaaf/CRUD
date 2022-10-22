program PSYMTER;

uses
  Vcl.Forms,
  TelaPrincipal in '..\DCU\TelaPrincipal.pas' {FrmTelaPrincipal},
  UClientes in '..\DCU\UClientes.pas' {FrmClientes},
  UPesquisaClientes in 'UPesquisaClientes.pas' {FrmPesquisaClientes},
  UContatos in 'UContatos.pas' {FrmContatos},
  UPesquisaContatos in 'UPesquisaContatos.pas' {FrmPesquisaContatos},
  UProduto in 'UProduto.pas' {FrmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTelaPrincipal, FrmTelaPrincipal);
  Application.Run;
end.
