using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class OrderConformation : System.Web.UI.Page
    {
        private List<ItemStatus> orderItems = new List<ItemStatus>();

        ServiceReference1.SupplierAWebServiceSoapClient sup1 = new ServiceReference1.SupplierAWebServiceSoapClient();

        ServiceReference2.SupplierBWebServiceSoapClient sup2 = new ServiceReference2.SupplierBWebServiceSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cart"] != null)
            {
                ShoppingCart cart = (ShoppingCart)Session["cart"];
                foreach(CartItem i in cart.Items)
                {
                    float price = 0;

                    ItemStatus I = new ItemStatus();

                    int pri1 = sup1.getPrice(i.AlbumID1, i.Quantity1);
                    int pri2 = sup2.getPrice(i.AlbumID1, i.Quantity1);

                    if((pri1<pri2)&&(pri2 != 0))
                    {
                        price = pri1;
                        I.Supplier1 = "A";
                    }
                    else
                    {
                        price = pri2;
                        I.Supplier1 = "A";
                    }
                    I.Albumid = i.AlbumID1;
                    I.Price = pri1;
                    I.Qty = i.Quantity1;
                    orderItems.Add(I);
                }
                GridView1.DataSource = orderItems;
                GridView1.DataBind();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Server.Transfer("~\\Home.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            String des1 = "";
            String des2 = "";


            }
    }
}