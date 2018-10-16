using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyWatchWatch.Models;
namespace MyWatchWatch.Models
{
    public class ItemGioHang
    {
        public Product product { set; get; }
        public ImgProduct ImgProduct { set; get; }
        public int ProductQtyUser { set; get; }
        public int ProductId { set; get; }
        public decimal ProductSold { get; set; }
        public List<ImgProduct> ImgPro { get; set; }
        public String ProductName { get; set; }
        public Decimal ThanhTien { get; set; }

        public ItemGioHang(int ProductId)
        {
            using (MyWatchWatchEntities db = new MyWatchWatchEntities())
            {
                Product pro = db.Products.Include("ImgProducts").Single(x => x.ProductId == ProductId);
                this.ProductId = ProductId;
                this.ProductQtyUser = 1;
                this.ProductName = pro.ProductName;
                this.ProductSold = pro.ProductSold.Value;
                this.ThanhTien = pro.ProductSold.Value * this.ProductQtyUser;
                this.ImgPro = pro.ImgProducts.ToList();

            }
        }
    }
}