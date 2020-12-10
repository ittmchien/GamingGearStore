using GamingGearConnectionString;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamingGearStore.Models.BUS
{
    public class BrandBUS
    {
        public static IEnumerable<NSX> DanhSach()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<NSX>("SELECT * FROM NSX");
        }
        public static NSX ChiTiet(string id)
        {
            var db = new GamingGearConnectionStringDB();
            return db.SingleOrDefault<NSX>("SELECT * FROM NSX WHERE MaNSX = '" + id + "'");
        }
        public static void AddNSX(NSX nsx)
        {
            var db = new GamingGearConnectionStringDB();
            db.Insert(nsx);
        }

        public static void UpdateNSX(string id, NSX nsx)
        {
            var db = new GamingGearConnectionStringDB();
            db.Update(nsx, id);
        }
    }
}