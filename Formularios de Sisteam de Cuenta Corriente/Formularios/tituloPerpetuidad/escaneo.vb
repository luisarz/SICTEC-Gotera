Imports System.Data
Imports System.Data.SqlClient
Public Class escaneo
    Dim bitacora As New Classcodcatatro

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
            Dim modulo As String = "Titulos A Perpetuidad "
            Dim accion As String = "Reviso el Escaneo del titulo a perpetuidad ID: " & lblid.Text
            Dim row As Integer = 0
            row = Bitacora.bitacoraAdd(modulo, accion)
            If row > 0 Then
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class