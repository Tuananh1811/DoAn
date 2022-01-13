using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        // GET: Admin/ThongKe
        BookTourDbContext db = new BookTourDbContext();

        public ActionResult Index()
        {
            DateTime today = DateTime.Today;
            var tour = db.Tours.ToList();
            var feedback = db.Feedbacks.ToList();
            ViewBag.Count = tour.Count();
            ViewBag.feedback = feedback.Count();
            ViewBag.taikhoan = db.TaiKhoans.Where(x => x.Quyen == -1 && x.TrangThai==true).Count();
            ViewBag.tintuc = db.TinTucs.ToList().Count();
            List<Order_Tour> hoadon = db.Order_Tour.Where(x => x.CreatedDate.Month == today.Month).ToList();
            var dem = 0;
            decimal sumTotal = 0;
            //var model = from od in db.OrderDetails
            //            join o in db.Order_Tour on od.OrderID equals o.ID
            //            select new
            //            {
            //                Quantity = od.Quantity,
            //                Price = od.Price,
            //                CreateDate = o.CreatedDate,
            //                Status = o.Status
            //            };
            var model=db.OrderDetails.Where(x => x.CreateDate.Month == today.Month).ToList();
           // model
            foreach (var item in hoadon)
            {
                if (item.Status == true)
                {
                    dem++;
                }

            }
            foreach (var item in model)
            {
                if ( item.CreateDate.Month == today.Month)
                {
                    sumTotal += (item.Quantity * item.Price).GetValueOrDefault(0);
                }

            }
            decimal sumTotalYear = 0;
          var  modelY=db.OrderDetails.Where(x => x.CreateDate.Year == today.Year).ToList();
            foreach (var i in modelY)
            {
               if(i.CreateDate.Year==today.Year)
                    sumTotalYear += (i.Quantity * i.Price).GetValueOrDefault(0);
                
            }
            //  var sumToTal=
            ViewBag.listHoaDon = dem;
            ViewBag.Total = sumTotal.ToString("#,###");
            ViewBag.TotalYear = sumTotalYear.ToString("#,###");
            return View();

        }
        public ActionResult ShowAccount()
        {
            var model = db.TaiKhoans.Where(x => x.Quyen == -1 && x.TrangThai == true).ToList();
            return View(model);
        }
        public ActionResult ShowOrder()
        {
            DateTime today = DateTime.Today;
            //  var model2 = db.OrderDetails;
            var model2 = db.OrderDetails.Where(x=>x.CreateDate.Month==today.Month).ToList();
            return View(model2);
        }
        public ActionResult ShowOrderToTalYear()
        {
            DateTime today = DateTime.Today;
            //  var model2 = db.OrderDetails;
            decimal sumTotalYear = 0;
            var modelY = db.OrderDetails.Where(x => x.CreateDate.Year == today.Year).ToList();
            foreach (var i in modelY)
            {
                if (i.CreateDate.Year == today.Year)
                    sumTotalYear += (i.Quantity * i.Price).GetValueOrDefault(0);

            }
            //  var sumToTal=
           
            ViewBag.TotalYear = sumTotalYear.ToString("#,###");
            var model2 = db.OrderDetails.Where(x => x.CreateDate.Year == today.Year).ToList();
            return View(model2);
        }
        //public ActionResult CountTourByID()
        //{
        //    // var MaDM = db.DanhMucs.ToList();


        //    var count = 0;
        //    var danhmuc = db.DanhMucs.ToList();
        //    var model = from t in db.Tours
        //                join d in db.DanhMucs on t.MaDM equals d.MaDM
        //                select new
        //                {
        //                   MaDM=t.MaDM,
        //                   MaDMD=d.MaDM
        //                };
        //    model.Where(x=>x.MaDM==)
        //    foreach (var item in model)
        //    {
        //        if (item.MaDM==item.MaDMD) {
        //            count++;
        //        }
        //    }
        //    ViewBag.Count = count;
        //    return View();
        //}
    }
}
