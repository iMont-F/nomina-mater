program Apollo2;

uses
  Vcl.Forms,
  ufApollo2 in 'units\ufApollo2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
