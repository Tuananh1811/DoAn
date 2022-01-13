using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
   public class OrderDao
    {
       BookTourDbContext db = null;
        public OrderDao()
        {
            db = new BookTourDbContext();
        }
        public int Insert(Order_Tour order)
        {
            db.Order_Tour.Add(order);
            db.SaveChanges();
            return order.OrderID;
        }
        public IEnumerable<Order_Tour> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Order_Tour> model = db.Order_Tour;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Name.Contains(searchString));
            }
            return model.OrderBy(x => x.CreatedDate).ToPagedList(page, pageSize);
        }
    }
}
