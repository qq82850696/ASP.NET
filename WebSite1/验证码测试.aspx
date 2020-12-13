<%@ Page Language="C#" AutoEventWireup="true" CodeFile="验证码测试.aspx.cs" Inherits="验证码测试" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="YZM.ashx" onclick="this.src='YZM.ashx?aaa='+new Date()" />
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
