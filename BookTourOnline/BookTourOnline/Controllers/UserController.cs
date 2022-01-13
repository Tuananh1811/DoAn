using BookTourOnline.Common;
using BookTourOnline.Models;
using Model.DAO;
using Model.EF;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Controllers
{
    public class UserController : Controller
    {
        BookTourDbContext db = new BookTourDbContext();
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Register()
        {
           
            return View();
           
        }
        [HttpPost]
        // [CaptchaValidation("CaptchaCode", "registerCapcha", "Mã xác nhận không đúng!")]
        public ActionResult Register(Register model)
        {

            var response = Request["g-Recaptcha-Response"];
            string secretKey = "6Ld0K3cdAAAAAJR5S4kvT37NY6NE6cdnodUNXQCJ";
            var client = new WebClient();
            var resultcaptcha = client.DownloadString(string.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", secretKey, response));
            var obj = JObject.Parse(resultcaptcha);
            var status = (bool)obj.SelectToken("success");
            ViewBag.Message = status ? "Xác thực thành công" : "Xác thực thất bại";
            if (ModelState.IsValid)
            {
                    var dao = new UserDao();
                    if (dao.CheckUserName(model.TenDangNhap))
                    {
                        ModelState.AddModelError("", "Tên đăng nhập đã tồn tại");
                    }
                    else if (dao.CheckEmail(model.Email))
                    {
                        ModelState.AddModelError("", "Email đã tồn tại");
                    }
                    else if(status)
                    {
                        var user = new TaiKhoan();
                        user.TenDangNhap = model.TenDangNhap.Trim(' ');
                        user.MatKhau = Encryptor.MD5Hash(model.MatKhau);
                        user.SoDienThoai = model.SoDienThoai.Trim(' ');
                        user.Email = model.Email.Trim(' ');
                        user.DiaChi = model.DiaChi.Trim(' ');
                        user.HoTen = model.HoTen.Trim(' ');
                        user.NgayTao = DateTime.Now;
                        user.Quyen = -1;
                        user.TrangThai = true;
                       

                        var result = dao.Insert(user);

                        if (result.Contains("0") == false)
                        {
                           ViewBag.Success = "Đăng ký thành công";
                            
                            model = new Register();
                            return RedirectToAction("Login");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Đăng ký không thành công.");
                        }
                    }
                
              

            }
            return View(model);
        }
        [HttpGet]
        public ActionResult Login()
        {
          
            return View();
        }
        [HttpPost]
        public ActionResult Login(Login model)
        {
            //if (ModelState.IsValid)
            //{
            //    var dao = new UserDao();
            //    var result = dao.Login(model.UserName, Encryptor.MD5Hash(model.Password));
            //    if (result == 1)
            //    {
            //        var user = dao.GetByUserName(model.UserName);
            //        var userSession = new UserLogin();
            //        userSession.UserName = user.TenDangNhap;
            //        userSession.PassWord = user.MatKhau;
            //        userSession.FullName = user.HoTen;
            //        Session.Add(CommonConstants.USER_SESSION, userSession);
            //        return Redirect("/");
            //    }
            //    else if (result == 0)
            //    {
            //        ModelState.AddModelError("", "Tài khoản không tồn tại.");
            //    }
            //    else if (result == -1)
            //    {
            //        ModelState.AddModelError("", "Tài khoản đang bị khoá.");
            //    }
            //    else if (result == -2)
            //    {
            //        ModelState.AddModelError("", "Mật khẩu không đúng.");
            //    }
            //    else
            //    {
            //        ModelState.AddModelError("", "đăng nhập không đúng.");
            //    }
            //}
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
                    userSession.FullName = user.HoTen;
                    userSession.email = user.Email;
                    userSession.adress = user.DiaChi;
                    userSession.phoneNumbers = user.SoDienThoai;
                    Session.Add(CommonConstants.USERCLIENT_SESSION, userSession);
                    return Redirect("/");
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Tài khoản không tồn tại.");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản đang bị khoá.");
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Mật khẩu không đúng.");
                }
                else
                {
                    ModelState.AddModelError("", "đăng nhập không đúng.");
                }
            }
            return View(model);

           
        }
        [HttpGet]
        public ActionResult EditAcc(string tendangnhap)
        {
            var taikhoan = db.TaiKhoans.FirstOrDefault(x => x.TenDangNhap == tendangnhap);
            try
            {
                var sessionUser = Session["USERCLIENT_SESSION"] as UserLogin;
               
                ViewBag.userName = sessionUser.UserName;
                var ss = ViewBag.userName;
                if (ViewBag.userName != null)
                {
                    ViewBag.userName = sessionUser.UserName;
                }
                else
                {
                    ViewBag.userName = null;
                }
            }
            catch
            {
                ViewBag.userName = null;
                return RedirectToAction("Index", "User");
            }
            return View(taikhoan);
        }
        [HttpPost]
        public ActionResult EditAcc(TaiKhoan taikhoan)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.UpdateClient(taikhoan);
                if (result)
                { 
                      //  Session.Remove(CommonConstants.USERCLIENT_SESSION);
                        return RedirectToAction("Success", "User");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật user không thành công");
                }
            }
           
            return View();
        }
        [HttpGet]
        public ActionResult EditPassAcc(string tendangnhap)
        {
            var user = db.TaiKhoans.FirstOrDefault(x => x.TenDangNhap == tendangnhap);
            try
            {
                var sessionUser = Session["USERCLIENT_SESSION"] as UserLogin;
                ViewBag.name = sessionUser.UserName;
                var ss = ViewBag.name;
                if (ViewBag.name != null)
                {
                    ViewBag.name = sessionUser.UserName;
                }
                else
                {
                    ViewBag.name = null;
                }
            }
            catch
            {
                ViewBag.name = null;
                return RedirectToAction("Index", "User");
            }
            return View(user);
        }
        [HttpPost]
        public ActionResult EditPassAcc(string mkcu, TaiKhoan user)
        {
            var taikhoan = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == user.TenDangNhap);
            if (!string.IsNullOrEmpty(mkcu))
            {
                var encrypt = Encryptor.MD5Hash(mkcu);
                mkcu = encrypt;
            }
            if (taikhoan.MatKhau == mkcu)
            {
                if (ModelState.IsValid)
                {
                    if (!string.IsNullOrEmpty(user.MatKhau))
                    {
                        var encryp = Encryptor.MD5Hash(user.MatKhau);
                        user.MatKhau = encryp;
                    }
                    taikhoan.MatKhau = user.MatKhau;
                    db.SaveChanges();
                    return RedirectToAction("Index", "Home");
                }
            }
            else
            {
                ModelState.AddModelError("", "Mật khẩu cũ không đúng");
            }
            var sessionUser = Session["USERCLIENT_SESSION"] as UserLogin;
            ViewBag.name = sessionUser.UserName;
           // ViewBag.userName = sessionUser.UserName;
            return View();
        }
        public ActionResult Logout()
        {
            Session[CommonConstants.USERCLIENT_SESSION] = null;
            return Redirect("/");
            //Session.Remove(CommonConstants.USERCLIENT_SESSION);
            //return RedirectToAction("Index", "Home");
        }
        public ActionResult Success()
        {
           
            return View();
        }
    }
}