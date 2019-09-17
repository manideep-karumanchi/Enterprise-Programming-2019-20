<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeatedValue.aspx.cs" Inherits="Databindingexample.RepeatedValue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Fruits: <asp:DropDownList ID="lstfruits" runat="server"></asp:DropDownList>
        <br />
        <br />
        Fruits:<asp:RadioButtonList ID="lstrfruits" runat="server">
        </asp:RadioButtonList>
        <br />
        Fruits:<asp:ListBox ID="lstlfruits" runat="server"></asp:ListBox>
    </div>
    </form>
</body>
</html>
