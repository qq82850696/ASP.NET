<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="宽度自增.aspx.cs" Inherits="宽度自增" %>
<%--EnableViewState="true"--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
