unit ufApollo2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFApollo2 = class(TForm)
    rgConcentrador: TRadioGroup;
    btnDuvida: TSpeedButton;
    gbLog: TGroupBox;
    mmLog: TMemo;
    btnConectar: TButton;
    btnStatus: TButton;
    btnEnviar: TButton;
    btnReceber: TButton;
    btnDesconectar: TButton;
    btnLimpar: TButton;
    procedure btnDuvidaClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnDesconectarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateLogMessage;
  public
    { Public declarations }
    cLogMessage: String;
  end;

var
  FApollo2: TFApollo2;

implementation

{$R *.dfm}

procedure TFApollo2.btnDuvidaClick(Sender: TObject);
var
  cMensagem: String;
begin
  cMensagem := 'Esta é uma aplicação que simula diferentes ações que um sistema ' +
               'pode fazer para diferentes equipamentos Concentradores, isso '     +
               'utilizando o design pattern Factory Method.';
  ShowMessage(cMensagem);
end;

procedure TFApollo2.UpdateLogMessage;
begin
  cLogMessage := '['+ DateToStr(Now) +' - ' + TimeToStr(Now) + ']: ';
end;

procedure TFApollo2.btnConectarClick(Sender: TObject);
begin
  UpdateLogMessage;
  mmLog.Lines.Add(cLogMessage + 'Funcionalidade "Conectar" em processo de implementação');
end;

procedure TFApollo2.btnStatusClick(Sender: TObject);
begin
  UpdateLogMessage;
  mmLog.Lines.Add(cLogMessage + 'Funcionalidade "Status" em processo de implementação');
end;

procedure TFApollo2.btnEnviarClick(Sender: TObject);
begin
  UpdateLogMessage;
  mmLog.Lines.Add(cLogMessage + 'Funcionalidade "Enviar" em processo de implementação');
end;


procedure TFApollo2.btnReceberClick(Sender: TObject);
begin
  UpdateLogMessage;
  mmLog.Lines.Add(cLogMessage + 'Funcionalidade "Receber" em processo de implementação');
end;

procedure TFApollo2.btnDesconectarClick(Sender: TObject);
begin
  UpdateLogMessage;
  mmLog.Lines.Add(cLogMessage + 'Funcionalidade "Desconectar" em processo de implementação');
end;

procedure TFApollo2.btnLimparClick(Sender: TObject);
begin
  UpdateLogMessage;
  mmLog.Lines.Clear;
  mmLog.Lines.Add(cLogMessage + 'Log limpo com sucesso!');
end;

end.
