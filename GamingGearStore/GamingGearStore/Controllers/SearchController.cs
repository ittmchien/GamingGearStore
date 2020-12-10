using GamingGearStore.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GamingGearStore.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        public ActionResult Index(string search)
        {
            Session["Search"] = search;
            var db = GamingGearStoreBUS.Search(search);
            return View(db);

        }
    }
}