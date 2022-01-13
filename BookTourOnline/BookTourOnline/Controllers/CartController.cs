using BookTourOnline.Common;
using BookTourOnline.Models;
using Common;
using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace BookTourOnline.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        private const string CartSession = "CartSession";
        private BookTourDbContext db = new BookTourDbContext();
        public ActionResult Index()
        {
            var cart = Session[CartSession];

            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            try
            {
                var sessionUser = Session["USERCLIENT_SESSION"] as UserLogin;
                if (sessionUser != null)
                {
                    ViewBag.name = sessionUser.FullName;
                    ViewBag.userName = sessionUser.UserName;
                    var ss = ViewBag.name;
                    if (ViewBag.name != null)
                    {
                        ViewBag.name = sessionUser.FullName;
                    }
                    else
                    {
                        ViewBag.name = null;
                    }
                }
                
               
            }
            catch
            {
                ViewBag.name = null;
            }
            return View(list);
        }
        public ActionResult AddItem(int tourId, int soLuong)
        {

            var tour = new TourDao().ViewDetail(tourId);

            var cart = Session[CartSession];

            if (cart == null)
            {
                var item = new CartItem();
                item.Tour = tour;
                item.SoLuong = soLuong;
             //   item.CreatedDate = khoihanh;
                var list = new List<CartItem>();
                list.Add(item);
                //Gán vào session
                Session[CartSession] = list;
            }
            else
            {
                Session.Clear();
                var item = new CartItem();
                item.Tour = tour;
                item.SoLuong = soLuong;
                var list = new List<CartItem>();
                list.Add(item);
                //Gán vào session
                Session[CartSession] = list;
            }
            return RedirectToAction("Index");
        }
        public JsonResult Update(string cartModel)
        {
            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(cartModel);
            var sessionCart = (List<CartItem>)Session[CartSession];

            foreach (var item in sessionCart)
            {
                var jsonItem = jsonCart.FirstOrDefault(x => x.Tour.MaTour == item.Tour.MaTour);
                if (jsonItem != null)
                {
                    item.SoLuong = 1;
                    item.SoLuongNguoiLon = jsonItem.SoLuongNguoiLon;
                    //nghihcj
                    item.SoLuongTreEm = jsonItem.SoLuongTreEm;
                    item.CreatedDate = jsonItem.CreatedDate ;
                }
            }
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        public JsonResult Delete(long id)
        {
            var sessionCart = (List<CartItem>)Session[CartSession];
            sessionCart.RemoveAll(x => x.Tour.MaTour == id);
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        [HttpGet]
        public ActionResult Payment()
        {
            var cart = Session[CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            try
            {
                var sessionUser = Session["USERCLIENT_SESSION"] as UserLogin;
                ViewBag.name = sessionUser.FullName;
                ViewBag.email = sessionUser.email;
                ViewBag.userName = sessionUser.UserName;
                ViewBag.adress = sessionUser.adress;
                ViewBag.phoneNumbers = sessionUser.phoneNumbers;
                var ss = ViewBag.name;
                if (ViewBag.name != null)
                {
                    ViewBag.name = sessionUser.FullName;
                }
                else
                {
                    ViewBag.name = null;
                }
            }
            catch
            {
                ViewBag.name = null;
            }
            return View(list);
        }
        [HttpPost]
        public ActionResult Payment(string TenDangNhap, string Email, string SoDienThoai, string DiaChi)
        {
            var orderw = new Order_Tour();
            orderw.CreatedDate = DateTime.Now;
           // orderw.Customer = SoLuong;
            orderw.Name = TenDangNhap;
            orderw.Email = Email;
            orderw.DienThoai = SoDienThoai;
            orderw.DiaChi = DiaChi;
            orderw.Status = true;
           
            var id = new OrderDao().Insert(orderw);
            var sessionCart = (List<CartItem>)Session[CartSession];
            var detailDao = new Model.DAO.OrderDetailDao();
            decimal total = 0;
            // int soluong=0;
            string content = System.IO.File.ReadAllText(Server.MapPath("~/Assets/Client/template/neworder.html"));
            foreach (var item in sessionCart)
            {
                var orderDetail = new OrderDetail();
                orderDetail.TourID = item.Tour.MaTour;
                orderDetail.TenTour = item.Tour.TenTour;
                orderDetail.CreateDate = DateTime.Now;
                orderDetail.OrderID = id;
                
                orderDetail.Price = item.Tour.Gia;
                orderDetail.Quantity = item.SoLuongNguoiLon;
                // orderDetail.Quantity = item.Quantity;
                detailDao.Insert(orderDetail);
                total += (item.Tour.Gia.GetValueOrDefault(0) * item.SoLuongNguoiLon);
                content = content.Replace("{{TenTour}}", item.Tour.TenTour);
                content = content.Replace("{{SoLuong}}", item.SoLuongNguoiLon.ToString());
                content = content.Replace("{{Gia}}", item.Tour.Gia.GetValueOrDefault(0).ToString("N0"));

            }
            content = content.Replace("{{NgayDat}}", DateTime.Now.ToString());
            content = content.Replace("{{TenDangNhap}}", TenDangNhap);
            content = content.Replace("{{Email}}", Email);
            content = content.Replace("{{SoDienThoai}}", SoDienThoai);
            content = content.Replace("{{DiaChi}}", DiaChi);
            content = content.Replace("{{Total}}", total.ToString("N0"));
          
            var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

            new MailHelper().SendMail(Email, " Cảm ơn quý khách đã đặt tour từ VietnamTravel", content);
           // new MailHelper().SendMail(toEmail, "Đơn tour mới từ VietNamTravel", content);
            // }
            //catch (Exception ex)

            //ghi log
            //   return Redirect("/loi-thanh-toan");
            // }
            return Redirect("/hoan-thanh");
        }
        public ActionResult Success()
        {
            return View();
        }


    }
}