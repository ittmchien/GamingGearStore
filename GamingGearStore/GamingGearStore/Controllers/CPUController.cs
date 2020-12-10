using GamingGearStore.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GamingGearStore.Controllers
{
    public class CPUController : Controller
    {
        // GET: CPU
        public ActionResult Index(int page = 1, int pagesize = 6)
        {
            var db = GamingGearStoreBUS.CPU().ToPagedList(page, pagesize);
            return View(db);
        }

        // GET: CPU/Details/5
        public ActionResult Details(string id)
        {
            var db = GamingGearStoreBUS.ChiTiet(id);
            return View(db);
        }

        // GET: CPU/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CPU/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: CPU/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: CPU/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: CPU/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: CPU/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
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
