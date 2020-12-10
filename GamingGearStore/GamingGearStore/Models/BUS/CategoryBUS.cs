using GamingGearConnectionString;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamingGearStore.Models.BUS
{
    public class CategoryBUS
    {
        public static IEnumerable<LoaiSP> DanhSach()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<LoaiSP>("SELECT * FROM LoaiSP");
        }
        public static LoaiSP ChiTiet(string id)
        {
            var db = new GamingGearConnectionStringDB();
            return db.SingleOrDefault<LoaiSP>("SELECT * FROM LoaiSP WHERE MaLoaiSP = '" + id + "'");
        }
        public static void AddLoaiSP(LoaiSP loaisp)
        {
            var db = new GamingGearConnectionStringDB();
            db.Insert(loaisp);
        }

        public static void UpdateLoaiSP(string id, LoaiSP loaisp)
        {
            var db = new GamingGearConnectionStringDB();
            db.Update(loaisp, id);
        }
    }
}