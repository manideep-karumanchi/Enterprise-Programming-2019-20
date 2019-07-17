<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirection.aspx.cs" Inherits="CurrencyConverter.Redirection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="Default.aspx" runat="server" id="anchor">Anchor Tag: Default.aspx</a>
        <a runat="server" id="anchor1" onserverclick="anchor1_ServerClick" >Response.Redirect: Default.aspx</a>
        <a runat="server" id="anchor2" onserverclick="anchor2_ServerClick" >Server.Tranfer: Default.aspx</a>
    </div>
    </form>
</body>
</html>
