<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumDetails.aspx.cs" Inherits="WebApplication3.AlbumDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Album Details</title>
</head>
<body>
    <h1>Album Details</h1>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    AlbumName:
                    <asp:Label ID="AlbumNameLabel" runat="server" Text='<%# Eval("AlbumName") %>' />
                    <br />
                    Artist:
                    <asp:Label ID="ArtistLabel" runat="server" Text='<%# Eval("Artist") %>' />
                    <br />
                    Genre:
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Rating:
                    <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl='<%# Eval("Image","~\\Img\\{0}") %>' Width="138px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Qty"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [AlbumName], [Artist], [Genre], [Price], [Rating], [Image] FROM [Album] WHERE ([AlbumID] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AlbumID" QueryStringField="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add To Cart</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Cart.aspx">View Cart</asp:LinkButton>
    </form>
</body>
</html>
