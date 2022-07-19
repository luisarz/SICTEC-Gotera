Imports System.Data.SqlClient
Imports System.Data
Imports DevExpress.XtraReports.UI
Imports System.IO

Public Class AddEntierro


    Private Sub AddEntierro_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: esta línea de código carga datos en la tabla 'Cementerios_goteraDataSet1.titulo_perpetuidad' Puede moverla o quitarla según sea necesario.
        Me.Titulo_perpetuidadTableAdapter.Fill(Me.Cementerios_goteraDataSet1.titulo_perpetuidad)

        Try
            If btnAdd.Text = "Agregar" Then
                'TODO: esta línea de código carga datos en la tabla 'Cementerios_goteraDataSet.titulo_perpetuidad' Puede moverla o quitarla según sea necesario.
                'Seleccionar el ultimo correlativo
                'Seleccionar el ultimo correlativo
                Dim cmdCorrelativo As New SqlCommand("SELECT ultimo_entierro   from correlativo", cnxConectionsServer)
                Dim lectorCmdCorrelativo As SqlDataReader = cmdCorrelativo.ExecuteReader
                If lectorCmdCorrelativo.Read Then
                    numero_entiero.Text = lectorCmdCorrelativo(0).ToString + 1
                    fecha_fallecimiento.Text = Today
                End If
                lectorCmdCorrelativo.Close()
            Else
                'Seleccionar los datos del titulo
                Dim cmd As New SqlCommand("SELECT * FROM entierros WHERE id_entierro='" & lblid.Text & "'", cnxConectionsServer)
                Dim lectorCmd As SqlDataReader = cmd.ExecuteReader
                If lectorCmd.Read Then
                    cmd.CommandType = CommandType.StoredProcedure
                    numero_entiero.Text = lectorCmd("numero_entiero").ToString
                    id_titulo.Text = lectorCmd("id_titulo").ToString
                    nombres_fallecido.Text = lectorCmd("nombres_fallecido").ToString
                    apellidos_fallecido.Text = lectorCmd("apellidos_fallecido").ToString

                    tipo_documento_fallecido.Text = lectorCmd("tipo_documento_fallecido").ToString
                    numero_documento_fallecido.Text = lectorCmd("numero_documento_fallecido").ToString
                    sexo_fallecido.Text = lectorCmd("sexo_fallecido").ToString
                    edad_fallecido.Text = lectorCmd("edad_fallecido").ToString
                    estado_familiar.Text = lectorCmd("estado_familiar").ToString
                    direccion_residencia_fallecido.Text = lectorCmd("direccion_residencia_fallecido").ToString


                    lugar_nacimiento_fallecido.Text = lectorCmd("lugar_nacimiento_fallecido").ToString
                    lugar_fallecimiento.Text = lectorCmd("lugar_fallecimiento").ToString
                    fecha_fallecimiento.Text = lectorCmd("fecha_fallecimiento").ToString
                    hora_fallecimiento.Text = lectorCmd("hora_fallecimiento").ToString
                    minutos_fallecimiento.Text = lectorCmd("minutos_fallecimiento").ToString


                    cremacion_cadaver.Text = lectorCmd("cremacion_cadaver").ToString
                    causa_muerte.Text = lectorCmd("causa_muerte").ToString
                    nombre_informante.Text = lectorCmd("nombre_informante").ToString
                    apellidos_informante.Text = lectorCmd("apellidos_informante").ToString
                    numero_documento_informante.Text = lectorCmd("numero_documento_informante").ToString
                    tipo_documento_informante.Text = lectorCmd("tipo_documento_informante").ToString
                    calidad_informante.Text = lectorCmd("calidad_informante").ToString


                    fecha_dio_datos.Text = lectorCmd("fecha_dio_datos").ToString
                    numero_recibo.Text = lectorCmd("numero_recibo").ToString
                    poligono.Text = lectorCmd("poligono").ToString
                    lote_num.Text = lectorCmd("lote_num").ToString
                    cementerio.Text = lectorCmd("cementerio").ToString


                    If lectorCmd("escaneo").ToString <> "" Then
                        Dim ImgStream As New IO.MemoryStream(CType(lectorCmd("escaneo"), Byte()))
                        escaneo.Image = Image.FromStream(ImgStream)
                        ImgStream.Dispose()
                    Else
                        escaneo.Image = Formularios_de_Sistema_de_Cuenta_Corriente.My.Resources.Resources.Image_not_available
                    End If

                End If
                lectorCmd.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub


    Sub insertar()
        Try

            Dim ms As New MemoryStream
            Dim bm As Bitmap = New Bitmap(escaneo.Image)
            bm.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg)
            Dim arrPic() As Byte = ms.GetBuffer()

            Dim sp As String = "SpEntierrosInsertar"

            Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)

            Dim rowsAffected As Integer = 0
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.Add("@ID_ENTIERRO", SqlDbType.VarChar, 11).Direction = ParameterDirection.Output
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_ENTIERO", numero_entiero.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ID_TITULO", id_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NOMBRES_FALLECIDO", nombres_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@APELLIDOS_FALLECIDO", apellidos_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@TIPO_DOCUMENTO_FALLECIDO", tipo_documento_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_DOCUMENTO_FALLECIDO", numero_documento_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@SEXO_FALLECIDO", sexo_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@EDAD_FALLECIDO", edad_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESTADO_FAMILIAR", estado_familiar.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DIRECCION_RESIDENCIA_FALLECIDO", direccion_residencia_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LUGAR_NACIMIENTO_FALLECIDO", lugar_nacimiento_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LUGAR_FALLECIMIENTO", lugar_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_FALLECIMIENTO", fecha_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@HORA_FALLECIMIENTO", hora_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MINUTOS_FALLECIMIENTO", minutos_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CREMACION_CADAVER", cremacion_cadaver.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CAUSA_MUERTE", causa_muerte.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NOMBRE_INFORMANTE", nombre_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@APELLIDOS_INFORMANTE", apellidos_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_DOCUMENTO_INFORMANTE", numero_documento_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@TIPO_DOCUMENTO_INFORMANTE", tipo_documento_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CALIDAD_INFORMANTE", calidad_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_DIO_DATOS", fecha_dio_datos.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_RECIBO", numero_recibo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@POLIGONO", poligono.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LOTE_NUM", lote_num.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CEMENTERIO", cementerio.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESCANEO", arrPic))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESTADO", 1))

            rowsAffected = cmd.ExecuteNonQuery()
            lblid.Text = CInt(cmd.Parameters("@ID_ENTIERRO").Value)

            If lblid.Text > 0 Then
                'Seleccionar el ultimo correlativo
                Dim cmdCorrelativo As New SqlCommand("UPDATE correlativo set ultimo_entierro='" & numero_entiero.Text & "'", cnxConectionsServer)
                If cmdCorrelativo.ExecuteNonQuery > 0 Then
                End If
            End If
            MsgBox("Datos almacenados de manera exitosa", MsgBoxStyle.Information)


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Sub actualizar()
        Try
            Dim sp As String = "SpEntierrosActualizar"
            Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)
            Dim rowsAffected As Integer = 0
            cmd.CommandType = CommandType.StoredProcedure
            Dim ms As New MemoryStream
            Dim bm As Bitmap = New Bitmap(escaneo.Image)
            bm.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg)
            Dim arrPic() As Byte = ms.GetBuffer()

            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ID_ENTIERRO", lblid.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_ENTIERO", numero_entiero.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ID_TITULO", id_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NOMBRES_FALLECIDO", nombres_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@APELLIDOS_FALLECIDO", apellidos_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@TIPO_DOCUMENTO_FALLECIDO", tipo_documento_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_DOCUMENTO_FALLECIDO", numero_documento_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@SEXO_FALLECIDO", sexo_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@EDAD_FALLECIDO", edad_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESTADO_FAMILIAR", estado_familiar.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DIRECCION_RESIDENCIA_FALLECIDO", direccion_residencia_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LUGAR_NACIMIENTO_FALLECIDO", lugar_nacimiento_fallecido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LUGAR_FALLECIMIENTO", lugar_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_FALLECIMIENTO", fecha_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@HORA_FALLECIMIENTO", hora_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MINUTOS_FALLECIMIENTO", minutos_fallecimiento.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CREMACION_CADAVER", cremacion_cadaver.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CAUSA_MUERTE", causa_muerte.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NOMBRE_INFORMANTE", nombre_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@APELLIDOS_INFORMANTE", apellidos_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_DOCUMENTO_INFORMANTE", numero_documento_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@TIPO_DOCUMENTO_INFORMANTE", tipo_documento_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CALIDAD_INFORMANTE", calidad_informante.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_DIO_DATOS", fecha_dio_datos.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_RECIBO", numero_recibo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@POLIGONO", poligono.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LOTE_NUM", lote_num.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CEMENTERIO", cementerio.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESCANEO", arrPic))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESTADO", 1))
            rowsAffected = cmd.ExecuteNonQuery()
            MsgBox("Registro Modificado con exito", MsgBoxStyle.Information)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        If btnAdd.Text = "Agregar" Then
            insertar()
            Dim rep As New ficha_entierro
            rep.Parameter1.Value = lblid.Text
            rep.ShowRibbonPreviewDialog()
            Dispose()

        ElseIf btnAdd.Text = "Modificar" Then
            actualizar()
            Dispose()
        ElseIf btnAdd.Text = "Eliminar" Then
            eliminar()

        End If
    End Sub
    Sub eliminar()
        Try
            Dim sp As String = "SpEntierrosEliminar"

            Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)
            Dim rowsAffected As Integer = 0
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ID_ENTIERRO", lblid.Text))
            rowsAffected = cmd.ExecuteNonQuery()
            If rowsAffected > 0 Then
                MsgBox("Registro Eliminado con Exito", MsgBoxStyle.Information)
                Dispose()
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub SimpleButton1_Click(sender As Object, e As EventArgs) Handles SimpleButton1.Click
        Dispose()
    End Sub
End Class