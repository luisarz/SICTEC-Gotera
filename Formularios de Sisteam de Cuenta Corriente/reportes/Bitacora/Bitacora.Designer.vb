<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Public Class Bitacora
    Inherits DevExpress.XtraReports.UI.XtraReport

    'XtraReport overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Designer
    'It can be modified using the Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Bitacora))
        Me.Detail = New DevExpress.XtraReports.UI.DetailBand()
        Me.XrTable1 = New DevExpress.XtraReports.UI.XRTable()
        Me.XrTableRow1 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell1 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell2 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell3 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell4 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell9 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.TopMargin = New DevExpress.XtraReports.UI.TopMarginBand()
        Me.BottomMargin = New DevExpress.XtraReports.UI.BottomMarginBand()
        Me.PageHeader = New DevExpress.XtraReports.UI.PageHeaderBand()
        Me.XrTable2 = New DevExpress.XtraReports.UI.XRTable()
        Me.XrTableRow2 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell5 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell6 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell7 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell8 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell10 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.Parameter1 = New DevExpress.XtraReports.Parameters.Parameter()
        Me.Parameter2 = New DevExpress.XtraReports.Parameters.Parameter()
        Me.ReportHeader = New DevExpress.XtraReports.UI.ReportHeaderBand()
        Me.XrPageInfo1 = New DevExpress.XtraReports.UI.XRPageInfo()
        Me.lblalcaldia = New DevExpress.XtraReports.UI.XRLabel()
        Me.lbltelefono = New DevExpress.XtraReports.UI.XRLabel()
        Me.D = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLine10 = New DevExpress.XtraReports.UI.XRLine()
        Me.XrPictureBox2 = New DevExpress.XtraReports.UI.XRPictureBox()
        Me.ptblogo = New DevExpress.XtraReports.UI.XRPictureBox()
        Me.XrLabel33 = New DevExpress.XtraReports.UI.XRLabel()
        Me.Dsbitacora1 = New Formularios_de_Sistema_de_Cuenta_Corriente.Dsbitacora()
        Me.BitacoraTableAdapter = New Formularios_de_Sistema_de_Cuenta_Corriente.DsbitacoraTableAdapters.BitacoraTableAdapter()
        CType(Me.XrTable1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XrTable2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Dsbitacora1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'Detail
        '
        Me.Detail.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrTable1})
        Me.Detail.HeightF = 26.0!
        Me.Detail.Name = "Detail"
        Me.Detail.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrTable1
        '
        Me.XrTable1.Borders = DevExpress.XtraPrinting.BorderSide.Bottom
        Me.XrTable1.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.XrTable1.Name = "XrTable1"
        Me.XrTable1.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow1})
        Me.XrTable1.SizeF = New System.Drawing.SizeF(794.9999!, 25.0!)
        Me.XrTable1.StylePriority.UseBorders = False
        '
        'XrTableRow1
        '
        Me.XrTableRow1.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell1, Me.XrTableCell2, Me.XrTableCell3, Me.XrTableCell4, Me.XrTableCell9})
        Me.XrTableRow1.Name = "XrTableRow1"
        Me.XrTableRow1.Weight = 1.0R
        '
        'XrTableCell1
        '
        Me.XrTableCell1.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "Bitacora.id_bitacora")})
        Me.XrTableCell1.Name = "XrTableCell1"
        Me.XrTableCell1.Text = "XrTableCell1"
        Me.XrTableCell1.Weight = 0.32975869268258834R
        '
        'XrTableCell2
        '
        Me.XrTableCell2.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "Bitacora.Fecha")})
        Me.XrTableCell2.Name = "XrTableCell2"
        Me.XrTableCell2.Text = "XrTableCell2"
        Me.XrTableCell2.Weight = 0.5294822017877987R
        '
        'XrTableCell3
        '
        Me.XrTableCell3.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "Bitacora.Modulo")})
        Me.XrTableCell3.Name = "XrTableCell3"
        Me.XrTableCell3.Text = "XrTableCell3"
        Me.XrTableCell3.Weight = 1.0207860788142145R
        '
        'XrTableCell4
        '
        Me.XrTableCell4.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "Bitacora.accion")})
        Me.XrTableCell4.Name = "XrTableCell4"
        Me.XrTableCell4.Text = "XrTableCell4"
        Me.XrTableCell4.Weight = 0.67398015602746475R
        '
        'XrTableCell9
        '
        Me.XrTableCell9.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "Bitacora.Usuario")})
        Me.XrTableCell9.Name = "XrTableCell9"
        Me.XrTableCell9.Weight = 0.44599287068793386R
        '
        'TopMargin
        '
        Me.TopMargin.HeightF = 39.58333!
        Me.TopMargin.Name = "TopMargin"
        Me.TopMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.TopMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'BottomMargin
        '
        Me.BottomMargin.HeightF = 100.0!
        Me.BottomMargin.Name = "BottomMargin"
        Me.BottomMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.BottomMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'PageHeader
        '
        Me.PageHeader.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrTable2})
        Me.PageHeader.HeightF = 25.0!
        Me.PageHeader.Name = "PageHeader"
        '
        'XrTable2
        '
        Me.XrTable2.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.XrTable2.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.XrTable2.Name = "XrTable2"
        Me.XrTable2.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow2})
        Me.XrTable2.SizeF = New System.Drawing.SizeF(795.0!, 25.0!)
        Me.XrTable2.StylePriority.UseBackColor = False
        '
        'XrTableRow2
        '
        Me.XrTableRow2.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell5, Me.XrTableCell6, Me.XrTableCell7, Me.XrTableCell8, Me.XrTableCell10})
        Me.XrTableRow2.Name = "XrTableRow2"
        Me.XrTableRow2.Weight = 1.0R
        '
        'XrTableCell5
        '
        Me.XrTableCell5.Name = "XrTableCell5"
        Me.XrTableCell5.Text = "BITACORA"
        Me.XrTableCell5.Weight = 0.32975869268258834R
        '
        'XrTableCell6
        '
        Me.XrTableCell6.Name = "XrTableCell6"
        Me.XrTableCell6.Text = "FECHA / HORA"
        Me.XrTableCell6.Weight = 0.52948214752708245R
        '
        'XrTableCell7
        '
        Me.XrTableCell7.Name = "XrTableCell7"
        Me.XrTableCell7.Text = "MODULO DE ACCESO"
        Me.XrTableCell7.Weight = 1.0207861330749306R
        '
        'XrTableCell8
        '
        Me.XrTableCell8.Name = "XrTableCell8"
        Me.XrTableCell8.Text = "ACCI�N REALIZADA"
        Me.XrTableCell8.Weight = 0.67397968663305308R
        '
        'XrTableCell10
        '
        Me.XrTableCell10.Name = "XrTableCell10"
        Me.XrTableCell10.Text = "USUARIO"
        Me.XrTableCell10.Weight = 0.44599334008234559R
        '
        'Parameter1
        '
        Me.Parameter1.Description = "Desde:"
        Me.Parameter1.Name = "Parameter1"
        Me.Parameter1.Type = GetType(Date)
        Me.Parameter1.ValueInfo = "11/03/2011 20:35:26"
        '
        'Parameter2
        '
        Me.Parameter2.Description = "Hasta:"
        Me.Parameter2.Name = "Parameter2"
        Me.Parameter2.Type = GetType(Date)
        Me.Parameter2.ValueInfo = "11/03/2011 20:36:23"
        '
        'ReportHeader
        '
        Me.ReportHeader.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrPageInfo1, Me.lblalcaldia, Me.lbltelefono, Me.D, Me.XrLine10, Me.XrPictureBox2, Me.ptblogo, Me.XrLabel33})
        Me.ReportHeader.HeightF = 106.0!
        Me.ReportHeader.Name = "ReportHeader"
        '
        'XrPageInfo1
        '
        Me.XrPageInfo1.LocationFloat = New DevExpress.Utils.PointFloat(697.5!, 90.95834!)
        Me.XrPageInfo1.Name = "XrPageInfo1"
        Me.XrPageInfo1.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrPageInfo1.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime
        Me.XrPageInfo1.SizeF = New System.Drawing.SizeF(87.5!, 13.00001!)
        Me.XrPageInfo1.TextFormatString = "{0:dd/MM/yyyy}"
        '
        'lblalcaldia
        '
        Me.lblalcaldia.Font = New System.Drawing.Font("Times New Roman", 9.75!, System.Drawing.FontStyle.Bold)
        Me.lblalcaldia.LocationFloat = New DevExpress.Utils.PointFloat(110.9585!, 0!)
        Me.lblalcaldia.Name = "lblalcaldia"
        Me.lblalcaldia.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.lblalcaldia.SizeF = New System.Drawing.SizeF(575.7498!, 23.0!)
        Me.lblalcaldia.StylePriority.UseFont = False
        Me.lblalcaldia.StylePriority.UseTextAlignment = False
        Me.lblalcaldia.Text = "lblalcaldia"
        Me.lblalcaldia.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter
        '
        'lbltelefono
        '
        Me.lbltelefono.LocationFloat = New DevExpress.Utils.PointFloat(110.9585!, 46.0!)
        Me.lbltelefono.Name = "lbltelefono"
        Me.lbltelefono.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.lbltelefono.SizeF = New System.Drawing.SizeF(575.7498!, 23.0!)
        Me.lbltelefono.StylePriority.UseTextAlignment = False
        Me.lbltelefono.Text = "lbltelefono"
        Me.lbltelefono.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter
        '
        'D
        '
        Me.D.LocationFloat = New DevExpress.Utils.PointFloat(110.9585!, 23.0!)
        Me.D.Name = "D"
        Me.D.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.D.SizeF = New System.Drawing.SizeF(575.7498!, 23.0!)
        Me.D.StylePriority.UseTextAlignment = False
        Me.D.Text = "D"
        Me.D.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter
        '
        'XrLine10
        '
        Me.XrLine10.LocationFloat = New DevExpress.Utils.PointFloat(0.00006103516!, 93.75!)
        Me.XrLine10.Name = "XrLine10"
        Me.XrLine10.SizeF = New System.Drawing.SizeF(686.7083!, 6.25!)
        '
        'XrPictureBox2
        '
        Me.XrPictureBox2.Image = CType(resources.GetObject("XrPictureBox2.Image"), System.Drawing.Image)
        Me.XrPictureBox2.LocationFloat = New DevExpress.Utils.PointFloat(686.7083!, 0!)
        Me.XrPictureBox2.Name = "XrPictureBox2"
        Me.XrPictureBox2.SizeF = New System.Drawing.SizeF(98.29175!, 90.95834!)
        Me.XrPictureBox2.Sizing = DevExpress.XtraPrinting.ImageSizeMode.ZoomImage
        '
        'ptblogo
        '
        Me.ptblogo.Image = CType(resources.GetObject("ptblogo.Image"), System.Drawing.Image)
        Me.ptblogo.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.ptblogo.Name = "ptblogo"
        Me.ptblogo.SizeF = New System.Drawing.SizeF(110.9585!, 90.95834!)
        Me.ptblogo.Sizing = DevExpress.XtraPrinting.ImageSizeMode.StretchImage
        '
        'XrLabel33
        '
        Me.XrLabel33.Font = New System.Drawing.Font("Bookman Old Style", 9.75!, System.Drawing.FontStyle.Bold)
        Me.XrLabel33.LocationFloat = New DevExpress.Utils.PointFloat(110.9585!, 68.99999!)
        Me.XrLabel33.Name = "XrLabel33"
        Me.XrLabel33.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel33.SizeF = New System.Drawing.SizeF(575.7498!, 21.95834!)
        Me.XrLabel33.StylePriority.UseFont = False
        Me.XrLabel33.StylePriority.UseTextAlignment = False
        Me.XrLabel33.Text = "BITACORA DE OPERACIONES REALIZADAS EN EL SISTEMA"
        Me.XrLabel33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter
        '
        'Dsbitacora1
        '
        Me.Dsbitacora1.DataSetName = "Dsbitacora"
        Me.Dsbitacora1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'BitacoraTableAdapter
        '
        Me.BitacoraTableAdapter.ClearBeforeFill = True
        '
        'Bitacora
        '
        Me.Bands.AddRange(New DevExpress.XtraReports.UI.Band() {Me.Detail, Me.TopMargin, Me.BottomMargin, Me.PageHeader, Me.ReportHeader})
        Me.DataAdapter = Me.BitacoraTableAdapter
        Me.DataMember = "Bitacora"
        Me.DataSource = Me.Dsbitacora1
        Me.FilterString = "[Fecha] >= ?Parameter1 And [Fecha] <= ?Parameter2"
        Me.Margins = New System.Drawing.Printing.Margins(26, 29, 40, 100)
        Me.Parameters.AddRange(New DevExpress.XtraReports.Parameters.Parameter() {Me.Parameter1, Me.Parameter2})
        Me.ShowPreviewMarginLines = False
        Me.Version = "17.2"
        CType(Me.XrTable1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XrTable2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Dsbitacora1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Friend WithEvents Detail As DevExpress.XtraReports.UI.DetailBand
    Friend WithEvents TopMargin As DevExpress.XtraReports.UI.TopMarginBand
    Friend WithEvents BottomMargin As DevExpress.XtraReports.UI.BottomMarginBand
    Friend WithEvents XrTable1 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow1 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell1 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell2 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell3 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell4 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell9 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents PageHeader As DevExpress.XtraReports.UI.PageHeaderBand
    Friend WithEvents XrTable2 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow2 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell5 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell6 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell7 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell8 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell10 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents Parameter1 As DevExpress.XtraReports.Parameters.Parameter
    Friend WithEvents Parameter2 As DevExpress.XtraReports.Parameters.Parameter
    Friend WithEvents ReportHeader As DevExpress.XtraReports.UI.ReportHeaderBand
    Friend WithEvents XrPageInfo1 As DevExpress.XtraReports.UI.XRPageInfo
    Friend WithEvents lblalcaldia As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents lbltelefono As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents D As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLine10 As DevExpress.XtraReports.UI.XRLine
    Friend WithEvents XrPictureBox2 As DevExpress.XtraReports.UI.XRPictureBox
    Friend WithEvents ptblogo As DevExpress.XtraReports.UI.XRPictureBox
    Friend WithEvents XrLabel33 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents Dsbitacora1 As Formularios_de_Sistema_de_Cuenta_Corriente.Dsbitacora
    Friend WithEvents BitacoraTableAdapter As Formularios_de_Sistema_de_Cuenta_Corriente.DsbitacoraTableAdapters.BitacoraTableAdapter
End Class
