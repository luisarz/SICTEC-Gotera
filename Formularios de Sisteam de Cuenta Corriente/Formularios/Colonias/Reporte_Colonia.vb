Imports System.Data.SqlClient
Public Class Reporte_Colonia
    Dim Bitacora As New Classcodcatatro
    Private Sub Reporte_Colonia_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If cnxConectionsServer.State = ConnectionState.Open Then
        ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
            cnxConectionsServer.Open()
        End If
        Dim buscar As New SqlCommand("SELECT  id_colonia,Colonia From Colonias where activo='1'", cnxConectionsServer)
        Dim daseDatos As New System.Data.DataSet
        Dim adaptador As New System.Data.SqlClient.SqlDataAdapter(buscar)
        adaptador.Fill(daseDatos)
        lista.DataSource = daseDatos.Tables(0)
        lista.Refresh()
    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        lista.ShowPrintPreview()

        Dim modulo As String = Me.Text
        Dim accion As String = "Genero el reporte de Colonias "

        Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
        If registroBitacora > 0 Then
            Me.Close()
        End If
        '************************************************************Fin para la bitacora
    End Sub
End Class