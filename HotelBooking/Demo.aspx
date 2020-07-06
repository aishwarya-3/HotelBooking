<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="HotelBooking.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Label"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4+</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>

        <div>
            <asp:DataList ID="DataList1" runat="server"></asp:DataList>
        </div>
</body>
</html>
<asp:sqldatasource runat="server"></asp:sqldatasource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
<asp:panel runat="server" ID="panel">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </asp:panel>
</form>
