<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wizardcontrol.aspx.cs" Inherits="RichControls.Wizardcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="wizdetails" runat="server" OnFinishButtonClick="wizdetails_FinishButtonClick" OnNextButtonClick="wizdetails_NextButtonClick">
            <WizardSteps>
                <asp:WizardStep ID="WSPD" runat="server" Title="Personal Details">
                    Name: <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br />
                    Age: <asp:TextBox ID="txtage" runat="server"></asp:TextBox><br />
                    Gender: 
                    <asp:RadioButtonList ID="lstgender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep AllowReturn="false" ID="WSCD" runat="server" Title="Contact Details">
                    Contact Number: <asp:TextBox ID="txtcn" runat="server"></asp:TextBox><br />
                    Email ID: <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
                </asp:WizardStep>
                <asp:WizardStep ID="WSSummery" runat="server" Title="Summery">
                    <h2>Personal Details</h2>
                    Name: <asp:Label ID="lblname" runat="server" Text=""></asp:Label><br />
                    Age: <asp:Label ID="lblage" runat="server" Text=""></asp:Label><br />
                    Gender: <asp:Label ID="lblgender" runat="server" Text=""></asp:Label><br />
                    <h2>Contact Details</h2>
                    Contact Number: <asp:Label ID="lblcn" runat="server" Text=""></asp:Label><br />
                    Email ID: <asp:Label ID="lblemail" runat="server" Text=""></asp:Label><br />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    </form>
</body>
</html>
