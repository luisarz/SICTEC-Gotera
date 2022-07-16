Imports System.Data.SqlClient
Public Class frmUsuarios

    Private Sub consulta_datos()
        Dim cmdconsulta As New SqlCommand("SELECT Id_usuario, Usuario, Nombre, tipo, Fecha_registro FROM    Users where activo='True'", cnxConectionsServer)
        Dim dsDatos As New System.Data.DataSet
        Dim adapter As New SqlDataAdapter(cmdconsulta)
        adapter.Fill(dsDatos)
        dtglista.DataSource = dsDatos.Tables(0)
        dtglista.Refresh()
    End Sub
    Private Sub frmUsuarios_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If

        Catch ex As Exception
            AlertControl1.Show(Me, "Error connection", "Error al intenr¡tar conectar al server " & ex.Message)
        End Try
        Try
            consulta_datos()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error==>>", "Error al cargar los usuarios " & ex.Message)
        End Try
    End Sub


    Private Sub dtglista_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles dtglista.MouseClick
        lblid.Text = GridView1.GetFocusedRowCellValue("Id_usuario")
    End Sub

    Private Sub dtglista_MouseDoubleClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles dtglista.MouseDoubleClick
        lblid.Text = GridView1.GetFocusedRowCellValue("Id_usuario")
    End Sub

    Private Sub SimpleButton4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton4.Click
        My.Forms.frmAddusers.ShowDialog()
        consulta_datos()
    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            If lblid.Text = "id" Then
                MsgBox("Debe seleccionar el usuario a editar", MessageBoxIcon.Stop)
            Else
                My.Forms.frmedituser.txtid.Text = lblid.Text
                My.Forms.frmedituser.ShowDialog()
                consulta_datos()
                lblid.Text = "id"
            End If
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical)
        End Try
    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        If lblid.Text = "" Then
            MsgBox("Debe seleccionar el usuario a eliminar", MsgBoxStyle.Information)
        Else
            My.Forms.frmdeleteuser.txtid.Text = lblid.Text
            My.Forms.frmdeleteuser.ShowDialog()
            consulta_datos()
            lblid.Text = "id"
        End If
    End Sub
End Class