Public Class rep_titulos_with_entierros

    Private Sub rep_titulos_with_entierros_BeforePrint(sender As Object, e As Printing.PrintEventArgs) Handles MyBase.BeforePrint
        txtDesde.Text = Desde.Value
        TxtHasta.Text = Hasta.Value
    End Sub
End Class