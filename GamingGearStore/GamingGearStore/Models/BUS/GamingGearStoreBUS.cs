using GamingGearConnectionString;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamingGearStore.Models.BUS
{
    public class GamingGearStoreBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE TinhTrang = 0");
        }
        public static SanPham ChiTiet(string id)
        {
            var db = new GamingGearConnectionStringDB();
            return db.SingleOrDefault<SanPham>("SELECT * FROM SanPham WHERE MaSP = '" + id + "'");
        }
        public static IEnumerable<SanPham> CPU()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaLoaiSP = 'CPU' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> GPU()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaLoaiSP = 'GPU' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> RAM()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaLoaiSP = 'RAM' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> MAINBOARD()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaLoaiSP = 'MAINBOARD' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> AMD()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'AMD' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> ASROCK()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'ASROCK' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> ASUS()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'ASUS' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> CORSAIR()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'CORSAIR' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> GIGABYTE()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'GIGABYTE' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> GSKILL()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'GSKILL' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> INTEL()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'INTEL' AND TinhTrang = 0");
        }
        public static IEnumerable<SanPham> MSI()
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNSX = 'MSI' AND TinhTrang = 0");
        }
        public static SanPham LoadPicture(string masp)
        {
            var db = new GamingGearConnectionStringDB();
            return db.FirstOrDefault<SanPham>("SELECT Hinh1 FROM SanPham WHERE MaSP = '" + masp + "'");
        }
        public static IEnumerable<SanPham> Search(string search)
        {
            var db = new GamingGearConnectionStringDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE dbo.fuConvertToUnsign(TenSP) LIKE N'%' + dbo.fuConvertToUnsign(N'" + search + "') + '%' AND TinhTrang = 0");
        }
    }
}