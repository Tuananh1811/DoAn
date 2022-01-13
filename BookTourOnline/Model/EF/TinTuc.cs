namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TinTuc")]
    public partial class TinTuc
    {
        [Key]
        public int MaTinTuc { get; set; }

        [StringLength(200)]
        [Required]
        [Display(Name = "Tiêu đề")]
        public string TieuDe { get; set; }

        [StringLength(500)]
        [Required]
        [Display(Name = "Mô tả ngắn")]
        public string MoTaNgan { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        [Display(Name = "Mô tả chi tiết")]
        public string MoTaChiTiet { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? NgayTao { get; set; }

        [Display(Name = "Ngày cập nhật")]
        public DateTime? NgayCapNhat { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Tên đăng nhập")]
        public string TenDangNhap { get; set; }

        [StringLength(150)]
        [Required]
        [Display(Name = "Hình ảnh")]
        public string HinhAnhMinhHoa { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
