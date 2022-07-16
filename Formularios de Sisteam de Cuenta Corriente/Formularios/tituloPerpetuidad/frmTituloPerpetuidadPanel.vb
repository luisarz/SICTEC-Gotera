Imports System.Data.SqlClient
Imports DevExpress.XtraReports.UI
Public Class frmTituloPerpetuidadPanel

   



    Private Sub btnPrintCarta_Click(sender As Object, e As EventArgs)
        Try
            'Dim rep As New cartaVenraPrint
            'rep.id_carta_venta.Value = lbiCarta.Text
            'rep.lblDuiVendedor.Text = lblDuiVendedor.Text
            'rep.ShowRibbonPreviewDialog()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub frmCartaVentasPanel_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: esta línea de código carga datos en la tabla 'SacChilangaDataSet1TituloPerpetuidad.SpTitulo_perpetuidadListar' Puede moverla o quitarla según sea necesario.
        Me.SpTitulo_perpetuidadListarTableAdapter.Fill(Me.SacChilangaDataSet1TituloPerpetuidad.SpTitulo_perpetuidadListar)
        Try
      
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub



    Private Sub BindingNavigatorAddNewItem_Click(sender As Object, e As EventArgs)
        Numero_tituloSpinEdit.Focus()
    End Sub

   

    Private Sub GridView1_FocusedRowChanged(sender As Object, e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs)


    End Sub

    Private Sub SpTitulo_perpetuidadListarBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs) Handles SpTitulo_perpetuidadListarBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.SpTitulo_perpetuidadListarBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.SacChilangaDataSet1TituloPerpetuidad)

    End Sub

    Private Sub ToolStripButton1_Click_1(sender As Object, e As EventArgs) Handles ToolStripButton1.Click
        If lblid.Text = "" Then
            MsgBox("Seleccione el titulo a imprimir")
        Else
            Dim rep As New ficha_titulo
            rep.Parameter1.Value = lblid.Text
            rep.ShowRibbonPreviewDialog()
        End If
    End Sub

    Private Sub GridView1_FocusedRowChanged_1(sender As Object, e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        lblid.Text = GridView1.GetFocusedRowCellValue("id_titulo")
    End Sub

    Private Sub BindingNavigatorAddNewItem_Click_1(sender As Object, e As EventArgs) Handles BindingNavigatorAddNewItem.Click
        Numero_tituloSpinEdit.Focus()
    End Sub
End Class