Imports System.Data.SqlClient
Imports DevExpress.XtraReports.UI
Public Class tituloPerpetuidadPanel


    Private Sub frmPanelEntierros_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
            llenar()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub llenar()

        Dim buscar As New SqlCommand("SELECT id_titulo, derecho_a_favor, numero_titulo, fecha_registro_titulo, monto_titulo, cantidad_construir_nichos, referencias FROM titulo_perpetuidad ", cnxConectionsServer)
        Dim daseDatos As New System.Data.DataSet
        Dim adaptador As New System.Data.SqlClient.SqlDataAdapter(buscar)
        adaptador.Fill(daseDatos)
        Lista.DataSource = daseDatos.Tables(0)
        Lista.Refresh()
    End Sub
    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Try
            tituloPerpetuidadAdd.btnAdd.Text = "Agregar"
            tituloPerpetuidadAdd.ShowDialog()
            llenar()
        Catch ex As Exception
        End Try

    End Sub



    Private Sub GridView1_FocusedRowChanged(ByVal sender As System.Object, ByVal e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        lblid.Text = GridView1.GetFocusedRowCellValue("id_titulo")
    End Sub



    Private Sub GridView1_RowCellClick(sender As Object, e As DevExpress.XtraGrid.Views.Grid.RowCellClickEventArgs) Handles GridView1.RowCellClick
        If e.Column.Name = "Delete" Then
                tituloPerpetuidadAdd.lblid.Text = lblid.Text
                tituloPerpetuidadAdd.btnAdd.Text = "Eliminar"
                tituloPerpetuidadAdd.ShowDialog()
                llenar()
           
        ElseIf e.Column.Name = "btnEdit" Then
                tituloPerpetuidadAdd.lblid.Text = lblid.Text
                tituloPerpetuidadAdd.btnAdd.Text = "Modificar"
                tituloPerpetuidadAdd.ShowDialog()
                llenar()
            
        ElseIf e.Column.Name = "btnPrint" Then
                Dim rep As New ficha_titulo
                rep.Parameter1.Value = lblid.Text
                rep.ShowRibbonPreviewDialog()
                llenar()
          
        ElseIf e.Column.Name = "btnEscaneo" Then
                escaneo.lblid.Text = lblid.Text
            escaneo.ShowDialog()
        ElseIf e.Column.Name = "btnEntierros" Then
            Dim rep As New entierrosPorTitulo
            rep.id_titulo.Value = lblid.Text
            rep.ShowRibbonPreviewDialog()
          
        End If


    End Sub

    Private Sub SimpleButton4_Click(sender As Object, e As EventArgs) Handles SimpleButton4.Click
        llenar()
    End Sub

    Private Sub SimpleButton1_Click(sender As Object, e As EventArgs) Handles SimpleButton1.Click
        Try
            Dim rep As New rep_titulos_with_entierros
            Dim today As DateTime = DateTime.Today
            Dim desde As DateTime = today.AddDays(-30)
            rep.Desde.Value = desde
            rep.Hasta.Value = today
            rep.ShowRibbonPreviewDialog()
        Catch ex As Exception
        End Try
    End Sub
End Class