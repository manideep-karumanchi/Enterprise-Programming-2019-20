<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Multiviewexample.aspx.cs" Inherits="RichControls.Multiviewexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MVGC" runat="server">
            <asp:View ID="View1" runat="server">
                Choose a background color:<br />
                <asp:DropDownList ID="lstBackColor" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="cmdUpdate_Click"/><br />
                Choose a Foreground(Text) color:<br />
                <asp:DropDownList ID="lstForeColor" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="cmdUpdate_Click"/><br />
                <asp:Button ID="v1v2" runat="server" Text="Next>>" OnClick="v1v2_Click" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                Choose a border style:<br />
                <asp:RadioButtonList ID="lstBorder" runat="server" Width="177px" Height="59px" AutoPostBack="True" OnSelectedIndexChanged="cmdUpdate_Click" /><br /><br />
                <asp:CheckBox ID="chkPicture" runat="server" Text="Add the Default Picture"></asp:CheckBox><br /><br />
                <asp:Button ID="v2v1" runat="server" Text="<<Previous" CommandName="PrevView" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="v2v3" runat="server" Text="Next>>" CommandName="NextView" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                Choose a font:<br />
                <asp:DropDownList ID="lstFontName" runat="server" Width="194px" Height="22px" /><br /><br />
                Specify a numeric font size:<br />
                <asp:TextBox ID="txtFontSize" runat="server" /><br /><br />
                Enter the greeting text below:<br />
                <asp:TextBox ID="txtGreeting" runat="server" Width="240px" Height="85px" TextMode="MultiLine" /><br /><br />
                <asp:Button ID="v3v2" runat="server" Text="<<Previous" CommandName="SwitchViewByID"  CommandArgument="View2"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdUpdate" OnClick="cmdUpdate_Click" runat="server" Width="71px" Height="24px" Text="Update" />
            </asp:View>
        </asp:MultiView>
    </div>
    <asp:Panel ID="pnlCard" runat="server" Width="50%" Height="481px" HorizontalAlign="Center" style="POSITION: absolute; TOP: 6px; LEFT: 50%;">
    <br />&nbsp; <asp:Label ID="lblGreeting" runat="server" Width="256px" Height="150px" /><br /><br /><br />
    <asp:Image ID="imgDefault" runat="server" Width="212px" Height="160px" />
    </asp:Panel>
    </form>
</body>
</html>
