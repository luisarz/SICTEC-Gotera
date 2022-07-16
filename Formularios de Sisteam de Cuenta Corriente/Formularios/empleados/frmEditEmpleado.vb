Imports System.Data.SqlClient
Public Class frmEditEmpleado
    Dim Bitacora As New Classcodcatatro
    Private Sub frmEditTeachers_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar conexion el error Es: " & ex.Message)
        End Try
        Try

            dtfechanacimiento.Text = Today
            Dim consulta As New SqlCommand("SELECT *  FROM Empleados where Id=" & txtcodigo.Text & "", cnxConectionsServer)
            Dim lector As SqlDataReader
            lector = consulta.ExecuteReader
            If lector.Read Then
                txtnombres.Text = lector(1).ToString
                txtapellidos.Text = lector(2).ToString
                txtedad.Text = lector(3).ToString
                dtfechanacimiento.Text = lector(4).ToString
                cbmestado.Text = lector(5).ToString
                cbmsexo.Text = lector(6).ToString
                mmdireccion.Text = lector(7).ToString
                txtdui.Text = lector(8).ToString
                txtnit.Text = lector(9).ToString
                txttelefono.Text = lector(10).ToString
                mmexperiencia.Text = lector(11).ToString
                txtlogros.Text = lector(12).ToString
                txtfallos.Text = lector(13).ToString
                dtfingres.Text = lector(14).ToString
                btneMateriaID.Text = lector(16).ToString
                txtcorreo.Text = lector(17).ToString
                txtespecialidad.Text = lector(18).ToString
            End If
            lector.Close()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar los datos el error es " & ex.Message)
        End Try
    End Sub
    Private Sub frmEditTeachers_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Me.Dispose()
    End Sub


    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            If txtnombres.Text = "" Then
                AlertControl1.Show(Me, "Edición", "Debe digitar el Nombre del Empleado Para poder continuar" & vbLf & "Ejemplo: Juan Jose")
                txtnombres.Focus()
            ElseIf txtapellidos.Text = "" Then
                AlertControl1.Show(Me, "Edición", "Debe digitar el Apellido del Empleado Para poder continuar" & vbLf & "Ejemplo: Argueta Argueta")
                txtapellidos.Focus()
            ElseIf dtfechanacimiento.Text = Today Or dtfechanacimiento.Text = "" Then
                AlertControl1.Show(Me, "Edición", "Debe digitar La fecha de Nacimiento del Empleado Para poder continuar" & vbLf & "Ejemplo: 12/05/1988")
                dtfechanacimiento.Focus()
            Else
                Dim comandoupdate As New SqlCommand("Update empleados set Nombre='" & txtnombres.Text & "',Apellido='" & txtapellidos.Text & "',edad='" & txtedad.Text & "',f_nac='" & dtfechanacimiento.Text & "',estado_civil='" & cbmestado.Text & "',sexo='" & cbmsexo.Text & "',direccion='" & mmdireccion.Text & "',dui='" & txtdui.Text & "',nit='" & txtnit.Text & "',telefono='" & txttelefono.Text & "',experiencia='" & mmexperiencia.Text & "',logros='" & txtlogros.Text & "',fallos='" & txtfallos.Text & "',cargo='" & btneMateriaID.Text & "',f_registro='" & dtfingres.Text & "',correo='" & txtcorreo.Text & "',especialidad='" & txtespecialidad.Text & "' where Id=" & txtcodigo.Text & "", cnxConectionsServer)
                If comandoupdate.ExecuteNonQuery > 0 Then

                    Dim modulo As String = Me.Text
                    Dim accion As String = "Modifico El empleado " & txtapellidos.Text & " " & txtnombres.Text
                    Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                    If registroBitacora > 0 Then
                        AlertControl1.Show(Me, "Actualizacion", "El Empleado ha sido modificado de manera exitosa")
                        Close()
                    End If
                Else
                    MsgBox("Actualización Fallida", MsgBoxStyle.Exclamation, "Actualizar Docentes")
                End If
            End If
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al intentar actualizar los datos del empleado " & ex.Message)
        End Try

    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Close()
    End Sub

    Private Sub txtnip_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If InStr(1, "0123456789-" & Chr(8), e.KeyChar) = 0 Then
            e.KeyChar = ""
        End If
    End Sub
End Class