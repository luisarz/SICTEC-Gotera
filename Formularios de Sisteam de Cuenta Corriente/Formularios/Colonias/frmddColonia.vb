Imports System.Data.SqlClient
Public Class frmddColonia
    Dim Bitacora As New Classcodcatatro
    Private Sub frmddColonia_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try

            If txtcolonia.Text = "" Then
                AlertControl1.Show(Me, "INFORME", "Digite el Nombre de la Colonia")
                txtcolonia.Focus()
            Else
                Dim cmdcode As New SqlCommand("SELECT MAX(id_colonia+1)   FROM  colonias", cnxConectionsServer)
                Dim lectordoce As SqlDataReader = cmdcode.ExecuteReader
                Dim sumas As Integer
                If lectordoce.Read Then
                    sumas = lectordoce(0).ToString
                End If
                lectordoce.Close()

                Dim cmdcolonia As New SqlCommand("insert into colonias  values('" & sumas.ToString & "','" & txtcolonia.Text & "','0','true')", cnxConectionsServer)
                If cmdcolonia.ExecuteNonQuery > 0 Then
                   
                    Dim modulo As String = Me.Text
                    Dim fechas As DateTime = Now
                    Dim accion As String = "Registro de Colonia " & txtcolonia.Text

                    Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                    If registroBitacora > 0 Then
                        AlertControl1.Show(Me, "INFORME", "La colonia fue registrada exitosamente...")
                        Me.Close()
                    End If
                    '************************************************************Fin para la bitacora

                End If

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub frmddColonia_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Me.Dispose()
    End Sub

    Private Sub txtcolonia_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtcolonia.Leave
        Dim cmd As New SqlCommand("Select colonia from Colonias where colonia='" & txtcolonia.Text & "'", cnxConectionsServer)
        Dim lectorcmd As SqlDataReader = cmd.ExecuteReader
        If lectorcmd.Read Then
            If lectorcmd(0).ToString = "" Then
            ElseIf lectorcmd(0).ToString <> "" Then
                txtcolonia.Text = ""
            End If
        End If
        lectorcmd.Close()
    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Dispose()
    End Sub

    
End Class