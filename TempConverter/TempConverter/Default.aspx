<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TempConverter.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Fahrenheit: <input type="text" id="ftb" runat="server"/> to
        <input id="crb" name="totemp" runat="server" type="radio" value="Celsius" /> Celsius&nbsp;
        <input id="krb" name="totemp" runat="server" type="radio" value="Kelvin" /> Kelvin<br />
        <input type="submit" value="Convert" id="cb" runat="server" onserverclick="cb_ServerClick"/>
        <p runat="server" id="output"></p>
    </div>
    </form>
</body>
</html>
