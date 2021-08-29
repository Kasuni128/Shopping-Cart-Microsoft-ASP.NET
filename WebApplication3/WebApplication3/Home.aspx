<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Home</h1>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="AlbumID" DataSourceID="SqlDataSource1" HorizontalAlign="Justify" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                AlbumID:
                <asp:Label ID="AlbumIDLabel" runat="server" Text='<%# Eval("AlbumID") %>' />
                <br />
                AlbumName:
                <asp:Label ID="AlbumNameLabel" runat="server" Text='<%# Eval("AlbumName") %>' />
                <br />
                Genre:
                <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="77px" ImageUrl='<%# Eval("Image","~\\Img\\thumb_{0}") %>' PostBackUrl='<%# Eval("AlbumID","~\\AlbumDetails.aspx?id={0}") %>' Width="98px" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [AlbumID], [AlbumName], [Genre], [Image] FROM [Album]"></asp:SqlDataSource>
    </form>
</body>
</html>
