<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizardExample.aspx.cs" Inherits="RichControls.WizardExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                    Choose a background color:<br />
                    <asp:DropDownList ID="lstBackColor" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="cmdUpdate_Click"/><br />
                    Choose a Foreground(Text) color:<br />
                    <asp:DropDownList ID="lstForeColor" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="cmdUpdate_Click"/><br />
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                    Choose a border style:<br />
                    <asp:RadioButtonList ID="lstBorder" runat="server" Width="177px" Height="59px" AutoPostBack="True" OnSelectedIndexChanged="cmdUpdate_Click" /><br /><br />
                    <asp:CheckBox ID="chkPicture" runat="server" Text="Add the Default Picture"></asp:CheckBox><br /><br />
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 2">
                    Choose a font:<br />
                    <asp:DropDownList ID="lstFontName" runat="server" Width="194px" Height="22px" /><br /><br />
                    Specify a numeric font size:<br />
                    <asp:TextBox ID="txtFontSize" runat="server" /><br /><br />
                    Enter the greeting text below:<br />
                    <asp:TextBox ID="txtGreeting" runat="server" Width="240px" Height="85px" TextMode="MultiLine" /><br /><br />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    <asp:Panel ID="pnlCard" runat="server" Width="50%" Height="481px" HorizontalAlign="Center" style="POSITION: absolute; TOP: 6px; LEFT: 50%;">
    <br />&nbsp; <asp:Label ID="lblGreeting" runat="server" Width="256px" Height="150px" /><br /><br /><br />
    <asp:Image ID="imgDefault" runat="server" Width="212px" Height="160px" />
    </asp:Panel>
    </form>
</body>
</html>
