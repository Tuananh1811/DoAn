using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
namespace BookTourOnline.Controllers
{
    public class TourCategoryController : Controller
    {
        private BookTourDbContext db = new BookTourDbContext();
       
            public ActionResult Index(int id,string sortOrder, string searchString, string currentFilter, int? page)
            {
            //Các  biến  sắp  xếp
            var category = new CategoryDao().ViewDetail(id);
            ViewBag.DanhMuc = category;
            var img= from d in db.DanhMucs join t in db.Tours on d.MaDM equals t.MaDM
                          select new
                          {
                              hinhanh = t.HinhAnh

                          };
            ViewBag.Image = img.ToList();
            ViewBag.CurrentSort = sortOrder;//Biến  lấy  yêu  cầu  sắp  xếp  hiện  tại
            ViewBag.TenSortParm = String.IsNullOrEmpty(sortOrder) ? "ten_desc" : "";
           
            if (searchString != null)
            {
                page = 1; 
            }
            else
            {
                searchString = currentFilter;
            }
            ViewBag.CurrentFilter = searchString;
        
            var tours = db.Tours.Where(x=>x.MaDM==id);
         
            if (!String.IsNullOrEmpty(searchString))
            {
                tours = tours.Where(p => p.TenTour.Contains(searchString));
            }

            //Sắp  xếp
            switch (sortOrder)
            {
                case "ten_desc":
                    tours = tours.OrderByDescending(s => s.TenTour); break;
                 

                case "Gia":
                    tours = tours.OrderBy(s => s.Gia);
                    ViewBag.sortOrder = "Gia";
                  
                    break;

                case "gia_desc":
                    tours = tours.OrderByDescending(s => s.Gia);
                    ViewBag.sortOrder = "gia_desc";
                    
                    break;
                case "gia_1":
                    tours = tours.OrderByDescending(s => s.Gia).Where(s=>s.Gia<3000000 && s.Gia>=0);
                    
                    ViewBag.sortOrder = "gia_1";
                   
                    break;
                case "gia_2":
                    tours = tours.OrderByDescending(s => s.Gia).Where(s => s.Gia >= 3000000 && s.Gia < 10000000);

                    ViewBag.sortOrder = "gia_2";
                 
                    break;
                case "gia_3":
                    tours = tours.OrderByDescending(s => s.Gia).Where(s => s.Gia >= 10000000 && s.Gia < 25000000);

                    ViewBag.sortOrder = "gia_3";
                    
                    break;
                case "gia_4":
                    tours = tours.OrderByDescending(s => s.Gia).Where(s => s.Gia >=25000000);

                    ViewBag.sortOrder = "gia_4";
                    ViewBag.Class = "active";
                    break;
                case "delete":
                    tours = tours.OrderBy(s => s.TenTour);
                    ViewBag.sortOrder = "delete";
                    break;
                default:
                    tours = tours.OrderBy(s => s.TenTour); break;
            }

            int pageSize = 12;  //Kích  thước  trang 
            int pageNumber  =  (page  ??  1);

            return View(tours.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Category(int id, int page = 1, int pageSize = 12)
        {
            var category = new CategoryDao().ViewDetail(id);
            ViewBag.DanhMuc = category;
            //var model = new TourDao().ListByCategoryID(id);
            int totalRecord = 0;
            var model = new TourDao().ListByCategoryID(id, ref totalRecord, page, pageSize);

            ViewBag.Total = totalRecord;
            ViewBag.Page = page;

            int maxPage = 3;
            int totalPage = 0;

            totalPage = (int)Math.Ceiling(((Double)totalRecord / (Double)pageSize));
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxPage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;
            return View(model);
        }

        public ActionResult Detail(int id)
        {
            var tour = new TourDao().ViewDetail(id);
            ViewBag.Category = new CategoryDao().ViewDetail(tour.MaDM);
            ViewBag.RelatedTour = new TourDao().ListRelatedTour(id);
            ViewBag.ListImgRelatedTour = new ImageDao().ListImgRelatedTour(id);
           
            return View(tour);
        }
        public JsonResult ListName(string q)
        {
            var data = new TourDao().ListName(q);
            return Json(new
            {
                data = data,
                status = true
            }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Search(string keyword, int page = 1, int pageSize = 1)
        {
            int totalRecord = 0;
            var model = new TourDao().Search(keyword, ref totalRecord, page, pageSize);

            ViewBag.Total = totalRecord;
            ViewBag.Page = page;
            ViewBag.Keyword = keyword;
            int maxPage = 5;
            int totalPage = 0;

            totalPage = (int)Math.Ceiling(((Double)totalRecord / (Double)pageSize));
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxPage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;

            return View(model);
        }
    }
}