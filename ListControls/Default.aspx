<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ListControls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Choose your favourite language:
        <asp:ListBox ID="lstpl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstpl_SelectedIndexChanged">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
        </asp:ListBox>
        <br />
        the choosen  language: <asp:Label ID="lbllst" Text="" runat="server"></asp:Label>
       <hr />
        Choose your favourite language:
        <asp:DropDownList ID="ddlpl" runat="server" OnSelectedIndexChanged="ddlpl_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
        </asp:DropDownList>
        <br />
        the choosen  language: <asp:Label ID="lblddl" Text="" runat="server"></asp:Label>
        <hr />
        Choose your favourite language:
        <asp:CheckBoxList ID="chkpl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chkpl_SelectedIndexChanged">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
        </asp:CheckBoxList>
        the choosen  language: <asp:Label ID="lblchk" Text="" runat="server"></asp:Label>
        <hr />
        Choose your favourite language:
        <asp:RadioButtonList ID="radiopl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radiopl_SelectedIndexChanged">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
        </asp:RadioButtonList>
        the choosen  language: <asp:Label ID="lblradio" Text="" runat="server"></asp:Label>
        <br />
        <br />
        <asp:BulletedList ID="blpl" runat="server" BulletStyle="Numbered" FirstBulletNumber="5" DisplayMode="LinkButton" OnClick="blpl_Click">
        </asp:BulletedList>
        <br />
        the choosen  language: <asp:Label ID="lblbl" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
