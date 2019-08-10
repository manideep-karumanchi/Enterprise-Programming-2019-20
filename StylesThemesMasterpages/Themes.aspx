<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themes.aspx.cs" Inherits="StylesThemesMasterpages.Themes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name: <asp:TextBox ID="txtname" runat="server" SkinID="s1"></asp:TextBox><br />
        Address: <asp:TextBox ID="txtadd" BackColor="White" runat="server" TextMode="MultiLine" SkinID="s2"></asp:TextBox><br />
        <asp:Button ID="cmdsubmit" runat="server" Text="Button" />
        
    </div>
    </form>
</body>
</html>
