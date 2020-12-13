<%@ Page Language="C#" AutoEventWireup="true" CodeFile="变量.aspx.cs" Inherits="变量" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <p>
            <asp:Button ID="btnReadSession" runat="server" Text="读取Session" OnClick="btnReadSession_Click" />
        </p>
         <p>
            <asp:Button ID="btnWriteSession" runat="server" Text="设置Session" OnClick="btnWriteSession_Click" />
        </p>
    </form>
</body>
</html>
