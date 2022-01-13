using System;
using PagedList.Mvc;
using PagedList;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using Model.DAO;
namespace BookTourOnline.Areas.Admin.Controllers
{
    public class ImagesController : BaseController
    {
        private BookTourDbContext db = new BookTourDbContext();

        // GET: Admin/Images
        public ActionResult Index(string searchString, int page = 1, int pageSize = 8)
        {
            //var hinhAnhs = db.HinhAnhs.Include(h => h.TinTuc).Include(h => h.Tour);
            //  return View(hinhAnhs.ToList());

            var dao = new ImageDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }

        // GET: Admin/Images/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HinhAnh hinhAnh = db.HinhAnhs.Find(id);
            if (hinhAnh == null)
            {
                return HttpNotFound();
            }
            return View(hinhAnh);
        }

        // GET: Admin/Images/Create
        public ActionResult Create()
        {
           // ViewBag.MaTinTuc = new SelectList(db.TinTucs, "MaTinTuc", "TieuDe");
            ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour");
            return View();
        }

        // POST: Admin/Images/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaHinhAnh,TenHinhAnh,TieuDe,MaTour")] HinhAnh hinhAnh)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    hinhAnh.TenHinhAnh = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = System.IO.Path.Combine(Server.MapPath("~/wwwroot/images/" + FileName));
                        f.SaveAs(UploadPath);
                        hinhAnh.TenHinhAnh = FileName;
                    }
                    db.HinhAnhs.Add(hinhAnh);
                    db.SaveChanges();
                    

                }
                SetArlert("Thêm ảnh thành công", "success");
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                ViewBag.Error = "Lỗi nhập dữ liệu" + ex.Message;

                ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour", hinhAnh.MaTour);
                return View(hinhAnh);
            } 

        }

        // GET: Admin/Images/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HinhAnh hinhAnh = db.HinhAnhs.Find(id);
            if (hinhAnh == null)
            {
                return HttpNotFound();
            }

            ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour", hinhAnh.MaTour);
            return View(hinhAnh);
        }

        // POST: Admin/Images/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaHinhAnh,TenHinhAnh,TieuDe,MaTour,MaTinTuc")] HinhAnh hinhAnh)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    hinhAnh.TenHinhAnh = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = System.IO.Path.Combine(Server.MapPath("~/wwwroot/images/" + FileName));
                        f.SaveAs(UploadPath);
                        hinhAnh.TenHinhAnh = FileName;
                    }

                    db.Entry(hinhAnh).State = EntityState.Modified;
                    db.SaveChanges();
                }
                SetArlert("Cập nhật ảnh thành công", "success");
                return RedirectToAction("Index");
            }

            catch (Exception ex)
            {
                ViewBag.Error = "Lỗi nhập dữ liệu" + ex.Message;

                ViewBag.MaTour = new SelectList(db.Tours, "MaTour", "TenTour", hinhAnh.MaTour);
                return View(hinhAnh);
            }

        }

        // GET: Admin/Images/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HinhAnh hinhAnh = db.HinhAnhs.Find(id);
            if (hinhAnh == null)
            {
                return HttpNotFound();
            }
            return View(hinhAnh);
        }

        // POST: Admin/Images/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HinhAnh hinhAnh = db.HinhAnhs.Find(id);
            db.HinhAnhs.Remove(hinhAnh);
            db.SaveChanges();
            SetArlert("Xóa ảnh thành công", "success");
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
