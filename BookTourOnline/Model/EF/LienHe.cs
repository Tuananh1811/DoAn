namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LienHe")]
    public partial class LienHe
    {
        public int ID { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        [Display(Name = "Nội dung")]
        public string NoiDung { get; set; }

        public bool Status { get; set; }
    }
}
