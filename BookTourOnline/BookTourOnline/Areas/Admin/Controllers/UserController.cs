using BookTourOnline.Common;
using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;
using PagedList;
using System.Data.Entity;
using System.Net;

namespace BookTourOnline.Areas.Admin.Controllers
{
    public class UserController : BaseController
    {
        BookTourDbContext db = new BookTourDbContext();
        // GET: Admin/User
        public ActionResult Index(string searchString, int page = 1, int pageSize = 5)
        {
            var dao = new UserDao();
            var model = dao.ListAllPaging(searchString,page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }
      
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(TaiKhoan taiKhoan)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    //var encrypt = Encryptor.MD5Hash(taiKhoan.MatKhau);
                    taiKhoan.MatKhau = Encryptor.MD5Hash(taiKhoan.MatKhau);
                    db.TaiKhoans.Add(taiKhoan);
                    db.SaveChanges();
                    SetArlert("Thêm user thành công", "success");
                    return RedirectToAction("Index", "User");
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Tạo mới tài khoản thất bại" + ex.Message;
                return View();
            }
            return View(taiKhoan);
        }
        [HttpGet]
        public ActionResult Edit(string tendangnhap)
        {
            //var user = new UserDao().ViewDetail(tendangnhap);

            //return View(user);
            var taiKhoan = db.TaiKhoans.FirstOrDefault(x => x.TenDangNhap == tendangnhap);
            var sessionUser = Session["USER_SESSION"] as UserLogin;
            ViewBag.userName = sessionUser.UserName;
            ViewBag.email = sessionUser.email;
            return View(taiKhoan);


        }
        [HttpPost]
        public ActionResult Edit(TaiKhoan taiKhoan)
        {
            var dao = new UserDao();
            if (ModelState.IsValid)
            {
                var encrypt = Encryptor.MD5Hash(taiKhoan.MatKhau);
                taiKhoan.MatKhau = encrypt;
                var result = dao.Update(taiKhoan);
                if (result)
                {
                    SetArlert("Cập nhật user thành công", "success");
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật không thành công");
                }
                //db.TaiKhoans.Add(taiKhoan);
                //db.SaveChanges();
                //return RedirectToAction("Index", "User");
            }

            return View("Index");

        }
        [HttpGet]
        public ActionResult Delete(string tenTk)
        {
            var user = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tenTk);
            var sessionUser = Session["USER_SESSION"] as UserLogin;
            ViewBag.userName = sessionUser.UserName;
            ViewBag.password = sessionUser.PassWord;
            return View(user);
        }
        [HttpPost]
        public ActionResult Delete(string tentk, string hoten)
        {
            var user = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tentk);
            try
            {
                db.TaiKhoans.Remove(user);
                db.SaveChanges();
                var sessionUser = Session["USER_SESSION"] as UserLogin;
                ViewBag.userName = sessionUser.UserName;
                ViewBag.password = sessionUser.PassWord;
                SetArlert("Xóa user thành công", "success");
                return RedirectToAction("Index", "User");
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Xóa thất bại" + ex.Message;
                return View(user);
            }

        }

        public ActionResult LogDown(string tenTk)
        {
            var user = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tenTk);
            try
            {
                user.TrangThai = false;
                db.SaveChanges();
                var sessionUser = Session["USER_SESSION"] as UserLogin;
                ViewBag.userName = sessionUser.UserName;
                ViewBag.password = sessionUser.PassWord;
                return RedirectToAction("Index", "User");
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Khóa tài khoản thất bại" + ex.Message;
                return View(user);
            }

        }
        public ActionResult LogOn(string tenTk)
        {
            var user = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tenTk);
            try
            {
                user.TrangThai = true;
                db.SaveChanges();
                var sessionUser = Session["USER_SESSION"] as UserLogin;
                ViewBag.userName = sessionUser.UserName;
                ViewBag.PassWord = sessionUser.PassWord;
                return RedirectToAction("Index", "User");
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Mở Khóa tài khoản thất bại" + ex.Message;
                return View(user);
            }

        }
        [HttpGet]
        public ActionResult EditPass(string tenTk)
        {
            var user = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tenTk);
            var sessionUser = Session["USER_SESSION"] as UserLogin;
            ViewBag.userName = sessionUser.UserName;
            ViewBag.password = sessionUser.PassWord;
            return View(user);
        }
        [HttpPost]
        public ActionResult EditPass(string tenTK, string Mat_Khau)
        {
            if (ModelState.IsValid)
            {
                var encrypt = Encryptor.MD5Hash(Mat_Khau);
                Mat_Khau = encrypt;
                var user = db.TaiKhoans.SingleOrDefault(x=>x.TenDangNhap==tenTK);
                user.MatKhau = Mat_Khau;
                db.SaveChanges();
                return RedirectToAction("Index", "User");
            }
            var sessionUser = Session["USER_SESSION"] as UserLogin;
            ViewBag.userName = sessionUser.UserName;
            ViewBag.password = sessionUser.PassWord;
            return View();
        }

    }
}