using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BookTourOnline.Models
{
    public class Register
    {
        [Key]
        [Display(Name = "Tên đăng nhập")]
        [Required(ErrorMessage = "Yêu cầu nhập tên đăng nhập")]
        public string TenDangNhap { get; set; }

        [Display(Name = "Mật khẩu")]
        [StringLength(20, MinimumLength = 6, ErrorMessage = "Độ dài mật khẩu ít nhất 6 ký tự.")]
        [Required(ErrorMessage = "Yêu cầu nhập mật khẩu")]
        public string MatKhau { get; set; }

        [Display(Name = "Họ tên")]
        [Required(ErrorMessage = "Yêu cầu nhập họ tên")]
        [StringLength(100)]
        public string HoTen { get; set; }

        [Required(ErrorMessage = "Yêu cầu nhập email")]
        [Display(Name = "Email")]
        [StringLength(100)]
        public string Email { get; set; }

        [Display(Name = "Điện thoại")]
        [StringLength(12,ErrorMessage = "Độ dài số điện thoại tối đa 12 ký tự")]
        public string SoDienThoai { get; set; }

        [Display(Name = "Địa chỉ")]
        [StringLength(100,ErrorMessage = "Độ dài địa chỉ nhiều nhất 100 ký tự.")]
        public string DiaChi { get; set; }

    }
}