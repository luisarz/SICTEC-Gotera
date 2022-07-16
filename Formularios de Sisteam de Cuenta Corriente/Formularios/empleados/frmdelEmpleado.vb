Imports System.Data.SqlClient
Public Class frmdelEmpleado
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
            Dim comandoupdate As New SqlCommand("Update empleados set activo='0'where id=" & txtcodigo.Text & "", cnxConectionsServer)
            If comandoupdate.ExecuteNonQuery > 0 Then
                Dim modulo As String = Me.Text
                Dim accion As String = "Elimino el empleado " & txtapellidos.Text & " " & txtnombres.Text

                Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                If registroBitacora > 0 Then
                    AlertControl1.Show(Me, "Eliminacion", "El Empleado ha sido Eliminado de manera exitosa")
                    Close()
                End If

            End If
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al intentar Eliminar los datos del empleado " & ex.Message)
        End Try

    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Close()
    End Sub

End Class