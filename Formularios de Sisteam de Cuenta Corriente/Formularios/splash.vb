Public Class splash

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        ProgressBarControl1.Increment(3)
    
        If ProgressBarControl1.Position = 5 Then
            lblLoading.Text = "Preparando..."
        End If
        If ProgressBarControl1.Position = 20 Then
            lblLoading.Text = "Loading... Modulos de inicio"
        End If
        If ProgressBarControl1.Position = 30 Then
            lblLoading.Text = "Loading... Datos de  inicio"
        End If
        If ProgressBarControl1.Position = 50 Then
            lblLoading.Text = "Loading... Base de Datos"
        End If
        If ProgressBarControl1.Position = 70 Then
            lblLoading.Text = "Loading... Preparando configuración Previa"
        End If
        If ProgressBarControl1.Position = 90 Then
            lblLoading.Text = "Loading... Layout de Sistema"
        End If

        If ProgressBarControl1.Position = 98 Then
            lblLoading.Text = "Iniciamos"
        End If
        If ProgressBarControl1.Position = 100 Then
            Close()
        End If
    End Sub

    Private Sub splash_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Timer1.Start()
    End Sub

    
   
End Class