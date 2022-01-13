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
  public  class PostDao
    {
        BookTourDbContext db = null;
        public PostDao()
        {
            db = new BookTourDbContext();
        }
        public IEnumerable<TinTuc> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<TinTuc> model = db.TinTucs;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.TieuDe.Contains(searchString));
            }
            return model.OrderBy(x => x.TieuDe).ToPagedList(page, pageSize);
        }
        public List<TinTuc> ListPostForHomePage(int count)
        {
            // return db.TinTucs.Select(x => x).OrderBy(x => x.NgayTao).Take(count).ToList();
            return db.TinTucs.Select(x => x).OrderBy(x => x.NgayTao).Take(count).ToList();
        }
        public TinTuc ViewDetail(long id)
        {
            return db.TinTucs.Find(id);
        }

    }
}
