<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Choose background color:<br />
        <asp:DropDownList ID="dlbc" runat="server">
            <asp:listitem>Red</asp:listitem>
            <asp:listitem>Blue</asp:listitem>
            <asp:listitem>Green</asp:listitem>
            <asp:listitem>Orange</asp:listitem>
        </asp:DropDownList>
        <br />
        Choose font:<br />
        <asp:DropDownList ID="dlf" runat="server">
            <asp:ListItem>Courier</asp:ListItem>
            <asp:listitem>Times new roman</asp:listitem>
            <asp:listitem>Helvetica</asp:listitem>
        </asp:DropDownList>
        <br />
        Specify a numeric font size:<br />
        <asp:TextBox ID="txtfs" runat="server"></asp:TextBox>
        <br />
        Choose a border style:<br />
        <asp:RadioButtonList ID="optbs" runat="server">
            <asp:ListItem Value="None">None</asp:ListItem>
            <asp:ListItem Value="Dotted">Dotted</asp:ListItem>
            <asp:ListItem Value="Double">Double</asp:ListItem>
        </asp:RadioButtonList><br />
        <asp:CheckBox ID="chkdi" Text="Add the default image" runat="server" />
        <br />
        Enter the greeting text:
        <br />
        <asp:TextBox ID="txtgt" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
        <br />
        <asp:Button ID="cmdub" Text="Update" runat="server" OnClick="cmdub_Click" />

    </div>
        <asp:Panel runat="server" Width="339px" Height="400px" Style="Position:absolute;top:16px;left:320px" ID="pnlgc" HorizontalAlign="Center">
            <asp:Label ID="lblgt" runat="server">
            </asp:Label>
            <br />
            <asp:Image ID="gimg" ImageUrl="download.jpg" runat="server" Height="200px" Width="200px" />
        </asp:Panel>
    </form>
</body>
</html>
