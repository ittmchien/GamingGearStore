using GamingGearStore.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GamingGearStore.Controllers
{
    public class GPUController : Controller
    {
        // GET: GPU
        public ActionResult Index(int page = 1, int pagesize = 6)
        {
            var db = GamingGearStoreBUS.GPU().ToPagedList(page, pagesize);
            return View(db);
        }

        // GET: GPU/Details/5
        public ActionResult Details(string id)
        {
            var db = GamingGearStoreBUS.ChiTiet(id);
            return View(db);
        }

        // GET: GPU/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GPU/Create
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

        // GET: GPU/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: GPU/Edit/5
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

        // GET: GPU/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: GPU/Delete/5
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
