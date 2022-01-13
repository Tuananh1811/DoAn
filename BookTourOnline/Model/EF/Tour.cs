namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Tour")]
    public partial class Tour
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tour()
        {
            DonHangs = new HashSet<DonHang>();
            HinhAnhs = new HashSet<HinhAnh>();
        }

        [Key]
        public int MaTour { get; set; }

        public int MaDM { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Tên tour")]
        public string TenTour { get; set; }

        [StringLength(100)]
        [Display(Name = "Địa điểm")]
        public string DiaDiem { get; set; }

        [StringLength(100)]
        [Display(Name = "Quy mô")]
        public string QuyMo { get; set; }

        [StringLength(100)]
        [Display(Name = "Thời gian")]
        public string ThoiGian { get; set; }

        [StringLength(100)]
        [Display(Name = "Phương tiện")]
        public string PhuongTien { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Khởi hành")]
        public string KhoiHanh { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Giới thiệu")]
        public string GioiThieu { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Lịch trình tour")]
        public string LichTrinhTour { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Tour bao gồm")]
        public string TourBaoGom { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Tên không bao gồm")]
        public string TourKhongBaoGom { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Điều khoản hủy tour")]
        public string DieuKhoanHuyTour { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? NgayTao { get; set; }

        [Display(Name = "Ngày cập nhật")]
        public DateTime? NgayCapNhat { get; set; }

        [Display(Name = "Giá tour")]
        public decimal? Gia { get; set; }

        [StringLength(150)]
        [Display(Name = "Hình ảnh")]
        public string HinhAnh { get; set; }

        public virtual DanhMuc DanhMuc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HinhAnh> HinhAnhs { get; set; }
    }
}
