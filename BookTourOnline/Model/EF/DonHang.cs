namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonHang")]
    public partial class DonHang
    {
        [Key]
        public int MaDonHang { get; set; }

        public DateTime? NgayKhoiHanh { get; set; }

        [StringLength(150)]
        public string ThoiLuong { get; set; }

        public int? SoLuong { get; set; }

        public int MaLoaiKhachHang { get; set; }

        [Required]
        [StringLength(100)]
        public string TenDangNhap { get; set; }

        public int MaLoaiVe { get; set; }

        public int MaTour { get; set; }

        public decimal? TongTien { get; set; }

        public int? SoNguoiLon { get; set; }

        public int? SoTreEm { get; set; }

        [StringLength(200)]
        public string DiaChi { get; set; }

        [StringLength(12)]
        public string SoDienThoai { get; set; }

        [StringLength(30)]
        public string Email { get; set; }

        public virtual LoaiKhachHang LoaiKhachHang { get; set; }

        public virtual LoaiVe LoaiVe { get; set; }

        public virtual Tour Tour { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
