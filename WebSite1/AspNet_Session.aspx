<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AspNet_Session.aspx.cs" Inherits="AspNet_Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnSet" runat="server" Text="设置" OnClick="btnSet_Click" />
            <asp:Button ID="btnGet" runat="server" Text="读取" OnClick="btnGet_Click" />
        </div>
    </form>
</body>
</html>
