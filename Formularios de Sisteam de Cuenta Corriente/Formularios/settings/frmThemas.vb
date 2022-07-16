Public Class frmThemas 
    Dim setting As New My.MySettings
    Private Sub ListBoxControl1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBoxControl1.SelectedIndexChanged
        Me.DefaultLookAndFeel2.LookAndFeel.SkinName = ListBoxControl1.SelectedItem
        setting.Skin = DefaultLookAndFeel2.LookAndFeel.SkinName
        setting.Save()
    End Sub

    Private Sub frmThemas_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.LookAndFeel.SkinName = setting.Skin
        Me.DefaultLookAndFeel2.LookAndFeel.SkinName = setting.Skin
    End Sub

    
    Private Sub SimpleButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SimpleButton1.Click
        Close()
    End Sub
End Class