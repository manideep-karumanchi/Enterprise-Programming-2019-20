<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validatorsexample.aspx.cs" Inherits="Validation.Validatorsexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ForeColor="Red" HeaderText="Validation Summery" BorderStyle="Solid" ID="ValidationSummary1" runat="server" />
        <br />
        User Name : <asp:TextBox ID="txtun" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valun" ControlToValidate="txtun" runat="server" ErrorMessage="Please Enter User Name">*</asp:RequiredFieldValidator><br />
        Age: <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valrfage" ControlToValidate="txtage" runat="server" ErrorMessage="Please Enter Age">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="valage" runat="server" ControlToValidate="txtage" MinimumValue="0" MaximumValue="120" Type="Integer" ErrorMessage="Enter age betwee 0 and 120">*</asp:RangeValidator><br />
        Password: <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valrfpwd" ControlToValidate="txtun" runat="server" ErrorMessage="Please Enter Password">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="valpwd" runat="server" Type="String" Operator="Equal" ControlToValidate="txtpwd" ControlToCompare="txtcpwd" ErrorMessage="Password and Confirm Password should be same">*</asp:CompareValidator><br />
        Confirm Password: <asp:TextBox ID="txtcpwd" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valcpwd" ControlToValidate="txtcpwd" runat="server" ErrorMessage="Please Enter Confirm Password">*</asp:RequiredFieldValidator><br />
        Regd. No. : <asp:TextBox ID="txtrn" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valrfrn" ControlToValidate="txtrn" runat="server" ErrorMessage="Please Enter Registered Number">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="valrn" ControlToValidate="txtrn" ValidationExpression="([yY]|[lL])\d{2}[Aa][a-zA-Z]{2}[0-9]{3,4}" runat="server" ErrorMessage="Registration Number is in wrong format">*</asp:RegularExpressionValidator><br />
        Enter Captcha: <asp:TextBox ID="txtcap" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="valcap" ControlToValidate="txtcap" runat="server" ValidateEmptyText="false" OnServerValidate="valcap_ServerValidate" ErrorMessage="Enter a number whose first three digits are divisible by 7">*</asp:CustomValidator><br />
        <asp:Button OnClick="cmdsub_Click" ID="cmdsub" runat="server" Text="Submit" />
    </div>
    </form>
</body>
</html>
