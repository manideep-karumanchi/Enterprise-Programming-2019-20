<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendarexample.aspx.cs" Inherits="RichControls.Calendarexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Date of Joining: <asp:TextBox ID="txtjd" runat="server"></asp:TextBox>  
        <asp:ImageButton ImageUrl="~/Images/calendar.jpg" ID="imgcal" runat="server" OnClick="imgcal_Click" />  
        <br />
        <asp:Calendar ID="Cal" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Caption="Calendar" CellPadding="15" DayNameFormat="Full" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Cal_SelectionChanged" Width="220px" CaptionAlign="Left" CellSpacing="5" NextMonthText="&gt;&gt;" OnDayRender="Cal_DayRender" PrevMonthText="&lt;&lt;" SelectionMode="DayWeekMonth" ShowGridLines="True">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <DayStyle BackColor="#FF9999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle BackColor="#009933" ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
    </div>
    </form>
</body>
</html>
