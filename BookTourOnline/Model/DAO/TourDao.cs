using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
using Model.ViewModel;
using PagedList;
using PagedList.Mvc;
namespace Model.DAO
{
  public  class TourDao
    {
        BookTourDbContext db = null;
        public TourDao()
        {
            db = new BookTourDbContext();
        }
        public IEnumerable<Tour> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Tour> model = db.Tours;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.TenTour.Contains(searchString) );
            }
            return model.OrderBy(x => x.MaDM).ToPagedList(page, pageSize);
        }
        public List<Tour> TakeCountTourHomePage(int count)
        {
            return db.Tours.Select(x => x).OrderBy(x => x.NgayTao).Take(count).ToList();
        }
        public List<Tour>ListByCategoryID(int id,ref int totalRecord, int page = 1, int pageSize = 2)
        {
            totalRecord = db.Tours.Where(x => x.MaDM == id).Count();
            var model= db.Tours.Where(x => x.MaDM == id).OrderBy(x=>x.NgayTao).Skip((page - 1) * pageSize).Take(pageSize).ToList();
            //return db.Tours.Where(x => x.MaDM == id).ToList();
            return model;
        }
      

        public Tour ViewDetail(long id)
        {
            return db.Tours.Find(id);
        }
        public List<Tour> ListRelatedTour(long Id)
        {
            var tour = db.Tours.Find(Id);
            return db.Tours.Where(x => x.MaTour != Id && x.MaDM == tour.MaDM).ToList();
        }
        public List<Tour> TourLatest(int count)
        {
            return db.Tours.Select(x => x).OrderByDescending(x => x.NgayTao).Take(count).ToList();
        }
        public List<string> ListName(string keyword)
        {
            return db.Tours.Where(x => x.TenTour.Contains(keyword)).Select(x => x.TenTour).ToList();
        }
        public List<TourViewModel> Search(string keyword, ref int totalRecord, int pageIndex = 1, int pageSize = 2)
        {
            totalRecord = db.Tours.Where(x => x.TenTour == keyword).Count();
            var model = (from a in db.Tours
                         join b in db.DanhMucs
                         on a.MaDM equals b.MaDM
                         where a.TenTour.Contains(keyword)
                         select new
                         {
                             CateMetaTitle = b.TenDM,
                             CateName = b.TenDM,
                            DiaDiem=a.DiaDiem,
                            ThoiGian=a.ThoiGian,
                             ID = a.MaTour,
                             Images = a.HinhAnh,
                             Name = a.TenTour,
                           
                             Price = a.Gia
                         }).AsEnumerable().Select(x => new TourViewModel()
                         {
                             CateMetaTitle = x.CateMetaTitle,
                             CateName = x.CateName,
                             DiaDiem=x.DiaDiem,
                             ThoiGian=x.ThoiGian,
                             ID = x.ID,
                             Images = x.Images,
                             Name = x.Name,
                           
                             Price = x.Price
                         });
            model.OrderByDescending(x => x.CreatedDate).Skip((pageIndex - 1) * pageSize).Take(pageSize);
            return model.ToList();
        }
    }
}