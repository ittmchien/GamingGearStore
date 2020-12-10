using GamingGearConnectionString;
using GamingGearStore.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GamingGearStore.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class NSXController : Controller
    {
        // GET: Admin/NSX
        public ActionResult Index()
        {
            var db = BrandBUS.DanhSach();
            return View(db);
        }

        // GET: Admin/NSX/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/NSX/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NSX/Create
        [HttpPost]
        public ActionResult Create(NSX nsx)
        {
            try
            {
                // TODO: Add insert logic here
                BrandBUS.AddNSX(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NSX/Edit/5
        public ActionResult Edit(string id)
        {
            return View(BrandBUS.ChiTiet(id));
        }

        // POST: Admin/NSX/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, NSX nsx)
        {
            try
            {
                // TODO: Add update logic here
                BrandBUS.UpdateNSX(id, nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/NSX/Delete/5
        public ActionResult Delete(string id)
        {
            return View();
        }

        // POST: Admin/NSX/Delete/5
        [HttpPost]
        public ActionResult Delete(string id, NSX nsx)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
