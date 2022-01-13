using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EF;

namespace BookTourOnline.Areas.Admin.Controllers
{
    public class ReceiptController : BaseController
    {
        private BookTourDbContext db = new BookTourDbContext();

        // GET: Admin/Receipt
        public ActionResult Index()
        {
            var donHangs = db.DonHangs.Include(d => d.LoaiKhachHang).Include(d => d.LoaiVe).Include(d => d.TaiKhoan).Include(d => d.Tour);
            return View(donHangs.ToList());
        }

        // GET: Admin/Receipt/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DonHang donHang = db.DonHangs.Find(id);
           
            if (donHang == null)
            {
                return HttpNotFound();
            }
            return View(donHang);
        }

        // GET: Admin/Receipt/Create
        public ActionResult Create()
        {
            ViewBag.MaLoaiKhachHang = new SelectList(db.LoaiKhachHangs, "MaLoaiKhachHang", "Ten");
            ViewBag.MaLoaiVe = new SelectList(db.LoaiVes, "MaLoaiVe", "MaLoaiVe");
            ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap");
            ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour");
            return View();
        }

        // POST: Admin/Receipt/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDonHang,NgayKhoiHanh,ThoiLuong,SoLuong,MaLoaiKhachHang,TenDangNhap,MaLoaiVe,MaTour")] DonHang donHang)
        {
            if (ModelState.IsValid)
            {
                db.DonHangs.Add(donHang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaLoaiKhachHang = new SelectList(db.LoaiKhachHangs, "MaLoaiKhachHang", "Ten", donHang.MaLoaiKhachHang);
            ViewBag.MaLoaiVe = new SelectList(db.LoaiVes, "MaLoaiVe", "MaLoaiVe", donHang.MaLoaiVe);
            ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap", donHang.TenDangNhap);
            ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour", donHang.MaTour);
            return View(donHang);
        }

        // GET: Admin/Receipt/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DonHang donHang = db.DonHangs.Find(id);
            if (donHang == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaLoaiKhachHang = new SelectList(db.LoaiKhachHangs, "MaLoaiKhachHang", "Ten", donHang.MaLoaiKhachHang);
            ViewBag.MaLoaiVe = new SelectList(db.LoaiVes, "MaLoaiVe", "MaLoaiVe", donHang.MaLoaiVe);
            ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap", donHang.TenDangNhap);
            ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour", donHang.MaTour);
            return View(donHang);
        }

        // POST: Admin/Receipt/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaDonHang,NgayKhoiHanh,ThoiLuong,SoLuong,MaLoaiKhachHang,TenDangNhap,MaLoaiVe,MaTour")] DonHang donHang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(donHang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaLoaiKhachHang = new SelectList(db.LoaiKhachHangs, "MaLoaiKhachHang", "Ten", donHang.MaLoaiKhachHang);
            ViewBag.MaLoaiVe = new SelectList(db.LoaiVes, "MaLoaiVe", "MaLoaiVe", donHang.MaLoaiVe);
            ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap", donHang.TenDangNhap);
            ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour", donHang.MaTour);
            return View(donHang);
        }

        // GET: Admin/Receipt/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DonHang donHang = db.DonHangs.Find(id);
            if (donHang == null)
            {
                return HttpNotFound();
            }
            return View(donHang);
        }

        // POST: Admin/Receipt/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DonHang donHang = db.DonHangs.Find(id);
            db.DonHangs.Remove(donHang);
            db.SaveChanges();
            SetArlert("Xóa đơn hàng thành công", "success");
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
