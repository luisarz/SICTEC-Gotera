Imports System
Imports System.Data.SqlClient
Imports System.Text
Imports System.Security.Cryptography
Public Class frmAddusers
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

        Try
            dtfecharegistro.Text = Date.Today
            Dim cmd As New SqlCommand("select MAX(Id_usuario) from users", cnxConectionsServer)
            Dim lectorcmd As SqlDataReader = cmd.ExecuteReader
            If lectorcmd.Read Then
                If lectorcmd(0).ToString = "" Then
                    txtid.Text = 1
                Else
                    txtid.Text = lectorcmd(0).ToString + 1
                End If
            End If
            lectorcmd.Close()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Ha ocurrido un el siguiente error " & ex.Message)
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
            If txtempleado.Text = "" Then
                MsgBox("Digite el Nombre del Empleado" & vbLf & "para poder continuar o debe seleccionar el docente", MsgBoxStyle.Information)
                txtempleado.Focus()
            ElseIf txtdui.Text = "" Then
                MsgBox("Debe digitar el Dui del Usuario" & vbLf & "Para poder continuar", MsgBoxStyle.Information)
                txtdui.Focus()
            ElseIf txtpass.Text = "" Then
                MsgBox("Debe Digitar la contraseña del usuario para continua", MsgBoxStyle.Information)
                txtpass.Focus()
            ElseIf txtreppass.Text <> txtpass.Text Or txtreppass.Text = "" Then
                MsgBox("Error-->Las contraseñas deben ser Iguales ó no deben estar en blanco", MsgBoxStyle.Information)
                txtreppass.Focus()
            ElseIf cbmtipo.Text = "--Tipo de Usuario--" Then
                MsgBox("Elija el tipo de Usuario ")
                cbmtipo.Focus()
            Else
                ' '''' modulo
                ' ''''variable de modulo INMUEBLES''''
                Dim iinmuebles, iinmuebles_dispensos, imestadoscuenta, imestadocuentarecagua, irep_inmueblesconagua, iimpresionmorososagua, irep_general_inmuebles As Integer
                If chkinmuebles.CheckState = CheckState.Checked Then
                    iinmuebles = 1
                Else
                    iinmuebles = 0
                End If

                If chkinmueblesdispensos.CheckState = CheckState.Checked Then
                    iinmuebles_dispensos = 1
                Else
                    iinmuebles_dispensos = 0
                End If
                If chkestadodecuentas_inmuebles.CheckState = CheckState.Checked Then
                    imestadoscuenta = 1
                Else
                    imestadoscuenta = 0
                End If
                If chkestadocuentarecibosagua.CheckState = CheckState.Checked Then
                    imestadocuentarecagua = 1
                Else
                    imestadocuentarecagua = 0
                End If
                If chkinmueblesconagua.CheckState = CheckState.Checked Then
                    irep_inmueblesconagua = 1
                Else
                    irep_inmueblesconagua = 0
                End If
                If chkimpresionmorososagua.CheckState = CheckState.Checked Then
                    iimpresionmorososagua = 1
                Else
                    iimpresionmorososagua = 0
                End If
                If chkreportegeneralinmuebles.CheckState = CheckState.Checked Then
                    irep_general_inmuebles = 1
                Else
                    irep_general_inmuebles = 0
                End If
                ''cadena aregistrar 
                ''//iinmuebles, iinmuebles_dispensos, imestadoscuenta, imestadocuentarecagua, irep_inmueblesconagua, iimpresionmorososagua, irep_general_inmuebles
                ' '''' modulo
                ' ''''variable de modulo EMPRESA''''
                Dim Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general As Integer

                If chkmodempresas.CheckState = CheckState.Checked Then
                    Eempresa = 1
                Else
                    Eempresa = 0
                End If
                If chkmodempresasDispensas.CheckState = CheckState.Checked Then
                    iEmpresa_dispensos = 1
                Else
                    iEmpresa_dispensos = 0
                End If
                If chkestadodecuentas_Empresas.CheckState = CheckState.Checked Then
                    EestadocuentasEmpresa = 1
                Else
                    EestadocuentasEmpresa = 0
                End If
                If chkreportegeneral_empresas.CheckState = CheckState.Checked Then
                    Erep_Empresa_general = 1
                Else
                    Erep_Empresa_general = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo EMPRESA''''
                Dim ccolonia, czonas, zrep_porcolonia As Integer
                If chkcolonias.CheckState = CheckState.Checked Then
                    ccolonia = 1
                Else
                    ccolonia = 0
                End If
                If chkzonas.CheckState = CheckState.Checked Then
                    czonas = 1
                Else
                    czonas = 0
                End If
                If chkreportes_por_colonias.CheckState = CheckState.Checked Then
                    zrep_porcolonia = 1
                Else
                    zrep_porcolonia = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo TRIBUTOS''''

                Dim ttributos, trep_tributos, trep_ingresos_tributos As Integer
                If chktributos.CheckState = CheckState.Checked Then
                    ttributos = 1
                Else
                    ttributos = 0
                End If
                If chkrep_tributos.CheckState = CheckState.Checked Then
                    trep_tributos = 1
                Else
                    trep_tributos = 0
                End If
                If chkrep_ingresos_tributos.CheckState = CheckState.Checked Then
                    trep_ingresos_tributos = 1
                Else
                    trep_ingresos_tributos = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo RECIBOS''''

                Dim rrecibos_administrativos, rcracioncuentas, rrep_rec_administrativos, rgrupos As Integer
                If chkrecibos_administrativos.CheckState = CheckState.Checked Then
                    rrecibos_administrativos = 1
                Else
                    rrecibos_administrativos = 0
                End If
                If chkcreacion_cuentas.CheckState = CheckState.Checked Then
                    rcracioncuentas = 1
                Else
                    rcracioncuentas = 0
                End If
                If chkrep_recibos_administrativos.CheckState = CheckState.Checked Then
                    rrep_rec_administrativos = 1
                Else
                    rrep_rec_administrativos = 0
                End If
                If chkrec_creacion_grupos.CheckState = CheckState.Checked Then
                    rgrupos = 1
                Else
                    rgrupos = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo GRUPOS''''
                Dim ggrupos, ggeneraravisos As Integer

                If chkGrupos.CheckState = CheckState.Checked Then
                    ggrupos = 1
                Else
                    ggrupos = 0
                End If
                If chkgen_avisos_grupo.CheckState = CheckState.Checked Then
                    ggeneraravisos = 1
                Else
                    ggeneraravisos = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo INGRESOS DIARIOS''''
                Dim IDmantenimiento, IDimpresiondesglose, IDCcobros, IDcobrosAnticipados, IDrep_ingresos_diarios As Integer
                If chkmante_ingresos.CheckState = CheckState.Checked Then
                    IDmantenimiento = 1
                Else
                    IDmantenimiento = 0
                End If
                If chkimpresion_desglose.CheckState = CheckState.Checked Then
                    IDimpresiondesglose = 1
                Else
                    IDimpresiondesglose = 0
                End If
                If chkcobros.CheckState = CheckState.Checked Then
                    IDCcobros = 1
                Else
                    IDCcobros = 0
                End If
                If chkcobros_anticipados.CheckState = CheckState.Checked Then
                    IDcobrosAnticipados = 1
                Else
                    IDcobrosAnticipados = 0
                End If
                If chkrep_ingresos_diarios.CheckState = CheckState.Checked Then
                    IDrep_ingresos_diarios = 1
                Else
                    IDrep_ingresos_diarios = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo ControlAgua''''
                Dim Cacontadores, Camedidas As Integer
                If chkactivarcontadores.CheckState = CheckState.Checked Then
                    Cacontadores = 1
                Else
                    Cacontadores = 0
                End If
                If chkmedidas.CheckState = CheckState.Checked Then
                    Camedidas = 1
                Else
                    Camedidas = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo Avisos''''
                Dim Aavisos_individuales, Aavisos_individuales_emitidos, AsvisosGrupales, AvisosGrupales_emitidos As Integer
                If chkavisos_individuales.CheckState = CheckState.Checked Then
                    Aavisos_individuales = 1
                Else
                    Aavisos_individuales = 0
                End If
                If chkavisos_individuales_emitidos.CheckState = CheckState.Checked Then
                    Aavisos_individuales_emitidos = 1
                Else
                    Aavisos_individuales_emitidos = 0
                End If
                If chkavisos_Grupales.CheckState = CheckState.Checked Then
                    AsvisosGrupales = 1
                Else
                    AsvisosGrupales = 0
                End If
                If chkavisos_Grupales_emitidos.CheckState = CheckState.Checked Then
                    AvisosGrupales_emitidos = 2
                Else
                    AvisosGrupales_emitidos = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo Configuaracion''''
                Dim Cusuarios, Ctasas, Cbitacoras, Cconexion As Integer
                If chkusuarios.CheckState = CheckState.Checked Then
                    Cusuarios = 1
                Else
                    Cusuarios = 0
                End If
                If chktasas.CheckState = CheckState.Checked Then
                    Ctasas = 1
                Else
                    Ctasas = 0
                End If
                If chkbitacoras.CheckState = CheckState.Checked Then
                    Cbitacoras = 1
                Else
                    Cbitacoras = 0
                End If
                If chkconexion.CheckState = CheckState.Checked Then
                    Cconexion = 1
                Else
                    Cconexion = 0
                End If
                ''cadena aregistrar 
                ''//Eempresa, iEmpresa_dispensos, EestadocuentasEmpresa, Erep_Empresa_general
                ' '''' modulo
                ' ''''variable de modulo Extras''''
                Dim Eempleado, Erep_empleado, Ealcaldia, Edatos_Alcaldia, Erespaldos, Ecompactar As Integer

                If chkempleados.CheckState = CheckState.Checked Then
                    Eempleado = 1
                Else
                    Eempleado = 0
                End If
                If chkrep_empleados.CheckState = CheckState.Checked Then
                    Erep_empleado = 1
                Else
                    Erep_empleado = 0
                End If
                If chkAlcaldia.CheckState = CheckState.Checked Then
                    Ealcaldia = 1
                Else
                    Ealcaldia = 0
                End If
                If chkImresion_Alcaldia.CheckState = CheckState.Checked Then
                    Edatos_Alcaldia = 1
                Else
                    Edatos_Alcaldia = 0
                End If
                If ChkRespaldar.CheckState = CheckState.Checked Then
                    Erespaldos = 1
                Else
                    Erespaldos = 0
                End If
                If ChkCompactar.CheckState = CheckState.Checked Then
                    Ecompactar = 1
                Else
                    Ecompactar = 0
                End If
                ''''
                '' encriptando datos
                Dim Source As String = ""
                Dim Hash As String = ""
                Source = txtpass.Text
                Hash = GenerarMD5(Source)
                ''fin encriptacion
                Dim registro As New SqlCommand("insert into Users values('" & txtid.Text & "','" & txtusuario.Text & "','" & Hash & "','" & txtempleado.Text & "','" & txtdui.Text & "','" & txtcargo.Text & "','" & cbmtipo.Text & "','" & dtfecharegistro.Text & "','" & txtnit.Text & "', '" & iinmuebles & "', '" & iinmuebles_dispensos & "', '" & imestadoscuenta & "', '" & imestadocuentarecagua & "','" & irep_inmueblesconagua & "', '" & iimpresionmorososagua & "', '" & irep_general_inmuebles & "', '" & Eempresa & "', '" & iEmpresa_dispensos & "', '" & EestadocuentasEmpresa & "','" & Erep_Empresa_general & "', '" & ccolonia & "','" & czonas & "', '" & zrep_porcolonia & "', '" & ttributos & "','" & trep_tributos & "','" & trep_ingresos_tributos & "','" & rrecibos_administrativos & "','" & rcracioncuentas & "', '" & rrep_rec_administrativos & "', '" & rgrupos & "', '" & ggrupos & "', '" & ggeneraravisos & "', '" & IDmantenimiento & "','" & IDimpresiondesglose & "', '" & IDCcobros & "','" & IDcobrosAnticipados & "','" & IDrep_ingresos_diarios & "', '" & Cacontadores & "','" & Camedidas & "', '" & Aavisos_individuales & "', '" & Aavisos_individuales_emitidos & "' , '" & AsvisosGrupales & "' , '" & AvisosGrupales_emitidos & "' , '" & Cusuarios & "' , ' " & Ctasas & "' , '" & Cbitacoras & "' , '" & Cconexion & "' , '" & Eempleado & "' , '" & Erep_empleado & "' , ' " & Ealcaldia & "' , ' " & Edatos_Alcaldia & "' , '" & Erespaldos & "' , '" & Ecompactar & "' , '1')", cnxConectionsServer)
                If registro.ExecuteNonQuery > 0 Then
                    Dim modulo As String = Me.Text
                    Dim fechas As DateTime = Now
                    Dim accion As String = "Registro el Usuario " & txtusuario.Text & " Del Tipo: " & cbmtipo.Text

                    Dim registroBitacora As Integer = Bitacora.bitacoraAdd(modulo, accion)
                    If registroBitacora > 0 Then
                        AlertControl1.Show(Me, "Usuario", "El usuariio ha sido registrado de manera exitosa")
                        Me.Close()
                        Dispose()
                    End If
                Else
                    MsgBox("Usuario No almacenado -->>Error")
                End If
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub CheckEdit1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chktipo.CheckedChanged
        If chktipo.CheckState = CheckState.Unchecked Then
            bteiddocente.Properties.ReadOnly = True
            bteiddocente.Text = ""
            txtnit.Properties.ReadOnly = True
            txtnit.Text = ""
        Else
            bteiddocente.Properties.ReadOnly = False
            bteiddocente.Text = ""
            txtnit.Properties.ReadOnly = False
        End If

    End Sub


    Private Sub cbmtipo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cbmtipo.SelectedIndexChanged
        ''''Inicio del modulo administrador''''
        If cbmtipo.Text = "Administrador" Then
            chkinmuebles.CheckState = CheckState.Checked
            chkinmueblesdispensos.CheckState = CheckState.Checked
            chkestadodecuentas_inmuebles.CheckState = CheckState.Checked
            chkestadocuentarecibosagua.CheckState = CheckState.Checked
            chkinmueblesconagua.CheckState = CheckState.Checked
            chkimpresionmorososagua.CheckState = CheckState.Checked
            chkreportegeneralinmuebles.CheckState = CheckState.Checked
            chkmodempresas.CheckState = CheckState.Checked
            chkmodempresasDispensas.CheckState = CheckState.Checked
            chkestadodecuentas_Empresas.CheckState = CheckState.Checked
            chkreportegeneral_empresas.CheckState = CheckState.Checked
            chkcolonias.CheckState = CheckState.Checked
            chkzonas.CheckState = CheckState.Checked
            chkreportes_por_colonias.CheckState = CheckState.Checked
            chktributos.CheckState = CheckState.Checked
            chkrep_tributos.CheckState = CheckState.Checked
            chkrep_ingresos_tributos.CheckState = CheckState.Checked
            chkrec_creacion_grupos.CheckState = CheckState.Checked
            chkrecibos_administrativos.CheckState = CheckState.Checked
            chkcreacion_cuentas.CheckState = CheckState.Checked
            chkrep_recibos_administrativos.CheckState = CheckState.Checked
            chkGrupos.CheckState = CheckState.Checked
            chkgen_avisos_grupo.CheckState = CheckState.Checked
            chkmante_ingresos.CheckState = CheckState.Checked
            chkimpresion_desglose.CheckState = CheckState.Checked
            chkcobros.CheckState = CheckState.Checked
            chkcobros_anticipados.CheckState = CheckState.Checked
            chkrep_ingresos_diarios.CheckState = CheckState.Checked
            chkactivarcontadores.CheckState = CheckState.Checked
            chkmedidas.CheckState = CheckState.Checked
            chkavisos_individuales.CheckState = CheckState.Checked
            chkavisos_individuales_emitidos.CheckState = CheckState.Checked
            chkavisos_Grupales.CheckState = CheckState.Checked
            chkavisos_Grupales_emitidos.CheckState = CheckState.Checked
            chkusuarios.CheckState = CheckState.Checked
            chktasas.CheckState = CheckState.Checked
            chkbitacoras.CheckState = CheckState.Checked
            chkconexion.CheckState = CheckState.Checked
            chkempleados.CheckState = CheckState.Checked
            chkrep_empleados.CheckState = CheckState.Checked
            chkAlcaldia.CheckState = CheckState.Checked
            chkImresion_Alcaldia.CheckState = CheckState.Checked
            ChkRespaldar.CheckState = CheckState.Checked
            ChkCompactar.CheckState = CheckState.Checked
            lbln.Text = " Nivel de acceso Total 5 de 5 "
            ' ''''FIN del modulo administrador''''
            ''''Inicio del modulo Docente''''
        ElseIf cbmtipo.Text = "Catastro" Then
            chkinmuebles.CheckState = CheckState.Checked
            chkinmueblesdispensos.CheckState = CheckState.Checked
            chkestadodecuentas_inmuebles.CheckState = CheckState.Checked
            chkestadocuentarecibosagua.CheckState = CheckState.Checked
            chkinmueblesconagua.CheckState = CheckState.Checked
            chkimpresionmorososagua.CheckState = CheckState.Checked
            chkreportegeneralinmuebles.CheckState = CheckState.Checked
            chkmodempresas.CheckState = CheckState.Checked
            chkmodempresasDispensas.CheckState = CheckState.Checked
            chkestadodecuentas_Empresas.CheckState = CheckState.Checked
            chkreportegeneral_empresas.CheckState = CheckState.Checked
            chkcolonias.CheckState = CheckState.Checked
            chkzonas.CheckState = CheckState.Checked
            chkreportes_por_colonias.CheckState = CheckState.Checked
            chktributos.CheckState = CheckState.Checked
            chkrep_tributos.CheckState = CheckState.Checked
            chkrep_ingresos_tributos.CheckState = CheckState.Checked
            chkrec_creacion_grupos.CheckState = CheckState.Checked
            chkrecibos_administrativos.CheckState = CheckState.Unchecked
            chkcreacion_cuentas.CheckState = CheckState.Unchecked
            chkrep_recibos_administrativos.CheckState = CheckState.Unchecked
            chkGrupos.CheckState = CheckState.Checked
            chkgen_avisos_grupo.CheckState = CheckState.Checked
            chkmante_ingresos.CheckState = CheckState.Checked
            chkimpresion_desglose.CheckState = CheckState.Checked
            chkcobros.CheckState = CheckState.Checked
            chkcobros_anticipados.CheckState = CheckState.Checked
            chkrep_ingresos_diarios.CheckState = CheckState.Checked
            chkactivarcontadores.CheckState = CheckState.Checked
            chkmedidas.CheckState = CheckState.Checked
            chkavisos_individuales.CheckState = CheckState.Checked
            chkavisos_individuales_emitidos.CheckState = CheckState.Checked
            chkavisos_Grupales.CheckState = CheckState.Checked
            chkavisos_Grupales_emitidos.CheckState = CheckState.Checked
            chkusuarios.CheckState = CheckState.Checked
            chktasas.CheckState = CheckState.Checked
            chkbitacoras.CheckState = CheckState.Checked
            chkconexion.CheckState = CheckState.Unchecked
            chkempleados.CheckState = CheckState.Checked
            chkrep_empleados.CheckState = CheckState.Unchecked
            chkAlcaldia.CheckState = CheckState.Unchecked
            chkImresion_Alcaldia.CheckState = CheckState.Unchecked
            ChkRespaldar.CheckState = CheckState.Checked
            ChkCompactar.CheckState = CheckState.Checked
            lbln.Text = " Nivel de acceso Limitado 2 de 5 "
            ''''FIN del modulo Docente''''
            ''''Inicio del modulo Secretaria''''
        ElseIf cbmtipo.Text = "Tesorero" Then

            lbln.Text = " Nivel de acceso Limitado 3 de 5 "
            ''''FIN del modulo Secretaria''''
            '''' Si lo que se selecciona es un modulo dsitinto se dispara el msgbox
        Else
            MsgBox("Ha elegido un tipo de Usuario desconocido", MsgBoxStyle.Information)
        End If
    End Sub



    Private Sub frmAdd_Update_Delete_Users_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        Dispose()
    End Sub

    Private Sub txtusuario_EditValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtusuario.EditValueChanged
        Dim cmdsearh As New SqlCommand("Select * from users where Usuario='" & txtusuario.Text & "' ", cnxConectionsServer)
        Dim lector As SqlDataReader = cmdsearh.ExecuteReader
        If lector.Read Then
            SimpleButton1.Enabled = False
            SimpleButton1.Text = "Usuario en Uso"
            lector.Close()
            AlertControl1.Show(Me, "Administración de Usuario", "Error el usuario ya esta en uso")
        Else
            SimpleButton1.Enabled = True
            SimpleButton1.Text = " Aceptar"
            lector.Close()
        End If
    End Sub

    Private Sub bteiddocente_Properties_ButtonClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraEditors.Controls.ButtonPressedEventArgs) Handles bteiddocente.Properties.ButtonClick
        Try

            My.Forms.frmEmpleadoSelections.ShowDialog()
            bteiddocente.Properties.ReadOnly = True
            Dim cmd As New SqlCommand("Select * from empleados where id='" & bteiddocente.Text & "'", cnxConectionsServer)
            Dim lectorcmd As SqlDataReader = cmd.ExecuteReader
            If lectorcmd.Read Then
                txtempleado.Text = lectorcmd(1).ToString & " " & lectorcmd(2).ToString
                txtdui.Text = lectorcmd(8).ToString
                txtcargo.Text = lectorcmd(18).ToString
            End If
            lectorcmd.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

End Class