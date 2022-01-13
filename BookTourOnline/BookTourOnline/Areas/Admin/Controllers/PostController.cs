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
    public class PostController : BaseController
    {
        private BookTourDbContext db = new BookTourDbContext();

        // GET: Admin/Post
        public ActionResult Index(string searchString, int page = 1, int pageSize = 4)
        {
            //var tinTucs = db.TinTucs.Include(t => t.TaiKhoan);
            //return View(tinTucs.ToList());
            var dao = new PostDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }

        // GET: Admin/Post/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TinTuc tinTuc = db.TinTucs.Find(id);
            if (tinTuc == null)
            {
                return HttpNotFound();
            }
            return View(tinTuc);
        }

        // GET: Admin/Post/Create
        public ActionResult Create()
        {
            //  var sessionUser = Session["USER_SESSION"] as UserLogin;
            var userPost = db.TaiKhoans.Where(x => x.Quyen == 1 && x.TrangThai==true).ToList();
            ViewBag.TenDangNhap = new SelectList(userPost, "TenDangNhap", "TenDangNhap");
            //ViewBag.TenDangNhap = sessionUser.UserName;
            return View();
        }

        // POST: Admin/Post/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost, ValidateInput(false)]
        [ValidateAntiForgeryToken]
        
        public ActionResult Create([Bind(Include = "MaTinTuc,TieuDe,MoTaNgan,MoTaChiTiet,NgayTao,NgayCapNhat,TenDangNhap")] TinTuc tinTuc)
        {
            try
            {
                //if (ModelState.IsValid)
                //{
                //    db.TinTucs.Add(tinTuc);
                //    db.SaveChanges();

                //}
                if (ModelState.IsValid)
                {
                    tinTuc.HinhAnhMinhHoa = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = System.IO.Path.Combine(Server.MapPath("~/wwwroot/images/" + FileName));
                        f.SaveAs(UploadPath);
                        tinTuc.HinhAnhMinhHoa = FileName;
                    }
                    db.TinTucs.Add(tinTuc);
                    db.SaveChanges();
                }
                SetArlert("Thêm tin tức thành công", "success");
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message;
                ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap", tinTuc.TenDangNhap);

                return View(tinTuc);
            }
            
           
        }

        // GET: Admin/Post/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TinTuc tinTuc = db.TinTucs.Find(id);
            if (tinTuc == null)
            {
                return HttpNotFound();
            }
            ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap", tinTuc.TenDangNhap);
            return View(tinTuc);
        }

        // POST: Admin/Post/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost, ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaTinTuc,TieuDe,MoTaNgan,MoTaChiTiet,NgayTao,NgayCapNhat,TenDangNhap")] TinTuc tinTuc)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    tinTuc.HinhAnhMinhHoa = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = System.IO.Path.Combine(Server.MapPath("~/wwwroot/images/" + FileName));
                        f.SaveAs(UploadPath);
                        tinTuc.HinhAnhMinhHoa = FileName;
                    }

                    db.Entry(tinTuc).State = EntityState.Modified;
                    db.SaveChanges();
                }
                SetArlert("Cập nhật ảnh thành công", "success");
                return RedirectToAction("Index");
            }
           catch(Exception ex)
            {
                ViewBag.Error = ex.Message;
                ViewBag.TenDangNhap = new SelectList(db.TaiKhoans, "TenDangNhap", "TenDangNhap", tinTuc.TenDangNhap);
                return View(tinTuc);
            }
          
        }

        // GET: Admin/Post/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TinTuc tinTuc = db.TinTucs.Find(id);
            if (tinTuc == null)
            {
                return HttpNotFound();
            }
            return View(tinTuc);
        }

        // POST: Admin/Post/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TinTuc tinTuc = db.TinTucs.Find(id);
            db.TinTucs.Remove(tinTuc);
            db.SaveChanges();
            SetArlert("Xóa tin tức thành công", "success");
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
