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
    public class SanPhamController : Controller
    {
        // GET: Admin/SanPham
        public ActionResult Index()
        {
            return View(ProductBUS.DanhSachSP());
        }

        // GET: Admin/SanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/SanPham/Create
        public ActionResult Create()
        {
            ViewBag.MaLoaiSP = new SelectList(CategoryBUS.DanhSach(), "MaLoaiSP", "MaLoaiSP");
            ViewBag.MaNSX = new SelectList(BrandBUS.DanhSach(), "MaNSX", "MaNSX");
            return View();
        }

        // POST: Admin/SanPham/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(SanPham sp)
        {
            try
            {
                var hpf1 = HttpContext.Request.Files[0];
                if (hpf1.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "1.png";
                    hpf1.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh1 = sp.MaSP + "1.png";
                }
                var hpf2 = HttpContext.Request.Files[1];
                if (hpf2.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "2.png";
                    hpf2.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh2 = sp.MaSP + "2.png";
                }
                var hpf3 = HttpContext.Request.Files[2];
                if (hpf3.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "3.png";
                    hpf3.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh3 = sp.MaSP + "3.png";
                }
                var hpf4 = HttpContext.Request.Files[3];
                if (hpf4.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "4.png";
                    hpf4.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh4 = sp.MaSP + "4.png";
                }
                sp.TinhTrang = "0";
                // TODO: Add insert logic here
                ProductBUS.AddSP(sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Edit/5
        public ActionResult Edit(string id)
        {
            ViewBag.MaLoaiSP = new SelectList(CategoryBUS.DanhSach(), "MaLoaiSP", "MaLoaiSP", ProductBUS.ChiTietSP(id).MaLoaiSP);
            ViewBag.MaNSX = new SelectList(BrandBUS.DanhSach(), "MaNSX", "MaNSX", ProductBUS.ChiTietSP(id).MaNSX);
            return View(ProductBUS.ChiTietSP(id));
        }

        // POST: Admin/SanPham/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(string id, SanPham sp)
        {
            var data = ProductBUS.ChiTietSP(id);
            try
            {
                // TODO: Add update logic here
                var hpf1 = HttpContext.Request.Files[0];
                if (hpf1.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "1.png";
                    hpf1.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh1 = sp.MaSP + "1.png";
                }
                else
                {
                    sp.Hinh1 = data.Hinh1;
                }
                var hpf2 = HttpContext.Request.Files[1];
                if (hpf2.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "2.png";
                    hpf2.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh2 = sp.MaSP + "2.png";
                }
                else
                {
                    sp.Hinh2 = data.Hinh2;
                }
                var hpf3 = HttpContext.Request.Files[2];
                if (hpf3.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "3.png";
                    hpf3.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh3 = sp.MaSP + "3.png";
                }
                else
                {
                    sp.Hinh3 = data.Hinh3;
                }
                var hpf4 = HttpContext.Request.Files[3];
                if (hpf4.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Assets/img/" + fileName + "4.png";
                    hpf4.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh4 = sp.MaSP + "4.png";
                }
                else
                {
                    sp.Hinh4 = data.Hinh4;
                }
                if (sp.SoLuongDaBan > 1000)
                {
                    sp.SoLuongDaBan = 0;
                }
                else
                {
                    sp.SoLuongDaBan = data.SoLuongDaBan;
                }
                ProductBUS.UpdateSP(id, sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Delete/5
        public ActionResult Delete(string id)
        {
            return View(ProductBUS.ChiTietSP(id));
        }

        // POST: Admin/SanPham/Delete/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Delete(string id, SanPham sp)
        {
            var data = ProductBUS.ChiTietSP(id);
            try
            {
                // TODO: Add delete logic here

                if (data.SoLuongDaBan > 1000)
                {
                    data.SoLuongDaBan = 0;
                }
                else
                {
                    data.SoLuongDaBan = data.SoLuongDaBan;
                }
                if (data.TinhTrang == "0         ")
                {
                    data.TinhTrang = "1         ";
                }
                else
                {
                    data.TinhTrang = "0         ";

                }
                ProductBUS.UpdateSP(id, data);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
