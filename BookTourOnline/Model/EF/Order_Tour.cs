namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Order_Tour
    {
        [Key]
        public int OrderID { get; set; }
        [Display(Name = "Ngày tạo")]
        public DateTime CreatedDate { get; set; }

        public int? Customer { get; set; }

        [StringLength(30)]
        [Display(Name = "Họ tên")]
        public string Name { get; set; }

        [StringLength(150)]
        [Display(Name = "Địa chỉ")]
        public string DiaChi { get; set; }

        [StringLength(30)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [StringLength(12)]
        [Display(Name = "Điện thoại")]
        public string DienThoai { get; set; }

        [Display(Name = "Trạng thái")]
        public bool? Status { get; set; }
    }
}
