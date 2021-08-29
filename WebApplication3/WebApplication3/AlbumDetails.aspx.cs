using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class AlbumDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if(Session["cart"] != null)
            {
                ShoppingCart cart = (ShoppingCart)Session["cart"];

                Label id = (Label)DataList1.Controls[0].FindControl("AlbumNameLabel");
                Label name = (Label)DataList1.Controls[0].FindControl("AlbumNameLabel");
                Label artist = (Label)DataList1.Controls[0].FindControl("ArtistLabel");
                Label genre = (Label)DataList1.Controls[0].FindControl("GenreLabel");
                Label price = (Label)DataList1.Controls[0].FindControl("PriceLabel");
                Label rating = (Label)DataList1.Controls[0].FindControl("RatingLabel");
                TextBox qun = (TextBox)DataList1.Controls[0].FindControl("TextBox1");
                Image img = (Image)DataList1.Controls[0].FindControl("Image1");

                cart.insertItem(int.Parse(id.Text),name.Text, int.Parse(qun.Text), float.Parse(price.Text),   img.ImageUrl);



            }
        }
    }
}