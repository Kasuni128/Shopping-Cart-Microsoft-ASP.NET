<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication3.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart </title>
</head>
<body>
    <h1>Shopping Cart</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="AlbumID1" HeaderText="Album ID" />
                    <asp:BoundField DataField="AlbumName1" HeaderText="Album Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:ImageField DataImageUrlField="Image1" HeaderText="Image">
                    </asp:ImageField>
                    <asp:BoundField DataField="SubTotal" HeaderText="Sub total" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/OrderConformation.aspx">Order</asp:LinkButton>
    </form>
</body>
</html>
