<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Repeated_Valuedatabindingado.Default" ViewStateMode="Enabled" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="lstproducts" runat="server" AutoPostBack="true" EnableViewState="true" OnSelectedIndexChanged="lstproducts_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <hr />
        <br />
        <br />
     
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Product:<asp:Label ID="lblproduct" runat="server" Text=""></asp:Label><br />
                    Quantity:<asp:Label ID="lblqty" runat="server" Text=""></asp:Label><br />
                    Category:<asp:Label ID="lblcat" runat="server" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ListBox ID="lstcat" runat="server" EnableViewState="true"></asp:ListBox>
                    <br />
                    <asp:Button ID="cmdupdate" runat="server" Text="Update" OnClick="cmdupdate_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
