using MyWatchWatch.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyWatchWatch.Areas.Management.Controllers
{
    public class PageController : BaseController
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
        public ActionResult _CountNews()
        {
            var countNews = db.News.Count();
            ViewBag.countNews = countNews;
            return PartialView();
        }
        public ActionResult _countCart()
        {
            var countCarts = (from p in db.Orders select p).Count();

            ViewBag.countCarts = countCarts;
            return PartialView();
        }
        public ActionResult _countContacts()
        {
            var statusContacts = (from p in db.Contacts where p.Status == false select p).Count();

            ViewBag.statusContacts = statusContacts;
            return PartialView();
        }
    }
}