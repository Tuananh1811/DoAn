using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookTourOnline.Models
{
    [Serializable] //tuần tự hóa
    public class CartItem
    {
        public Tour Tour { set; get; }
        public int SoLuong { get; set; }
        public int SoLuongNguoiLon { set; get; }
        public DateTime CreatedDate { get; set; }
        public int SoLuongTreEm { get; set; }

        public decimal? TongTien { get; set; }
        public DonHang donhang { get; set; }
    }
}