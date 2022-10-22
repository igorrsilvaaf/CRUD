unit UContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFrmContatos = class(TForm)
    Panel1: TPanel;
    EdtNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtEmail1: TDBEdit;
    Label5: TLabel;
    EdtEmail2: TDBEdit;
    Label6: TLabel;
    MmObservacao: TDBMemo;
    Label7: TLabel;
    Conexao: TFDConnection;
    QContatos: TFDQuery;
    DsContatos: TDataSource;
    DriverPG: TFDPhysPgDriverLink;
    Panel2: TPanel;
    BtnIncluir: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnDeletar: TBitBtn;
    Label8: TLabel;
    EdtId_contato: TDBEdit;
    EdtTelefone: TDBEdit;
    EdtCelular: TDBEdit;
    EdtFax: TDBEdit;
    QContatosflg_ativo: TBooleanField;
    QContatosid_contato: TIntegerField;
    QContatosnome: TWideStringField;
    QContatosemail: TWideStringField;
    QContatosemail2: TWideStringField;
    QContatosinstagram: TWideStringField;
    QContatosfacebook: TWideStringField;
    QContatosobservacao: TWideStringField;
    QContatosfax: TWideStringField;
    QContatostelefone: TWideStringField;
    QContatoscelular: TWideStringField;
    BtnPesquisar: TBitBtn;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContatos: TFrmContatos;

implementation

uses
  TelaPrincipal, UPesquisaContatos;

{$R *.dfm}

//Botao alterar
procedure TFrmContatos.BtnAlterarClick(Sender: TObject);
begin
  if MessageDlg('Alterar registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      QContatos.Edit;
    end
    else
      Abort;
end;

//Botao deletar
procedure TFrmContatos.BtnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Excluir registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      QContatos.Delete;
    end
    else
      Abort;
end;

//Botao incluir
procedure TFrmContatos.BtnIncluirClick(Sender: TObject);
var
  Lproximo : Integer;
begin
  QContatos.Active := True;
  QContatos.Last;
  Lproximo := QContatosid_contato.AsInteger + 1;
  QContatos.Append;
  QContatosid_contato.AsInteger := Lproximo;
  EdtNome.SetFocus;
end;

procedure TFrmContatos.BtnPesquisarClick(Sender: TObject);
begin
  FrmPesquisaContatos := TFrmPesquisaContatos.Create(self);
  FrmPesquisaContatos.ShowModal;
  try

  finally
    FrmPesquisaContatos.Free;
    FrmPesquisaContatos := nil;
  end;
end;

//Botao salvar
procedure TFrmContatos.BtnSalvarClick(Sender: TObject);
begin
  try
    QContatos.Post;
    MessageDlg('Registro salvo em nossa base de dados', mtConfirmation, [mbOK], 0);
  except on Error: Exception do
    begin
      if Error.Message.Contains('not-null')then
        begin
          ShowMessage('Campo Obrigatório' + sLineBreak + Error.Message);
        end;
    end;
  end;
end;

end.
