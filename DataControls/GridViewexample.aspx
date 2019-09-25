<%@ Page Culture="en-IN" Language="C#" AutoEventWireup="true" CodeBehind="GridViewexample.aspx.cs" Inherits="DataControls.GridViewexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="Categoriesgrid" runat="server" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="true" AlternatingRowStyle-BackColor="#ccff33" RowStyle-Font-Names="Calibri" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="NorthWindDS" AllowPaging="True" PageSize="2" AllowSorting="True">
            
<AlternatingRowStyle BackColor="#CCFF33"></AlternatingRowStyle>
            
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>

<HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

<RowStyle Font-Names="Calibri"></RowStyle>
            <SelectedRowStyle BackColor="Black" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="NorthWindDS" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description]) VALUES (@CategoryName, @Description)" UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Description] = @Description WHERE [CategoryID] = @CategoryID">
            <DeleteParameters>
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <hr />
        <asp:GridView ID="ProductsGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="Products">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:TemplateField>
                    <ItemTemplate>
                        Units in Stock:<%#Eval("UnitsInStock") %><br />
                        Quantity per Unit:<%#Eval("QuantityPerUnit") %><br />
                        Reorder Level:<%#Eval("ReorderLevel") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        Units in Stock:<%#Eval("UnitsInStock") %><br />
                        Quantity per Unit:<%#Eval("QuantityPerUnit") %><br />
                        Reorder Level:<asp:TextBox ID="txtReorderLevel" Text='<%#Bind("ReorderLevel") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [QuantityPerUnit], [ReorderLevel], [UnitsInStock] FROM [Products]" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductName], [UnitPrice], [QuantityPerUnit], [ReorderLevel], [UnitsInStock]) VALUES (@ProductName, @UnitPrice, @QuantityPerUnit, @ReorderLevel, @UnitsInStock)" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [UnitPrice] = @UnitPrice, [ReorderLevel] = @ReorderLevel WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="ReorderLevel" Type="Int16" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="ReorderLevel" Type="Int16" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
