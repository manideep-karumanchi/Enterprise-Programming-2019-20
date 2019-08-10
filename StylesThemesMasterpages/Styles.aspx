<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Styles.aspx.cs" Inherits="StylesThemesMasterpages.Styles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="classselector" id="idselector">
        <h1 style="font-size:x-large;background-color:black;color:white">Hello</h1>
        <asp:TextBox ID="TextBox1" CssClass="classselector" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
