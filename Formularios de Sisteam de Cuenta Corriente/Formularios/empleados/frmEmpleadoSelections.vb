Imports System.Data.SqlClient
Public Class frmEmpleadoSelections

    Private Sub frmteachersSelections_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception

        End Try
        Try
            Dim consulta As New SqlCommand("Select Id,Nombre,Apellido,edad,dui,telefono,cargo from   empleados where activo='True'", cnxConectionsServer)
            Dim dsDatos As New System.Data.DataSet
            Dim adapter As New SqlDataAdapter(consulta)
            adapter.Fill(dsDatos)
            dtglista.DataSource = dsDatos.Tables(0)
            dtglista.Refresh()
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical)
        End Try
    End Sub
    Private Sub GridView1_FocusedRowChanged(ByVal sender As System.Object, ByVal e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        LabelControl1.Text = GridView1.GetFocusedRowCellValue("Id")
        LabelControl2.Text = GridView1.GetFocusedRowCellValue("Nombre")
        LabelControl2.Text = LabelControl1.Text & " " & GridView1.GetFocusedRowCellValue("Apellido")
    End Sub

    Private Sub dtglista_MouseDoubleClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles dtglista.MouseDoubleClick
        If LabelControl3.Text = 0 Then
            My.Forms.frmAddusers.bteiddocente.Text = LabelControl1.Text
            Close()
        Else
            My.Forms.frmedituser.bteiddocente.Text = LabelControl1.Text
            Close()
        End If
       
    End Sub
    Private Sub frmteachersSelections_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Dispose()
    End Sub
End Class