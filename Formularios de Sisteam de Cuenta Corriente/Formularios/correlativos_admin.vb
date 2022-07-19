Imports System.Data.SqlClient
Imports System.Data
Public Class correlativos_admin
    Private Sub SimpleButton2_Click(sender As Object, e As EventArgs) Handles SimpleButton2.Click
        dispose()
    End Sub

    Private Sub correlativos_admin_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If cnxConectionsServer.State = ConnectionState.Open Then
        ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
            cnxConectionsServer.Open()
        End If

        Dim cmd As New SqlClient.SqlCommand("SELECT * from correlativo", cnxConectionsServer)
        Dim lectorcmd As SqlDataReader = cmd.ExecuteReader
        If lectorcmd.Read Then
            txtNumero.Text = lectorcmd("ultimo_titulo").ToString
            txtSerie.Text = lectorcmd("ultimo_entierro").ToString
        End If
        lectorcmd.Close()
    End Sub

    Private Sub SimpleButton1_Click(sender As Object, e As EventArgs) Handles SimpleButton1.Click
        Try
            Dim cmd As New SqlClient.SqlCommand("UPDATE correlativo SET ultimo_titulo='" & txtNumero.Text & "', ultimo_entierro='" & txtSerie.Text & "'", cnxConectionsServer)
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Correlativo actualizado")
                Dispose()
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class