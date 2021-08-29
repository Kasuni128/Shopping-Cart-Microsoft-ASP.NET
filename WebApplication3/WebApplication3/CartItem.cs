using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class CartItem
    {
        private int AlbumID;
        private String AlbumName;
        private float price;
        private int Quantity;
        private String Image;

        public int AlbumID1 { get => AlbumID; set => AlbumID = value; }
        public string AlbumName1 { get => AlbumName; set => AlbumName = value; }
        public float Price { get => price; set => price = value; }
        public int Quantity1 { get => Quantity; set => Quantity = value; }
        public string Image1 { get => Image; set => Image = value; }

        public float SubTotal
        {
            get { return price * Quantity; }
        }
    }

    
}