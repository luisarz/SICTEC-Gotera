Imports System.Data.SqlClient
Public Class frmEmpleado

    Private Sub frmTeachres_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            If cnxConectionsServer.State = ConnectionState.Open Then
            ElseIf cnxConectionsServer.State = ConnectionState.Closed Then
                cnxConectionsServer.Open()
            End If
        Catch ex As Exception
            AlertControl1.Show(Me, "Error", "Error al cargar modulo el error Es: " & ex.Message)
        End Try
        cargardatos()
    End Sub

    Private Sub cargardatos()
        Try
            Dim consulta As New SqlCommand("Select Id,Nombre,Apellido,edad,f_nac,sexo,dui,telefono,experiencia,logros,fallos,cargo,f_inicio,especialidad from   empleados where activo='true'", cnxConectionsServer)
            ' Dim lector As SqlDataReader
            Dim dsDatos As New System.Data.DataSet
            Dim adapter As New SqlDataAdapter(consulta)
            adapter.Fill(dsDatos)
            dtglista.DataSource = dsDatos.Tables(0)
            dtglista.Refresh()
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical)
        End Try
    End Sub

    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click

    End Sub

    Private Sub SimpleButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton2.Click
        My.Forms.frmAddEmpleado.ShowDialog()
        cargardatos()
        

    End Sub

    Private Sub SimpleButton3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton3.Click
        Try
            If lblID.Text = "" Then
                AlertControl1.Show(Me, "Advertencia", "Debe seleccionar un Empleado de la lista a modificar")
            Else
                My.Forms.frmEditEmpleado.txtcodigo.Text = lblID.Text
                My.Forms.frmEditEmpleado.ShowDialog()
                cargardatos()
            End If
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Information)
        End Try
    End Sub

    Private Sub GridView1_FocusedRowChanged(ByVal sender As System.Object, ByVal e As DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs) Handles GridView1.FocusedRowChanged
        lblID.Text = GridView1.GetFocusedRowCellValue("Id")
    End Sub
End Class