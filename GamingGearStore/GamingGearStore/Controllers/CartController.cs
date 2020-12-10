using GamingGearStore.Models.BUS;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GamingGearStore.Controllers
{
    [Authorize]
    public class CartController : Controller
    {
        // GET: Cart
        public ActionResult Index()
        {
            ViewBag.TongTien = CartBUS.Total(User.Identity.GetUserId());
            return View(CartBUS.DanhSach(User.Identity.GetUserId()));
        }
        [HttpPost]
        public ActionResult Insert(string masp, string tensp, int soluong, int gia)
        {
            try
            {
                CartBUS.Insert(masp, User.Identity.GetUserId(), tensp, soluong, gia);
                return RedirectToAction("Index");
            }
            catch
            {
                
                return RedirectToAction("Index");
            }
        }
        [HttpPost]
        public ActionResult Update(string masp, string tensp, int soluong, int gia)
        {
            try
            {
                CartBUS.Update(masp, User.Identity.GetUserId(), tensp, soluong, gia);
                return RedirectToAction("Index");
            }
            catch
            {

                return RedirectToAction("Index");
            }/*../ Store /*/
        }
        [HttpGet]
        public ActionResult Delete(string masp)
        {
            try
            {
                if(CartBUS.Delete(masp, User.Identity.GetUserId()))
                {
                    
                }
                return RedirectToAction("Index");
            }
            catch
            {

                return RedirectToAction("Index");
            }
        }
    }
}