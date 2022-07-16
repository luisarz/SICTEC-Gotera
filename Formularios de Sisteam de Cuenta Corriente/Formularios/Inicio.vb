Public Class Inicio 


    Private Sub Inicio_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            'WebBrowser1.Document.Write(IO.File.ReadAllText("intro/inicio.html"))
            'WebBrowser1.Navigate("file:///" & IO.Path.GetFullPath("intro\inicio.html"))

        Catch ex As Exception

        End Try
    End Sub

    Private Sub PanelControl3_Paint(sender As Object, e As PaintEventArgs) Handles PanelControl3.Paint

    End Sub
End Class