using BookTourOnline.Common;
using BookTourOnline.Models;
using Model.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.Login(model.UserName, Encryptor.MD5Hash(model.Password));
                if (result == 1)
                {
                    var user = dao.GetByUserName(model.UserName);

                    var userSession = new UserLogin();
                    userSession.UserName = user.TenDangNhap;
                    userSession.PassWord = user.MatKhau;
                    //gán sesssion
                    Session.Add(CommonConstants.USER_SESSION, userSession);
                    //test
                    Session["TenTaiKhoan"] = user.TenDangNhap;
                    if (user.Quyen == 0)
                    {

                        Session["Quyen"] = "NhanVien";
                    }
                    if (user.Quyen == -1)
                    {
                        ViewBag.FailedMessage = "Thông tin đăng nhập không chính xác!";
                    }
                    if (user.Quyen == 1)
                    {
                        Session["Quyen"] = "Admin";
                    }
                    //kết thức test
                    return RedirectToAction("Index", "Home");
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Tài khoản không tồn tại");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản đang bị khóa");
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Mật khẩu không đúng");
                }
                else
                {
                    ModelState.AddModelError("", "Đăng nhập thất bại");
                }
            }
            return View("Index");
        }
    }
}