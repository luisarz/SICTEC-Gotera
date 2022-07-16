Imports System.Data.SqlClient
Public Class frmeditcolonia
    Public id, colonia, zona As String
    Dim Bitacora As New Classcodcatatro
    Private Sub frmeditcolonia_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        txtcolonia.Text = colonia
        Me.Text = "Editar " & colonia.ToString
        'If cnxConectionsServer.State = ConnectionState.Open Then
        'ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
        '    cnxConectionsServer.Open()
        'End If

    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            Dim updatecolonia As New SqlCommand("UPDATE colonias SET colonia='" & txtcolonia.Text & "',activo='true' WHERE id_colonia = " & id & "", cnxConectionsServer)
            If updatecolonia.ExecuteNonQuery() > 0 Then
                ''*****************************************Para la Bitacora
                Dim modulo As String = Me.Text
                Dim fechas As DateTime = Now
                Dim accion As String = "Edito la  Colonia " & txtcolonia.Text
                Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                If registroBitacora > 0 Then

                    AlertControl1.Show(Me, "INFORME", "La colonia fue Modificada exitosamente...")
                    Me.Close()
                End If
                '************************************************************Fin para la bitacora

                '************************************************************Fin para la bitacora
                Me.AlertControl1.Show(Me, "Registro", "Zona almacenado de manera exitosa")
                Me.Close()
            End If
            Dim updateempresas As New SqlCommand("UPDATE Empresas SET colonia='" & txtcolonia.Text & "' WHERE colonia= '" & colonia.ToString & "'", cnxConectionsServer)
            If updateempresas.ExecuteNonQuery() > 0 Then
            End If
            Dim updatepropiedades As New SqlCommand("UPDATE Propiedad SET colonia='" & txtcolonia.Text & "' WHERE colonia= '" & colonia.ToString & "'", cnxConectionsServer)
            If updatepropiedades.ExecuteNonQuery() > 0 Then
            End If
            Dim updatepropietario As New SqlCommand("UPDATE Propietario SET colonia='" & txtcolonia.Text & "' WHERE colonia= '" & colonia.ToString & "'", cnxConectionsServer)
            If updatepropietario.ExecuteNonQuery() > 0 Then
            End If
            Dispose()
        Catch ex As Exception
        End Try
    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Me.Close()
    End Sub

    Private Sub frmeditcolonia_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Me.Dispose()
    End Sub

    Private Sub txtcolonia_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtcolonia.Leave
    End Sub
End Class