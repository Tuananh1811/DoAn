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
    public class TourController : BaseController
    {
        private BookTourDbContext db = new BookTourDbContext();

        // GET: Admin/Tour
        public ActionResult Index(string searchString, int page = 1, int pageSize = 5)
        {
            //var tours = db.Tours.Include(t => t.DanhMuc);
            //return View(tours.ToList());
            var dao = new TourDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }

        // GET: Admin/Tour/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tour tour = db.Tours.Find(id);
            if (tour == null)
            {
                return HttpNotFound();
            }
            return View(tour);
        }

        // GET: Admin/Tour/Create
        public ActionResult Create()
        {
            ViewBag.MaDM = new SelectList(db.DanhMucs, "MaDM", "TenDM");
            return View();
        }

        // POST: Admin/Tour/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost, ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaTour,MaDM,TenTour,DiaDiem,QuyMo,ThoiGian,PhuongTien,KhoiHanh,GioiThieu,LichTrinhTour,TourBaoGom,TourKhongBaoGom,DieuKhoanHuyTour,NgayTao,NgayCapNhat,Gia")] Tour tour)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    tour.HinhAnh = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = System.IO.Path.Combine(Server.MapPath("~/wwwroot/images/" + FileName));
                        f.SaveAs(UploadPath);
                        tour.HinhAnh = FileName;
                    }
                    db.Tours.Add(tour);
                    db.SaveChanges();
                }
                SetArlert("Thêm Tour thành công", "success");
                return RedirectToAction("Index");
            }
           catch(Exception ex)
            {
                ViewBag.error = ex.Message;
                ViewBag.MaDM = new SelectList(db.DanhMucs, "MaDM", "TenDM", tour.MaDM);
                return View(tour);
            }
            

        }

        // GET: Admin/Tour/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tour tour = db.Tours.Find(id);
            if (tour == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDM = new SelectList(db.DanhMucs, "MaDM", "TenDM", tour.MaDM);
            return View(tour);
        }

        // POST: Admin/Tour/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost, ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaTour,MaDM,TenTour,DiaDiem,QuyMo,ThoiGian,PhuongTien,KhoiHanh,GioiThieu,LichTrinhTour,TourBaoGom,TourKhongBaoGom,DieuKhoanHuyTour,NgayTao,NgayCapNhat,Gia")] Tour tour)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    tour.HinhAnh = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = System.IO.Path.Combine(Server.MapPath("~/wwwroot/images/" + FileName));
                        f.SaveAs(UploadPath);
                        tour.HinhAnh = FileName;
                    }
                    db.Entry(tour).State = EntityState.Modified;
                    db.SaveChanges();
                }
                SetArlert("Cập nhật Tour thành công", "success");
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                ViewBag.error = ex.Message;
                ViewBag.MaDM = new SelectList(db.DanhMucs, "MaDM", "TenDM", tour.MaDM);
                return View(tour);
            }
        }

        // GET: Admin/Tour/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tour tour = db.Tours.Find(id);
            if (tour == null)
            {
                return HttpNotFound();
            }
            return View(tour);
        }

        // POST: Admin/Tour/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Tour tour = db.Tours.Find(id);
            db.Tours.Remove(tour);
            db.SaveChanges();
            SetArlert("Xóa Tour thành công", "success");
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
