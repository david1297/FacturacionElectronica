unit Carvajal;

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
  System.SysUtils, System.Variants, uFacNutritec, InvoiceService1,
  invokeregistry, uSecurity, wsse, Soap.SOAPHTTPClient, System.Hash;

type
  PCarvajal = class
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

  var
    iFactura: IXMLFACTURA;
  end;

implementation

uses Principal;

{ PCarvajal }

procedure PCarvajal.EnviarFacturas;
var
  VlrIva: Double;
  VlrIco: Double;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  downRes: UploadResponse;
  docRes: DocumentStatusResponse;
  docReq: DocumentStatusRequest;
  Hdr: Security;
  Headers: ISOAPHeaders;
  iREFLista: IXMLFACTURA_REF;
  iTIMLista: IXMLFACTURA_TIM;
  iOVTLista: IXMLFACTURA_OVT;
  iITELista: IXMLFACTURA_ITE;
  iDSCLista: IXMLFACTURA_DSC;
  iITETIILista: IXMLFACTURA_ITE_TII;
  iITEIDELista: IXMLFACTURA_ITE_IDE;
  iITEIRFLista: IXMLFACTURA_ITE_IRF;
  iITETIIIIMLista: IXMLFACTURA_ITE_TII_IIM;
  vBody: UploadRequest;
  vRes: UploadResponse;
  vPeticionDescarga: DownloadRequest;
  vArchivo, vArchivoDest: TStringStream;
  vStringStream: TStringStream;
  vCliente: Cliente;
  I: Integer;
  vSub: Double;
  Nit: string;
  vBook: TBookmark;
  vQ: TFDQuery;
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
      if Main.MemFacturacufe.AsString <> '' then
      BEGIN
        ShowMessage('El Documento ya Fue Enviado');
      END
      ELSE
      begin
        Main.QSys.Close;
        Main.QSys.Open;
        with TStringList.Create do
          try
            Delimiter := '-';
            StrictDelimiter := True;
            DelimitedText := Main.QSysFEDID.AsString;
            for I := 0 to Count - 1 do
            begin
              Nit := Strings[0];
            end;
          finally
            Free;
          end;
        vCliente := Main.GetCliente(Main.memFACTURANIT.AsInteger);
        iFactura := NewFACTURA;
        // INFORMACION CABECERA
        iFactura.ENC.ENC_1 := 'INVOIC';
        iFactura.ENC.ENC_2 := Nit.ToInteger;
        iFactura.ENC.ENC_3 := Main.memFACTURANIT.AsInteger;
        iFactura.ENC.ENC_4 := 'UBL 2.0';
        iFactura.ENC.ENC_5 := 'DIAN 1.0';
        iFactura.ENC.ENC_6 := Main.MemFacturaPREFIJO_DIAN.AsString +
          Main.memFACTURANUMERO.AsString;
        iFactura.ENC.ENC_7 := FormatDateTime('yyyy-mm-dd',
          Main.memFACTURAFECHA.AsDateTime);
        iFactura.ENC.ENC_8 := Main.memFACTURAHORCRE.AsString;
        if Main.memFACTURACOD_MONEDA.AsString = 'COP' then
        BEGIN
          iFactura.ENC.ENC_9 := 1;
        END
        ELSE
        BEGIN
          iFactura.ENC.ENC_9 := 2;
        END;
        iFactura.ENC.ENC_10 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.ENC.ENC_16 := FormatDateTime('yyyy-mm-dd',
          Main.memFACTURADUEDATE.AsDateTime);
        // EMISOR
        iFactura.EMI.EMI_1 := 1;
        iFactura.EMI.EMI_2 := Nit.ToInteger;
        iFactura.EMI.EMI_3 := 31;
        iFactura.EMI.EMI_4 := 2;
        iFactura.EMI.EMI_6 := Main.QSysCOMPANY.AsString;
        iFactura.EMI.EMI_10 := Main.QSysADDRESS1.AsString +
          Main.QSysADDRESS2.AsString;
        iFactura.EMI.EMI_11 := 'VALLE DEL CAUCA';
        iFactura.EMI.EMI_13 := Main.QSysCITY.AsString;
        iFactura.EMI.EMI_15 := 'CO';
        iFactura.EMI.CDE.CDE_1 := 1;
        iFactura.EMI.CDE.CDE_2 := 'CONTABILIDAD';
        iFactura.EMI.CDE.CDE_3 := Main.QSysPHONE.AsString;
        iFactura.EMI.CDE.CDE_4 := 'servicio.cliente@nutritec.com.co';

        // INFORMACION DEL ADQUIRIENTE
        iFactura.ADQ.ADQ_1 := vCliente.tipoPersona.ToInteger;
        iFactura.ADQ.ADQ_2 := vCliente.Nit.ToInteger;
        iFactura.ADQ.ADQ_3 := vCliente.tipoIdentificacion.ToDouble;
        iFactura.ADQ.ADQ_4 := vCliente.regimen.ToDouble;
        if (vCliente.tipoPersona = '2') then
        BEGIN
          iFactura.ADQ.ADQ_8 := vCliente.nombreRazonSocial + ' ' +
            vCliente.segundoNombre;
          iFactura.ADQ.ADQ_9 := vCliente.apellido;
        END
        else
        BEGIN
          iFactura.ADQ.ADQ_6 := vCliente.nombreRazonSocial;
        END;
        iFactura.ADQ.ADQ_10 := Main.memFACTURAADDR1.AsString;
        iFactura.ADQ.ADQ_11 := vCliente.departamento;
        iFactura.ADQ.ADQ_13 := vCliente.ciudad;
        iFactura.ADQ.ADQ_15 := Main.memFACTURACOD_ISO.AsString;
        iFactura.ADQ.CDA.CDA_1 := 1;
        iFactura.ADQ.CDA.CDA_2 := Main.memFACTURACONTACT1.AsString + ' / ' +
          Main.memFACTURACARGO1.AsString;
        iFactura.ADQ.CDA.CDA_3 := Main.memFACTURAPHONE1.AsString;
        iFactura.ADQ.CDA.CDA_4 := Main.memFACTURAEMAIL.AsString;
        // IMPORTES TOTALES
        iFactura.TOT.TOT_1 :=
          StrToFloat(FormatFloat('0.00', Main.memFACTURASUBTOTAL.AsFloat /
          Main.memFACTURATASA.AsFloat));
        iFactura.TOT.TOT_2 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.TOT.TOT_3 :=
          StrToFloat(FormatFloat('0.00',
          (Main.memFACTURASUBTOTAL.AsFloat - Main.memFACTURADESTOTAL.AsFloat) /
          Main.memFACTURATASA.AsFloat));
        iFactura.TOT.TOT_4 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.TOT.TOT_5 :=
          StrToFloat(FormatFloat('0.00', Main.memFACTURATOTAL.AsFloat /
          Main.memFACTURATASA.AsFloat));
        iFactura.TOT.TOT_6 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.TOT.TOT_7 :=
          StrToFloat(FormatFloat('0.00', Main.memFACTURATOTAL.AsFloat /
          Main.memFACTURATASA.AsFloat));
        iFactura.TOT.TOT_8 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.TOT.TOT_9 :=
          StrToFloat(FormatFloat('0.00', Main.memFACTURADESTOTAL.AsFloat /
          Main.memFACTURATASA.AsFloat));
        iFactura.TOT.TOT_10 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.TOT.TOT_11 :=
          StrToFloat(FormatFloat('0.00', Main.memFACTURAOTROSCARGOS.AsFloat /
          Main.memFACTURATASA.AsFloat));
        iFactura.TOT.TOT_12 := Main.memFACTURACOD_MONEDA.AsString;
        iFactura.TOT.TOT_13 := 0;
        iFactura.TOT.TOT_14 := Main.memFACTURACOD_MONEDA.AsString;
        // REFERENCIA
        if Main.MemFacturaNROREMISION.AsString <> '' then
        BEGIN
          iREFLista := iFactura.REF.Add;
          iREFLista.REF_1 := 'AAJ';
          iREFLista.REF_2 := Main.MemFacturaNROREMISION.AsString;
        END
        ELSE
        BEGIN
          iREFLista := iFactura.REF.Add;
          iREFLista.REF_1 := 'IV';
          iREFLista.REF_2 := Main.MemFacturaPREFIJO_DIAN.AsString +
            Main.memFACTURANUMERO.AsString;
          iREFLista.REF_3 := FormatDateTime('yyyy-mm-dd',
            Main.memFACTURAFECHA.AsDateTime);
        END;

        // TOTAL IMPUESTOS
        if Main.memFACTURACOD_MONEDA.AsString = 'COP' then
        BEGIN
          Main.QFacImpuestos.Close;
          Main.QFacImpuestos.ParamByName('Tipo').AsString :=
            Main.memFACTURATIPO.AsString;
          Main.QFacImpuestos.ParamByName('Number').AsInteger :=
            Main.memFACTURANUMERO.AsInteger;
          Main.QFacImpuestos.Open;
          Main.QFacImpuestos.First;

          VlrIva := 0;
          VlrIco := 0;

          while not Main.QFacImpuestos.Eof do
          begin
            VlrIva := VlrIva + Main.QFacImpuestosVLR_IVA.AsFloat;
            VlrIco := VlrIco + Main.QFacImpuestosVLR_CONSUMO.AsFloat;
            Main.QFacImpuestos.Next;
          end;

          if VlrIva <> 0 then
          begin
            iTIMLista := iFactura.TIM.Add;
            iTIMLista.TIM_1 := 'false';
            iTIMLista.TIM_2 := VlrIva;
            iTIMLista.TIM_3 := Main.memFACTURACOD_MONEDA.AsString;
            iTIMLista.IMP.IMP_1 := '01';
            iTIMLista.IMP.IMP_2 := Main.QFacImpuestosBASE.AsInteger;
            iTIMLista.IMP.IMP_3 := Main.memFACTURACOD_MONEDA.AsString;
            iTIMLista.IMP.IMP_4 := VlrIva;
            iTIMLista.IMP.IMP_5 := Main.memFACTURACOD_MONEDA.AsString;
            iTIMLista.IMP.IMP_6 := Main.QFacImpuestosPORC_IVA.AsFloat;
          end;
          if VlrIco <> 0 then
          begin
            iTIMLista := iFactura.TIM.Add;
            iTIMLista.TIM_1 := 'false';
            iTIMLista.TIM_2 := VlrIco;
            iTIMLista.TIM_3 := Main.memFACTURACOD_MONEDA.AsString;
            iTIMLista.IMP.IMP_1 := '02';
            iTIMLista.IMP.IMP_2 := Main.QFacImpuestosBASE.AsInteger;
            iTIMLista.IMP.IMP_3 := Main.memFACTURACOD_MONEDA.AsString;
            iTIMLista.IMP.IMP_4 := VlrIco;
            iTIMLista.IMP.IMP_5 := Main.memFACTURACOD_MONEDA.AsString;
            iTIMLista.IMP.IMP_6 := Main.QFacImpuestosPORC_CONSUMO.AsInteger;
          end;
          if Main.memFACTURARETIVA.AsFloat <> 0 then
          begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '02C';
            iOVTLista.OVT_2 := Main.memFACTURARETIVA.AsFloat;
            iOVTLista.OVT_3 := Main.memFACTURACOD_MONEDA.AsString;

          end
          Else
          Begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '02C';
            iOVTLista.OVT_2 := 0;
            iOVTLista.OVT_3 := Main.memFACTURACOD_MONEDA.AsString;
          End;

          if Main.memFACTURARETE.AsFloat <> 0 then
          begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '01C';
            iOVTLista.OVT_2 := Main.memFACTURARETE.AsFloat;
            iOVTLista.OVT_3 := Main.memFACTURACOD_MONEDA.AsString;
          end
          Else
          Begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '01C';
            iOVTLista.OVT_2 := 0;
            iOVTLista.OVT_3 := Main.memFACTURACOD_MONEDA.AsString;
          End;
          if Main.memFACTURARETICA.AsFloat <> 0 then
          begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '03C';
            iOVTLista.OVT_2 := Main.memFACTURARETICA.AsFloat;
            iOVTLista.OVT_3 := Main.memFACTURACOD_MONEDA.AsString;
          end
          Else
          Begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '03C';
            iOVTLista.OVT_2 := Main.memFACTURARETICA.AsFloat;
            iOVTLista.OVT_3 := Main.memFACTURACOD_MONEDA.AsString;
          End;
        END;
        // TIPO DE CAMBIO
        if Main.memFACTURACOD_MONEDA.AsString <> 'COP' then
        BEGIN
          iFactura.CTS.CTS_1 := 'CGEN06';
          iFactura.TDC.TDC_1 := 'COP';
          iFactura.TDC.TDC_2 := Main.memFACTURACOD_MONEDA.AsString;
          iFactura.TDC.TDC_3 := Main.memFACTURATASA.AsInteger;
          iFactura.TDC.TDC_4 := FormatDateTime('yyyy-mm-dd',
            Main.memFACTURAFECHA.AsDateTime);
          iFactura.NOT_.Add.NOT_1 := '8.-' + Main.memFACTURAPHONE1.AsString;
          iFactura.IEN.IEN_1 := Main.memFACTURAADDR1.AsString;
          iFactura.IEN.IEN_2 := vCliente.departamento;
          iFactura.IEN.IEN_4 := vCliente.ciudad;
          iFactura.IEN.IEN_6 := Main.memFACTURACOD_ISO.AsString;
          iFactura.TET.TET_1 := '';
          iFactura.TET.TET_4 := vCliente.ciudad + ' ' + vCliente.departamento;

        END;
        if Main.memFACTURAOTROSCARGOS.AsFloat <> 0 then
        BEGIN
          iDSCLista := iFactura.DSC.Add;
          iDSCLista.DSC_1 := 'true';
          iDSCLista.DSC_2 := 0;
          iDSCLista.DSC_3 := Main.memFACTURAOTROSCARGOS.AsFloat;
          iDSCLista.DSC_4 := Main.memFACTURACOD_MONEDA.AsString;
          iDSCLista.DSC_5 := '1';
          iDSCLista.DSC_6 := 'Otros';
        END
        else
        BEGIN
          iDSCLista := iFactura.DSC.Add;
          iDSCLista.DSC_1 := 'true';
          iDSCLista.DSC_2 := 0;
          iDSCLista.DSC_3 := 0;
          iDSCLista.DSC_4 := Main.memFACTURACOD_MONEDA.AsString;
          iDSCLista.DSC_5 := '1';
          iDSCLista.DSC_6 := 'Otros';
        END;
        iDSCLista := iFactura.DSC.Add;
        iDSCLista.DSC_1 := 'true';
        iDSCLista.DSC_2 := 0;
        iDSCLista.DSC_3 := 0;
        iDSCLista.DSC_4 := Main.memFACTURACOD_MONEDA.AsString;
        iDSCLista.DSC_5 := '1';
        iDSCLista.DSC_6 := 'Flete';

        // RESOLUCION
        iFactura.DRF.DRF_1 := Main.MemFacturaRES_DIAN.AsString;
        iFactura.DRF.DRF_2 := FormatDateTime('yyyy-mm-dd',
          Main.MemFacturaFECHAINIFAC.AsDateTime);
        iFactura.DRF.DRF_3 := FormatDateTime('yyyy-mm-dd',
          Main.MemFacturaFECHAVENFAC.AsDateTime);
        iFactura.DRF.DRF_4 := Main.MemFacturaPREFIJO_DIAN.AsString;
        iFactura.DRF.DRF_5 := Main.MemFacturaNUMDESDE.AsInteger;
        iFactura.DRF.DRF_6 := Main.MemFacturaNUMHASTA.AsInteger;

        // NOTAS
        with TStringList.Create do
          try
            Delimiter := '-';
            StrictDelimiter := True;
            DelimitedText := Main.QSysMFACT.AsString;
            for I := 1 to Count - 1 do
            begin
              if I = 1 then
              begin
                iFactura.NOT_.Add.NOT_1 := I.ToString + '.-' + Strings[I] +
                  '|Resolucion No.' + Main.MemFacturaRES_DIAN.AsString +
                  ' Fecha:' + FormatDateTime('yyyy-mm-dd',
                  Main.MemFacturaFECHAINIFAC.AsDateTime) + ' Autoriza Del ' +
                  Main.MemFacturaPREFIJO_DIAN.AsString + ' ' +
                  Main.MemFacturaNUMDESDE.AsString + ' Al ' +
                  Main.MemFacturaPREFIJO_DIAN.AsString + ' ' +
                  Main.MemFacturaNUMDESDE.AsString;
              end
              else
                iFactura.NOT_.Add.NOT_1 := I.ToString + '.-' + Strings[I];
            end;
          finally
            Free;
          end;
        if Main.memFACTURACOMMENTS.AsString <> '' then
        BEGIN
          iFactura.NOT_.Add.NOT_1 := '3.-' + Main.memFACTURACOMMENTS.AsString;
        END;
        iFactura.NOT_.Add.NOT_1 := '6.-' + Main.memFACTURADIAS_PAGO.AsString
          + ' Dias';

        // ORDEN DE COMPRA
        if Main.MemFacturaOCNUMERO.AsString <> '' then
        begin

          iFactura.ORC.ORC_1 := Main.MemFacturaOCNUMERO.AsString;
        end;

        // MEDIO DE PAGO
        if Main.memFACTURAMEDIOS_PAGO.AsString = 'EF' then
          iFactura.MEP.MEP_1 := '10';
        if Main.memFACTURAMEDIOS_PAGO.AsString = 'CH' then
          iFactura.MEP.MEP_1 := '20';
        if Main.memFACTURAMEDIOS_PAGO.AsString = 'CP' then
          iFactura.MEP.MEP_1 := '20';
        if Main.memFACTURAMEDIOS_PAGO.AsString = 'TC' then
          iFactura.MEP.MEP_1 := '41';
        if Main.memFACTURAMEDIOS_PAGO.AsString = 'OT' then
          iFactura.MEP.MEP_1 := '41';
        if Main.memFACTURAMEDIOS_PAGO.AsString = 'CR' then
          iFactura.MEP.MEP_1 := '42';
        iFactura.MEP.MEP_3 := FormatDateTime('yyyy-mm-dd',
          Main.memFACTURAfecha_pago.AsDateTime);
        iFactura.MEP.MEP_5 := Main.memFACTURADIAS_PAGO.AsString;

        Main.QFacDetalle.Close;
        Main.QFacDetalle.ParamByName('Tipo').AsString :=
          Main.memFACTURATIPO.AsString;
        Main.QFacDetalle.ParamByName('Number').AsInteger :=
          Main.memFACTURANUMERO.AsInteger;
        Main.QFacDetalle.Open;
        Main.QFacDetalle.First;
        // ITEMS DEL DOCUMENTO
        while not Main.QFacDetalle.Eof do
        begin
          iITELista := iFactura.ITE.Add;
          iITELista.ITE_1 := Main.QFacDetalleCONTEO.AsInteger;
          if Main.QFacDetalleBONO.AsString = 'S' then
          BEGIN
            iITELista.ITE_2 := 'true';
          END
          else if Main.QFacDetalleBONO.AsString = 'N' then
          BEGIN
            iITELista.ITE_2 := 'false';
          end;
          iITELista.ITE_3 := Main.QFacDetalleQTYSHIP.AsFloat;
          iITELista.ITE_4 := Main.QFacDetalleUOFMSALES.AsString;
          iITELista.ITE_5 :=
            StrToFloat(FormatFloat('0.00', Main.QFacDetalleEXTEND.AsFloat /
            Main.memFACTURATASA.AsFloat));
          iITELista.ITE_6 := Main.memFACTURACOD_MONEDA.AsString;
          iITELista.ITE_7 :=
            StrToFloat(FormatFloat('0.00', Main.QFacDetallePRICE.AsFloat /
            Main.memFACTURATASA.AsFloat));
          iITELista.ITE_8 := Main.memFACTURACOD_MONEDA.AsString;
          iITELista.ITE_9 := Main.QFacDetalleITEM.AsString;
          iITELista.ITE_10 := Main.QFacDetalleDESC_ADICIONAL.AsString;
          iITELista.ITE_11 := Main.QFacDetalleDESCRIPCION.AsString + ' ';
          iITELista.ITE_12 := Main.QFacDetalleDESC_ADICIONAL.AsString + ' - ' +
            Main.QFacDetalleUNIDAD.AsString;
          iITELista.ITE_17 := Main.QFacDetalleITEM.AsString;
          iITELista.ITE_18 := Main.QFacDetalleITEM.AsString;
          iITELista.ITE_19 :=
            StrToFloat(FormatFloat('0.00', Main.QFacDetalleBASE.AsFloat /
            Main.memFACTURATASA.AsFloat));
          iITELista.ITE_20 := Main.memFACTURACOD_MONEDA.AsString;
          iITELista.ITE_21 :=
            StrToFloat(FormatFloat('0.00', Main.QFacDetalleBASE.AsFloat /
            Main.memFACTURATASA.AsFloat));
          iITELista.ITE_22 := Main.memFACTURACOD_MONEDA.AsString;
          // DESCUENTO DEL ITEM
          if Main.QFacDetalleTOTALDCT.AsFloat <> 0 then
          BEGIN
            iITEIDELista := iITELista.IDE.Add;
            iITEIDELista.IDE_1 := 'false';
            iITEIDELista.IDE_2 :=
              StrToFloat(FormatFloat('0.00', Main.QFacDetalleTOTALDCT.AsFloat /
              Main.memFACTURATASA.AsFloat));
            iITEIDELista.IDE_3 := Main.memFACTURACOD_MONEDA.AsString;
            iITEIDELista.IDE_7 :=
              StrToFloat(FormatFloat('0.00', Main.QFacDetalleEXTEND.AsFloat /
              Main.memFACTURATASA.AsFloat));
            iITEIDELista.IDE_8 := Main.memFACTURACOD_MONEDA.AsString;
          END
          ELSE
          BEGIN
            iITEIDELista := iITELista.IDE.Add;
            iITEIDELista.IDE_1 := 'false';
            iITEIDELista.IDE_2 := 0;
            iITEIDELista.IDE_3 := Main.memFACTURACOD_MONEDA.AsString;
            iITEIDELista.IDE_7 :=
              StrToFloat(FormatFloat('0.00', Main.QFacDetalleEXTEND.AsFloat /
              Main.memFACTURATASA.AsFloat));
            iITEIDELista.IDE_8 := Main.memFACTURACOD_MONEDA.AsString;
          END;
          // ORDEN DE COMPRA
          if Main.MemFacturaOCNUMERO.AsString <> '' then
          begin
            iITEIRFLista := iITELista.IRF.Add;
            iITEIRFLista.IRF_1 := 'ON';
            iITEIRFLista.IRF_2 := Main.MemFacturaOCNUMERO.AsString;
          end;

          // IMPUESTOS DEL ITEM
          if Main.QFacDetalleVLR_IVA.AsFloat <> 0 then
          BEGIN
            iITETIILista := iITELista.TII.Add;
            iITETIILista.TII_1 := Main.QFacDetalleVLR_IVA.AsFloat;
            iITETIILista.TII_2 := Main.memFACTURACOD_MONEDA.AsString;
            iITETIILista.TII_3 := 'false';
            iITETIIIIMLista := iITETIILista.IIM.Add;
            iITETIIIIMLista.IIM_1 := '01';
            iITETIIIIMLista.IIM_2 := Main.QFacDetalleVLR_IVA.AsFloat;
            iITETIIIIMLista.IIM_3 := Main.memFACTURACOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_4 := Main.QFacDetalleBASE.AsFloat;
            iITETIIIIMLista.IIM_5 := Main.memFACTURACOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_6 := Main.QFacDetallePORC_IVA.AsFloat;
          END;
          if Main.QFacDetalleVLR_CONSUMO.AsFloat <> 0 then
          BEGIN
            iITETIILista := iITELista.TII.Add;
            iITETIILista.TII_1 := Main.QFacDetalleVLR_CONSUMO.AsFloat;
            iITETIILista.TII_2 := Main.memFACTURACOD_MONEDA.AsString;
            iITETIILista.TII_3 := 'false';
            iITETIIIIMLista := iITETIILista.IIM.Add;
            iITETIIIIMLista.IIM_1 := '02';
            iITETIIIIMLista.IIM_2 := Main.QFacDetalleVLR_CONSUMO.AsFloat;
            iITETIIIIMLista.IIM_3 := Main.memFACTURACOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_4 := Main.QFacDetalleBASE.AsFloat;
            iITETIIIIMLista.IIM_5 := Main.memFACTURACOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_6 := Main.QFacDetallePORC_CONSUMO.AsFloat;
          END;
          Main.QFacDetalle.Next;
        END;
        vStringStream := TStringStream.Create(iFactura.Xml);
        try
          vStringStream.SaveToFile(Main.vRuta + '/' +
            Main.memFACTURATIPO.AsString + Main.memFACTURANUMERO.AsString
            + '.xml');
        finally
          vStringStream.DisposeOf;
        end;
        vArchivo := TStringStream.Create(iFactura.Xml);
        vArchivoDest := TStringStream.Create;
        System.NetEncoding.TBase64Encoding.Base64.Encode(vArchivo,
          vArchivoDest);
        vArchivoDest.Position := 0;
        try
          DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
            TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
          MyRIO := THTTPRIO.Create(nil);
          Headers := MyRIO as ISOAPHeaders;
          Headers.Send(Hdr);
          downRes := UploadResponse.Create;

          vBody := UploadRequest.Create;
          vBody.companyId := Main.vlTokenEmpresa;
          vBody.accountId := Main.vlTokenPassword;
          vBody.fileName := Main.MemFacturaPREFIJO_DIAN.AsString + '-' +
            Main.memFACTURANUMERO.AsString + '.XML';
          vBody.fileData := vArchivoDest.DataString;
          servicio := GetinvoiceService(True, '', MyRIO);
          downRes := servicio.Upload(vBody);
          ShowMessage('Estado: ' + downRes.status + ' - TransactionID: ' +
            downRes.transactionId);

          DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
            TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
          MyRIO := THTTPRIO.Create(nil);
          Headers := MyRIO as ISOAPHeaders;
          Headers.Send(Hdr);
          docReq := DocumentStatusRequest.Create;
          docReq.companyId := Main.vlTokenEmpresa;
          docReq.accountId := Main.vlTokenPassword;
          docReq.transactionId := downRes.transactionId;
          docRes := DocumentStatusResponse.Create;
          servicio := GetinvoiceService(True, '', MyRIO);
          docRes := servicio.DocumentStatus(docReq);

          if docRes.processStatus = 'OK' then
          begin
            vQ := TFDQuery.Create(nil);
            try
              vQ.Connection := Main.Conexion;
              vQ.ExecSQL
                ('update oe set cufe = :cufe where tipo = :tipo and number = :num',
                [downRes.transactionId, Main.memFACTURATIPO.AsString,
                Main.memFACTURANUMERO.AsString],
                [TFieldType.ftString, TFieldType.ftString,
                TFieldType.ftInteger]);
            finally
              vQ.DisposeOf;
            end;

          END;

        finally
          FreeAndNil(Headers);
        end;
      end;
      Main.memFACTURA.Next;
    end;
  finally
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.GotoBookmark(vBook);
    Main.memFACTURA.FreeBookmark(vBook);
    Main.memFACTURA.EnableControls;
  end;
end;

procedure PCarvajal.EnviarNotas;
var
  docRes: DocumentStatusResponse;
  docReq: DocumentStatusRequest;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  downRes: UploadResponse;
  Hdr: Security;
  Headers: ISOAPHeaders;
  vSub: Double;
  vIva: Double;
  vIco: Double;
  vRet: Double;
  vIca: Double;
  vRIva: Double;
  h: Integer;
  iREFLista: IXMLFACTURA_REF;
  iTIMLista: IXMLFACTURA_TIM;
  iOVTLista: IXMLFACTURA_OVT;
  iITELista: IXMLFACTURA_ITE;
  iITETIILista: IXMLFACTURA_ITE_TII;
  iITEIDELista: IXMLFACTURA_ITE_IDE;
  iITETIIIIMLista: IXMLFACTURA_ITE_TII_IIM;
  vBody: UploadRequest;
  vRes: UploadResponse;
  vPeticionDescarga: DownloadRequest;
  vArchivo, vArchivoDest: TStringStream;
  vStringStream: TStringStream;
  vCliente: Cliente;
  I: Integer;
  Nit: string;
  vBook: TBookmark;
  vQ: TFDQuery;
  vHoy: TDateTime;
  vDias: Double;
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
    while not Main.memNota.Eof do
    begin
      vSub := 0;
      vIva := 0;
      vIco := 0;
      vRet := 0;
      vIca := 0;
      vRIva := 0;
      h := 0;
      Main.QSys.Close;
      Main.QSys.Open;
      if Main.MemNotaENVIADO.AsString = 'S' then
      BEGIN
        ShowMessage('El Documento ya Fue Enviado');
      END
      ELSE
      begin
        with TStringList.Create do
          try
            Delimiter := '-';
            StrictDelimiter := True;
            DelimitedText := Main.QSysFEDID.AsString;
            for I := 0 to Count - 1 do
            begin
              Nit := Strings[0];
            end;
          finally
            Free;
          end;
        vCliente := Main.GetCliente(Main.memNotaID_N.AsInteger);
        iFactura := NewNOTA;
        // INFORMACION CABECERA
        iFactura.ENC.ENC_1 := Main.QTip_DocTIPO.AsString;
        iFactura.ENC.ENC_2 := Nit.ToInteger;
        iFactura.ENC.ENC_3 := Main.memNotaID_N.AsInteger;
        iFactura.ENC.ENC_4 := 'UBL 2.0';
        iFactura.ENC.ENC_5 := 'DIAN 1.0';
        iFactura.ENC.ENC_6 := Main.memNotaTIPO.AsString +
          Main.memNotaBATCH.AsString;
        iFactura.ENC.ENC_7 := FormatDateTime('yyyy-mm-dd',
          Main.memNotaFECHA.AsDateTime);
        with TStringList.Create do
          try
            Delimiter := ' ';
            StrictDelimiter := True;
            DelimitedText := Main.MemNotaFECHA_HORA.AsString;
            for I := 0 to Count - 1 do
            begin
              iFactura.ENC.ENC_8 := Strings[1];
            end;
          finally
            Free;
          end;
        iFactura.ENC.ENC_9 := 9;
        iFactura.ENC.ENC_10 := 'COP';
        iFactura.ENC.ENC_16 := FormatDateTime('yyyy-mm-dd',
          Main.memNotaDUEDATE.AsDateTime);
        // INFORMACION EMISOR
        iFactura.EMI.EMI_1 := 1;
        iFactura.EMI.EMI_2 := Nit.ToInteger;
        iFactura.EMI.EMI_3 := 31;
        iFactura.EMI.EMI_4 := 2;
        iFactura.EMI.EMI_6 := Main.QSysCOMPANY.AsString;
        iFactura.EMI.EMI_10 := Main.QSysADDRESS1.AsString +
          Main.QSysADDRESS2.AsString;
        iFactura.EMI.EMI_11 := 'VALLE DEL CAUCA';
        iFactura.EMI.EMI_13 := Main.QSysCITY.AsString;
        iFactura.EMI.EMI_15 := 'CO';
        iFactura.EMI.CDE.CDE_1 := 1;
        iFactura.EMI.CDE.CDE_2 := 'CONTABILIDAD';
        iFactura.EMI.CDE.CDE_3 := Main.QSysPHONE.AsString;
        iFactura.EMI.CDE.CDE_4 := 'servicio.cliente@nutritec.com.co';
        // INFORMACION DEL ADQUIRIENTE
        iFactura.ADQ.ADQ_1 := vCliente.tipoPersona.ToInteger;
        iFactura.ADQ.ADQ_2 := vCliente.Nit.ToInteger;
        iFactura.ADQ.ADQ_3 := vCliente.tipoIdentificacion.ToDouble;
        iFactura.ADQ.ADQ_4 := vCliente.regimen.ToDouble;
        if vCliente.tipoPersona = '2' then
        BEGIN
          iFactura.ADQ.ADQ_8 := vCliente.nombreRazonSocial + ' ' +
            vCliente.segundoNombre;
          iFactura.ADQ.ADQ_9 := vCliente.apellido;
        END
        else
        BEGIN
          iFactura.ADQ.ADQ_6 := vCliente.nombreRazonSocial;
        END;
        iFactura.ADQ.ADQ_10 := Main.memNotaADDR1.AsString;
        iFactura.ADQ.ADQ_11 := vCliente.departamento;
        iFactura.ADQ.ADQ_13 := vCliente.ciudad;
        iFactura.ADQ.ADQ_15 := Main.memNotaCOD_ISO.AsString;
        iFactura.ADQ.CDA.CDA_1 := 1;
        iFactura.ADQ.CDA.CDA_2 := Main.memNotaCONTACT1.AsString + ' / ' +
          Main.memNotaCARGO1.AsString;
        iFactura.ADQ.CDA.CDA_3 := Main.memNotaPHONE1.AsString;
        iFactura.ADQ.CDA.CDA_4 := Main.memNotaEMAIL.AsString;
        // CONCEPTO DE LA NOTA
        iFactura.CDN.CDN_1 := Main.memNotaCONCEPTO_NOTAFE.AsInteger;
        iFactura.CDN.CDN_2 := Main.memNotaMOTIVO.AsString;

        Main.QNotDetalle.Close;
        Main.QNotDetalle.ParamByName('Tipo').AsString :=
          Main.memNotaTIPO.AsString;
        Main.QNotDetalle.ParamByName('BATCH').AsInteger :=
          Main.memNotaBATCH.AsInteger;
        Main.QNotDetalle.ParamByName('CLASE').AsString :=
          Main.QTip_DocTIPO.AsString;
        Main.QNotDetalle.Open;
        // TOTAL IMPUESTOS
        Main.QNotDetalle.First;
        while not Main.QNotDetalle.Eof do
        begin
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'IVA' then
          begin
            iTIMLista := iFactura.TIM.Add;
            iTIMLista.TIM_1 := 'false';
            iTIMLista.TIM_2 := Main.QnotDetalleVALOR.AsInteger;
            iTIMLista.TIM_3 := 'COP';
            iTIMLista.IMP.IMP_1 := '01';
            iTIMLista.IMP.IMP_2 := Main.QnotDetalleBASE.AsInteger;
            iTIMLista.IMP.IMP_3 := 'COP';
            iTIMLista.IMP.IMP_4 := Main.QnotDetalleVALOR.AsInteger;
            iTIMLista.IMP.IMP_5 := 'COP';
            iTIMLista.IMP.IMP_6 := Main.QnotDetallePORCENRETENCION.AsFloat;
            vIva := Main.QnotDetalleVALOR.AsFloat;
          end;
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'ICO' then
          begin
            iTIMLista := iFactura.TIM.Add;
            iTIMLista.TIM_1 := 'false';
            iTIMLista.TIM_2 := Main.QnotDetalleVALOR.AsInteger;
            iTIMLista.TIM_3 := 'COP';
            iTIMLista.IMP.IMP_1 := '02';
            iTIMLista.IMP.IMP_2 := Main.QnotDetalleBASE.AsInteger;
            iTIMLista.IMP.IMP_3 := 'COP';
            iTIMLista.IMP.IMP_4 := Main.QnotDetalleVALOR.AsInteger;
            iTIMLista.IMP.IMP_5 := 'COP';
            iTIMLista.IMP.IMP_6 :=
              (Main.QnotDetalleVALOR.AsFloat /
              Main.QnotDetalleBASE.AsFloat) * 100;
            vIco := Main.QnotDetalleVALOR.AsFloat;
          end;
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'RETEIVA' then
          begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '02C';
            iOVTLista.OVT_2 := Main.QnotDetalleVALOR.AsInteger;
            iOVTLista.OVT_3 := 'COP';
            vRIva := Main.QnotDetalleVALOR.AsFloat;
          end;
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'RETEFUENTE' then
          begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '01C';
            iOVTLista.OVT_2 := Main.QnotDetalleVALOR.AsInteger;
            iOVTLista.OVT_3 := 'COP';
            vRet := Main.QnotDetalleVALOR.AsFloat;
          end;
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'ICA' then
          begin
            iOVTLista := iFactura.OVT.Add;
            iOVTLista.OVT_1 := '03C';
            iOVTLista.OVT_2 := Main.QnotDetalleVALOR.AsInteger;
            iOVTLista.OVT_3 := 'COP';
            vIca := Main.QnotDetalleVALOR.AsFloat;
          end;
          Main.QNotDetalle.Next;
        end;
        Main.QNotDetalle.First;
        while not Main.QNotDetalle.Eof do
        begin
          // ITEM DEL DOCUMENTO
          if Main.QnotDetallePRINCIPAL.AsString = 'S' then
          BEGIN
            vSub := Main.QnotDetalleVALOR.AsFloat;
            iITELista := iFactura.ITE.Add;
            iITELista.ITE_1 := 1;
            iITELista.ITE_2 := 'false';
            iITELista.ITE_3 := 1;
            iITELista.ITE_5 := (vSub - vIva - vIco + vIca + vRIva + vRet);
            iITELista.ITE_6 := 'COP';
            iITELista.ITE_7 := (vSub - vIva - vIco + vIca + vRIva + vRet);
            iITELista.ITE_8 := 'COP';
            iITELista.ITE_9 := Main.QnotDetalleCONCEPTO_NOTAFE.AsString;
            iITELista.ITE_11 := Main.QnotDetalleMOTIVO.AsString;
            iITELista.ITE_12 := Main.QnotDetalleMOTIVO.AsString;
            iITELista.ITE_17 := Main.QnotDetalleCONCEPTO_NOTAFE.AsString;
            iITELista.ITE_19 := (vSub + vIca + vRIva + vRet);
            iITELista.ITE_20 := 'COP';
            iITELista.ITE_21 := (vSub + vIca + vRIva + vRet);
            iITELista.ITE_22 := 'COP';
          END;
          // IMPUESTOS DEL ITEM
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'IVA' then
          begin
            iITETIILista := iITELista.TII.Add;
            iITETIILista.TII_1 := Main.QnotDetalleVALOR.AsFloat;
            iITETIILista.TII_2 := 'COP';
            iITETIILista.TII_3 := 'false';
            iITETIIIIMLista := iITETIILista.IIM.Add;
            iITETIIIIMLista.IIM_1 := '01';
            iITETIIIIMLista.IIM_2 := Main.QnotDetalleVALOR.AsFloat;
            iITETIIIIMLista.IIM_3 := 'COP';
            iITETIIIIMLista.IIM_4 := Main.QnotDetalleBASE.AsFloat;
            iITETIIIIMLista.IIM_5 := 'COP';
            iITETIIIIMLista.IIM_6 := Main.QnotDetallePORCENRETENCION.AsFloat;
          end;
          if Main.QnotDetalleAPLI_IMPUESTO.AsString = 'ICO' then
          begin
            iITETIILista := iITELista.TII.Add;
            iITETIILista.TII_1 := Main.QnotDetalleVALOR.AsFloat;
            iITETIILista.TII_2 := 'COP';
            iITETIILista.TII_3 := 'false';
            iITETIIIIMLista := iITETIILista.IIM.Add;
            iITETIIIIMLista.IIM_1 := '02';
            iITETIIIIMLista.IIM_2 := Main.QnotDetalleVALOR.AsFloat;
            iITETIIIIMLista.IIM_3 := 'COP';
            iITETIIIIMLista.IIM_4 := Main.QnotDetalleBASE.AsFloat;
            iITETIIIIMLista.IIM_5 := 'COP';
            iITETIIIIMLista.IIM_6 := Main.QnotDetallePORCENRETENCION.AsFloat;
          end;
          Main.QNotDetalle.Next;
        end;
        // IMPORTES TOTALES
        iFactura.TOT.TOT_1 := (vSub - vIva - vIco + vIca + vRIva + vRet);
        iFactura.TOT.TOT_2 := 'COP';
        iFactura.TOT.TOT_3 := (vSub - vIva - vIco + vIca + vRIva + vRet);
        iFactura.TOT.TOT_4 := 'COP';
        iFactura.TOT.TOT_5 := (vSub + vIca + vRIva + vRet);
        iFactura.TOT.TOT_6 := 'COP';
        // REFERENCIA
        iREFLista := iFactura.REF.Add;
        iREFLista.REF_1 := 'IV';
        iREFLista.REF_2 := Main.memNotaCRUCE.AsString +
          Main.memNotaINVC.AsString;
        iREFLista.REF_3 := FormatDateTime('yyyy-mm-dd',
          Main.memNotaFECHA_FV.AsDateTime);

        // NOTAS

        with TStringList.Create do
          try
            Delimiter := '-';
            StrictDelimiter := True;
            DelimitedText := Main.QSysMFACT.AsString;
            for I := 1 to Count - 1 do
            begin
              iFactura.NOT_.Add.NOT_1 := I.ToString + '.-' + Strings[I];
            end;
          finally
            Free;
          end;

        if Main.MemNotaDESCRIPCION.AsString <> '' then
        BEGIN
          iFactura.NOT_.Add.NOT_1 := '3.-' + Main.MemNotaDESCRIPCION.AsString;
        END;
        vHoy := Now;
        vDias := Trunc(Main.memNotaDUEDATE.AsDateTime -
          Main.memNotaFECHA.AsDateTime);

        iFactura.NOT_.Add.NOT_1 := '6.-' + vDias.ToString + ' Dias';

        // PREFIJO
        iFactura.DRF.DRF_4 := Main.memNotaTIPO.AsString;
        // vStringStream := TStringStream.Create(iFactura.Xml);
        // try
        // vStringStream.SaveToFile(Main.vRuta + '/' + Main.memNotaTIPO.AsString
        // + Main.memNotaBATCH.AsString + '.xml');
        // finally
        // vStringStream.DisposeOf;
        // end;
        vArchivo := TStringStream.Create(iFactura.Xml);
        vArchivoDest := TStringStream.Create;
        System.NetEncoding.TBase64Encoding.Base64.Encode(vArchivo,
          vArchivoDest);
        vArchivoDest.Position := 0;
        try
          DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
            TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
          MyRIO := THTTPRIO.Create(nil);
          Headers := MyRIO as ISOAPHeaders;
          Headers.Send(Hdr);
          downRes := UploadResponse.Create;

          vBody := UploadRequest.Create;
          vBody.companyId := Main.vlTokenEmpresa;
          vBody.accountId := Main.vlTokenPassword;
          vBody.fileName := Main.memNotaTIPO.AsString +
            Main.memNotaBATCH.AsString + '.XML';
          vBody.fileData := vArchivoDest.DataString;
          servicio := GetinvoiceService(True, '', MyRIO);
          downRes := servicio.Upload(vBody);
          ShowMessage('Estado: ' + downRes.status + ' - TransactionID: ' +
            downRes.transactionId);

          DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
            TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
          MyRIO := THTTPRIO.Create(nil);
          Headers := MyRIO as ISOAPHeaders;
          Headers.Send(Hdr);
          docReq := DocumentStatusRequest.Create;
          docReq.companyId := Main.vlTokenEmpresa;
          docReq.accountId := Main.vlTokenPassword;
          docReq.transactionId := downRes.transactionId;
          docRes := DocumentStatusResponse.Create;
          servicio := GetinvoiceService(True, '', MyRIO);
          docRes := servicio.DocumentStatus(docReq);
          if docRes.processStatus = 'OK' then
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

        finally
          FreeAndNil(Headers);
        end;
      end;
      Main.memNota.Next;
    end;
  finally
    Main.memNota.Filtered := False;
    Main.memNota.GotoBookmark(vBook);
    Main.memNota.FreeBookmark(vBook);
    Main.memNota.EnableControls;
  end;
end;

procedure PCarvajal.EnviarDevoluciones;
var
  VlrIva: Double;
  VlrIco: Double;
  docRes: DocumentStatusResponse;
  docReq: DocumentStatusRequest;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  downRes: UploadResponse;
  Hdr: Security;
  Headers: ISOAPHeaders;
  iREFLista: IXMLFACTURA_REF;
  iTIMLista: IXMLFACTURA_TIM;
  iOVTLista: IXMLFACTURA_OVT;
  iITELista: IXMLFACTURA_ITE;
  iITETIILista: IXMLFACTURA_ITE_TII;
  iITEIDELista: IXMLFACTURA_ITE_IDE;
  iITETIIIIMLista: IXMLFACTURA_ITE_TII_IIM;
  vBody: UploadRequest;
  vRes: UploadResponse;
  vPeticionDescarga: DownloadRequest;
  vArchivo, vArchivoDest: TStringStream;
  vStringStream: TStringStream;
  vCliente: Cliente;
  I: Integer;
  vSub: Double;
  Nit: string;
  vBook: TBookmark;
  vQ: TFDQuery;
begin
  if Main.memDevolucionTIPO.AsString = '' then
  begin
    exit;
  end;
  Main.QDevDetalle.DisableControls;
  vBook := Main.memDevolucion.GetBookmark;
  Main.memDevolucion.DisableControls;
  try
    Main.memDevolucion.Filtered := False;
    Main.memDevolucion.Filtered := True;
    Main.memDevolucion.First;
    while not Main.memDevolucion.Eof do
    begin
      Main.QSys.Close;
      Main.QSys.Open;
      if Main.MemDevolucionENVIADO_DEV.AsString = 'S' then
      BEGIN
        ShowMessage('El Documento ya Fue Enviado');
      END
      ELSE
      begin

        with TStringList.Create do
          try
            Delimiter := '-';
            StrictDelimiter := True;
            DelimitedText := Main.QSysFEDID.AsString;
            for I := 0 to Count - 1 do
            begin
              Nit := Strings[0];
            end;
          finally
            Free;
          end;
        vCliente := Main.GetCliente(Main.memDevolucionNit.AsInteger);
        iFactura := NewNOTA;
        // INFORMACION CABECERA
        iFactura.ENC.ENC_1 := 'NC';
        iFactura.ENC.ENC_2 := Nit.ToInteger;
        iFactura.ENC.ENC_3 := Main.memDevolucionNit.AsInteger;
        iFactura.ENC.ENC_4 := 'UBL 2.0';
        iFactura.ENC.ENC_5 := 'DIAN 1.0';
        iFactura.ENC.ENC_6 := Main.memDevolucionTIPO.AsString +
          Main.memDevolucionNUMBER.AsString;
        iFactura.ENC.ENC_7 := FormatDateTime('yyyy-mm-dd',
          Main.memDevolucionFECHA.AsDateTime);
        iFactura.ENC.ENC_8 := Main.memDevolucionHORCRE.AsString;
        iFactura.ENC.ENC_9 := 9;
        iFactura.ENC.ENC_10 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.ENC.ENC_16 := FormatDateTime('yyyy-mm-dd',
          Main.memDevolucionDUEDATE.AsDateTime);
        // INFORMACION EMISOR
        iFactura.EMI.EMI_1 := 1;
        iFactura.EMI.EMI_2 := Nit.ToInteger;
        iFactura.EMI.EMI_3 := 31;
        iFactura.EMI.EMI_4 := 2;
        iFactura.EMI.EMI_6 := Main.QSysCOMPANY.AsString;
        iFactura.EMI.EMI_10 := Main.QSysADDRESS1.AsString +
          Main.QSysADDRESS2.AsString;
        iFactura.EMI.EMI_11 := 'VALLE DEL CAUCA';
        iFactura.EMI.EMI_13 := Main.QSysCITY.AsString;
        iFactura.EMI.EMI_15 := 'CO';
        iFactura.EMI.CDE.CDE_1 := 1;
        iFactura.EMI.CDE.CDE_2 := 'CONTABILIDAD';
        iFactura.EMI.CDE.CDE_3 := Main.QSysPHONE.AsString;
        iFactura.EMI.CDE.CDE_4 := 'servicio.cliente@nutritec.com.co';
        // INFORMACION DEL ADQUIRIENTE
        iFactura.ADQ.ADQ_1 := vCliente.tipoPersona.ToInteger;
        iFactura.ADQ.ADQ_2 := vCliente.Nit.ToInteger;
        iFactura.ADQ.ADQ_3 := vCliente.tipoIdentificacion.ToDouble;
        iFactura.ADQ.ADQ_4 := vCliente.regimen.ToDouble;
        if (vCliente.tipoPersona = '2') then
        BEGIN
          iFactura.ADQ.ADQ_8 := vCliente.nombreRazonSocial + ' ' +
            vCliente.segundoNombre;
          iFactura.ADQ.ADQ_9 := vCliente.apellido;
        END
        else
        BEGIN
          iFactura.ADQ.ADQ_6 := vCliente.nombreRazonSocial;
        END;
        iFactura.ADQ.ADQ_10 := Main.memDevolucionADDR1.AsString;
        iFactura.ADQ.ADQ_11 := vCliente.departamento;
        iFactura.ADQ.ADQ_13 := vCliente.ciudad;
        iFactura.ADQ.ADQ_15 := Main.memDevolucionCOD_ISO.AsString;
        iFactura.ADQ.CDA.CDA_1 := 1;
        iFactura.ADQ.CDA.CDA_2 := Main.memDevolucionCONTACT1.AsString + ' / ' +
          Main.memDevolucionCARGO1.AsString;
        iFactura.ADQ.CDA.CDA_3 := Main.memDevolucionPHONE1.AsString;
        iFactura.ADQ.CDA.CDA_4 := Main.memDevolucionEMAIL.AsString;
        // IMPORTES TOTALES
        iFactura.TOT.TOT_1 := Main.memDevolucionSUBTOTAL.AsFloat;
        iFactura.TOT.TOT_2 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.TOT.TOT_3 := (Main.memDevolucionSUBTOTAL.AsFloat -
          Main.memDevolucionDESTOTAL.AsFloat) / Main.memDevoluciontasa.AsFloat;
        iFactura.TOT.TOT_4 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.TOT.TOT_5 := Main.memDevolucionTOTAL.AsFloat;
        iFactura.TOT.TOT_6 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.TOT.TOT_7 := Main.memDevolucionTOTAL.AsFloat;
        iFactura.TOT.TOT_8 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.TOT.TOT_9 := Main.memDevolucionDESTOTAL.AsFloat;
        iFactura.TOT.TOT_10 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.TOT.TOT_11 := Main.memDevolucionOTROSCARGOS.AsFloat;
        iFactura.TOT.TOT_12 := Main.memDevolucionCOD_MONEDA.AsString;
        iFactura.TOT.TOT_13 := 0;
        iFactura.TOT.TOT_14 := Main.memDevolucionCOD_MONEDA.AsString;
        // TOTAL IMPUESTOS
        Main.QDevImpuestos.Close;
        Main.QDevImpuestos.ParamByName('Tipo').AsString :=
          Main.memDevolucionTIPO.AsString;
        Main.QDevImpuestos.ParamByName('Number').AsInteger :=
          Main.memDevolucionNUMBER.AsInteger;
        Main.QDevImpuestos.Open;
        Main.QDevImpuestos.First;

        VlrIva := 0;
        VlrIco := 0;

        while not Main.QDevImpuestos.Eof do
        begin
          VlrIva := VlrIva + Main.QDevImpuestosVLR_IVA.AsFloat;
          VlrIco := VlrIco + Main.QDevImpuestosVLR_CONSUMO.AsFloat;

          Main.QDevImpuestos.Next;
        end;

        if VlrIva <> 0 then
        begin
          iTIMLista := iFactura.TIM.Add;
          iTIMLista.TIM_1 := 'false';
          iTIMLista.TIM_2 := VlrIva;
          iTIMLista.TIM_3 := Main.memDevolucionCOD_MONEDA.AsString;
          iTIMLista.IMP.IMP_1 := '01';
          iTIMLista.IMP.IMP_2 := Main.QDevImpuestosBASE.AsInteger;
          iTIMLista.IMP.IMP_3 := Main.memDevolucionCOD_MONEDA.AsString;
          iTIMLista.IMP.IMP_4 := VlrIva;
          iTIMLista.IMP.IMP_5 := Main.memDevolucionCOD_MONEDA.AsString;
          iTIMLista.IMP.IMP_6 := Main.QDevImpuestosPORC_IVA.AsInteger;
        end;
        if VlrIco <> 0 then
        begin
          iTIMLista := iFactura.TIM.Add;
          iTIMLista.TIM_1 := 'false';
          iTIMLista.TIM_2 := VlrIco;
          iTIMLista.TIM_3 := Main.memDevolucionCOD_MONEDA.AsString;
          iTIMLista.IMP.IMP_1 := '02';
          iTIMLista.IMP.IMP_2 := Main.QDevImpuestosBASE.AsInteger;
          iTIMLista.IMP.IMP_3 := Main.memDevolucionCOD_MONEDA.AsString;
          iTIMLista.IMP.IMP_4 := VlrIco;
          iTIMLista.IMP.IMP_5 := Main.memDevolucionCOD_MONEDA.AsString;
          iTIMLista.IMP.IMP_6 := Main.QDevImpuestosPORC_CONSUMO.AsInteger;
        end;
        if Main.memDevolucionRETIVA.AsFloat <> 0 then
        begin
          iOVTLista := iFactura.OVT.Add;
          iOVTLista.OVT_1 := '02C';
          iOVTLista.OVT_2 := Main.memDevolucionRETIVA.AsFloat;
          iOVTLista.OVT_3 := Main.memDevolucionCOD_MONEDA.AsString;

        end
        Else
        Begin
          iOVTLista := iFactura.OVT.Add;
          iOVTLista.OVT_1 := '02C';
          iOVTLista.OVT_2 := 0;
          iOVTLista.OVT_3 := Main.memDevolucionCOD_MONEDA.AsString;
        End;

        if Main.memDevolucionRETE.AsFloat <> 0 then
        begin
          iOVTLista := iFactura.OVT.Add;
          iOVTLista.OVT_1 := '01C';
          iOVTLista.OVT_2 := Main.memDevolucionRETE.AsFloat;
          iOVTLista.OVT_3 := Main.memDevolucionCOD_MONEDA.AsString;
        end
        Else
        Begin
          iOVTLista := iFactura.OVT.Add;
          iOVTLista.OVT_1 := '01C';
          iOVTLista.OVT_2 := 0;
          iOVTLista.OVT_3 := Main.memDevolucionCOD_MONEDA.AsString;
        End;
        if Main.memDevolucionRETICA.AsFloat <> 0 then
        begin
          iOVTLista := iFactura.OVT.Add;
          iOVTLista.OVT_1 := '03C';
          iOVTLista.OVT_2 := Main.memDevolucionRETICA.AsFloat;
          iOVTLista.OVT_3 := Main.memDevolucionCOD_MONEDA.AsString;
        end
        Else
        Begin
          iOVTLista := iFactura.OVT.Add;
          iOVTLista.OVT_1 := '03C';
          iOVTLista.OVT_2 := Main.memDevolucionRETICA.AsFloat;
          iOVTLista.OVT_3 := Main.memDevolucionCOD_MONEDA.AsString;
        End;
        // NOTAS
        with TStringList.Create do
          try
            Delimiter := '-';
            StrictDelimiter := True;
            DelimitedText := Main.QSysMFACT.AsString;
            for I := 1 to Count - 1 do
            begin
              iFactura.NOT_.Add.NOT_1 := I.ToString + '.-' + Strings[I];
            end;
          finally
            Free;
          end;

        if Main.memDevolucionCOMMENTS.AsString <> '' then
        BEGIN
          iFactura.NOT_.Add.NOT_1 := '3.-' +
            Main.memDevolucionCOMMENTS.AsString;
        END;

        iFactura.NOT_.Add.NOT_1 := '6.-' + Main.memDevolucionDIAS_PAGO.AsString
          + ' Dias';

        // ORDEN DE COMPRA
        if Main.MemDevolucionOCNUMERO.AsString <> '' then
        begin
          iFactura.ORC.ORC_1 := Main.MemDevolucionOCNUMERO.AsString;
        end;
        // REFERENCIA
        iREFLista := iFactura.REF.Add;
        iREFLista.REF_1 := 'IV';
        iREFLista.REF_2 := Main.memDevolucionCRUCE.AsString +
          Main.memDevolucionINVC.AsString;
        iREFLista.REF_3 := FormatDateTime('yyyy-mm-dd',
          Main.memDevolucionFECHA_FV.AsDateTime);
        // MEDIO DE PAGO
        if Main.memDevolucionMEDIOS_PAGO.AsString = 'EF' then
          iFactura.MEP.MEP_1 := '10';
        if Main.memDevolucionMEDIOS_PAGO.AsString = 'CH' then
          iFactura.MEP.MEP_1 := '20';
        if Main.memDevolucionMEDIOS_PAGO.AsString = 'CP' then
          iFactura.MEP.MEP_1 := '20';
        if Main.memDevolucionMEDIOS_PAGO.AsString = 'TC' then
          iFactura.MEP.MEP_1 := '41';
        if Main.memDevolucionMEDIOS_PAGO.AsString = 'OT' then
          iFactura.MEP.MEP_1 := '41';
        if Main.memDevolucionMEDIOS_PAGO.AsString = 'CR' then
          iFactura.MEP.MEP_1 := '42';

        // PREFIJO
        iFactura.DRF.DRF_4 := Main.memDevolucionTIPO.AsString;
        // CONCEPTO DE LA NOTA
        iFactura.MEP.MEP_3 := FormatDateTime('yyyy-mm-dd',
          Main.memDevolucionfecha_pago.AsDateTime);
        iFactura.MEP.MEP_5 := Main.memDevolucionDIAS_PAGO.AsString;
        iFactura.CDN.CDN_1 := Main.memDevolucionCONCEPTO_DV.AsInteger;
        iFactura.CDN.CDN_2 := Main.memDevolucionDESC_COCEPTO.AsString;
        Main.QDevDetalle.Close;
        Main.QDevDetalle.ParamByName('Tipo').AsString :=
          Main.memDevolucionTIPO.AsString;
        Main.QDevDetalle.ParamByName('Number').AsInteger :=
          Main.memDevolucionNUMBER.AsInteger;
        Main.QDevDetalle.Open;
        Main.QDevDetalle.First;
        // ITEMS DEL DOCUMENTO
        while not Main.QDevDetalle.Eof do
        begin
          iITELista := iFactura.ITE.Add;
          iITELista.ITE_1 := Main.QDevDetalleCONTEO.AsInteger;
          iITELista.ITE_3 := Main.QDevDetalleQTYSHIP.AsFloat;
          iITELista.ITE_4 := Main.QDevDetalleUOFMSALES.AsString;
          iITELista.ITE_5 := Main.QDevDetalleEXTEND.AsFloat;
          iITELista.ITE_6 := Main.memDevolucionCOD_MONEDA.AsString;
          iITELista.ITE_7 := Main.QDevDetallePRICE.AsFloat;
          iITELista.ITE_8 := Main.memDevolucionCOD_MONEDA.AsString;
          iITELista.ITE_9 := Main.QDevDetalleITEM.AsString;
          iITELista.ITE_10 := Main.QDevDetalleDESC_ADICIONAL.AsString;
          iITELista.ITE_11 := Main.QDevDetalleDESCRIPCION.AsString + ' ';
          iITELista.ITE_12 := Main.QDevDetalleDESC_ADICIONAL.AsString + ' - ' +
            Main.QDevDetalleUNIDAD.AsString;
          iITELista.ITE_17 := Main.QDevDetalleITEM.AsString;
          iITELista.ITE_19 := Main.QDevDetalleBASE.AsFloat;
          iITELista.ITE_20 := Main.memDevolucionCOD_MONEDA.AsString;
          iITELista.ITE_21 := Main.QDevDetalleBASE.AsFloat;
          iITELista.ITE_22 := Main.memDevolucionCOD_MONEDA.AsString;
          // DESCUENTO DEL ITEM
          if Main.QDevDetalleTOTALDCT.AsFloat <> 0 then
          BEGIN
            iITEIDELista := iITELista.IDE.Add;
            iITEIDELista.IDE_1 := 'false';
            iITEIDELista.IDE_2 := Main.QDevDetalleTOTALDCT.AsFloat;
            iITEIDELista.IDE_3 := Main.memDevolucionCOD_MONEDA.AsString;
            iITEIDELista.IDE_7 := Main.QDevDetalleEXTEND.AsFloat;
            iITEIDELista.IDE_8 := Main.memDevolucionCOD_MONEDA.AsString;
          END
          ELSE
          BEGIN
            iITEIDELista := iITELista.IDE.Add;
            iITEIDELista.IDE_1 := 'false';
            iITEIDELista.IDE_2 := 0;
            iITEIDELista.IDE_3 := Main.memDevolucionCOD_MONEDA.AsString;
            iITEIDELista.IDE_7 := Main.QDevDetalleEXTEND.AsFloat;;
            iITEIDELista.IDE_8 := Main.memDevolucionCOD_MONEDA.AsString;
          END;
          // IMPUESTOS DEL ITEM
          if Main.QDevDetalleVLR_IVA.AsFloat <> 0 then
          BEGIN
            iITETIILista := iITELista.TII.Add;
            iITETIILista.TII_1 := Main.QDevDetalleVLR_IVA.AsFloat;
            iITETIILista.TII_2 := Main.memDevolucionCOD_MONEDA.AsString;
            iITETIILista.TII_3 := 'false';
            iITETIIIIMLista := iITETIILista.IIM.Add;
            iITETIIIIMLista.IIM_1 := '01';
            iITETIIIIMLista.IIM_2 := Main.QDevDetalleVLR_IVA.AsFloat;
            iITETIIIIMLista.IIM_3 := Main.memDevolucionCOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_4 := Main.QDevDetalleBASE.AsFloat;
            iITETIIIIMLista.IIM_5 := Main.memDevolucionCOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_6 := Main.QDevDetallePORC_IVA.AsFloat;
          END;
          if Main.QDevDetalleVLR_CONSUMO.AsFloat <> 0 then
          BEGIN
            iITETIILista := iITELista.TII.Add;
            iITETIILista.TII_1 := Main.QDevDetalleVLR_CONSUMO.AsFloat;
            iITETIILista.TII_2 := Main.memDevolucionCOD_MONEDA.AsString;
            iITETIILista.TII_3 := 'false';
            iITETIIIIMLista := iITETIILista.IIM.Add;
            iITETIIIIMLista.IIM_1 := '02';
            iITETIIIIMLista.IIM_2 := Main.QDevDetalleVLR_CONSUMO.AsFloat;
            iITETIIIIMLista.IIM_3 := Main.memDevolucionCOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_4 := Main.QDevDetalleBASE.AsFloat;
            iITETIIIIMLista.IIM_5 := Main.memDevolucionCOD_MONEDA.AsString;
            iITETIIIIMLista.IIM_6 := Main.QDevDetallePORC_CONSUMO.AsFloat;
          END;
          Main.QDevDetalle.Next;
        END;
        vStringStream := TStringStream.Create(iFactura.Xml);
        try
          vStringStream.SaveToFile(Main.vRuta + '/' +
            Main.memDevolucionTIPO.AsString + Main.memDevolucionNUMBER.AsString
            + '.xml');
        finally
          vStringStream.DisposeOf;
        end;
        vArchivo := TStringStream.Create(iFactura.Xml);
        vArchivoDest := TStringStream.Create;
        System.NetEncoding.TBase64Encoding.Base64.Encode(vArchivo,
          vArchivoDest);
        vArchivoDest.Position := 0;
        try
          DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
            TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
          MyRIO := THTTPRIO.Create(nil);
          Headers := MyRIO as ISOAPHeaders;
          Headers.Send(Hdr);
          downRes := UploadResponse.Create;

          vBody := UploadRequest.Create;
          vBody.companyId := Main.vlTokenEmpresa;
          vBody.accountId := Main.vlTokenPassword;
          vBody.fileName := Main.memDevolucionTIPO.AsString + '-' +
            Main.memDevolucionNUMBER.AsString + '.XML';
          vBody.fileData := vArchivoDest.DataString;
          servicio := GetinvoiceService(True, '', MyRIO);
          downRes := servicio.Upload(vBody);
          ShowMessage('Estado: ' + downRes.status + ' - TransactionID: ' +
            downRes.transactionId);

          DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
            TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
          MyRIO := THTTPRIO.Create(nil);
          Headers := MyRIO as ISOAPHeaders;
          Headers.Send(Hdr);
          docReq := DocumentStatusRequest.Create;
          docReq.companyId := Main.vlTokenEmpresa;
          docReq.accountId := Main.vlTokenPassword;
          docReq.transactionId := downRes.transactionId;
          docRes := DocumentStatusResponse.Create;
          servicio := GetinvoiceService(True, '', MyRIO);
          docRes := servicio.DocumentStatus(docReq);
          if docRes.processStatus = 'OK' then
          begin
            vQ := TFDQuery.Create(nil);
            try
              vQ.Connection := Main.Conexion;
              vQ.ExecSQL
                ('update OE set ENVIADO_DEV = ''S'' where tipo = :tipo and number = :num',
                [Main.memDevolucionTIPO.AsString,
                Main.memDevolucionNUMBER.AsInteger],
                [TFieldType.ftString, TFieldType.ftInteger]);
            finally
              vQ.DisposeOf;
            end;
          END;

        finally
          FreeAndNil(Headers);

        end;
      end;
      Main.memDevolucion.Next;
    end;
  finally
    Main.memDevolucion.Filtered := False;
    Main.memDevolucion.GotoBookmark(vBook);
    Main.memDevolucion.FreeBookmark(vBook);
    Main.memDevolucion.EnableControls;
  end;
end;

procedure PCarvajal.EstadoDevoluciones;
VAR
  vBook: TBookmark;
  statusReq: DocumentStatusByNumberRequest;
  statusRes: DocumentStatusByNumberResponse;
  Hdr: Security;
  Headers: ISOAPHeaders;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  vQ: TFDQuery;
begin
  vBook := Main.memDevolucion.GetBookmark;
  Main.memDevolucion.DisableControls;
  if Main.memDevolucionTIPO.AsString = '' then
  begin
    exit;
  end;
  try
    Main.memDevolucion.Filtered := False;
    Main.memDevolucion.Filtered := True;
    Main.memDevolucion.First;
    while not Main.memDevolucion.Eof do
    begin
      Main.memDevolucion.Open;
      Main.memDevolucion.Edit;
      try
        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        statusReq := DocumentStatusByNumberRequest.Create;
        statusRes := DocumentStatusByNumberResponse.Create;
        statusReq.companyId := Main.vlTokenEmpresa;
        statusReq.accountId := Main.vlTokenPassword;
        statusReq.documentType := 'NC';
        statusReq.documentPrefix := Main.memDevolucionTIPO.AsString;
        statusReq.documentNumber := Main.memDevolucionTIPO.AsString +
          Main.memDevolucionNUMBER.AsString;
        servicio := GetinvoiceService(True, '', MyRIO);
        statusRes := servicio.DocumentStatusByNumber(statusReq);

        Main.memDevolucionAcuse.AsString := statusRes.processStatus;
        Main.memDevolucionEstado.AsString := statusRes.legalStatus;

        Main.MemDevolucionObservaciones.AsString := statusRes.errorMessage;
        if statusRes.processStatus = 'OK' then
        begin
          vQ := TFDQuery.Create(nil);
          try
            vQ.Connection := Main.Conexion;
            vQ.ExecSQL
              ('update OE set ENVIADO_DEV = ''S'' where tipo = :tipo and number = :num',
              [Main.memDevolucionTIPO.AsString,
              Main.memDevolucionNUMBER.AsInteger],
              [TFieldType.ftString, TFieldType.ftInteger]);
          finally
            vQ.DisposeOf;
          end;
        END
        ELSE if statusRes.processStatus = 'FAIL' then
        begin
          vQ := TFDQuery.Create(nil);
          try
            vQ.Connection := Main.Conexion;
            vQ.ExecSQL
              ('update OE set ENVIADO_DEV = ''N'' where tipo = :tipo and number = :num',
              [Main.memDevolucionTIPO.AsString,
              Main.memDevolucionNUMBER.AsInteger],
              [TFieldType.ftString, TFieldType.ftInteger]);
          finally
            vQ.DisposeOf;
          end;
        END;

      finally
        FreeAndNil(Headers);
      end;

      Main.memDevolucion.Next;
    end;
  finally
    Main.memDevolucion.Filtered := False;
    Main.memDevolucion.GotoBookmark(vBook);
    Main.memDevolucion.FreeBookmark(vBook);
    Main.memDevolucion.EnableControls;
  end;
end;

procedure PCarvajal.EstadoFacturas;
VAR
  vBook: TBookmark;
  statusReq: DocumentStatusByNumberRequest;
  statusRes: DocumentStatusByNumberResponse;
  Hdr: Security;
  Headers: ISOAPHeaders;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  vQ: TFDQuery;
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
      try
        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        statusReq := DocumentStatusByNumberRequest.Create;
        statusRes := DocumentStatusByNumberResponse.Create;
        statusReq.companyId := Main.vlTokenEmpresa;
        statusReq.accountId := Main.vlTokenPassword;
        if Main.memFACTURACOD_MONEDA.AsString <> 'COP' then
        Begin
          statusReq.documentType := 'FE';
        End
        else if Main.memFACTURACOD_MONEDA.AsString = 'COP' then
        Begin
          statusReq.documentType := 'FV';
        End;

        statusReq.documentPrefix := Main.MemFacturaPREFIJO_DIAN.AsString;
        statusReq.documentNumber := Main.MemFacturaPREFIJO_DIAN.AsString +
          Main.memFACTURANUMERO.AsString;
        servicio := GetinvoiceService(True, '', MyRIO);
        statusRes := servicio.DocumentStatusByNumber(statusReq);

        Main.memFACTURAAcuse.AsString := statusRes.processStatus;
        Main.memFACTURAEstado.AsString := statusRes.legalStatus;

        Main.memFACTURAObservaciones.AsString := statusRes.errorMessage;
        if statusRes.processStatus = 'OK' then
        begin
          vQ := TFDQuery.Create(nil);
          try
            vQ.Connection := Main.Conexion;
            vQ.ExecSQL
              ('update oe set cufe = ''1'' where tipo = :tipo and number = :num and (cufe = '''' or cufe is null)',
              [Main.memFACTURATIPO.AsString, Main.memFACTURANUMERO.AsString],
              [TFieldType.ftString, TFieldType.ftInteger]);
          finally
            vQ.DisposeOf;
          end;
        END
        ELSE if statusRes.processStatus = 'FAIL' then
        begin
          vQ := TFDQuery.Create(nil);
          try
            vQ.Connection := Main.Conexion;
            vQ.ExecSQL
              ('update oe set cufe = '''' where tipo = :tipo and number = :num and (cufe <> '''' or cufe is not  null)',
              [Main.memFACTURATIPO.AsString, Main.memFACTURANUMERO.AsInteger],
              [TFieldType.ftString, TFieldType.ftInteger]);
          finally
            vQ.DisposeOf;
          end;
        END;

      finally
        FreeAndNil(Headers);
      end;

      Main.memFACTURA.Next;
    end;
  finally
    Main.memFACTURA.Filtered := False;
    Main.memFACTURA.GotoBookmark(vBook);
    Main.memFACTURA.FreeBookmark(vBook);
    Main.memFACTURA.EnableControls;
  end;
end;

procedure PCarvajal.EstadoNotas;
VAR
  vBook: TBookmark;
  statusReq: DocumentStatusByNumberRequest;
  statusRes: DocumentStatusByNumberResponse;
  Hdr: Security;
  Headers: ISOAPHeaders;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  vQ: TFDQuery;
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
      try
        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        statusReq := DocumentStatusByNumberRequest.Create;
        statusRes := DocumentStatusByNumberResponse.Create;
        statusReq.companyId := Main.vlTokenEmpresa;
        statusReq.accountId := Main.vlTokenPassword;
        statusReq.documentType := Main.QTip_DocTIPO.AsString;
        statusReq.documentPrefix := Main.memNotaTIPO.AsString;
        statusReq.documentNumber := Main.memNotaTIPO.AsString +
          Main.memNotaBATCH.AsString;
        servicio := GetinvoiceService(True, '', MyRIO);
        statusRes := servicio.DocumentStatusByNumber(statusReq);

        Main.MemNotaAcuse.AsString := statusRes.processStatus;
        Main.MemNotaEstado.AsString := statusRes.legalStatus;

        Main.MemNotaObservaciones.AsString := statusRes.errorMessage;
        if statusRes.processStatus = 'OK' then
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
        END
        ELSE if statusRes.processStatus = 'FAIL' then
        begin
          vQ := TFDQuery.Create(nil);
          try
            vQ.Connection := Main.Conexion;
            vQ.ExecSQL
              ('update carproen set enviado = ''N'' where tipo = :tipo and batch = :num',
              [Main.memNotaTIPO.AsString, Main.memNotaBATCH.AsInteger],
              [TFieldType.ftString, TFieldType.ftInteger]);
          finally
            vQ.DisposeOf;
          end;
        END;

      finally
        FreeAndNil(Headers);
      end;

      Main.memNota.Next;
    end;
  finally
    Main.memNota.Filtered := False;
    Main.memNota.GotoBookmark(vBook);
    Main.memNota.FreeBookmark(vBook);
    Main.memNota.EnableControls;
  end;
end;

procedure PCarvajal.PdfDevoluciones;
var
  downReq: DownloadRequest;
  downRes: DownloadResponse;
  Hdr: Security;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  Headers: ISOAPHeaders;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
  vBook: TBookmark;
begin
  h := 0;
  vBook := Main.memDevolucion.GetBookmark;
  if DirectoryExists(Main.vRuta) then
  begin
    if Main.memDevolucionTIPO.AsString = '' then
    begin
      exit;
    end;
    Main.memDevolucion.DisableControls;
    try
      Main.memDevolucion.Filtered := False;
      Main.memDevolucion.Filtered := True;
      Main.memDevolucion.First;
      while not Main.memDevolucion.Eof do
      begin
        Main.memDevolucion.Open;
        Main.memDevolucion.Edit;

        downReq := DownloadRequest.Create;
        downRes := DownloadResponse.Create;
        downReq.companyId := Main.vlTokenEmpresa;
        downReq.accountId := Main.vlTokenPassword;
        downReq.documentType := 'NC';
        downReq.documentNumber := Main.memDevolucionTIPO.AsString +
          Main.memDevolucionNUMBER.AsString;
        downReq.documentPrefix := Main.memDevolucionTIPO.AsString;
        downReq.resourceType := 'PDF';

        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        servicio := GetinvoiceService(True, '', MyRIO);
        downRes := servicio.Download(downReq);
        if downRes.downloadData <> '' then
        begin
          vPDFEncode := TStringStream.Create(downRes.downloadData);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Devolucion' +
              Main.memDevolucionTIPO.AsString +
              Main.memDevolucionNUMBER.AsString + '.PDF');
          finally
            vPDFEncode.DisposeOf;
            vPDFDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.memDevolucion.Next;
      end;
    finally
      Main.memDevolucion.Filtered := False;
      Main.memDevolucion.EnableControls;
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

procedure PCarvajal.PdfFacturas;
var
  downReq: DownloadRequest;
  downRes: DownloadResponse;
  Hdr: Security;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  Headers: ISOAPHeaders;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
  vBook: TBookmark;
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

        downReq := DownloadRequest.Create;
        downRes := DownloadResponse.Create;
        downReq.companyId := Main.vlTokenEmpresa;
        downReq.accountId := Main.vlTokenPassword;
        downReq.documentType := 'FV';
        downReq.documentNumber := Main.MemFacturaPREFIJO_DIAN.AsString +
          Main.memFACTURANUMERO.AsString;
        downReq.documentPrefix := Main.MemFacturaPREFIJO_DIAN.AsString;
        downReq.resourceType := 'PDF';

        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        servicio := GetinvoiceService(True, '', MyRIO);
        downRes := servicio.Download(downReq);
        if downRes.downloadData <> '' then
        begin
          vPDFEncode := TStringStream.Create(downRes.downloadData);
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

procedure PCarvajal.PdfNotas;
var
  downReq: DownloadRequest;
  downRes: DownloadResponse;
  Hdr: Security;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  Headers: ISOAPHeaders;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
  vBook: TBookmark;
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

        downReq := DownloadRequest.Create;
        downRes := DownloadResponse.Create;
        downReq.companyId := Main.vlTokenEmpresa;
        downReq.accountId := Main.vlTokenPassword;
        downReq.documentType := Main.QTip_DocTIPO.AsString;
        downReq.documentNumber := Main.memNotaTIPO.AsString +
          Main.memNotaBATCH.AsString;
        downReq.documentPrefix := Main.memNotaTIPO.AsString;
        downReq.resourceType := 'PDF';

        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        servicio := GetinvoiceService(True, '', MyRIO);
        downRes := servicio.Download(downReq);
        if downRes.downloadData <> '' then
        begin
          vPDFEncode := TStringStream.Create(downRes.downloadData);
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

procedure PCarvajal.XmlDevoluciones;
var
  downReq: DownloadRequest;
  downRes: DownloadResponse;
  Hdr: Security;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  Headers: ISOAPHeaders;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
  vBook: TBookmark;
begin
  h := 0;
  vBook := Main.memDevolucion.GetBookmark;
  if DirectoryExists(Main.vRuta) then
  begin
    if Main.memDevolucionTIPO.AsString = '' then
    begin
      exit;
    end;
    Main.memDevolucion.DisableControls;
    try
      Main.memDevolucion.Filtered := False;
      Main.memDevolucion.Filtered := True;
      Main.memDevolucion.First;
      while not Main.memDevolucion.Eof do
      begin
        Main.memDevolucion.Open;
        Main.memDevolucion.Edit;

        downReq := DownloadRequest.Create;
        downRes := DownloadResponse.Create;
        downReq.companyId := Main.vlTokenEmpresa;
        downReq.accountId := Main.vlTokenPassword;
        downReq.documentType := 'NC';
        downReq.documentNumber := Main.memDevolucionTIPO.AsString +
          Main.memDevolucionNUMBER.AsString;
        downReq.documentPrefix := Main.memDevolucionTIPO.AsString;
        downReq.resourceType := 'SIGNED_XML';

        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        servicio := GetinvoiceService(True, '', MyRIO);
        downRes := servicio.Download(downReq);
        if downRes.downloadData <> '' then
        begin
          vPDFEncode := TStringStream.Create(downRes.downloadData);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Devolucion' +
              Main.memDevolucionTIPO.AsString +
              Main.memDevolucionNUMBER.AsString + '.XML');
          finally
            vPDFEncode.DisposeOf;
            vPDFDecode.DisposeOf;
            h := 1;
          end;
        end;
        Main.memDevolucion.Next;
      end;
    finally
      Main.memDevolucion.Filtered := False;
      Main.memDevolucion.EnableControls;
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

procedure PCarvajal.XmlFacturas;
var
  downReq: DownloadRequest;
  downRes: DownloadResponse;
  Hdr: Security;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  Headers: ISOAPHeaders;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
  vBook: TBookmark;
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

        downReq := DownloadRequest.Create;
        downRes := DownloadResponse.Create;
        downReq.companyId := Main.vlTokenEmpresa;
        downReq.accountId := Main.vlTokenPassword;
        downReq.documentType := 'FV';
        downReq.documentNumber := Main.MemFacturaPREFIJO_DIAN.AsString +
          Main.memFACTURANUMERO.AsString;
        downReq.documentPrefix := Main.MemFacturaPREFIJO_DIAN.AsString;
        downReq.resourceType := 'SIGNED_XML';

        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        servicio := GetinvoiceService(True, '', MyRIO);
        downRes := servicio.Download(downReq);
        if downRes.downloadData <> '' then
        begin
          vPDFEncode := TStringStream.Create(downRes.downloadData);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Factura' +
              Main.memFACTURATIPO.AsString + Main.memFACTURANUMERO.AsString
              + '.XML');
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

procedure PCarvajal.XmlNotas;
var
  downReq: DownloadRequest;
  downRes: DownloadResponse;
  Hdr: Security;
  MyRIO: THTTPRIO;
  servicio: invoiceService;
  Headers: ISOAPHeaders;
  vRespuesta: DownloadPDFResponse2;
  vPDFEncode, vPDFDecode: TStringStream;
  h: Integer;
  vBook: TBookmark;
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

        downReq := DownloadRequest.Create;
        downRes := DownloadResponse.Create;
        downReq.companyId := Main.vlTokenEmpresa;
        downReq.accountId := Main.vlTokenPassword;
        downReq.documentType := Main.QTip_DocTIPO.AsString;
        downReq.documentNumber := Main.memNotaTIPO.AsString +
          Main.memNotaBATCH.AsString;
        downReq.documentPrefix := Main.memNotaTIPO.AsString;
        downReq.resourceType := 'SIGNED_XML';

        DoSecurity(Hdr, Main.vUser, THashSHA2.GetHashString(Main.vPass),
          TNetEncoding.Base64.Encode(TGUID.NewGuid.ToString));
        MyRIO := THTTPRIO.Create(nil);
        Headers := MyRIO as ISOAPHeaders;
        Headers.Send(Hdr);
        servicio := GetinvoiceService(True, '', MyRIO);
        downRes := servicio.Download(downReq);
        if downRes.downloadData <> '' then
        begin
          vPDFEncode := TStringStream.Create(downRes.downloadData);
          vPDFDecode := TStringStream.Create;
          try
            TNetEncoding.Base64.Decode(vPDFEncode, vPDFDecode);
            vPDFDecode.Position := 0;
            vPDFDecode.SaveToFile(Main.vRuta + '\Nota' +
              Main.memNotaTIPO.AsString + Main.memNotaBATCH.AsString + '.XML');
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
