Imports System.Data.SqlClient
Public Class Classcodcatatro
   


    Function bitacoraAdd(ByVal modulo As String, ByVal accion As String)
        Try
            Dim sp As String = "SpBitacoraInsertar"
            Dim cmd As New SqlClient.SqlCommand(sp, cnxConectionsServer)
            Dim rowsAffected As Integer = 0
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New SqlClient.SqlParameter("@MODULO", modulo))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@ACCION", accion))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@FECHA", Now))
            cmd.Parameters.Add(New SqlClient.SqlParameter("@USUARIO", usuario))

            rowsAffected = cmd.ExecuteNonQuery()

            Return rowsAffected

        Catch ex As Exception
            Throw ex
        End Try
    End Function

End Class
