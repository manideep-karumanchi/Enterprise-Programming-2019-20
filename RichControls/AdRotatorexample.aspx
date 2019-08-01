<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotatorexample.aspx.cs" Inherits="RichControls.AdRotatorexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="ar" runat="server" AdvertisementFile="~/ads.xml" Target="_blank" />
    </div>
    </form>
</body>
</html>
