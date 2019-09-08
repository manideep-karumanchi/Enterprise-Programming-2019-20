<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdoExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border:solid; border-width:medium;background-color:#9bdbe4">
        <br />Select Author:
        <asp:DropDownList ID="lstAuthors" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstAuthors_SelectedIndexChanged">
        </asp:DropDownList> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="cmdub" runat="server" Text="Update" OnClick="cmdub_Click" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="cmddb" runat="server" Text="Delete" OnClick="cmddb_Click" />
        <br />
        Or:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="cmdcb" runat="server" Text="Create New" OnClick="cmdcb_Click" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="cmdin" runat="server" Text="Insert New" OnClick="cmdin_Click" />
        
    </div>
    <br /><br /><br />
    <div style="border:solid; border-width:medium;background-color:#bfb565">
        Unique Id:<asp:TextBox ID="txtid" runat="server"></asp:TextBox><br />
        First Name:<asp:TextBox ID="txtfn" runat="server"></asp:TextBox><br />
        Last Name:<asp:TextBox ID="txtln" runat="server"></asp:TextBox><br />
        Phone:<asp:TextBox ID="txtphone" runat="server"></asp:TextBox><br />
        Address:<asp:TextBox ID="txtadd" runat="server"></asp:TextBox><br />
        City:<asp:TextBox ID="txtcity" runat="server"></asp:TextBox><br />
        State:<asp:TextBox ID="txtstate" runat="server"></asp:TextBox><br />
        Zip-Code:<asp:TextBox ID="txtzip" runat="server"></asp:TextBox><br />
        Contract:<asp:CheckBox ID="chkcontract" runat="server" />
        <br />
        <asp:Label ID="lbldetails" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
