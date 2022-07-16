Module modulo
    'Función: chequear si el formulario ya ha sido cargado
    Public Sub llamarform(ByVal formulario As Form, ByVal mdi As Form)
        Dim frmllamado As Form
        Dim escargado As Boolean = False
        Try

            'chequemos si el formulario ha sido cargado
            For Each frmllamado In mdi.MdiChildren
                'Compara si es igual y retorna verdadero si lo es.
                If frmllamado.Text = formulario.Text Then
                    'Marca la bandera
                    escargado = True
                    'Sale del loop si es verdadero
                    Exit For
                End If
            Next

            If Not escargado Then
                'Carga el formulario si no esta llamado
                formulario.MdiParent = mdi
                formulario.Show()
            ElseIf escargado Then
                'Enfoca el objeto
                frmllamado.Focus()
            End If

            'Nada que hacer, toca colocar la exception
        Catch ex As Exception
            'Mostrar mensaje
            MsgBox(ex.Message & vbCrLf & ex.Source & vbCrLf & _
                   ex.StackTrace, MsgBoxStyle.Critical, "Error")
        End Try
        'Limpiar todo
        formulario = Nothing
        frmllamado = Nothing
    End Sub
End Module
