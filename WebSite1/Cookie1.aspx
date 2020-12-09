<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookie1.aspx.cs" Inherits="Cookie1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="设置Cookie" />
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="224px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
