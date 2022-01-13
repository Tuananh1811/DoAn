using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
   public class CategoryDao
    {
        BookTourDbContext db = null;
        public CategoryDao()
        {
            db = new BookTourDbContext();
        }
        //public List<DanhMuc> ListAll()
        //{
        //    return db.DanhMucs.Where(x => x.TrangThai == true).OrderBy(x=>x.TenDM).ToList();
        //}
          public DanhMuc ViewDetail(int id)
        {
            return db.DanhMucs.Find(id);
        }
        

    }
}
