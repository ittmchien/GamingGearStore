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
    public class LoaiSPController : Controller
    {
        // GET: Admin/LoaiSP
        public ActionResult Index()
        {
            var db = CategoryBUS.DanhSach();
            return View(db);
        }

        // GET: Admin/LoaiSP/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/LoaiSP/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/LoaiSP/Create
        [HttpPost]
        public ActionResult Create(LoaiSP loaisp)
        {
            try
            {
                // TODO: Add insert logic here
                CategoryBUS.AddLoaiSP(loaisp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/LoaiSP/Edit/5
        public ActionResult Edit(string id)
        {
            return View(CategoryBUS.ChiTiet(id));
        }

        // POST: Admin/LoaiSP/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, LoaiSP loaisp)
        {
            try
            {
                // TODO: Add update logic here
                CategoryBUS.UpdateLoaiSP(id, loaisp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/LoaiSP/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/LoaiSP/Delete/5
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
