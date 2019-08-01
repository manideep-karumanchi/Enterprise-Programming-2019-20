<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Validation.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="g1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="*Required" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="g1" />
        <hr />
        <asp:TextBox ID="TextBox2" ValidationGroup="g2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="g2" ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="*Required"></asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="g2" />
        
    </div>
    </form>
</body>
</html>
