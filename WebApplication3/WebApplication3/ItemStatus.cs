using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class ItemStatus
    {
        private int albumid;
        private String name;
        private int qty;
        private float price;

        private String Supplier;

        public int Albumid { get => albumid; set => albumid = value; }
        public string Name { get => name; set => name = value; }
        public int Qty { get => qty; set => qty = value; }
        public float Price { get => price; set => price = value; }
        public string Supplier1 { get => Supplier; set => Supplier = value; }
    }
}