Imports System.Data.SqlClient
Public Class frmcoloniapanel
    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
       


        Try
            If lblcod.Text = "" Then
                Me.AlertControl1.Show(Me, "Adventencia-MODIFICAR", "Debe seleccionar una colonia a modificar")
            Else
                My.Forms.frmeditcolonia.id = lblcod.Text
                My.Forms.frmeditcolonia.colonia = lblnombre.Text
                My.Forms.frmeditcolonia.zona = lblzona.Text
                My.Forms.frmeditcolonia.ShowDialog()
               llenar()
            End If

        Catch ex As Exception

        End Try
    End Sub

    Private Sub frmcoloniapanel_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
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

    Private Sub Lista_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Lista.MouseClick
        lblcod.Text = GridView1.GetFocusedRowCellValue("id_colonia")
        lblnombre.Text = GridView1.GetFocusedRowCellValue("colonia")
        lblzona.Text = GridView1.GetFocusedRowCellValue("id_Zona")

    End Sub
    Private Sub llenar()

        Dim buscar As New SqlCommand("SELECT        id_colonia, colonia, id_zona, activo FROM            Colonias WHERE        (activo = 'true')", cnxConectionsServer)
        Dim daseDatos As New System.Data.DataSet
        Dim adaptador As New System.Data.SqlClient.SqlDataAdapter(buscar)
        adaptador.Fill(daseDatos)
        Lista.DataSource = daseDatos.Tables(0)
        Lista.Refresh()
    End Sub
    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        My.Forms.frmddColonia.ShowDialog()
        llenar()

    End Sub

    Private Sub SimpleButton3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton3.Click
        Try
            If lblcod.Text = "" Then
                Me.AlertControl1.Show(Me, "Adventencia-ELIMINAR", "Debe seleccionar una colonia a Eliminar")
            Else
                My.Forms.frmeliminarcolonia.id = lblcod.Text
                My.Forms.frmeliminarcolonia.colonia = lblnombre.Text
                My.Forms.frmeliminarcolonia.zona = lblzona.Text
                My.Forms.frmeliminarcolonia.ShowDialog()
             llenar()
            End If
        Catch ex As Exception

        End Try

    End Sub

    Private Sub GridView1_FocusedRowChanged(ByVal sender As System.Object, ByVal e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        lblcod.Text = GridView1.GetFocusedRowCellValue("id_colonia")
        lblnombre.Text = GridView1.GetFocusedRowCellValue("colonia")
        lblzona.Text = GridView1.GetFocusedRowCellValue("id_Zona")
    End Sub

    Private Sub SimpleButton4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton4.Click
        Reporte_Colonia.ShowDialog()
    End Sub
End Class