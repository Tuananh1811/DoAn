using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Controllers
{
    public class OrderDetailController : Controller
    {
        // GET: OrderDetail
        BookTourDbContext db = new BookTourDbContext();
        public ActionResult Index(string tendangnhap)
        {
            var model = db.Order_Tour.Where(x => x.Email.Equals(tendangnhap)).ToList();
            var hoadon = db.OrderDetails;
            var trunggian = from o in model
                            join h in hoadon
            on o.OrderID equals h.OrderID
                            select h;

            return View(trunggian);
        }
    }
}