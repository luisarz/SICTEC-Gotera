Imports System
Imports System.Data.SqlClient
Imports System.Text
Imports System.Security.Cryptography
Public Class frmLogin
    Private intentos As Integer = 0
    Private sett As New My.MySettings
    Dim bitacora As New Classcodcatatro
    Private Sub frmLogin_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try

            If cnxConectionsServer.State = Data.ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = Data.ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
            Dim cmd As New SqlCommand("select * from alcaldia", cnxConectionsServer)
            Dim lectorempresa As SqlDataReader = cmd.ExecuteReader
            If lectorempresa.Read Then
                ''lblEmpresa.Text = "SAC-" & lectorempresa(1).ToString
                Me.Text = lblEmpresa.Text
                '' lblEmpresa.Text = "Bienvenido/a Inicio se sesión " & "SAC-" & lectorempresa(1).ToString
            End If
            lectorempresa.Close()
            If sett.cargaruser.ToString = "" Then
                txtuser.Text = ""
                txtuser.Focus()
                'MsgBox(sett.cargaruser)
            Else
                txtuser.Text = sett.cargaruser
                chcargsuser.CheckState = CheckState.Checked
                txtpass.Focus()
            End If
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical)
        End Try
    End Sub
    Function GenerarMD5(ByVal sCadena As String) As String
        ' Objeto de codificación
        Dim ueCodigo As New UnicodeEncoding()
        ' Objeto para instanciar las codificación
        Dim Md5 As New MD5CryptoServiceProvider()
        ' Calcula el valor hash de la cadena recibida
        Dim bHash() As Byte = Md5.ComputeHash(ueCodigo.GetBytes(sCadena))
        ' Convierte el hash en una cadena y lo devuelve
        Return Convert.ToBase64String(bHash)
    End Function
    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            If txtuser.Text = "" Then
                AlertControl1.Show(Me, "Loggin", "Debe digitar el usuario para poder continuar")
                txtuser.Focus()
            ElseIf txtpass.Text = "" Then
                AlertControl1.Show(Me, "Loggin", "Debe digitar el La contraseña para poder continuar")
                txtpass.Focus()
            Else

                '' encriptando datos
                Dim Source As String = ""
                Dim Hash As String = ""
                Source = txtpass.Text
                Hash = GenerarMD5(Source)
                ''fin encriptacion


                Dim consulta As New SqlCommand("select * from Users where Usuario='" & txtuser.Text & "' and Pass='" & Hash & "'", cnxConectionsServer)
                Dim lector As SqlDataReader
                lector = consulta.ExecuteReader
                If lector.Read Then
                   

                    Try
                        usuario = lector(1).ToString
                        'pass = Hash
                        Dim modulo As String = Me.Text
                        Dim accion As String = "Inicio  de Sesión:"
                        Dim registroBitacora As Integer = bitacora.bitacoraAdd(modulo, accion)

                        If registroBitacora > 0 Then
                            MsgBox("Usted ha iniciado como:[" & usuario & "]")
                            Hide()
                        End If

                    Catch ex As Exception
                        Throw ex
                    End Try


                  

                Else
                    intentos = intentos + 1
                    MsgBox("Error de conexion... Verifique  sus credenciales " & vbLf & "Llevas:--" & intentos.ToString & "--Intentos de 3", MsgBoxStyle.Information)
                    If intentos = 3 Then
                        MsgBox("La Aplicación se cerrara" & vbLf & "Pongase en contacto con el Administrador del Sistema", MsgBoxStyle.Critical, "Error de Conexion ")
                        Dim modulo As String = Me.Text
                        Dim accion As String = "Intento de inicio de Sesion Fallido..."
                        usuario = txtuser.Text
                        Dim registroBitacora As Integer = bitacora.bitacoraAdd(modulo, accion)
                        If registroBitacora > 0 Then
                            Dispose()
                        End If
                    End If
                End If
                lector.Close()
            End If
        Catch ex As Exception
            MsgBox("Ocurrio un error inesperado contacta al administrador de sistema" & ex.Message)
            'MsgBox("Ocurrio un error inesperado contacta al administrador de sistema", MsgBoxStyle.Information)
        End Try
    End Sub

    Private Sub frmLogin_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed

        Application.Exit()
    End Sub

    Private Sub frmLogin_HelpButtonClicked(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.HelpButtonClicked
        MsgBox("Estos son los campos que debe llenar con sus Credenciales" & vbCrLf & "Login---> digite su Usuario" & vbCrLf & "Password---> Su contraseña", MsgBoxStyle.MsgBoxHelp)
    End Sub

#Region "selectext"
    Private Sub txtuser_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtuser.Enter
        txtuser.SelectAll()
    End Sub

    Private Sub txtpass_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtpass.Enter
        txtpass.SelectAll()
    End Sub
#End Region

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Me.Close()
    End Sub

    Private Sub chcargsuser_CheckedChanged(sender As Object, e As EventArgs) Handles chcargsuser.CheckedChanged
        If chcargsuser.CheckState = CheckState.Checked Then
            sett.cargaruser = txtuser.Text
            sett.Save()
        Else
            sett.cargaruser = ""
            sett.Save()
        End If
    End Sub

   
End Class