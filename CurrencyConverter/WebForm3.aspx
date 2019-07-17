<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="CurrencyConverter.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="t1" defaultbutton="b1">
    <asp:panel id="p1" runat="server">
        <asp:Label ID="l1" runat="server" Text="Enter Something"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="t1" runat="server" Text=""></asp:TextBox>
        <br />
        <asp:Button runat="server" ID="b1" Text="Submit" />
        <asp:Button runat="server" ID="b2" Text="reset" />
    </asp:panel>
    </form>
</body>
</html>
