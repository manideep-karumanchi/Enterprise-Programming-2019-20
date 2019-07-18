<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableExample.aspx.cs" Inherits="ListControls.TableExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        No. Of Rows: <asp:TextBox ID="txtrows" runat="server"></asp:TextBox><br /> 
        No. Of Cols: <asp:TextBox ID="txtcols" runat="server"></asp:TextBox><br />
        <asp:CheckBox ID="chkborder" runat="server" Text="Put Border" />    <br />
        <asp:Button ID="cmdgt" runat="server" Text="Generate Table" OnClick="cmdgt_Click" /><br />
        <asp:Table ID="tbl" runat="server"></asp:Table>
    </div>
    </form>
</body>
</html>
