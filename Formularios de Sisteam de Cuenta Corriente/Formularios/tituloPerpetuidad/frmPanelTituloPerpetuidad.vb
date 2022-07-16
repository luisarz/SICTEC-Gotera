﻿Imports System.Data.SqlClient
Imports DevExpress.XtraReports.UI
Public Class frmPanelTituloPerpetuidad
    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)




    End Sub

    Private Sub frmPanelTituloPerpetuidad_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
            llenar()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Lista_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Lista.MouseClick
        lblid.Text = GridView1.GetFocusedRowCellValue("id_titulo")

    End Sub
    Private Sub llenar()

        Dim buscar As New SqlCommand("SELECT * FROM titulo_perpetuidad ", cnxConectionsServer)
        Dim daseDatos As New System.Data.DataSet
        Dim adaptador As New System.Data.SqlClient.SqlDataAdapter(buscar)
        adaptador.Fill(daseDatos)
        Lista.DataSource = daseDatos.Tables(0)
        Lista.Refresh()
    End Sub
    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        Try
            AddTituloperpetuidad.btnAdd.Text = "Agregar"
            AddTituloperpetuidad.ShowDialog()
            llenar()
        Catch ex As Exception
        End Try

    End Sub



    Private Sub GridView1_FocusedRowChanged(ByVal sender As System.Object, ByVal e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        lblid.Text = GridView1.GetFocusedRowCellValue("id_titulo")
    End Sub



    Private Sub GridView1_RowCellClick(sender As Object, e As DevExpress.XtraGrid.Views.Grid.RowCellClickEventArgs) Handles GridView1.RowCellClick
        If e.Column.Name = "Delete" Then
            Try
               AddTituloperpetuidad.lblid.Text = lblid.Text
                AddTituloperpetuidad.btnAdd.Text = "Eliminar"
                AddTituloperpetuidad.ShowDialog()
                llenar()
            Catch ex As Exception

            End Try
        End If

        If e.Column.Name = "btnEdit" Then
            Try
                AddTituloperpetuidad.lblid.Text = lblid.Text
                AddTituloperpetuidad.btnAdd.Text = "Modificar"
                    AddTituloperpetuidad.ShowDialog()
                    llenar()
            Catch ex As Exception
            End Try
        End If
        If e.Column.Name = "btnPrint" Then
            Try
                Dim rep As New ficha_titulo
                rep.Parameter1.Value = lblid.Text
                rep.ShowRibbonPreviewDialog()
                llenar()
            Catch ex As Exception
            End Try
        End If


    End Sub

    Private Sub SimpleButton4_Click(sender As Object, e As EventArgs) Handles SimpleButton4.Click
        llenar()
    End Sub
End Class