Imports System.Data.SqlClient
Public Class frmalcaldia
    Private oldcode, updatec As String
    Dim bitacora As New Classcodcatatro
    Private Sub frmschool_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception
        End Try
        Try
            Dim cmdS As New SqlCommand("Select * from alcaldia", cnxConectionsServer)
            Dim lectorcmd As SqlDataReader
            lectorcmd = cmdS.ExecuteReader
            If lectorcmd.Read Then
                txtcodigo.Text = lectorcmd(0).ToString
                txtalcaldia.Text = lectorcmd(1).ToString
                mmdireccion.Text = lectorcmd(2).ToString
                txttelefono.Text = lectorcmd(3).ToString
                txtalcalde.Text = lectorcmd(4).ToString
                txtweb.Text = lectorcmd(5).ToString
                txtmail.Text = lectorcmd(6).ToString
                cbmdepto.Text = lectorcmd(7).ToString
                cbmmunicipio.Text = lectorcmd(8).ToString
                txtjefe.Text = lectorcmd(9).ToString
            End If
            lectorcmd.Close()
            oldcode = txtcodigo.Text
            If txtcodigo.Text <> "" Then
                updatec = 1
            Else
                updatec = 0
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnok.Click
        Dim rowsAffected As Integer = 0

        Try
            If txtcodigo.Text = "" Then
                AlertControl1.Show(Me, "Advertencia", "El campo codigo no debe estar vacio")
                txtcodigo.Focus()
            ElseIf txtalcaldia.Text = "" Then
                AlertControl1.Show(Me, "Advertencia", "El campo ALCALDIA no debe estar vacio")
                txtalcaldia.Focus()
            ElseIf txtalcalde.Text = "" Then
                AlertControl1.Show(Me, "Advertencia", "debe digitar el nombre del alcalde ")
                txtalcalde.Focus()
            Else
                If updatec = 0 Then

                    Try
                        Dim sp As String = "SpAlcaldiaInsertar"
                        Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)
                        cmd.CommandType = CommandType.StoredProcedure

                        cmd.Parameters.Add(New SqlClient.SqlParameter("@ID", txtcodigo.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@NOMBRE_ALCALDIA", txtalcaldia.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@DIRECCION_ALCALDIA", mmdireccion.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@TELEFONO_ALCALDIA", txttelefono.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@ALCALDE_ALCALDIA", txtalcalde.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@WEB", txtweb.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@EMAIL", txtmail.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@DEPARTAMENTO", cbmdepto.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@MUNICIPIO", cbmmunicipio.Text))
                        cmd.Parameters.Add(New SqlClient.SqlParameter("@JEFE", txtjefe.Text))

                        rowsAffected = cmd.ExecuteNonQuery()


                        If rowsAffected > 0 Then
                            Dim modulo As String = "Alcaldia Insertar"
                            Dim accion As String = "Cambio la configurcion de los datos de la Alcaldia" & txtalcaldia.Text
                            rowsAffected = bitacora.bitacoraAdd(modulo, accion)
                            If rowsAffected > 0 Then
                                AlertControl1.Show(Me, "Registro ", "Registro de Alcaldia realizado de manera exitosa")
                                Dispose()
                            End If
                        End If
                    Catch ex As Exception
                        Throw ex
                    End Try
                ElseIf updatec = 1 Then


                    Dim sp As String = "SpAlcaldiaActualizar"
                    Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@ID", txtcodigo.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@NOMBRE_ALCALDIA", txtalcaldia.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@DIRECCION_ALCALDIA", mmdireccion.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@TELEFONO_ALCALDIA", txttelefono.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@ALCALDE_ALCALDIA", txtalcalde.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@WEB", txtweb.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@EMAIL", txtmail.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@DEPARTAMENTO", cbmdepto.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@MUNICIPIO", cbmmunicipio.Text))
                    cmd.Parameters.Add(New SqlClient.SqlParameter("@JEFE", txtjefe.Text))

                    rowsAffected = cmd.ExecuteNonQuery()

                    If rowsAffected > 0 Then
                        Dim modulo As String = "Alcaldia Modificar"
                        Dim accion As String = "Cambio la configurcion de los datos de la Alcaldia" & txtalcaldia.Text
                        rowsAffected = bitacora.bitacoraAdd(modulo, accion)
                        If rowsAffected > 0 Then
                            AlertControl1.Show(Me, "Actualizacion", "La actualizacion de los datos de la alcaldia Se realizo exitosamente ")
                            Close()
                        End If
                    Else
                        AlertControl1.Show(Me, "Actualizacion", "La actualizacion de los datos de la alcaldia no se realizo exitosamente ")
                    End If
                End If
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Close()
    End Sub

End Class