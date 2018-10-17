using MyWatchWatch.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyWatchWatch.Areas.Management.Controllers
{
    public class PageController : Controller
    {
        private MyWatchWatchEntities db = new MyWatchWatchEntities();
        // GET: Management/Page
        public ActionResult Page()
        {
            return View();
        }
        public ActionResult _countProducts()
        {
            var countProducts = db.Products.Count();
            ViewBag.countProducts = countProducts;
            return PartialView();
        }
        public ActionResult _statusPromotin()
        {
            var statusPromotin = (from d in db.Promotions where d.PromotionStatus == true select d).Count();
            ViewBag.statusPromotin = statusPromotin;
            return PartialView();
        }
        public ActionResult _countCustomer()
        {
            var countCus = db.Customers.Count();
            ViewBag.countCus = countCus;
            return PartialView();
        }
    }
}