<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class escaneo
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
        Me.escaneoFile = New DevExpress.XtraEditors.PictureEdit()
        Me.lblid = New DevExpress.XtraEditors.LabelControl()
        CType(Me.escaneoFile.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'escaneoFile
        '
        Me.escaneoFile.Cursor = System.Windows.Forms.Cursors.Default
        Me.escaneoFile.Dock = System.Windows.Forms.DockStyle.Fill
        Me.escaneoFile.EditValue = Global.Formularios_de_Sistema_de_Cuenta_Corriente.My.Resources.Resources.Image_not_available
        Me.escaneoFile.Location = New System.Drawing.Point(0, 0)
        Me.escaneoFile.Name = "escaneoFile"
        Me.escaneoFile.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.[Auto]
        Me.escaneoFile.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom
        Me.escaneoFile.Size = New System.Drawing.Size(803, 698)
        Me.escaneoFile.TabIndex = 0
        '
        'lblid
        '
        Me.lblid.Location = New System.Drawing.Point(782, 139)
        Me.lblid.Name = "lblid"
        Me.lblid.Size = New System.Drawing.Size(0, 16)
        Me.lblid.TabIndex = 1
        Me.lblid.Visible = False
        '
        'escaneo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(803, 698)
        Me.Controls.Add(Me.lblid)
        Me.Controls.Add(Me.escaneoFile)
        Me.MaximizeBox = False
        Me.MaximumSize = New System.Drawing.Size(821, 745)
        Me.Name = "escaneo"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "escaneo"
        CType(Me.escaneoFile.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents escaneoFile As DevExpress.XtraEditors.PictureEdit
    Friend WithEvents lblid As DevExpress.XtraEditors.LabelControl
End Class
