<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Reporte_Colonia
    Inherits DevExpress.XtraEditors.XtraForm

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Reporte_Colonia))
		Me.PanelControl1 = New DevExpress.XtraEditors.PanelControl()
		Me.lista = New DevExpress.XtraGrid.GridControl()
		Me.GridView1 = New DevExpress.XtraGrid.Views.Grid.GridView()
		Me.GridColumn2 = New DevExpress.XtraGrid.Columns.GridColumn()
		Me.GridColumn1 = New DevExpress.XtraGrid.Columns.GridColumn()
		Me.PanelControl2 = New DevExpress.XtraEditors.PanelControl()
		Me.SimpleButton1 = New DevExpress.XtraEditors.SimpleButton()
		CType(Me.PanelControl1, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.PanelControl1.SuspendLayout()
		CType(Me.lista, System.ComponentModel.ISupportInitialize).BeginInit()
		CType(Me.GridView1, System.ComponentModel.ISupportInitialize).BeginInit()
		CType(Me.PanelControl2, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.PanelControl2.SuspendLayout()
		Me.SuspendLayout()
		'
		'PanelControl1
		'
		Me.PanelControl1.Controls.Add(Me.lista)
		Me.PanelControl1.Dock = System.Windows.Forms.DockStyle.Fill
		Me.PanelControl1.Location = New System.Drawing.Point(0, 0)
		Me.PanelControl1.Name = "PanelControl1"
		Me.PanelControl1.Size = New System.Drawing.Size(331, 473)
		Me.PanelControl1.TabIndex = 0
		'
		'lista
		'
		Me.lista.Location = New System.Drawing.Point(2, 2)
		Me.lista.MainView = Me.GridView1
		Me.lista.Name = "lista"
		Me.lista.Size = New System.Drawing.Size(324, 400)
		Me.lista.TabIndex = 0
		Me.lista.ViewCollection.AddRange(New DevExpress.XtraGrid.Views.Base.BaseView() {Me.GridView1})
		'
		'GridView1
		'
		Me.GridView1.Columns.AddRange(New DevExpress.XtraGrid.Columns.GridColumn() {Me.GridColumn2, Me.GridColumn1})
		Me.GridView1.GridControl = Me.lista
		Me.GridView1.Name = "GridView1"
		Me.GridView1.OptionsBehavior.AutoSelectAllInEditor = False
		Me.GridView1.OptionsBehavior.Editable = False
		Me.GridView1.OptionsView.ShowGroupPanel = False
		'
		'GridColumn2
		'
		Me.GridColumn2.Caption = "Nº Colonia"
		Me.GridColumn2.FieldName = "id_colonia"
		Me.GridColumn2.Name = "GridColumn2"
		Me.GridColumn2.Visible = True
		Me.GridColumn2.VisibleIndex = 0
		'
		'GridColumn1
		'
		Me.GridColumn1.Caption = "Colonia"
		Me.GridColumn1.FieldName = "Colonia"
		Me.GridColumn1.Name = "GridColumn1"
		Me.GridColumn1.Visible = True
		Me.GridColumn1.VisibleIndex = 1
		Me.GridColumn1.Width = 228
		'
		'PanelControl2
		'
		Me.PanelControl2.Controls.Add(Me.SimpleButton1)
		Me.PanelControl2.Dock = System.Windows.Forms.DockStyle.Bottom
		Me.PanelControl2.Location = New System.Drawing.Point(0, 403)
		Me.PanelControl2.Name = "PanelControl2"
		Me.PanelControl2.Size = New System.Drawing.Size(331, 70)
		Me.PanelControl2.TabIndex = 0
		'
		'SimpleButton1
		'
		Me.SimpleButton1.Location = New System.Drawing.Point(5, 5)
		Me.SimpleButton1.Name = "SimpleButton1"
		Me.SimpleButton1.Size = New System.Drawing.Size(102, 55)
		Me.SimpleButton1.TabIndex = 0
		Me.SimpleButton1.Text = "Imprimir"
		'
		'Reporte_Colonia
		'
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ClientSize = New System.Drawing.Size(331, 473)
		Me.Controls.Add(Me.PanelControl2)
		Me.Controls.Add(Me.PanelControl1)
		Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
		Me.MaximizeBox = False
		Me.MaximumSize = New System.Drawing.Size(347, 512)
		Me.MinimizeBox = False
		Me.MinimumSize = New System.Drawing.Size(347, 512)
		Me.Name = "Reporte_Colonia"
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Reporte General de Colonias"
		CType(Me.PanelControl1, System.ComponentModel.ISupportInitialize).EndInit()
		Me.PanelControl1.ResumeLayout(False)
		CType(Me.lista, System.ComponentModel.ISupportInitialize).EndInit()
		CType(Me.GridView1, System.ComponentModel.ISupportInitialize).EndInit()
		CType(Me.PanelControl2, System.ComponentModel.ISupportInitialize).EndInit()
		Me.PanelControl2.ResumeLayout(False)
		Me.ResumeLayout(False)

	End Sub
    Friend WithEvents PanelControl1 As DevExpress.XtraEditors.PanelControl
    Friend WithEvents lista As DevExpress.XtraGrid.GridControl
    Friend WithEvents GridView1 As DevExpress.XtraGrid.Views.Grid.GridView
    Friend WithEvents PanelControl2 As DevExpress.XtraEditors.PanelControl
    Friend WithEvents GridColumn1 As DevExpress.XtraGrid.Columns.GridColumn
    Friend WithEvents SimpleButton1 As DevExpress.XtraEditors.SimpleButton
    Friend WithEvents GridColumn2 As DevExpress.XtraGrid.Columns.GridColumn
End Class
