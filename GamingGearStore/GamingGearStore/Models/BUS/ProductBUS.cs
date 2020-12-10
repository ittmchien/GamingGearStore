using GamingGearConnectionString;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamingGearStore.Models.BUS
{
    public class ProductBUS
    {
        public static IEnumerable<SanPham> DanhSachSP()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham");
        }
        public static SanPham ChiTietSP(string id)
        {
            var db = new GamingGearConnectionStringDB();
            return db.SingleOrDefault<SanPham>("SELECT * FROM SanPham WHERE MaSP = '" + id + "'");
        }
        public static void AddSP(SanPham sp)
        {
            var db = new GamingGearConnectionStringDB();
            db.Insert(sp);
        }
        public static void UpdateSP(string id, SanPham sp)
        {
            var db = new GamingGearConnectionStringDB();
            db.Update(sp, id);
        }
    }
}