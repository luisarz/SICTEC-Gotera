Imports System.Data
Imports System.Data.SqlClient
Public Class escaneo

    Private Sub escaneo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

            'Seleccionar los datos del titulo
            Dim cmd As New SqlCommand("SELECT * FROM titulo_perpetuidad WHERE id_titulo='" & lblid.Text & "'", cnxConectionsServer)
            Dim lectorCmd As SqlDataReader = cmd.ExecuteReader
            If lectorCmd.Read Then

                If lectorCmd("IMAGEN_RECIBO").ToString <> "" Then
                    Dim ImgStream As New IO.MemoryStream(CType(lectorCmd("IMAGEN_RECIBO"), Byte()))
                    escaneoFile.Image = Image.FromStream(ImgStream)
                    ImgStream.Dispose()
                Else
                    escaneoFile.Image = Formularios_de_Sistema_de_Cuenta_Corriente.My.Resources.Resources.Image_not_available
                End If

            End If
            lectorCmd.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class