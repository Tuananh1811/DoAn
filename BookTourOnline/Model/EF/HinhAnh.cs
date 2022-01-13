namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HinhAnh")]
    public partial class HinhAnh
    {
        [Key]
        public int MaHinhAnh { get; set; }

        [StringLength(150)]
        [Display(Name = "Tên ảnh")]
        public string TenHinhAnh { get; set; }

        [StringLength(100)]
        [Display(Name = "Tiêu đề")]
        public string TieuDe { get; set; }

        [Display(Name = "Mã tour")]
        public int MaTour { get; set; }

        public virtual Tour Tour { get; set; }
    }
}
