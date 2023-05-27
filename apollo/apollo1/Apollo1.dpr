program Apollo1;

uses
  Vcl.Forms,
  ufApollo1 in 'units\ufApollo1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
