using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.DAO;
using Model.EF;

namespace BookTourOnline.Areas.Admin.Controllers
{
    public class OrderTourController : Controller
    {
        private BookTourDbContext db = new BookTourDbContext();

        // GET: Admin/OrderTour
        public ActionResult Index(string searchString, int page = 1, int pageSize = 4)
        {
            //return View(db.Order_Tour.ToList());
            var dao = new OrderDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }

        // GET: Admin/OrderTour/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order_Tour order_Tour = db.Order_Tour.Find(id);
            if (order_Tour == null)
            {
                return HttpNotFound();
            }
            return View(order_Tour);
        }

        // GET: Admin/OrderTour/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/OrderTour/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OrderID,CreatedDate,Customer,Name,DiaChi,Email,DienThoai,Status")] Order_Tour order_Tour)
        {
            if (ModelState.IsValid)
            {
                db.Order_Tour.Add(order_Tour);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(order_Tour);
        }

        // GET: Admin/OrderTour/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order_Tour order_Tour = db.Order_Tour.Find(id);
            if (order_Tour == null)
            {
                return HttpNotFound();
            }
            return View(order_Tour);
        }

        // POST: Admin/OrderTour/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OrderID,CreatedDate,Customer,Name,DiaChi,Email,DienThoai,Status")] Order_Tour order_Tour)
        {
            if (ModelState.IsValid)
            {
                db.Entry(order_Tour).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(order_Tour);
        }

        // GET: Admin/OrderTour/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order_Tour order_Tour = db.Order_Tour.Find(id);
            if (order_Tour == null)
            {
                return HttpNotFound();
            }
            return View(order_Tour);
        }

        // POST: Admin/OrderTour/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Order_Tour order_Tour = db.Order_Tour.Find(id);
            db.Order_Tour.Remove(order_Tour);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
