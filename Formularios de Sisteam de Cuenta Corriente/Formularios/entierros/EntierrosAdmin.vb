Imports System.Data.SqlClient
Imports DevExpress.XtraReports.UI
Public Class EntierrosAdmin
    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)




    End Sub

    Private Sub frmPanelTituloPerpetuidad_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
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

        Dim buscar As New SqlCommand("SELECT id_entierro, nombres_fallecido, apellidos_fallecido, numero_documento_fallecido, sexo_fallecido, fecha_fallecimiento, nombre_informante FROM entierros ", cnxConectionsServer)
        Dim daseDatos As New System.Data.DataSet
        Dim adaptador As New System.Data.SqlClient.SqlDataAdapter(buscar)
        adaptador.Fill(daseDatos)
        Lista.DataSource = daseDatos.Tables(0)
        Lista.Refresh()
    End Sub
    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Try
            AddEntierro.btnAdd.Text = "Agregar"
            AddEntierro.ShowDialog()
            llenar()
        Catch ex As Exception
        End Try

    End Sub



    Private Sub GridView1_FocusedRowChanged(ByVal sender As System.Object, ByVal e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        Try
            lblid.Text = GridView1.GetFocusedRowCellValue("id_entierro")
        Catch ex As Exception

        End Try
    End Sub



    Private Sub GridView1_RowCellClick(sender As Object, e As DevExpress.XtraGrid.Views.Grid.RowCellClickEventArgs) Handles GridView1.RowCellClick
        Try
            If e.Column.Name = "Delete" Then
                AddEntierro.lblid.Text = lblid.Text
                AddEntierro.btnAdd.Text = "Eliminar"
                AddEntierro.ShowDialog()
                llenar()
            ElseIf e.Column.Name = "btnEdit" Then
                AddEntierro.lblid.Text = lblid.Text
                AddEntierro.btnAdd.Text = "Modificar"
                AddEntierro.ShowDialog()
                llenar()

            ElseIf e.Column.Name = "btnPrint" Then
                Dim rep As New ficha_entierro
                rep.Parameter1.Value = lblid.Text
                MsgBox(lblid.Text)
                rep.ShowRibbonPreviewDialog()
            ElseIf e.Column.Name = "btnEscaneo" Then
                escaneoEntierro.lblid.Text = lblid.Text
                escaneoEntierro.ShowDialog()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Private Sub SimpleButton4_Click(sender As Object, e As EventArgs) Handles SimpleButton4.Click
        llenar()
    End Sub

    Private Sub SimpleButton1_Click_1(sender As Object, e As EventArgs) Handles SimpleButton1.Click
        Dim rep As New rep_entierrros
        rep.Desde.Value = Today
        rep.Hasta.Value = Today
        rep.ShowRibbonPreviewDialog()
    End Sub
End Class