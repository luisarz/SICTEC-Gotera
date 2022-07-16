Imports System.Data.SqlClient
Public Class frmAddEmpleado
    Dim Bitacora As New Classcodcatatro
    Private Sub frmAddTeachres_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception

        End Try
        Try

            dtfechanacimiento.Text = Today
            dtfingres.Text = Today
            Dim consulta As New SqlCommand("SELECT MAX(Id)  FROM Empleados", cnxConectionsServer)
            Dim lector As SqlDataReader
            lector = consulta.ExecuteReader
            If lector.Read Then
                If lector(0).ToString = "" Then
                    txtcodigo.Text = 1
                Else
                    txtcodigo.Text = lector(0).ToString + 1
                End If
            End If
            lector.Close()
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical)
        End Try
    End Sub

    Private Sub frmAddTeachres_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Me.Dispose()
    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            If txtnombres.Text = "" Then
                AlertControl1.Show(Me, "Empleado", "Debe digitar el Nombre del Empleado Para poder continuar" & vbLf & "Ejemplo: Juan Jose")
                txtnombres.Focus()
            ElseIf txtapellidos.Text = "" Then
                AlertControl1.Show(Me, "Empleado", "Debe digitar el Apellido del Empleado Para poder continuar" & vbLf & "Ejemplo: Argueta Argueta")
                txtapellidos.Focus()
            ElseIf dtfechanacimiento.Text = Today Or dtfechanacimiento.Text = "" Then
                AlertControl1.Show(Me, "Empleado", "Debe digitar La fecha de Nacimiento del Empleado Para poder continuar" & vbLf & "Ejemplo: 12/05/1988")
                dtfechanacimiento.Focus()
            ElseIf txtdui.Text = "" Then
                MsgBox("Debe Digitar el DUI para continuar")
                txtdui.Focus()
            ElseIf txttelefono.Text = "" Then
                MsgBox("Digite el Número de telefono para continuar")
                txttelefono.Focus()
            ElseIf txtnit.Text = "" Then
                MsgBox("Digite el numero de NIT para continuar")
                txtnit.Focus()
            ElseIf txtespecialidad.Text = "" Then
                AlertControl1.Show(Me, "Empleado", "Debe Digitar la especialidad que el Empleado tiene")
                txtespecialidad.Focus()
            Else
                Try
                    Dim comadoguardar As New SqlCommand("insert  into  Empleados values('" & txtcodigo.Text & "','" & txtnombres.Text & "','" & txtapellidos.Text & "','" & txtedad.Text & "','" & dtfechanacimiento.Text & "','" & cbmestado.Text & "','" & cbmsexo.Text & "','" & mmdireccion.Text & "','" & txtdui.Text & "','" & txtnit.Text & "','" & txttelefono.Text & "','" & mmexperiencia.Text & "','" & txtlogros.Text & "','" & txtfallos.Text & "','" & dtfingres.Text & "','" & dtfingres.Text & "','" & btneMateriaID.Text & "','" & txtcorreo.Text & "','" & txtespecialidad.Text & "','1')", cnxConectionsServer)
                    If comadoguardar.ExecuteNonQuery > 0 Then

                        Dim modulo As String = Me.Text
                        Dim accion As String = "Registro el empleado " & txtapellidos.Text & " " & txtnombres.Text
                        Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                        If registroBitacora > 0 Then

                            AlertControl1.Show(Me, "Empleado", "Empleado registrado de manera exitosa")
                            Close()
                        End If
                    End If
                Catch ex As Exception
                    AlertControl1.Show(Me, "Empleado", "Error al registrar el empleado el error es" & ex.Message)
                End Try
            End If
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical)
        End Try
    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Close()
    End Sub

    Private Sub dtfechanacimiento_EditValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtfechanacimiento.EditValueChanged
        Try
            Dim fechas As String
            fechas = dtfechanacimiento.Text
            Dim d = Split(dtfechanacimiento.Text, "/")
            Dim año As Date = Today
            Dim d2 = Split(año, "/")
            Dim añoactual As String = d2(2).ToString
            Dim hoy As String = d(2).ToString
            txtedad.Text = añoactual.ToString
            Dim edad As Integer
            edad = añoactual.ToString - hoy.ToString
            txtedad.Text = edad.ToString
        Catch ex As Exception
            ' MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub txtedad_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtedad.KeyPress
        If InStr(1, "0123456789" & Chr(8), e.KeyChar) = 0 Then
            e.KeyChar = ""
        End If
    End Sub

    Private Sub TextEdit2_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If InStr(1, "0123456789-" & Chr(8), e.KeyChar) = 0 Then
            e.KeyChar = ""
        End If
    End Sub
End Class