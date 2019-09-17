<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Databindingexample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        No. of Users who are currently active: <%#Application["noofusers"] %><br />
        You are using the browser:<%#Request.Browser.Browser %>
        <asp:Label ID="lbl" runat="server" Text="<%#expression %>"></asp:Label>
        <asp:Image ID="img" runat="server" src="<%#expression %>"></asp:Image>
    </div>
    </form>
</body>
</html>
