using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
using PagedList;
using PagedList.Mvc;
namespace Model.DAO
{
    public class ImageDao
    {
        BookTourDbContext db = null;
        public ImageDao()
        {
            db = new BookTourDbContext();
        }
        public IEnumerable<HinhAnh> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<HinhAnh> model = db.HinhAnhs;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.TieuDe.Contains(searchString) || x.Tour.TenTour.Contains(searchString));
            }
            return model.OrderBy(x => x.TenHinhAnh).ToPagedList(page, pageSize);
        }
        //public List<HinhAnh> TakeImgTourHomePage(int tourID,int count)
        //{
        //    return db.HinhAnhs.Where(x => x.MaTour == tourID).OrderBy(x => x.MaTour).Take(count).ToList();
        //}
        public List<HinhAnh> ListImgRelatedTour(int Id)
        {
            var hinhanh = db.HinhAnhs.Find(Id);
            return db.HinhAnhs.Where(x => x.MaTour == Id ).ToList();
        }
    }
}
