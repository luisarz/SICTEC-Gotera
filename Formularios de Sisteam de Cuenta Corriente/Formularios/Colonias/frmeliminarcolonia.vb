Imports System.Data.SqlClient
Public Class frmeliminarcolonia
    Public id, colonia, zona As String
    Dim Bitacora As New Classcodcatatro
    Private Sub frmeliminarcolonia_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If cnxConectionsServer.State = ConnectionState.Open Then
        ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
            cnxConectionsServer.Open()
        End If
        txtcolonia.Text = colonia.ToString
        Me.Text = "Eliminar " & colonia.ToString
    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Me.Close()
    End Sub

    Private Sub frmeliminarcolonia_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Me.Dispose()
    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            Dim cmdpropietario As New SqlCommand("SELECT  colonia FROM    Propietario WHERE        (colonia = '" & txtcolonia.Text & "')", cnxConectionsServer)
            Dim lector As SqlDataReader = cmdpropietario.ExecuteReader
            Dim sumas As Integer
            While lector.Read
                sumas = sumas + 1
            End While
            lector.Close()
            Dim cmdpropiedad As New SqlCommand("SELECT        colonia FROM    Propiedad  WHERE        (colonia = '" & txtcolonia.Text & "')", cnxConectionsServer)
            Dim lector1 As SqlDataReader = cmdpropiedad.ExecuteReader
            Dim sumas1 As Integer
            While lector1.Read
                sumas1 = sumas1 + 1
            End While
            lector1.Close()
            Dim cmdempresa As New SqlCommand("SELECT        colonia FROM    Propiedad  WHERE        (colonia = '" & txtcolonia.Text & "')", cnxConectionsServer)
            Dim lector2 As SqlDataReader = cmdempresa.ExecuteReader
            Dim sumas2 As Integer
            While lector2.Read
                sumas2 = sumas2 + 1
            End While
            lector2.Close()
            If sumas >= 1 Then
                AlertControl1.Show(Me, "INFORME", "La colonia:" & txtcolonia.Text & " no puede ser eliminada por que se encontraron contribuyente que pertenecen a esta")
                Me.Close()
            ElseIf sumas1 >= 1 Then
                AlertControl1.Show(Me, "INFORME", "La colonia:" & txtcolonia.Text & " no puede ser eliminada por que se encontraron propiedades que pertenecen a esta")
                Me.Close()
            ElseIf sumas2 >= 1 Then
                AlertControl1.Show(Me, "INFORME", "La colonia:" & txtcolonia.Text & " no puede ser eliminada por que se encontraron empresas que pertenecen a esta")
                Me.Close()
            Else
                Dim muertecolonia As New SqlCommand("delete from  colonias where id_colonia=" & id.ToString & "", cnxConectionsServer)
                If muertecolonia.ExecuteNonQuery() >= 0 Then
                    '*****************************************Para la Bitacora
                    Dim modulo As String = Me.Text
                    Dim fechas As DateTime = Now
                    Dim accion As String = "Elimino la Colonia " & txtcolonia.Text

                    Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                    If registroBitacora > 0 Then
                        AlertControl1.Show(Me, "INFORME", "La colonia fue Eliminada exitosamente...")
                        Me.Close()
                    End If
                    '************************************************************Fin para la bitacora

                    '************************************************************Fin para la bitacora

                    AlertControl1.Show(Me, "INFORME", "La colonia fue eliminada exitosamente...")
                    Me.Close()
                End If
            End If
        Catch ex As Exception

        End Try


    End Sub
End Class