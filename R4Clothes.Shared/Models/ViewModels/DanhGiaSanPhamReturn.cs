using System;
using System.Text;

namespace R4Clothes.Shared.Models.ViewModels
{
    public class DanhGiaSanPhamReturn
    {
        public int MaKhachHang { get; set; }
        public string Tenkhachhang { get; set; }
        public string Hinh { get; set; }
        public DateTime Thoigian { get; set; }
        public string NoiDung { get; set; }
    }
}