unit EditarCorreo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Samples.Calendar,
  Vcl.ComCtrls, Data.DB, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.DApt, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteVDataSet,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, MemTableEh, Vcl.DBCtrls,
  Vcl.Mask, DBCtrlsEh, Service1, System.NetEncoding, System.Threading, Activex,
  Generics.Collections, RegularExpressions, StrUtils, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Principal;

procedure TForm1.Button1Click(Sender: TObject);
var
  Email: string;
  vQ: TFDQuery;
  vBook: TBookmark;
begin
  Email := Edit1.Text;
  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.Conexion;
    vQ.ExecSQL
      ('update SHIPTO S set EMAIL = :Email WHERE S.ID_N= :ID_N AND S.SUCCLIENTE = :SUB',
      [Email, Main.vCliente, Main.vSubCliente],
      [TFieldType.ftString, TFieldType.ftString, TFieldType.ftInteger]);
  finally
    vQ.DisposeOf;
    if Main.Paginas.ActivePage = Main.PFacturas then
    begin
      Main.memFACTURA.Edit;
      Main.memFACTURAEMAIL.AsString := Email;
    end
    else if Main.Paginas.ActivePage = Main.PNotas then
    begin
      Main.memNota.Edit;
      Main.memNotaEMAIL.AsString := Email;
    end
    else if Main.Paginas.ActivePage = Main.PDevoluciones then
    begin
      Main.memDevolucion.Edit;
      Main.memDevolucionEMAIL.AsString := Email;
    end;

    Form1.Close;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Consulta: TFDQuery;
begin
  Consulta := TFDQuery.Create(nil);
  try
    Consulta.Connection := Main.Conexion;
    Consulta.SQL.Add
      ('SELECT S.COMPANY,S.EMAIL FROM SHIPTO S WHERE S.ID_N= :ID_N AND S.SUCCLIENTE = :SUB');

    Consulta.ParamByName('ID_N').AsString := Main.vCliente;
    Consulta.ParamByName('SUB').AsInteger := Main.vSubCliente;
    Consulta.Open;
    Label4.Caption := Consulta.FieldByName('COMPANY').AsString;
    Edit1.Text := Consulta.FieldByName('EMAIL').AsString;
    Label5.Caption := Main.vDocumento;
  finally
    Consulta.DisposeOf;
  end;
end;

end.
