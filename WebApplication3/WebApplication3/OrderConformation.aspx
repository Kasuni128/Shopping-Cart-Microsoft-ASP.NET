<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConformation.aspx.cs" Inherits="WebApplication3.OrderConformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Conformation</title>
</head>
<body>
    <h1>Order Conformation</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Albumid" HeaderText="Album ID" />
                    <asp:BoundField DataField="Name" HeaderText="Album name" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Place Order</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">New Order</asp:LinkButton>
    </form>
</body>
</html>
