using GamingGearConnectionString;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamingGearStore.Models.BUS
{
    public class CartBUS
    {
        public static void Insert(string masp, string matk, string tensp, int soluong, int gia)
        {
            using (var db = new GamingGearConnectionStringDB())
            {
                var x = db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" + matk + "' AND MaSP = '" + masp + "'").ToList();
                if (x.Count() > 0)
                {
                    int sl = (int)x.ElementAt(0).SoLuong + soluong;
                    Update(masp, matk, tensp, sl, gia);
                }
                else
                {
                    GioHang gh = new GioHang()
                    {
                        MaSP = masp,
                        MaTaiKhoan = matk,
                        SoLuong = soluong,
                        Gia = gia,
                        TongTien = gia * soluong,
                        TenSP = tensp
                    };
                    db.Insert(gh);
                }
            }


        }
        public static void Update(string masp, string matk, string tensp, int soluong, int gia)
        {
            using (var db = new GamingGearConnectionStringDB())
            {
                GioHang gh = new GioHang()
                {
                    MaSP = masp,
                    MaTaiKhoan = matk,
                    SoLuong = soluong,
                    Gia = gia,
                    TongTien = gia * soluong,
                    TenSP = tensp
                };
                var up = db.Query<GioHang>("SELECT IDGH FROM GioHang WHERE MaTaiKhoan = '" + matk + "' AND MaSP = '" + masp + "'").FirstOrDefault();
                db.Update(gh, up.IDGH);
            }
        }
        public static bool Delete(string masp, string matk)
        {
            try
            {
                using (var db = new GamingGearConnectionStringDB())
                {

                    var de = db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" + matk + "' AND MaSP = '" + masp + "'").FirstOrDefault();
                    db.Delete(de);
                    return true;
                }
            }
            catch
            {

            }
            return false;
        }
        public static IEnumerable<GioHang> DanhSach(string matk)
        {
            using (var db = new GamingGearConnectionStringDB())
            {
                return db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" + matk + "'");
            }
        }
        public static int Total(string matk)
        {
            using (var db = new GamingGearConnectionStringDB())
            {
                if(db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" + matk + "'").Count()>0)
                {
                    return db.Query<int>("SELECT SUM(TongTien) FROM GioHang WHERE MaTaiKhoan = '" + matk + "'").FirstOrDefault();
                }
                else
                {
                    return 0;
                }
                
            }
        }
    }
}