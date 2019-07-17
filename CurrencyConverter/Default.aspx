<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CurrencyConverter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Currency Converter</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        INR: <input id="inrtb" type="text" value="0.0" runat="server" /> INR to 
        <select id="tct" runat="server">
            <option value="69">USD</option>
            <option value="80">EURO</option>
            <option value="50">CAD</option>
        </select><br />
        <input type="submit" value="Convert" runat="server" id="cb" onserverclick="cb_ServerClick" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="Show Image" runat="server" id="si" onserverclick="si_ServerClick"/>
        <br /><br />
        <img src="" alt="No Image Available" runat="server" id="sci" />
        <p runat="server" id="output"></p>

    </div>
    </form>
</body>
</html>
