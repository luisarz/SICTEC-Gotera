'Imports System.Data.SqlClient
Imports System.Data.SqlClient
Imports DevExpress.Skins
Imports DevExpress.XtraBars.Ribbon
Imports DevExpress.XtraSplashScreen
Imports DevExpress.XtraReports.UI
Public Class FrmPrincipal
    Dim setting As New My.MySettings
    ''variables de conexiones 
    Private cnxConection As New SqlConnection
    Private coloniasfrm As frmcoloniapanel
    Private empleadosfrm As frmEmpleado
    Dim Bitacora As New Classcodcatatro

    Private Sub cargar_skin()
        Dim skins As New GalleryDropDown() With {.Ribbon = RibbonControl1}
        DevExpress.XtraBars.Helpers.SkinHelper.InitSkinGalleryDropDown(skins)
        DevExpress.XtraBars.Helpers.SkinHelper.InitSkinGallery(sk, True)
        sk.GalleryDropDown = skins
    End Sub
    Public Sub newform(form As Form)
        Try
            SplashScreenManager.ShowForm(GetType(WaitForm1))
            llamarform(form, Me)
            SplashScreenManager.CloseForm()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
 
    Private Sub sk_Gallery_ItemClick(ByVal sender As Object, ByVal e As GalleryItemClickEventArgs) Handles sk.Gallery.ItemClick
        setting.Skin = DefaultLookAndFeel1.LookAndFeel.SkinName
        Me.DefaultLookAndFeel1.LookAndFeel.SkinName = setting.Skin
        setting.Save()
        AlertControl1.Show(Me, "Themas", "El thema seleccionado se aplico de manera exitosa " & setting.Skin)
    End Sub
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        '******************************
        Try
            Me.Hide()
            splash.ShowDialog()
            Me.Visible = True
            Dim user, pass, db As String
            serverDatos = setting.Serv
            user = setting.User
            pass = setting.Pass
            db = setting.db

            Dim UserServer As String
            Dim servidor As String = serverDatos
            'db = "sacDelicias"
            Dim passServer As String = setting.Pass
            UserServer = user

            cnxConectionsServer.ConnectionString = "Data Source=" & servidor & ";Initial Catalog='" & db.ToString & "';User ID=" & UserServer & ";Password=" & passServer & ";MultipleActiveResultSets=true;"
            cnxConectionsServer.Open()
            If cnxConectionsServer.State = ConnectionState.Open Then
                AlertControl1.Show(Me, "Bienvenido", "Conexion al server realizada de manera exitosa")
                Me.estado_conexion.Caption = "Estado de la conexion [ CONECTADO ]"
            Else
                AlertControl1.Show(Me, "Error de Conexión", "Error de Conexion a la base de datos  ")
                Me.estado_conexion.Caption = "Estado de la conexion [ SIN CONEXION ]"
            End If
        Catch ex As Exception
            'AlertControl1.Show(Me, "Error de Conexión", "Error de Conexion a la base de datos  ")
            MsgBox(ex.Message)
        End Try
        Try
            DevExpress.UserSkins.BonusSkins.Register()
            DevExpress.Skins.SkinManager.EnableFormSkins()
            cargar_skin()
            Me.LookAndFeel.SkinName = setting.Skin
            Me.DefaultLookAndFeel1.LookAndFeel.SkinName = setting.Skin
            Dim wellcome As New Inicio() With {.MdiParent = Me}
            wellcome.Show()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        frmLogin.ShowDialog()
        Try
            bsiusuario.Caption = " - " & usuario & " - "
            Dim ccolonia, czonas, zrep_porcolonia As String
            Dim Cusuarios, Ctasas, Cbitacoras, Cconexion As String
            Dim Eempleado, Erep_empleado, Ealcaldia, Edatos_Alcaldia, Erespaldos, Ecompactar As String

            Dim consulta As New SqlCommand("select * from Users where Usuario='" & usuario & "'", cnxConectionsServer)
            Dim modulos As SqlDataReader = consulta.ExecuteReader()
            If modulos.Read() Then
                ''inicio del modulo de inmuebles
                ccolonia = modulos(20).ToString
                czonas = modulos(21).ToString
                zrep_porcolonia = modulos(22).ToString
                'Fin modulo colonias y zonas
                'inicio modulo impuestos
                'set
                Cusuarios = modulos(43).ToString
                Ctasas = modulos(44).ToString
                Cbitacoras = modulos(45).ToString
                Cconexion = modulos(46).ToString
                'xtra set
                Eempleado = modulos(47).ToString
                Erep_empleado = modulos(48).ToString
                Ealcaldia = modulos(49).ToString
                Edatos_Alcaldia = modulos(50).ToString
                Erespaldos = modulos(51).ToString
                Ecompactar = modulos(52).ToString
                'fin xtra set
            End If
            modulos.Close()


            ''fin modulo de empresa
            'inicio modulo colonias
            If ccolonia = False Then
                rcolonias.Enabled = False
            End If
           
           
          
            'fin mod avisos
            'set
            If Cusuarios = False Then
                BarButtonItem34.Enabled = False
            End If
            
            If Cbitacoras = False Then
                BarButtonItem37.Enabled = False
            End If
            'If Cconexion = False Then
            '    BarButtonItem40.Enabled = False
            'End If
            'fin set
            'xtra set
            If Eempleado = False Then
                BarButtonItem58.Enabled = False
            End If
            
            If Ealcaldia = False Then
                BarButtonItem59.Enabled = False
            End If
            If Edatos_Alcaldia = False Then
                'BarButtonItem60.Enabled = False
            End If
            If Erespaldos = False Then
                BarButtonItem11.Enabled = False
            End If
            'fin xtra set
        Catch ex As Exception
            'MsgBox(ex.Message)
        End Try
    End Sub




    Private Sub BarButtonItem21_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs) Handles rcolonias.ItemClick
        Try
            newform(frmcoloniapanel)
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar modulo")
        End Try
    End Sub









    Private Sub BarButtonItem34_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem34.ItemClick
        Try
            newform(frmUsuarios)
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar modulo")
        End Try
    End Sub

    Private Sub BarButtonItem58_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs)
        Try
            newform(frmEmpleado)
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar modulo el error Es: " & ex.Message)
        End Try
    End Sub

    Private Sub BarButtonItem59_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs)
        Try
            frmalcaldia.ShowDialog()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar el configurador de alcaldia")
        End Try

    End Sub



    Sub CloseAllForm()
        For Each ChildForm As Form In Me.MdiChildren
            ChildForm.Close()
        Next
        newform(Inicio)
    End Sub

    Private Sub BarButtonItem4_ItemClick_1(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs)
        CloseAllForm()
    End Sub

    Private Sub BarButtonItem5_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem5.ItemClick
        Application.Restart()
    End Sub

    Private Sub BarButtonItem1_ItemClick_1(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem1.ItemClick
        Try
            Application.Exit()
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Exclamation)
        End Try
    End Sub

    Private Sub BarButtonItem2_ItemClick_1(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem2.ItemClick
        About.ShowDialog()
    End Sub



    Private Sub BarButtonItem37_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem37.ItemClick
        Try
            Dim rep As New Bitacora
            rep.ShowRibbonPreviewDialog()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Ocurrio un error al momento de cargarel modulo")
        End Try
    End Sub

    Private Sub BarButtonItem61_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs)
        Try
            Dim rep As New Empleadosrep
            rep.ShowPreviewDialog()
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Ocurrio un error al cargar el modulo " & ex.Message)
        End Try
    End Sub


    Private Sub BarButtonItem20_ItemClick(ByVal sender As System.Object, ByVal e As DevExpress.XtraBars.ItemClickEventArgs)
        Try
            Help.ShowHelp(Me, HelpProvider1.HelpNamespace)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub


    Private Sub FrmPrincipal_HelpButtonClicked(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.HelpButtonClicked
        Try
            Help.ShowHelp(Me, HelpProvider1.HelpNamespace)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub



  

    Private Sub BackstageViewButtonItem1_ItemClick(sender As Object, e As BackstageViewItemEventArgs) Handles BackstageViewButtonItem1.ItemClick
        Application.Restart()
    End Sub

    Private Sub BackstageViewButtonItem3_ItemClick(sender As Object, e As BackstageViewItemEventArgs) Handles BackstageViewButtonItem3.ItemClick
        Application.Exit()
    End Sub



    Private Sub BarButtonItem69_ItemClick(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem69.ItemClick
        CloseAllForm()
    End Sub


    Private Sub BarButtonItem11_ItemClick_1(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem11.ItemClick
        Try
            Dim v_nombre_respaldo = "cementerios_gotera" & Now.Day & "_" & Now.Month & "_" & Now.Year & "_" & Now.Hour & "_" & Now.Minute & "_" & Now.Second & ".bak"
            SaveFileDialog1.FileName = v_nombre_respaldo
            SaveFileDialog1.ShowDialog()
            Dim v_ruta_destino = SaveFileDialog1.FileName
            Dim cmd As New SqlCommand("BACKUP DATABASE cementerios_gotera TO DISK = '" & v_ruta_destino & "'", cnxConectionsServer)
            cmd.ExecuteNonQuery()
            MsgBox("Respaldo Generado de manera exitosa  ya puedes seguir usando el sistema.!", MsgBoxStyle.Information)
        Catch ex As Exception
            MsgBox("Error el destino seleccionado no tiene los permiso de escritura establecidos contacta con el administrador", MsgBoxStyle.Exclamation)
        End Try

    End Sub

   

    Private Sub BarButtonItem59_ItemClick_1(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem59.ItemClick
        frmalcaldia.ShowDialog()
    End Sub

    Private Sub BarButtonItem58_ItemClick_1(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem58.ItemClick
        Try
            newform(frmEmpleado)
        Catch ex As Exception
            AlertControl1.Show(Me, "Error de carga", "Error al cargar el modulo de Empleados")
        End Try
    End Sub

    Private Sub BarButtonItem26_ItemClick_2(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem26.ItemClick
        Try
            Dim LFA As New List(Of Form)
            LFA.Clear()
            For Each FRM As Form In Application.OpenForms
                If FRM.Name = "FrmPrincipal" Then
                Else
                    LFA.Add(FRM)
                End If
            Next
            Dim X As Integer
            For X = 0 To LFA.Count - 1
                LFA(X).Close()
            Next
        Catch ex As Exception
        End Try
        LiberarMemoria()
        newform(Inicio)

    End Sub



    Private Sub BarButtonItem52_ItemClick(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem52.ItemClick
        newform(tituloPerpetuidadPanel)
    End Sub

    Private Sub RibbonControl1_Click(sender As Object, e As EventArgs) Handles RibbonControl1.Click

    End Sub

    Private Sub BarButtonItem6_ItemClick(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem6.ItemClick
        correlativos_admin.ShowDialog()
    End Sub

    Private Sub BarButtonItem4_ItemClick(sender As Object, e As DevExpress.XtraBars.ItemClickEventArgs) Handles BarButtonItem4.ItemClick
        newform(EntierrosAdmin)
    End Sub
End Class