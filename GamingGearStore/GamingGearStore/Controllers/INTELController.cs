using GamingGearStore.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GamingGearStore.Controllers
{
    public class INTELController : Controller
    {
        // GET: INTEL
        public ActionResult Index(int page = 1, int pagesize = 6)
        {
            var db = GamingGearStoreBUS.INTEL().ToPagedList(page, pagesize);
            return View(db);
        }
    }
}