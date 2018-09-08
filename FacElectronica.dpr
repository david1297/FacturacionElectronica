program FacElectronica;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Main},
  uFacNutritec in 'Comun\uFacNutritec.pas',
  Carvajal in 'Carvajal.pas',
  EditarCorreo in 'EditarCorreo.pas' {Form1},
  Factory in 'Factory.pas',
  InvoiceService1 in 'Comun\InvoiceService1.pas',
  uSecurity in 'Comun\uSecurity.pas',
  wsse in 'Comun\wsse.pas',
  Service1 in 'Comun\Service1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
