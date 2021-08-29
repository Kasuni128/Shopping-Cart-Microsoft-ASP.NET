using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class ShoppingCart
    {
        private List<CartItem> items;

        public List<CartItem> Items { get => items; set => items = value; }

        public ShoppingCart()
        {
            items = new List<CartItem>();
        }

        public void insertItem(int id, String AlbumName , int qun , float pri , String img)
        {
            var item = (from i in items
                        where i.AlbumID1 == id
                        select i).SingleOrDefault();

            if(item == null)
            {
                items.Add(new CartItem()
                {
                    AlbumID1 = id,
                    AlbumName1 = AlbumName,
                    Quantity1 = qun,
                    Price = pri,
                    Image1=img


                }) ;
                 

            }
            else
            {
                item.Quantity1 += qun;
            }

           
        }
        public void delete(int index)
        {
            items.RemoveAt(index);
        }

        public float Tota
        {
            get
            {
                var tot = (from i in items
                           select i.SubTotal).Sum();
                return tot;
            }
        }
    }
}