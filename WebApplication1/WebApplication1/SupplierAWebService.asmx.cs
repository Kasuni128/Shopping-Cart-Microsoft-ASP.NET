using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for SupplierAWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SupplierAWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public int getPrice(int Id , int qun)
        {
            DataSet1TableAdapters.AlbumPriceTableAdapter adp = new DataSet1TableAdapters.AlbumPriceTableAdapter();

            int avai_qty = (int)adp.getQuantity(Id);

            if(avai_qty >= qun)
            {
                int price =(int) adp.getPrice(Id);
                return price;
            }
            return 0;
        }

        [WebMethod]

        public void updateQuantity(int Id, int qun)
        {
            DataSet1TableAdapters.AlbumPriceTableAdapter adp = new DataSet1TableAdapters.AlbumPriceTableAdapter();

            int avai_qty = (int)adp.getQuantity(Id);
            int new_qty = avai_qty - qun;
            adp.UpdateQuantity(new_qty, Id);

        }

        [WebMethod]

        public void placeOder(int Id ,  int Quantity , String Customer , String Address)
        {
            DataSet1TableAdapters.OrderTableAdapter adp = new DataSet1TableAdapters.OrderTableAdapter();
            adp.Insert(Id, Quantity,DateTime.Now, Customer,  Address);
        }




    }
}
