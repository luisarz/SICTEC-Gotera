﻿Imports System.Data.SqlClient
Imports System.Data
Imports DevExpress.XtraReports.UI
Imports System.IO

Public Class AddTituloperpetuidad


    Private Sub AddTituloperpetuidad_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            If btnAdd.Text = "Agregar" Then
                'Seleccionar el ultimo correlativo
            Else
                'Seleccionar los datos del titulo
                Dim cmd As New SqlCommand("SELECT * FROM titulo_perpetuidad WHERE id_titulo='" & lblid.Text & "'", cnxConectionsServer)
                Dim lectorCmd As SqlDataReader = cmd.ExecuteReader
                If lectorCmd.Read Then
                    cmd.CommandType = CommandType.StoredProcedure
                    numero_titulo.Text = lectorCmd("numero_titulo").ToString
                    fecha_registro_titulo.Text = lectorCmd("fecha_registro_titulo").ToString
                    monto_titulo.Text = lectorCmd("monto_titulo").ToString
                    derecho_a_favor.Text = lectorCmd("derecho_a_favor").ToString

                    edad_afavor.Text = lectorCmd("edad_afavor").ToString
                    profesion_afavor.Text = lectorCmd("profesion_afavor").ToString
                    domicilio_afavor.Text = lectorCmd("domicilio_afavor").ToString
                    departamento_afavor.Text = lectorCmd("departamento_afavor").ToString
                    dui_favor_extendido.Text = lectorCmd("dui_favor_extendido").ToString
                    dui_afavor.Text = lectorCmd("dui_afavor").ToString


                    dui_departamento_extendido.Text = lectorCmd("dui_departamento_extendido").ToString
                    cantidad_puesto.Text = lectorCmd("cantidad_puesto").ToString
                    cementerio_puesto.Text = lectorCmd("cementerio_puesto").ToString
                    situado_puesto.Text = lectorCmd("situado_puesto").ToString
                    zona_puesto.Text = lectorCmd("zona_puesto").ToString


                    categoria_puesto.Text = lectorCmd("categoria_puesto").ToString
                    calle_puesto.Text = lectorCmd("calle_puesto").ToString
                    numero_puesto.Text = lectorCmd("numero_puesto").ToString
                    letra_puesto.Text = lectorCmd("letra_puesto").ToString
                    metro_ancho.Text = lectorCmd("metro_ancho").ToString
                    centimentro_ancho.Text = lectorCmd("centimentro_ancho").ToString
                    metro_largo.Text = lectorCmd("metro_largo").ToString


                    centimetro_largo.Text = lectorCmd("centimetro_largo").ToString
                    linda_norte_puesto.Text = lectorCmd("linda_norte_puesto").ToString
                    linda_norte_calle.Text = lectorCmd("linda_norte_calle").ToString
                    linda_sur_puesto.Text = lectorCmd("linda_sur_puesto").ToString
                    linda_sur_calle.Text = lectorCmd("linda_sur_calle").ToString
                    linda_oriente_puesto.Text = lectorCmd("linda_oriente_puesto").ToString
                    linda_oriente_calle.Text = lectorCmd("linda_oriente_calle").ToString

                    linda_poniente_puesto.Text = lectorCmd("linda_poniente_puesto").ToString
                    linda_poniente_calle.Text = lectorCmd("linda_poniente_calle").ToString
                    cantidad_construir_nichos.Text = lectorCmd("cantidad_construir_nichos").ToString
                    contracava.Text = lectorCmd("contracava").ToString
                    monto_construccion.Text = lectorCmd("monto_construccion").ToString


                    numero_recibo.Text = lectorCmd("numero_recibo").ToString
                    fecha_recibo.Text = lectorCmd("fecha_recibo").ToString
                    referencias.Text = lectorCmd("referencias").ToString
                    persona_entierra.Text = lectorCmd("persona_entierra").ToString
                    If lectorCmd("IMAGEN_RECIBO").ToString <> "" Then
                        Dim ImgStream As New IO.MemoryStream(CType(lectorCmd("IMAGEN_RECIBO"), Byte()))
                        escaneo.Image = Image.FromStream(ImgStream)
                        ImgStream.Dispose()
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
            Dim sp As String = "SpTitulo_perpetuidadInsertar"

            Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)

            Dim ms As New MemoryStream
            Dim bm As Bitmap = New Bitmap(escaneo.Image)
            bm.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg)
            Dim arrPic() As Byte = ms.GetBuffer()

            Dim rowsAffected As Integer = 0
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_TITULO", numero_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_REGISTRO_TITULO", fecha_registro_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MONTO_TITULO", monto_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DERECHO_A_FAVOR", derecho_a_favor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@EDAD_AFAVOR", edad_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@PROFESION_AFAVOR", profesion_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DOMICILIO_AFAVOR", domicilio_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DEPARTAMENTO_AFAVOR", departamento_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DUI_AFAVOR", dui_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DUI_FAVOR_EXTENDIDO", dui_favor_extendido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DUI_DEPARTAMENTO_EXTENDIDO", dui_departamento_extendido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CANTIDAD_PUESTO", cantidad_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CEMENTERIO_PUESTO", cementerio_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@SITUADO_PUESTO", situado_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ZONA_PUESTO", zona_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CATEGORIA_PUESTO", categoria_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CALLE_PUESTO", calle_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_PUESTO", numero_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LETRA_PUESTO", letra_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@METRO_ANCHO", metro_ancho.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CENTIMENTRO_ANCHO", centimentro_ancho.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@METRO_LARGO", metro_largo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CENTIMETRO_LARGO", centimetro_largo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_NORTE_PUESTO", linda_norte_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_NORTE_CALLE", linda_norte_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_SUR_PUESTO", linda_sur_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_SUR_CALLE", linda_sur_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_ORIENTE_PUESTO", linda_oriente_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_ORIENTE_CALLE", linda_oriente_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_PONIENTE_PUESTO", linda_poniente_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_PONIENTE_CALLE", linda_poniente_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CANTIDAD_CONSTRUIR_NICHOS", cantidad_construir_nichos.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CONTRACAVA", contracava.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MONTO_CONSTRUCCION", monto_construccion.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_RECIBO", numero_recibo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_RECIBO", fecha_recibo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@REFERENCIAS", referencias.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@PERSONA_ENTIERRA", persona_entierra.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@IMAGEN_RECIBO", arrPic))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESTADO", 1))
            cmd.Parameters.Add("@ID_TITULO", SqlDbType.VarChar, 11).Direction = ParameterDirection.Output


            rowsAffected = cmd.ExecuteNonQuery()
            Dim id As Integer = CInt(cmd.Parameters("@ID_TITULO").Value)
            MsgBox(id.ToString)
            Dispose()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Sub actualizar()
        Try
            Dim sp As String = "SpTitulo_perpetuidadActualizar"
            Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)
            Dim rowsAffected As Integer = 0
            cmd.CommandType = CommandType.StoredProcedure
            Dim ms As New MemoryStream
            Dim bm As Bitmap = New Bitmap(escaneo.Image)
            bm.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg)
            Dim arrPic() As Byte = ms.GetBuffer()
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_TITULO", numero_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_REGISTRO_TITULO", fecha_registro_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MONTO_TITULO", monto_titulo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DERECHO_A_FAVOR", derecho_a_favor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@EDAD_AFAVOR", edad_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@PROFESION_AFAVOR", profesion_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DOMICILIO_AFAVOR", domicilio_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DEPARTAMENTO_AFAVOR", departamento_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DUI_AFAVOR", dui_afavor.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DUI_FAVOR_EXTENDIDO", dui_favor_extendido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@DUI_DEPARTAMENTO_EXTENDIDO", dui_departamento_extendido.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CANTIDAD_PUESTO", cantidad_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CEMENTERIO_PUESTO", cementerio_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@SITUADO_PUESTO", situado_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ZONA_PUESTO", zona_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CATEGORIA_PUESTO", categoria_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CALLE_PUESTO", calle_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_PUESTO", numero_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LETRA_PUESTO", letra_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@METRO_ANCHO", metro_ancho.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CENTIMENTRO_ANCHO", centimentro_ancho.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@METRO_LARGO", metro_largo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CENTIMETRO_LARGO", centimetro_largo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_NORTE_PUESTO", linda_norte_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_NORTE_CALLE", linda_norte_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_SUR_PUESTO", linda_sur_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_SUR_CALLE", linda_sur_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_ORIENTE_PUESTO", linda_oriente_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_ORIENTE_CALLE", linda_oriente_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_PONIENTE_PUESTO", linda_poniente_puesto.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@LINDA_PONIENTE_CALLE", linda_poniente_calle.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CANTIDAD_CONSTRUIR_NICHOS", cantidad_construir_nichos.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@CONTRACAVA", contracava.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MONTO_CONSTRUCCION", monto_construccion.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@NUMERO_RECIBO", numero_recibo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA_RECIBO", fecha_recibo.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@REFERENCIAS", referencias.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@PERSONA_ENTIERRA", persona_entierra.Text))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@IMAGEN_RECIBO", arrPic))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ESTADO", 1))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ID_TITULO", lblid.Text))
            rowsAffected = cmd.ExecuteNonQuery()
            MsgBox("actualzido")
            Dispose()
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        If btnAdd.Text = "Agregar" Then
            insertar()
        ElseIf btnAdd.Text = "Modificar" Then
            actualizar()
        End If
    End Sub
End Class