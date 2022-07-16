
Imports System.Data.SqlClient
Public Class frmdeleteuser
    Dim Bitacora As New Classcodcatatro
    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Close()
    End Sub

    Private Sub frmAdd_Update_Delete_Users_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al conectar con el servidor" & ex.Message)
        End Try
        Dim cmdultimoadmin As New SqlCommand("Select * from Users where tipo='Administrador' and activo='True'", cnxConectionsServer)
        Dim lectorcmdadmina As SqlDataReader = cmdultimoadmin.ExecuteReader
        Dim contador As Integer = 0
        While lectorcmdadmina.Read
            contador = contador + 1
        End While
        lectorcmdadmina.Close()
        If contador <= 1 Then
            SimpleButton1.Enabled = False
        End If
        Try
            Dim cmd As New SqlCommand("Select * from Users where Id_usuario =" & txtid.Text & "", cnxConectionsServer)
            Dim lectorcmd As SqlDataReader = cmd.ExecuteReader
            If lectorcmd.Read Then
                txtusuario.Text = lectorcmd(1).ToString
                txtpass.Text = lectorcmd(2).ToString
                txtreppass.Text = lectorcmd(2).ToString
                txtempleado.Text = lectorcmd(3).ToString
                txtdui.Text = lectorcmd(4).ToString
                txtcargo.Text = lectorcmd(5).ToString
                cbmtipo.Text = lectorcmd(6).ToString
                dtfecharegistro.Text = lectorcmd(7).ToString
                txtnit.Text = lectorcmd(8).ToString
                If lectorcmd(9).ToString = True Then
                    chkinmuebles.CheckState = CheckState.Checked
                Else
                    chkinmuebles.CheckState = CheckState.Checked
                End If
                If lectorcmd(10).ToString = True Then
                    chkinmueblesdispensos.CheckState = CheckState.Checked
                Else
                    chkinmueblesdispensos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(11).ToString = True Then
                    chkestadodecuentas_inmuebles.CheckState = CheckState.Checked
                Else
                    chkestadodecuentas_inmuebles.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(12).ToString = True Then
                    chkestadocuentarecibosagua.CheckState = CheckState.Checked
                Else
                    chkestadocuentarecibosagua.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(13).ToString = True Then
                    chkinmueblesconagua.CheckState = CheckState.Checked
                Else
                    chkinmueblesconagua.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(14).ToString = True Then
                    chkimpresionmorososagua.CheckState = CheckState.Checked
                Else
                    chkimpresionmorososagua.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(15).ToString = True Then
                    chkreportegeneralinmuebles.CheckState = CheckState.Checked
                Else
                    chkreportegeneralinmuebles.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(16).ToString = True Then
                    chkmodempresas.CheckState = CheckState.Checked
                Else
                    chkmodempresas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(17).ToString = True Then
                    chkmodempresasDispensas.CheckState = CheckState.Checked
                Else
                    chkmodempresasDispensas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(18).ToString = True Then
                    chkestadodecuentas_Empresas.CheckState = CheckState.Checked
                Else
                    chkestadodecuentas_Empresas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(19).ToString = True Then
                    chkreportegeneral_empresas.CheckState = CheckState.Checked
                Else
                    chkreportegeneral_empresas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(20).ToString = True Then
                    chkcolonias.CheckState = CheckState.Checked
                Else
                    chkcolonias.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(21).ToString = True Then
                    chkzonas.CheckState = CheckState.Checked
                Else
                    chkzonas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(22).ToString = True Then
                    chkreportes_por_colonias.CheckState = CheckState.Checked
                Else
                    chkreportes_por_colonias.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(23).ToString = True Then
                    chktributos.CheckState = CheckState.Checked
                Else
                    chktributos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(24).ToString = True Then
                    chkrep_tributos.CheckState = CheckState.Checked
                Else
                    chkrep_tributos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(25).ToString = True Then
                    chkrep_ingresos_tributos.CheckState = CheckState.Checked
                Else
                    chkrep_ingresos_tributos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(26).ToString = True Then
                    chkrec_creacion_grupos.CheckState = CheckState.Checked
                Else
                    chkrec_creacion_grupos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(27).ToString = True Then
                    chkrecibos_administrativos.CheckState = CheckState.Checked
                Else
                    chkrecibos_administrativos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(28).ToString = True Then
                    chkcreacion_cuentas.CheckState = CheckState.Checked
                Else
                    chkcreacion_cuentas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(29).ToString = True Then
                    chkrep_recibos_administrativos.CheckState = CheckState.Checked
                Else
                    chkrep_recibos_administrativos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(30).ToString = True Then
                    chkGrupos.CheckState = CheckState.Checked
                Else
                    chkGrupos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(31).ToString = True Then
                    chkgen_avisos_grupo.CheckState = CheckState.Checked
                Else
                    chkgen_avisos_grupo.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(32).ToString = True Then
                    chkmante_ingresos.CheckState = CheckState.Checked
                Else
                    chkmante_ingresos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(33).ToString = True Then
                    chkimpresion_desglose.CheckState = CheckState.Checked
                Else
                    chkimpresion_desglose.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(34).ToString = True Then
                    chkcobros.CheckState = CheckState.Checked
                Else
                    chkcobros.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(35).ToString = True Then
                    chkcobros_anticipados.CheckState = CheckState.Checked
                Else
                    chkcobros_anticipados.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(36).ToString = True Then
                    chkrep_ingresos_diarios.CheckState = CheckState.Checked
                Else
                    chkrep_ingresos_diarios.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(37).ToString = True Then
                    chkactivarcontadores.CheckState = CheckState.Checked
                Else
                    chkactivarcontadores.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(38).ToString = True Then
                    chkmedidas.CheckState = CheckState.Checked
                Else
                    chkmedidas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(39).ToString = True Then
                    chkavisos_individuales.CheckState = CheckState.Checked
                Else
                    chkavisos_individuales.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(40).ToString = True Then
                    chkavisos_individuales_emitidos.CheckState = CheckState.Checked
                Else
                    chkavisos_individuales_emitidos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(41).ToString = True Then
                    chkavisos_Grupales.CheckState = CheckState.Checked
                Else
                    chkavisos_Grupales.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(42).ToString = True Then
                    chkavisos_Grupales_emitidos.CheckState = CheckState.Checked
                Else
                    chkavisos_Grupales_emitidos.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(43).ToString = True Then
                    chkusuarios.CheckState = CheckState.Checked
                Else
                    chkusuarios.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(44).ToString = True Then
                    chktasas.CheckState = CheckState.Checked
                Else
                    chktasas.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(45).ToString = True Then
                    chkbitacoras.CheckState = CheckState.Checked
                Else
                    chkbitacoras.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(46).ToString = True Then
                    chkconexion.CheckState = CheckState.Checked
                Else
                    chkconexion.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(47).ToString = True Then
                    chkempleados.CheckState = CheckState.Checked
                Else
                    chkempleados.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(48).ToString = True Then
                    chkrep_empleados.CheckState = CheckState.Checked
                Else
                    chkrep_empleados.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(49).ToString = True Then
                    chkAlcaldia.CheckState = CheckState.Checked
                Else
                    chkAlcaldia.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(50).ToString = True Then
                    chkImresion_Alcaldia.CheckState = CheckState.Checked
                Else
                    chkImresion_Alcaldia.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(51).ToString = True Then
                    ChkRespaldar.CheckState = CheckState.Checked
                Else
                    ChkRespaldar.CheckState = CheckState.Unchecked
                End If
                If lectorcmd(52).ToString = True Then
                    ChkCompactar.CheckState = CheckState.Checked
                Else
                    ChkCompactar.CheckState = CheckState.Unchecked
                End If
            End If
            lectorcmd.Close()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Ha ocurrido un el siguiente error " & ex.Message)
        End Try

    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Try
            Dim eliminado As Integer = 0
            Dim msg = MsgBox("Esta seguro de eliminar este usuario" & vbLet & "Al eliminar este usuario n podra usarlo mas para iniciar session", MsgBoxStyle.YesNo)
            If msg = MsgBoxResult.Yes Then
                Dim registro As New SqlCommand("Update  Users set activo='" & eliminado & "' where Id_usuario=" & txtid.Text & "", cnxConectionsServer)
                If registro.ExecuteNonQuery > 0 Then
                    Dim modulo As String = Me.Text
                    Dim accion As String = "Elimino el Usuario " & txtusuario.Text & " De Tipo: " & cbmtipo.Text
                    Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                    If registroBitacora > 0 Then

                        AlertControl1.Show(Me, "Usuario", "El usuariio ha sido Eliminado de manera exitosa")
                        Me.Close()
                        Dispose()
                    End If

                End If
            Else
                AlertControl1.Show(Me, "Eliminacion de usuarios", "A cancelado el proceso de eliminacion de usuarios")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub frmAdd_Update_Delete_Users_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Dispose()
    End Sub
End Class