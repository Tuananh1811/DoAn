using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
  public  class ContactDao
    {
        BookTourDbContext db = null;
        public ContactDao()
        {
            db = new BookTourDbContext();
        }

        public LienHe GetActiveContact()
        {
            return db.LienHes.Single(x => x.Status == true);
        }

        public int InsertFeedBack(Feedback fb)
        {
            db.Feedbacks.Add(fb);
            db.SaveChanges();
            return fb.ID;
        }
    }
}
