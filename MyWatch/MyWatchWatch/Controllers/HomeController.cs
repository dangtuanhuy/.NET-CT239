using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyWatchWatch.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _slider()
        {
            return PartialView();
        }
        public ActionResult _partiview1()
        {
            return PartialView();
        }
        public ActionResult _product1()
        {
            return PartialView();
        }
        public ActionResult _product2()
        {
            return PartialView();
        }
    }
}