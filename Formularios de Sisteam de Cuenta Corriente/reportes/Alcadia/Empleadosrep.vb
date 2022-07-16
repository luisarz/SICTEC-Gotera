Imports System.IO
Imports System.Data.SqlClient
Public Class Empleadosrep

    Private Sub Empleadosrep_BeforePrint(ByVal sender As System.Object, ByVal e As System.Drawing.Printing.PrintEventArgs) Handles MyBase.BeforePrint
        Dim cmdselectiondata As New SqlCommand("select * from alcaldia", cnxConectionsServer)
        Dim lectorcmdselectiondata As SqlDataReader = cmdselectiondata.ExecuteReader
        If lectorcmdselectiondata.Read Then
            lblalcaldia.Text = lectorcmdselectiondata(1).ToString
            D.Text = lectorcmdselectiondata(2).ToString & lectorcmdselectiondata(8).ToString & ", " & lectorcmdselectiondata(7).ToString
            lbltelefono.Text = "Teléfono: " & lectorcmdselectiondata(3).ToString
        End If
        lectorcmdselectiondata.Close()


        Try
            Dim origencopia As String
            origencopia = "logo" & "/logo.png"
            If File.Exists(origencopia) Then
                Try
                    Dim rimg As String
                    Dim dir = "logo" & "/"

                    rimg = dir & "logo.png"
                    Dim img = New Bitmap(rimg)
                    Me.ptblogo.Image = CType(img, Image)
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        Catch ex As Exception

        End Try



    End Sub
End Class