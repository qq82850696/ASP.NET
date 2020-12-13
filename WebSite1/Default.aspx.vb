
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "admin" AndAlso TextBox2.Text = "123" Then
            Response.Write("登录成功")
        Else
            Response.Write("登录失败!!!")
        End If
    End Sub
End Class
