unit Factory;

interface

uses System.Classes, Vcl.Graphics,
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
  Vcl.Mask, DBCtrlsEh, Service, System.NetEncoding, System.Threading, Activex,
  Generics.Collections,
  RegularExpressions, StrUtils, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  System.SysUtils, System.Variants, uFacNutritec, ComObj;

type
  PFactory = class
  public
    procedure EnviarFacturas;
    procedure EnviarNotas;
    procedure EnviarDevoluciones;
    procedure EstadoFacturas;
    procedure EstadoNotas;
    procedure EstadoDevoluciones;
    procedure PdfFacturas;
    procedure PdfNotas;
    procedure PdfDevoluciones;
    procedure XmlFacturas;
    procedure XmlNotas;
    procedure XmlDevoluciones;
    procedure CorreoFacturas;
    procedure CorreoDevoluciones;
    procedure CorreoNotas;

  var
    iFactura: IXMLFACTURA;
  end;

implementation

uses Principal;

{ PFactory }

procedure PFactory.CorreoDevoluciones;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: SendEmailResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
begin
  h := 0;

  vBook := Main.MemDevolucion.GetBookmark;
  if Main.MemDevolucionTipo.AsString = '' then
  begin
    exit;
  end;
  Main.MemDevolucion.DisableControls;
  try
    Main.MemDevolucion.Filtered := False;
    Main.MemDevolucion.Filtered := True;
    Main.MemDevolucion.First;
    while not Main.MemDevolucion.Eof do
    begin
      Main.MemDevolucion.Open;
      Main.MemDevolucion.Edit;
      vRespuesta := Service.GetIService().EnvioCorreo(Main.vlTokenEmpresa,
        Main.vlTokenPassword, Main.MemDevolucionPREFIJO_DIAN.AsString +
        Main.MemDevolucionNUMBER.AsString, Main.MemDevolucionEMAIL.AsString);
      ShowMessage('Documento: ' + Main.MemDevolucionPREFIJO_DIAN.AsString + ' - ' +
        Main.MemDevolucionNUMBER.AsString + #13#10 + vRespuesta.Codigo.ToString
        + ' - ' + vRespuesta.mensaje);
      Main.MemDevolucion.Next;
    end;
  finally
    Main.MemDevolucion.Filtered := False;
    Main.MemDevolucion.EnableControls;
  end;
end;

procedure PFactory.CorreoFacturas;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: SendEmailResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.memFACTURA.GetBookmark;

  if Main.memFACTURATIPO.AsString = '' then
  begin
    exit;
  end;
  Main.memFACTURA.DisableControls;
  try
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.Filtered := True;
    Main.memFACTURA.First;
    while not Main.memFACTURA.Eof do
    begin
      Main.memFACTURA.Open;
      Main.memFACTURA.Edit;
      vRespuesta := Service.GetIService().EnvioCorreo(Main.vlTokenEmpresa,
        Main.vlTokenPassword, Main.memFACTURAPREFIJO_DIAN.AsString +
        Main.memFACTURANUMERO.AsString, Main.memFACTURAEMAIL.AsString);
      ShowMessage('Documento: ' + Main.memFACTURAPREFIJO_DIAN.AsString + ' - ' +
        Main.memFACTURANUMERO.AsString + #13#10 + vRespuesta.Codigo.ToString +
        ' - ' + vRespuesta.mensaje);
      Main.memFACTURA.Next;
    end;
  finally
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.EnableControls;
  end;
end;

procedure PFactory.CorreoNotas;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: SendEmailResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.memNota.GetBookmark;
  if Main.memNotaTIPO.AsString = '' then
  begin
    exit;
  end;
  Main.memNota.DisableControls;
  try
    Main.memNota.Filtered := False;
    Main.memNota.Filtered := True;
    Main.memNota.First;
    while not Main.memNota.Eof do
    begin
      Main.memNota.Open;
      Main.memNota.Edit;
      vRespuesta := Service.GetIService().EnvioCorreo(Main.vlTokenEmpresa,
        Main.vlTokenPassword, Main.memNotaPREFIJO_DIAN.AsString +
        Main.memNotaBATCH.AsString, Main.memNotaEMAIL.AsString);
      ShowMessage('Documento: ' + Main.memNotaPREFIJO_DIAN.AsString + ' - ' +
        Main.memNotaBATCH.AsString + #13#10 + vRespuesta.Codigo.ToString + ' - '
        + vRespuesta.mensaje);
      Main.memNota.Next;
    end;
  finally
    Main.memNota.Filtered := False;
    Main.memNota.EnableControls;
  end;
end;

procedure PFactory.EnviarDevoluciones;
var
  h: Integer;
  vSeriales: string;
  vQ: TFDQuery;
  vBook: TBookmark;
  vCliente: Cliente;
  vFactura: FacturaGeneral2;
  vDetalle: FacturaDetalle2;
  vImpuesto: FacturaImpuestos2;
  vRespuesta: DocumentResponse2;
  vArrDetalle: ArrayOfFacturaDetalle;
  vImpuestos: ArrayOfFacturaImpuestos;
begin
  if Main.MemDevolucionTipo.AsString = '' then
  begin
    exit;
  end;
  Main.QDevDetalle.DisableControls;
  vBook := Main.MemDevolucion.GetBookmark;
  Main.MemDevolucion.DisableControls;
  try
    Main.MemDevolucion.Filtered := False;
    Main.MemDevolucion.Filtered := True;
    Main.MemDevolucion.First;
    while not Main.MemDevolucion.Eof do
    begin
      Main.QDevDetalle.Close;
      Main.QDevDetalle.ParamByName('Tipo').AsString :=
        Main.MemDevolucionTipo.AsString;
      Main.QDevDetalle.ParamByName('Number').AsInteger :=
        Main.MemDevolucionNUMBER.AsInteger;
      Main.QDevDetalle.Open;

      SetLength(vArrDetalle, Main.QDevDetalle.RecordCount);
      Main.QDevDetalle.First;
      while not Main.QDevDetalle.Eof do
      begin
        vImpuestos := nil;
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        if Main.QDevDetalleVLR_CONSUMO.AsFloat = 0 then
        begin
          if Main.QDevDetalleVLR_IVA.AsFloat <> 0 then
          begin
            vImpuesto.codigoTOTALImp := '01';
            vImpuesto.porcentajeTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QDevDetallePORC_IVA.AsFloat), ',', '.');
            vImpuesto.valorTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleVLR_IVA.AsFloat),
              ',', '.');
            vImpuesto.baseImponibleTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleBASE.AsFloat),
              ',', '.');
            vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          end
          else
          begin
            vImpuesto.codigoTOTALImp := '01';
            vImpuesto.porcentajeTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QDevDetallePORC_IVA.AsFloat), ',', '.');;
            vImpuesto.valorTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleVLR_IVA.AsFloat),
              ',', '.');;
            vImpuesto.baseImponibleTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleBASE.AsFloat),
              ',', '.');
            vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          end;
        end;
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        if Main.QDevDetalleVLR_CONSUMO.AsFloat <> 0 then
        begin
          vImpuesto.codigoTOTALImp := '03';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QDevDetallePORC_CONSUMO.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QDevDetalleVLR_CONSUMO.AsFloat), ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
        end;
        vDetalle := FacturaDetalle2.Create;
        vDetalle.codigoProducto := Main.QDevDetalleITEM.AsString;
        vDetalle.descripcion := Main.QDevDetalleDESCRIPCION.AsString;
        Main.QSeriales.Close;
        Main.QSeriales.ParamByName('TIPO').AsString :=
          Main.MemDevolucionTIPO.AsString;
        Main.QSeriales.ParamByName('BATCH').AsInteger :=
          Main.MemDevolucionNUMBER.AsInteger;
        Main.QSeriales.ParamByName('ITEM').AsString :=
          Main.QDevDetalleITEM.AsString;
        Main.QSeriales.Open;
        Main.QSeriales.First;
        vSeriales := '';
        h := 0;
        while not Main.QSeriales.Eof do
        BEGIN
          if Main.QSerialesNOSERIE.AsString <> '' then
          begin
            if h = 0 then
            begin
              vSeriales := Main.QSerialesNOSERIE.AsString;
            end
            else
              vSeriales := Main.QSerialesNOSERIE.AsString + ',' + vSeriales;

            h := h + 1;
          end;
          Main.QSeriales.Next;
        END;

        if (vSeriales <> '') then
        begin
          vDetalle.seriales := vSeriales;
        end;
        vDetalle.cantidadUnidades := Main.QDevDetalleQTYSHIP.AsString;
        vDetalle.precioVentaUnitario := Main.QDevDetallePRICE.AsString;
        vDetalle.precioTotalSinImpuestos := Main.QDevDetalleTSIMPUESTO.AsString;
        vDetalle.precioTotal :=
          ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleTOTAL.AsFloat),
          ',', '.');
        vDetalle.unidadMedida := Main.QDevDetalleUOFMSALES.AsString;
        vDetalle.descuento :=
          ReplaceStr(FormatFloat('##0.##', Main.QDevDetalleTOTALDCT.AsFloat),
          ',', '.');
        vDetalle.impuestosDetalles := vImpuestos;
        vArrDetalle[Main.QDevDetalle.RecNo - 1] := vDetalle;
        Main.QDevDetalle.Next;
      end;
      vImpuestos := nil;
      Main.QDevImpuestos.Close;
      Main.QDevImpuestos.ParamByName('Tipo').AsString :=
        Main.MemDevolucionTipo.AsString;
      Main.QDevImpuestos.ParamByName('Number').AsInteger :=
        Main.MemDevolucionNUMBER.AsInteger;
      Main.QDevImpuestos.Open;
      Main.QDevImpuestos.First;
      while not Main.QDevImpuestos.Eof do
      begin
        if Main.QDevImpuestosVLR_CONSUMO.AsFloat = 0 then
        begin
          if Main.MemDevolucionVIVA.AsFloat <> 0 then
          begin
            SetLength(vImpuestos, Length(vImpuestos) + 1);
            vImpuesto := FacturaImpuestos2.Create;
            vImpuesto.codigoTOTALImp := '01';
            vImpuesto.porcentajeTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QDevImpuestosPORC_IVA.AsFloat), ',', '.');
            vImpuesto.valorTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QDevImpuestosVLR_IVA.AsFloat), ',', '.');
            vImpuesto.baseImponibleTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QDevImpuestosBASE.AsFloat),
              ',', '.');
            vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          end;
        end
        ELSE if Main.MemDevolucionIMPCONSUMO.AsFloat <> 0 then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '03';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QDevImpuestosPORC_CONSUMO.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QDevImpuestosVLR_CONSUMO.AsFloat), ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QDevImpuestosBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
        end;
        Main.QDevImpuestos.Next;
      end;
      Main.QSys.Close;
      Main.QSys.Open;
      if Main.MemDevolucionRETIVA.AsFloat <> 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '06';
        vImpuesto.porcentajeTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.QSysRETEI.AsFloat), ',', '.');
        vImpuesto.valorTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionRETIVA.AsFloat),
          ',', '.');
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionVIVA.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
      end;
      if Main.MemDevolucionRETE.AsFloat <> 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '05';
        vImpuesto.controlInterno := Main.MemDevolucionTIPO_RETENCION.AsString;
        vImpuesto.porcentajeTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionPORC_RETE.AsFloat),
          ',', '.');
        vImpuesto.valorTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionRETE.AsFloat),
          ',', '.');
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionSUBTOTAL.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
      end;
      if Main.MemDevolucionRETICA.AsFloat <> 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '07';
        vImpuesto.porcentajeTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionPORC_ICA.AsFloat),
          ',', '.');
        vImpuesto.valorTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionRETICA.AsFloat),
          ',', '.');
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionSUBTOTAL.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
      end;
      vCliente := Main.getCliente(Main.MemDevolucionNit.AsInteger);
      vFactura := FacturaGeneral2.Create;
      vFactura.Cliente := vCliente;
      vFactura.consecutivoDocumento := Main.MemDevolucionNUMBER.AsString;
      vFactura.detalleDeFactura := vArrDetalle;
      vFactura.fechaEmision := FormatDateTime('YYYY-MM-DD HH:MM:SS',
        Now - ((5 / 24) / 60) / 60);
      vFactura.importeTotal := Main.MemDevolucionTOTAL.AsString;
      vFactura.impuestosGenerales := vImpuestos;
      if Main.MemDevolucionMEDIOS_PAGO.AsString = 'EF' then
        vFactura.medioPago := '10';
      if Main.MemDevolucionMEDIOS_PAGO.AsString = 'CH' then
        vFactura.medioPago := '20';
      if Main.MemDevolucionMEDIOS_PAGO.AsString = 'CP' then
        vFactura.medioPago := '20';
      if Main.MemDevolucionMEDIOS_PAGO.AsString = 'TC' then
        vFactura.medioPago := '41';
      if Main.MemDevolucionMEDIOS_PAGO.AsString = 'OT' then
        vFactura.medioPago := '41';
      if Main.MemDevolucionMEDIOS_PAGO.AsString = 'CR' then
        vFactura.medioPago := '42';
      vFactura.rangoNumeracion := Main.MemDevolucionPREFIJO_DIAN.AsString + '-1';
      vFactura.tipoDocumento := '04';
      vFactura.moneda := 'COP';
      vFactura.totalSinImpuestos :=
        ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionSUBTOTAL.AsFloat),
        ',', '.');
      vFactura.totalDescuentos :=
        ReplaceStr(FormatFloat('##0.##', Main.MemDevolucionDESTOTAL.AsFloat),
        ',', '.');
      vFactura.motivoNota := Main.MemDevolucionCONCEPTO_DV.AsString;
      vFactura.fechaVencimiento := FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
      vFactura.uuidDocumentoModificado := Main.MemDevolucionCUFE.AsString;
      vFactura.consecutivoDocumentoModificado :=
        Main.MemDevolucionCRUCE.AsString + Main.MemDevolucionINVC.AsString;
      vFactura.fechaEmisionDocumentoModificado :=
        FormatDateTime('YYYY-MM-DD HH:MM:SS',
        Main.MemDevolucionFECHA_FV.AsDateTime);
      vRespuesta := Service.GetIService().Enviar(Main.vlTokenEmpresa,
        Main.vlTokenPassword, vFactura);
      if vRespuesta.resultado = 'Procesado' then
      begin
        vQ := TFDQuery.Create(nil);
        try
          vQ.Connection := Main.Conexion;
          vQ.ExecSQL
            ('update OE set ENVIADO_DEV = ''S'' where tipo = :tipo and number = :num',
            [Main.MemDevolucionTipo.AsString,
            Main.MemDevolucionNUMBER.AsInteger],
            [TFieldType.ftString, TFieldType.ftInteger]);
        finally
          vQ.DisposeOf;
        end;
      END;
      ShowMessage(vRespuesta.Codigo.ToString + ' - ' + vRespuesta.mensaje);
      Main.MemDevolucion.Next;
    end;
  finally
    Main.MemDevolucion.Filtered := False;
    Main.MemDevolucion.GotoBookmark(vBook);
    Main.MemDevolucion.FreeBookmark(vBook);
    Main.MemDevolucion.EnableControls;
  end;
  Main.NFolios.Caption := Main.GetFoliosRestantes.FoliosRestantes.ToString;
end;

procedure PFactory.EnviarFacturas;
var
  h: Integer;
  vSeriales: string;
  vQ: TFDQuery;
  vBook: TBookmark;
  vCliente: Cliente;
  vFactura: FacturaGeneral2;
  vExtras: ArrayOfExtras;
  vExtra: Extras2;
  vDetalle: FacturaDetalle2;
  vImpuesto: FacturaImpuestos2;
  vRespuesta: DocumentResponse2;
  vArrDetalle: ArrayOfFacturaDetalle;
  vImpuestos: ArrayOfFacturaImpuestos;
begin
  if Main.memFACTURATIPO.AsString = '' then
  begin
    exit;
  end;
  Main.QFacDetalle.DisableControls;
  vBook := Main.memFACTURA.GetBookmark;
  Main.memFACTURA.DisableControls;
  try
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.Filtered := True;
    Main.memFACTURA.First;
    while not Main.memFACTURA.Eof do
    begin
      Main.QFacDetalle.Close;
      Main.QFacDetalle.ParamByName('Tipo').AsString :=
        Main.memFACTURATIPO.AsString;
      Main.QFacDetalle.ParamByName('Number').AsInteger :=
        Main.memFACTURANUMERO.AsInteger;
      Main.QFacDetalle.Open;
      SetLength(vArrDetalle, Main.QFacDetalle.RecordCount);
      Main.QFacDetalle.First;
      while not Main.QFacDetalle.Eof do
      begin
        vImpuestos := nil;
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        if Main.QFacDetalleVLR_CONSUMO.AsFloat = 0 then
        begin
          if Main.QFacDetalleVLR_IVA.AsFloat <> 0 then
          begin
            vImpuesto.codigoTOTALImp := '01';
            vImpuesto.porcentajeTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QFacDetallePORC_IVA.AsFloat), ',', '.');
            vImpuesto.valorTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QFacDetalleVLR_IVA.AsFloat),
              ',', '.');
            vImpuesto.baseImponibleTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QFacDetalleBASE.AsFloat),
              ',', '.');
            vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          end
          else
          begin
            vImpuesto.codigoTOTALImp := '01';
            vImpuesto.porcentajeTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QFacDetallePORC_IVA.AsFloat), ',', '.');;
            vImpuesto.valorTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QFacDetalleVLR_IVA.AsFloat),
              ',', '.');;
            vImpuesto.baseImponibleTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QFacDetalleBASE.AsFloat),
              ',', '.');
            vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          end;
        end;
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        if Main.QFacDetalleVLR_CONSUMO.AsFloat <> 0 then
        begin
          vImpuesto.codigoTOTALImp := '03';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QFacDetallePORC_CONSUMO.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QFacDetalleVLR_CONSUMO.AsFloat), ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QFacDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
        end;
        vDetalle := FacturaDetalle2.Create;
        vDetalle.codigoProducto := Main.QFacDetalleITEM.AsString;
        vDetalle.descripcion := Main.QFacDetalleDESCRIPCION.AsString;
        Main.QSeriales.Close;
        Main.QSeriales.ParamByName('TIPO').AsString :=
          Main.memFACTURATIPO.AsString;
        Main.QSeriales.ParamByName('BATCH').AsInteger :=
          Main.memFACTURANUMERO.AsInteger;
        Main.QSeriales.ParamByName('ITEM').AsString :=
          Main.QFacDetalleITEM.AsString;
        Main.QSeriales.Open;
        Main.QSeriales.First;
        vSeriales := '';
        h := 0;
        while not Main.QSeriales.Eof do
        BEGIN
          if Main.QSerialesNOSERIE.AsString <> '' then
          begin
            if h = 0 then
            begin
              vSeriales := Main.QSerialesNOSERIE.AsString;
            end
            else
              vSeriales := Main.QSerialesNOSERIE.AsString + ',' + vSeriales;

            h := h + 1;
          end;
          Main.QSeriales.Next;
        END;

        if (vSeriales <> '') then
        begin
          vDetalle.seriales := vSeriales;
        end;
        vDetalle.cantidadUnidades := Main.QFacDetalleQTYSHIP.AsString;
        vDetalle.precioVentaUnitario :=
          ReplaceStr(FormatFloat('##0.##',
          (Main.QFacDetallePRICE.AsFloat / Main.memFACTURATASA.AsFloat)),
          ',', '.');
        vDetalle.precioTotalSinImpuestos :=
          ReplaceStr(FormatFloat('##0.##', (Main.QFacDetalleTSIMPUESTO.AsFloat /
          Main.memFACTURATASA.AsFloat)), ',', '.');
        vDetalle.precioTotal :=
          ReplaceStr(FormatFloat('##0.##',
          (Main.QFacDetalleTOTAL.AsFloat / Main.memFACTURATASA.AsFloat)),
          ',', '.');
        vDetalle.unidadMedida := Main.QFacDetalleUOFMSALES.AsString;
        vDetalle.descuento :=
          ReplaceStr(FormatFloat('##0.##',
          (Main.QFacDetalleTOTALDCT.AsFloat / Main.memFACTURATASA.AsFloat)),
          ',', '.');
        vDetalle.impuestosDetalles := vImpuestos;
        vArrDetalle[Main.QFacDetalle.RecNo - 1] := vDetalle;
        Main.QFacDetalle.Next;
      end;
      vImpuestos := nil;
      Main.QFacImpuestos.Close;
      Main.QFacImpuestos.ParamByName('Tipo').AsString :=
        Main.memFACTURATIPO.AsString;
      Main.QFacImpuestos.ParamByName('Number').AsInteger :=
        Main.memFACTURANUMERO.AsInteger;
      Main.QFacImpuestos.Open;
      Main.QFacImpuestos.First;
      while not Main.QFacImpuestos.Eof do
      begin
        if Main.QFacImpuestosVLR_CONSUMO.AsFloat = 0 then
        begin
          if Main.memFACTURAVIVA.AsFloat <> 0 then
          begin
            SetLength(vImpuestos, Length(vImpuestos) + 1);
            vImpuesto := FacturaImpuestos2.Create;
            vImpuesto.codigoTOTALImp := '01';
            vImpuesto.porcentajeTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QFacImpuestosPORC_IVA.AsFloat), ',', '.');
            vImpuesto.valorTOTALImp :=
              ReplaceStr(FormatFloat('##0.##',
              Main.QFacImpuestosVLR_IVA.AsFloat), ',', '.');
            vImpuesto.baseImponibleTOTALImp :=
              ReplaceStr(FormatFloat('##0.##', Main.QFacImpuestosBASE.AsFloat),
              ',', '.');
            vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          end;
        end
        ELSE if Main.memFACTURAIMPCONSUMO.AsFloat <> 0 then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '03';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QFacImpuestosPORC_CONSUMO.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QFacImpuestosVLR_CONSUMO.AsFloat), ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QFacImpuestosBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
        end;
        Main.QFacImpuestos.Next;
      end;
      Main.QSys.Close;
      Main.QSys.Open;
      if Main.memFACTURARETIVA.AsFloat <> 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '06';
        vImpuesto.porcentajeTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.QSysRETEI.AsFloat), ',', '.');
        vImpuesto.valorTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURARETIVA.AsFloat),
          ',', '.');
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURAVIVA.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
      end;
      if Main.memFACTURARETE.AsFloat <> 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '05';
        vImpuesto.controlInterno := Main.memFACTURATIPO_RETENCION.AsString;
        vImpuesto.porcentajeTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURAPORC_RETE.AsFloat),
          ',', '.');
        vImpuesto.valorTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURARETE.AsFloat),
          ',', '.');
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURASUBTOTAL.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
      end;
      if Main.memFACTURARETICA.AsFloat <> 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '07';
        vImpuesto.porcentajeTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURAPORC_ICA.AsFloat),
          ',', '.');
        vImpuesto.valorTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURARETICA.AsFloat),
          ',', '.');
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memFACTURASUBTOTAL.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
      end;
      vCliente := Main.getCliente(Main.memFACTURANIT.AsInteger);
      vFactura := FacturaGeneral2.Create;
      vFactura.Cliente := vCliente;
      vFactura.consecutivoDocumento := Main.memFACTURANUMERO.AsString;
      vFactura.detalleDeFactura := vArrDetalle;
      vFactura.fechaEmision := FormatDateTime('YYYY-MM-DD HH:MM:SS',
        Now - ((5 / 24) / 60) / 60);
      vFactura.importeTotal :=
        ReplaceStr(FormatFloat('##0.##',
        (Main.memFACTURATOTAL.AsFloat / Main.memFACTURATASA.AsFloat)),
        ',', '.');
      vFactura.impuestosGenerales := vImpuestos;
      if Main.memFACTURAMEDIOS_PAGO.AsString = 'EF' then
        vFactura.medioPago := '10';
      if Main.memFACTURAMEDIOS_PAGO.AsString = 'CH' then
        vFactura.medioPago := '20';
      if Main.memFACTURAMEDIOS_PAGO.AsString = 'CP' then
        vFactura.medioPago := '20';
      if Main.memFACTURAMEDIOS_PAGO.AsString = 'TC' then
        vFactura.medioPago := '41';
      if Main.memFACTURAMEDIOS_PAGO.AsString = 'OT' then
        vFactura.medioPago := '41';
      if Main.memFACTURAMEDIOS_PAGO.AsString = 'CR' then
        vFactura.medioPago := '42';
      vFactura.moneda := Main.memFACTURACOD_MONEDA.AsString;
      vFactura.rangoNumeracion := Main.memFACTURAPREFIJO_DIAN.AsString + '-1';
      if Main.memFACTURACOD_MONEDA.AsString = 'COP' then
      BEGIN
        vFactura.tipoDocumento := '01';
      END
      ELSE if Main.memFACTURACOD_MONEDA.AsString <> 'COP' then
      BEGIN
        vFactura.tipoDocumento := '02';
        vFactura.icoterms := 'OTR';
        vExtras := nil;
        SetLength(vExtras, Length(vExtras) + 1);
        vExtra := Extras2.Create;
        vExtra.controlInterno1 := 'TRM';
        vExtra.controlInterno2 := '';
        vExtra.Nombre := '81';
        vExtra.valor := '';
        vExtra.pdf := '1';
        vExtra.Xml := '1';
        vExtras[Length(vExtras) - 1] := vExtra;
        SetLength(vExtras, Length(vExtras) + 1);
        vExtra := Extras2.Create;
        vExtra.controlInterno1 := 'Moneda de Origen:';
        vExtra.controlInterno2 := '';
        vExtra.Nombre := '83';
        vExtra.valor := 'COP';
        vExtra.pdf := '1';
        vExtra.Xml := '1';
        vExtras[Length(vExtras) - 1] := vExtra;
        SetLength(vExtras, Length(vExtras) + 1);
        vExtra := Extras2.Create;
        vExtra.controlInterno1 := 'Moneda de Destino:';
        vExtra.controlInterno2 := '';
        vExtra.Nombre := '84';
        vExtra.valor := Main.memFACTURACOD_MONEDA.AsString;
        vExtra.pdf := '1';
        vExtra.Xml := '1';
        vExtras[Length(vExtras) - 1] := vExtra;
        SetLength(vExtras, Length(vExtras) + 1);
        vExtra := Extras2.Create;
        vExtra.controlInterno1 := 'Valor de Calculo:';
        vExtra.controlInterno2 := '';
        vExtra.Nombre := '85';
        vExtra.valor := Main.memFACTURATASA.AsString;
        vExtra.pdf := '1';
        vExtra.Xml := '1';
        vExtras[Length(vExtras) - 1] := vExtra;
        vFactura.extras := vExtras;
      END;
      vFactura.totalSinImpuestos :=
        ReplaceStr(FormatFloat('##0.##',
        (Main.memFACTURASUBTOTAL.AsFloat / Main.memFACTURATASA.AsFloat)),
        ',', '.');
      vFactura.totalDescuentos :=
        ReplaceStr(FormatFloat('##0.##',
        (Main.memFACTURADESTOTAL.AsFloat / Main.memFACTURATASA.AsFloat)),
        ',', '.');
      vRespuesta := Service.GetIService().Enviar(Main.vlTokenEmpresa,
        Main.vlTokenPassword, vFactura);
      if vRespuesta.cufe <> '' then
      begin
        vQ := TFDQuery.Create(nil);
        try
          vQ.Connection := Main.Conexion;
          vQ.ExecSQL
            ('update oe set cufe = :cufe where tipo = :tipo and number = :num',
            [vRespuesta.cufe, Main.memFACTURATIPO.AsString,
            Main.memFACTURANUMERO.AsInteger],
            [TFieldType.ftString, TFieldType.ftString, TFieldType.ftInteger]);
        finally
          vQ.DisposeOf;
        end;
      end;
      ShowMessage(vRespuesta.Codigo.ToString + ' - ' + vRespuesta.mensaje);
      Main.memFACTURA.Next;
    end;
  finally
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.GotoBookmark(vBook);
    Main.memFACTURA.FreeBookmark(vBook);
    Main.memFACTURA.EnableControls;
  end;
  Main.NFolios.Caption := Main.GetFoliosRestantes.FoliosRestantes.ToString;
end;

procedure PFactory.EnviarNotas;
var
  vSub: Double;
  vIva: Double;
  vIco: Double;
  vRet: Double;
  vIca: Double;
  vRIva: Double;
  h: Integer;
  p: Integer;
  vQ: TFDQuery;
  vBook: TBookmark;
  vCliente: Cliente;
  vFactura: FacturaGeneral2;
  vDetalle: FacturaDetalle2;
  vImpuesto: FacturaImpuestos2;
  vRespuesta: DocumentResponse2;
  vArrDetalle: ArrayOfFacturaDetalle;
  vImpuestos: ArrayOfFacturaImpuestos;
begin
  if Main.memNotaTIPO.AsString = '' then
  begin
    exit;
  end;
  Main.QNotDetalle.DisableControls;
  vBook := Main.memNota.GetBookmark;
  Main.memNota.DisableControls;
  try
    Main.memNota.Filtered := False;
    Main.memNota.Filtered := True;
    Main.memNota.First;
    vSub := 0;
    vIva := 0;
    vIco := 0;
    vRet := 0;
    vIca := 0;
    vRIva := 0;
    h := 0;
    p := 0;
    while not Main.memNota.Eof do
    begin
      vCliente := Main.getCliente(Main.memNotaID_N.AsInteger);
      Main.QNotDetalle.Close;
      Main.QNotDetalle.ParamByName('Tipo').AsString :=
        Main.memNotaTIPO.AsString;
      Main.QNotDetalle.ParamByName('BATCH').AsInteger :=
        Main.memNotaBATCH.AsInteger;
      Main.QNotDetalle.ParamByName('CLASE').AsString :=
        Main.QTip_DocTIPO.AsString;
      Main.QNotDetalle.Open;
      vImpuestos := nil;
      SetLength(vImpuestos, Length(vImpuestos) + 1);
      Main.QNotDetalle.First;
      while not Main.QNotDetalle.Eof do
      begin
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'IVA' then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '01';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QNotDetallePORCENRETENCION.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          vIva := Main.QNotDetalleVALOR.AsFloat;
          h := 1;
        end;
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'ICO' then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '03';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            (Main.QNotDetalleVALOR.AsFloat / Main.QNotDetalleBASE.AsFloat) *
            100), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          vIco := Main.QNotDetalleVALOR.AsFloat;
          h := 1;
        end;
        if (Main.QNotDetallePRINCIPAL.AsString = 'S') and (p = 0) then
        BEGIN
          vSub := vSub + Main.QNotDetalleVALOR.AsFloat;
          SetLength(vArrDetalle, 1);
          vDetalle := FacturaDetalle2.Create;
          vDetalle.codigoProducto := Main.QNotDetalleCONCEPTO_NOTAFE.AsString;
          vDetalle.descripcion := Main.QNotDetalleMOTIVO.AsString;
          vDetalle.cantidadUnidades := '1';
          vDetalle.unidadMedida := 'UND';
          vDetalle.descuento := '0';
          vSub := Main.QNotDetalleVALOR.AsFloat;
          p := 1;
        END;
        Main.QNotDetalle.Next;
      end;
      if h = 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '01';
        vImpuesto.porcentajeTOTALImp := '0';
        vImpuesto.valorTOTALImp := '0';
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memNotaSUBTOTAL.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
        vIva := 0;
      end;
      h := 0;
      vDetalle.impuestosDetalles := vImpuestos;
      vImpuestos := nil;
      Main.QNotDetalle.First;
      while not Main.QNotDetalle.Eof do
      begin
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'IVA' then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '01';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QNotDetallePORCENRETENCION.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          h := 1;
        end;
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'ICO' then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '03';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            (Main.QNotDetalleVALOR.AsFloat / Main.QNotDetalleBASE.AsFloat) *
            100), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          h := 1;
        end;
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'RETEIVA' then
        begin
          Main.QSys.Close;
          Main.QSys.Open;
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '06';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QSysRETEI.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          vRIva := Main.QNotDetalleVALOR.AsFloat;
        end;
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'RETEFUENTE' then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '05';
          vImpuesto.controlInterno := Main.memNotaTIPO_RETENCION.AsString;
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QNotDetallePORCENRETENCION.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          vRet := Main.QNotDetalleVALOR.AsFloat;
        end;
        if Main.QNotDetalleAPLI_IMPUESTO.AsString = 'ICA' then
        begin
          SetLength(vImpuestos, Length(vImpuestos) + 1);
          vImpuesto := FacturaImpuestos2.Create;
          vImpuesto.codigoTOTALImp := '07';
          vImpuesto.porcentajeTOTALImp :=
            ReplaceStr(FormatFloat('##0.##',
            Main.QNotDetallePORCENRETENCION.AsFloat), ',', '.');
          vImpuesto.valorTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleVALOR.AsFloat),
            ',', '.');
          vImpuesto.baseImponibleTOTALImp :=
            ReplaceStr(FormatFloat('##0.##', Main.QNotDetalleBASE.AsFloat),
            ',', '.');
          vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
          vIca := Main.QNotDetalleVALOR.AsFloat;
        end;
        Main.QNotDetalle.Next;
      end;
      if h = 0 then
      begin
        SetLength(vImpuestos, Length(vImpuestos) + 1);
        vImpuesto := FacturaImpuestos2.Create;
        vImpuesto.codigoTOTALImp := '01';
        vImpuesto.porcentajeTOTALImp := '0';
        vImpuesto.valorTOTALImp := '0';
        vImpuesto.baseImponibleTOTALImp :=
          ReplaceStr(FormatFloat('##0.##', Main.memNotaSUBTOTAL.AsFloat),
          ',', '.');
        vImpuestos[Length(vImpuestos) - 1] := vImpuesto;
        vIva := 0;
      end;
      vDetalle.precioVentaUnitario :=
        (vSub - vIva - vIco + vIca + vRIva + vRet).ToString;
      vDetalle.precioTotalSinImpuestos :=
        (vSub - vIva - vIco + vIca + vRIva + vRet).ToString;
      vDetalle.precioTotal := (vSub + vIca + vRIva + vRet).ToString;
      vArrDetalle[0] := vDetalle;
      vFactura := FacturaGeneral2.Create;
      vFactura.Cliente := vCliente;
      vFactura.impuestosGenerales := vImpuestos;
      vFactura.consecutivoDocumento := Main.memNotaBATCH.AsString;
      vFactura.detalleDeFactura := vArrDetalle;
      vFactura.fechaEmision := FormatDateTime('YYYY-MM-DD HH:MM:SS',
        Now - ((5 / 24) / 60) / 60);
      if Main.QTip_DocTIPO.AsString = 'NC' then
      begin
        vFactura.motivoNota := Main.memNotaCONCEPTO_NOTAFE.AsString;
        vFactura.tipoDocumento := '04';
        vFactura.importeTotal := Main.memNotaVALOR.AsString;
      end
      else
      begin
        vFactura.motivoNota := Main.memNotaCONCEPTO_NOTAFE.AsString;
        vFactura.tipoDocumento := '07';
        vFactura.importeTotal := Main.memNotaVALOR.AsString;
      end;
      vFactura.medioPago := '10';
      vFactura.moneda := 'COP';
      vFactura.rangoNumeracion := Main.memNotaPREFIJO_DIAN.AsString + '-1';
      vFactura.totalSinImpuestos :=
        (vSub - vIva - vIco + vIca + vRIva + vRet).ToString;
      vFactura.fechaVencimiento := FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
      vFactura.uuidDocumentoModificado := Main.memNotaCUFE.AsString;
      vFactura.consecutivoDocumentoModificado := Main.memNotaCRUCE.AsString +
        Main.memNotaINVC.AsString;
      vFactura.fechaEmisionDocumentoModificado :=
        FormatDateTime('YYYY-MM-DD HH:MM:SS', Main.memNotaFECHA_FV.AsDateTime);
      vRespuesta := Service.GetIService().Enviar(Main.vlTokenEmpresa,
        Main.vlTokenPassword, vFactura);
      if vRespuesta.resultado = 'Procesado' then
      begin
        vQ := TFDQuery.Create(nil);
        try
          vQ.Connection := Main.Conexion;
          vQ.ExecSQL
            ('update carproen set enviado = ''S'' where tipo = :tipo and batch = :num',
            [Main.memNotaTIPO.AsString, Main.memNotaBATCH.AsInteger],
            [TFieldType.ftString, TFieldType.ftInteger]);
        finally
          vQ.DisposeOf;
        end;

      END;
      ShowMessage(vRespuesta.Codigo.ToString + ' - ' + vRespuesta.mensaje);
      Main.memNota.Next;
    end;

  finally
    Main.memNota.Filtered := False;
    Main.memNota.GotoBookmark(vBook);
    Main.memNota.FreeBookmark(vBook);
    Main.memNota.EnableControls;
  end;
  Main.NFolios.Caption := Main.GetFoliosRestantes.FoliosRestantes.ToString;
end;

procedure PFactory.EstadoDevoluciones;
VAR
  vEstadoFV, vAcuseFV, vComentario: String;
  vHoy: TDateTime;
  vDias: Double;
  vBook: TBookmark;
begin
  vBook := Main.MemDevolucion.GetBookmark;
  Main.MemDevolucion.DisableControls;
  if Main.MemDevolucionTipo.AsString = '' then
  begin
    exit;
  end;
  try
    Main.MemDevolucion.Filtered := False;
    Main.MemDevolucion.Filtered := True;
    Main.MemDevolucion.First;
    while not Main.MemDevolucion.Eof do
    begin
      Main.MemDevolucion.Open;
      Main.MemDevolucion.Edit;

      vHoy := Now;
      vDias := Trunc(vHoy - Main.MemFacturaFECHA.AsDateTime);

      vEstadoFV := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword, (Main.MemDevolucionPREFIJO_DIAN.AsString +
        Main.MemDevolucionNUMBER.AsString)).acuseRespuesta;
      vAcuseFV := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword, (Main.MemDevolucionPREFIJO_DIAN.AsString +
        Main.MemDevolucionNUMBER.AsString)).acuseEstatus;
      vComentario := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword, (Main.MemDevolucionPREFIJO_DIAN.AsString +
        Main.MemDevolucionNUMBER.AsString)).acuseComentario;

      if vEstadoFV = '0' then
        Main.memDevolucionEstado.AsString := 'A la espera';
      if vEstadoFV = '1' then
        Main.memDevolucionEstado.AsString := 'Aprobado';
      if vEstadoFV = '2' then
        Main.memDevolucionEstado.AsString := 'Rechazado';
      if vEstadoFV = '3' then
        Main.memDevolucionEstado.AsString := 'En revision';
      if (vEstadoFV = '0') and (vDias > 7) then
        Main.memDevolucionEstado.AsString := 'Aprobado';

      if vAcuseFV = '0' then
        Main.memDevolucionAcuse.AsString := 'A la espera';
      if vAcuseFV = '1' then
        Main.memDevolucionAcuse.AsString := 'Recibido';
      if (vAcuseFV = '0') and (vDias > 7) then
        Main.memDevolucionAcuse.AsString := 'Recibido';

      Main.MemDevolucionObservaciones.AsString := vComentario;
      Main.MemDevolucion.Next;
    end;
  finally
    Main.MemDevolucion.Filtered := False;
    Main.MemDevolucion.GotoBookmark(vBook);
    Main.MemDevolucion.FreeBookmark(vBook);
    Main.MemDevolucion.EnableControls;
  end;
end;

procedure PFactory.EstadoFacturas;
VAR
  vEstadoFV, vAcuseFV, vComentario: String;
  vStatus: Integer;
  vHoy: TDateTime;
  vDias: Double;
  vBook: TBookmark;
begin
  vBook := Main.memFACTURA.GetBookmark;
  Main.memFACTURA.DisableControls;
  if Main.memFACTURATIPO.AsString = '' then
  begin
    exit;
  end;
  try
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.Filtered := True;
    Main.memFACTURA.First;
    while not Main.memFACTURA.Eof do
    begin
      Main.memFACTURA.Open;
      Main.memFACTURA.Edit;
      vHoy := Now;
      vDias := Trunc(vHoy - Main.MemFacturaFECHA.AsDateTime);

      vEstadoFV := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memFACTURAPREFIJO_DIAN.AsString + Main.memFACTURANUMERO.AsString))
        .acuseRespuesta;

      vAcuseFV := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memFACTURAPREFIJO_DIAN.AsString + Main.memFACTURANUMERO.AsString))
        .acuseEstatus;
      vStatus := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memFACTURAPREFIJO_DIAN.AsString + Main.memFACTURANUMERO.AsString))
        .estatusDocumento;
      vComentario := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memFACTURAPREFIJO_DIAN.AsString + Main.memFACTURANUMERO.AsString))
        .acuseComentario;

      if vEstadoFV = '0' then
        Main.memFACTURAEstado.AsString := 'A la espera';
      if vEstadoFV = '1' then
        Main.memFACTURAEstado.AsString := 'Aprobado';
      if vEstadoFV = '2' then
        Main.memFACTURAEstado.AsString := 'Rechazado';
      if vEstadoFV = '3' then
        Main.memFACTURAEstado.AsString := 'En revision';
      if (vEstadoFV = '0') and (vDias > 7) then
        Main.memFACTURAEstado.AsString := 'Aprobado';

      if vAcuseFV = '0' then
        Main.memFACTURAAcuse.AsString := 'A la espera';
      if vAcuseFV = '1' then
        Main.memFACTURAAcuse.AsString := 'Recibido';
      if (vAcuseFV = '0') and (vDias > 7) then
        Main.memFACTURAAcuse.AsString := 'Recibido';
      Main.MemFacturaObservaciones.AsString := vComentario;

      Main.memFACTURA.Next;
    end;
  finally
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.GotoBookmark(vBook);
    Main.memFACTURA.FreeBookmark(vBook);
    Main.memFACTURA.EnableControls;
  end;
end;

procedure PFactory.EstadoNotas;
VAR
  vEstadoFV, vAcuseFV, vComentario: String;
  vBook: TBookmark;
  vHoy: TDateTime;
  vDias: Double;
begin
  vBook := Main.memNota.GetBookmark;
  Main.memNota.DisableControls;
  if Main.memNotaTIPO.AsString = '' then
  begin
    exit;
  end;
  try
    Main.memNota.Filtered := False;
    Main.memNota.Filtered := True;
    Main.memNota.First;
    while not Main.memNota.Eof do
    begin
      Main.memNota.Open;
      Main.memNota.Edit;
      vHoy := Now;
      vDias := Trunc(vHoy - Main.MemFacturaFECHA.AsDateTime);

      vEstadoFV := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memNotaPREFIJO_DIAN.AsString + Main.memNotaBATCH.AsString))
        .acuseRespuesta;
      vAcuseFV := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memNotaPREFIJO_DIAN.AsString + Main.memNotaBATCH.AsString)).acuseEstatus;
      vComentario := Service.GetIService().EstadoDocumento(Main.vlTokenEmpresa,
        Main.vlTokenPassword,
        (Main.memNotaPREFIJO_DIAN.AsString + Main.memNotaBATCH.AsString))
        .acuseComentario;

      if vEstadoFV = '0' then
        Main.memNotaEstado.AsString := 'A la espera';
      if vEstadoFV = '1' then
        Main.memNotaEstado.AsString := 'Aprobado';
      if vEstadoFV = '2' then
        Main.memNotaEstado.AsString := 'Rechazado';
      if vEstadoFV = '3' then
        Main.memNotaEstado.AsString := 'En revision';
      if (vEstadoFV = '0') and (vDias > 7) then
        Main.memNotaEstado.AsString := 'Aprobado';

      if vAcuseFV = '0' then
        Main.memNotaAcuse.AsString := 'A la espera';
      if vAcuseFV = '1' then
        Main.memNotaAcuse.AsString := 'Recibido';
      if (vAcuseFV = '0') and (vDias > 7) then
        Main.memNotaAcuse.AsString := 'Recibido';

      Main.memNotaObservaciones.AsString := vComentario;
      Main.memNota.Next;
    end;
  finally
    Main.memNota.Filtered := False;
    Main.memNota.GotoBookmark(vBook);
    Main.memNota.FreeBookmark(vBook);
    Main.memNota.EnableControls;
  end;
end;

procedure PFactory.PdfDevoluciones;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.MemDevolucion.GetBookmark;

  if DirectoryExists(Main.vRuta) then
  begin
    if Main.MemDevolucionTipo.AsString = '' then
    begin
      exit;
    end;

    Main.MemDevolucion.DisableControls;
    try
      Main.MemDevolucion.Filtered := False;
      Main.MemDevolucion.Filtered := True;
      Main.MemDevolucion.First;

      while not Main.MemDevolucion.Eof do
      begin
        Main.MemDevolucion.Open;
        Main.MemDevolucion.Edit;
        vRespuesta := Service.GetIService().DescargaPDF(Main.vlTokenEmpresa,
          Main.vlTokenPassword, Main.MemDevolucionPREFIJO_DIAN.AsString +
          Main.MemDevolucionNUMBER.AsString);
        if vRespuesta.documento <> '' then
        begin
          vPDFEncode := TStringStream.Create(vRespuesta.documento);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Devolucion' +
              Main.MemDevolucionTipo.AsString +
              Main.MemDevolucionNUMBER.AsString + '.PDF');
          finally
            vPDFEncode.DisposeOf;
            vPDFDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.MemDevolucion.Next;
      end;
    finally
      Main.MemDevolucion.Filtered := False;
      Main.MemDevolucion.EnableControls;
    end;
    if h = 0 then
    begin
      ShowMessage('Error al Generar PDF');
    end;
    if h = 1 then
    begin
      ShowMessage('PDF Generado');
    end;
  end
  else
  begin
    ShowMessage('La Ruta "' + Main.vRuta + '" No Exixste!!');
  end;
end;

procedure PFactory.PdfFacturas;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.memFACTURA.GetBookmark;
  if DirectoryExists(Main.vRuta) then
  begin
    if Main.memFACTURATIPO.AsString = '' then
    begin
      exit;
    end;
    Main.memFACTURA.DisableControls;
    try
      Main.memFACTURA.Filtered := False;
      Main.memFACTURA.Filtered := True;
      Main.memFACTURA.First;
      while not Main.memFACTURA.Eof do
      begin
        Main.memFACTURA.Open;
        Main.memFACTURA.Edit;
        vRespuesta := Service.GetIService().DescargaPDF(Main.vlTokenEmpresa,
          Main.vlTokenPassword, Main.memFACTURAPREFIJO_DIAN.AsString +
          Main.memFACTURANUMERO.AsString);
        if vRespuesta.documento <> '' then
        begin
          vPDFEncode := TStringStream.Create(vRespuesta.documento);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Factura' +
              Main.memFACTURATIPO.AsString + Main.memFACTURANUMERO.AsString
              + '.PDF');
          finally
            vPDFEncode.DisposeOf;
            vPDFDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.memFACTURA.Next;
      end;
    finally
      Main.memFACTURA.Filtered := False;
      Main.memFACTURA.EnableControls;
    end;
    if h = 0 then
    begin
      ShowMessage('Error al Generar PDF');
    end;
    if h = 1 then
    begin
      ShowMessage('PDF Generado');
    end;
  end
  else
  begin
    ShowMessage('La Ruta "' + Main.vRuta + '" No Exixste!!');
  end;
end;

procedure PFactory.PdfNotas;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.memNota.GetBookmark;
  if DirectoryExists(Main.vRuta) then
  begin
    if Main.memNotaTIPO.AsString = '' then
    begin
      exit;
    end;

    Main.memNota.DisableControls;
    try
      Main.memNota.Filtered := False;
      Main.memNota.Filtered := True;
      Main.memNota.First;
      while not Main.memNota.Eof do
      begin
        Main.memNota.Open;
        Main.memNota.Edit;
        vRespuesta := Service.GetIService().DescargaPDF(Main.vlTokenEmpresa,
          Main.vlTokenPassword, Main.memNotaPREFIJO_DIAN.AsString +
          Main.memNotaBATCH.AsString);
        if vRespuesta.documento <> '' then
        begin
          vPDFEncode := TStringStream.Create(vRespuesta.documento);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Nota' +
              Main.memNotaTIPO.AsString + Main.memNotaBATCH.AsString + '.PDF');
          finally
            vPDFEncode.DisposeOf;
            vPDFDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.memNota.Next;
      end;
    finally
      Main.memNota.Filtered := False;
      Main.memNota.EnableControls;
    end;
    if h = 0 then
    begin
      ShowMessage('Error al Generar PDF');
    end;
    if h = 1 then
    begin
      ShowMessage('PDF Generado');
    end;
  end
  else
  begin
    ShowMessage('La Ruta "' + Main.vRuta + '" No Exixste!!');
  end;
end;

procedure PFactory.XmlDevoluciones;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: DownloadXMLResponse2;
  vXMLEncode, vXMLDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.MemDevolucion.GetBookmark;
  if DirectoryExists(Main.vRuta) then
  begin
    if Main.MemDevolucionTipo.AsString = '' then
    begin
      exit;
    end;
    Main.MemDevolucion.DisableControls;
    try
      Main.MemDevolucion.Filtered := False;
      Main.MemDevolucion.Filtered := True;
      Main.MemDevolucion.First;
      while not Main.MemDevolucion.Eof do
      begin
        Main.MemDevolucion.Open;
        Main.MemDevolucion.Edit;
        vRespuesta := Service.GetIService().DescargaXML(Main.vlTokenEmpresa,
          Main.vlTokenPassword, Main.MemDevolucionPREFIJO_DIAN.AsString +
          Main.MemDevolucionNUMBER.AsString);
        if vRespuesta.documento <> '' then
        begin
          vXMLEncode := TStringStream.Create(vRespuesta.documento);
          vXMLDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vXMLEncode, vXMLDecode);
            vXMLDecode.Position := 0;
            vXMLDecode.SaveToFile(Main.vRuta + '\Devolucion' +
              Main.MemDevolucionTipo.AsString +
              Main.MemDevolucionNUMBER.AsString + '.XML');
          finally
            vXMLEncode.DisposeOf;
            vXMLDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.MemDevolucion.Next;
      end;
    finally
      Main.MemDevolucion.Filtered := False;
      Main.MemDevolucion.EnableControls;
    end;
    if h = 0 then
    begin
      ShowMessage('Error al Generar XML');
    end;
    if h = 1 then
    begin
      ShowMessage('XML Generado');
    end;

  end
  else
  begin
    ShowMessage('La Ruta "' + Main.vRuta + '" No Exixste!!');
  end;
end;

procedure PFactory.XmlFacturas;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: DownloadXMLResponse2;
  vXMLEncode, vXMLDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.memFACTURA.GetBookmark;
  if DirectoryExists(Main.vRuta) then
  begin
    if Main.memFACTURATIPO.AsString = '' then
    begin
      exit;
    end;
    Main.memFACTURA.DisableControls;
    try
      Main.memFACTURA.Filtered := False;
      Main.memFACTURA.Filtered := True;
      Main.memFACTURA.First;
      while not Main.memFACTURA.Eof do
      begin
        Main.memFACTURA.Open;
        Main.memFACTURA.Edit;
        vRespuesta := Service.GetIService().DescargaXML(Main.vlTokenEmpresa,
          Main.vlTokenPassword, Main.memFACTURAPREFIJO_DIAN.AsString +
          Main.memFACTURANUMERO.AsString);
        if vRespuesta.documento <> '' then
        begin
          vXMLEncode := TStringStream.Create(vRespuesta.documento);
          vXMLDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vXMLEncode, vXMLDecode);
            vXMLDecode.Position := 0;
            vXMLDecode.SaveToFile(Main.vRuta + '\Factura' +
              Main.memFACTURATIPO.AsString + Main.memFACTURANUMERO.AsString
              + '.XML');
          finally
            vXMLEncode.DisposeOf;
            vXMLDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.memFACTURA.Next;
      end;
    finally
      Main.memFACTURA.Filtered := False;
      Main.memFACTURA.EnableControls;
    end;
    if h = 0 then
    begin
      ShowMessage('Error al Generar XML');
    end;
    if h = 1 then
    begin
      ShowMessage('XML Generado');
    end;
  end
  else
  begin
    ShowMessage('La Ruta "' + Main.vRuta + '" No Exixste!!');
  end;
end;

procedure PFactory.XmlNotas;
VAR
  vEstadoFV, vAcuseFV: String;
  vBook: TBookmark;
  vRespuesta: DownloadXMLResponse2;
  vXMLEncode, vXMLDecode: TStringStream;
  h: Integer;
begin
  h := 0;
  vBook := Main.memNota.GetBookmark;

  if DirectoryExists(Main.vRuta) then
  begin
    if Main.memNotaTIPO.AsString = '' then
    begin
      exit;
    end;
    Main.memNota.DisableControls;
    try
      Main.memNota.Filtered := False;
      Main.memNota.Filtered := True;
      Main.memNota.First;
      while not Main.memNota.Eof do
      begin
        Main.memNota.Open;
        Main.memNota.Edit;
        vRespuesta := Service.GetIService().DescargaXML(Main.vlTokenEmpresa,
          Main.vlTokenPassword, Main.memNotaPREFIJO_DIAN.AsString +
          Main.memNotaBATCH.AsString);
        if vRespuesta.documento <> '' then
        begin
          vXMLEncode := TStringStream.Create(vRespuesta.documento);
          vXMLDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vXMLEncode, vXMLDecode);
            vXMLDecode.Position := 0;
            vXMLDecode.SaveToFile(Main.vRuta + '\Nota' +
              Main.memNotaTIPO.AsString + Main.memNotaBATCH.AsString + '.XML');
          finally
            vXMLEncode.DisposeOf;
            vXMLDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.memNota.Next;
      end;
    finally
      Main.memNota.Filtered := False;
      Main.memNota.EnableControls;
    end;
    if h = 0 then
    begin
      ShowMessage('Error al Generar XML');
    end;
    if h = 1 then
    begin
      ShowMessage('XML Generado');
    end;
  end
  else
  begin
    ShowMessage('La Ruta "' + Main.vRuta + '" No Exixste!!');
  end;
end;

end.
