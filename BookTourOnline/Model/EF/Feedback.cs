namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Feedback")]
    public partial class Feedback
    {
        public int ID { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên khách hàng")]
        public string Name { get; set; }

        [StringLength(50)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [StringLength(12)]
        [Display(Name = "Điện thoại")]
        public string Phone { get; set; }

        [StringLength(150)]
        [Display(Name = "Địa chỉ")]
        public string Address { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung")]
        public string NoiDung { get; set; }

        [Display(Name = "Ngày phản hồi")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(100)]
        [Display(Name = "Địa điểm")]
        public string DiaDiem { get; set; }

        [Display(Name = "Trạng thái")]
        public bool Status { get; set; }
    }
}
