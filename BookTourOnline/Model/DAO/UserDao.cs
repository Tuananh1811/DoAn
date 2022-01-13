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
    public class UserDao
    {
        BookTourDbContext db = null;
        public UserDao()
        {
            db = new BookTourDbContext();
        }
        //public string Insert(TaiKhoan entity)
        //{
        //    db.TaiKhoans.Add(entity);
        //    db.SaveChanges();
        //    return entity.TenDangNhap;
        //}
        //public int Insert(TaiKhoan entity)
        //{
        //    db.TaiKhoans.Add(entity);
        //    db.SaveChanges();
        //    return entity.Id;
        //}
        public string Insert(TaiKhoan taikhoan)
        {
            db.TaiKhoans.Add(taikhoan);
            db.SaveChanges();
            return taikhoan.TenDangNhap;
        }
        public bool Update(TaiKhoan taiKhoan)
        {
           
                var user = db.TaiKhoans.Find(taiKhoan.TenDangNhap);
            
                user.Email = taiKhoan.Email;
                user.SoDienThoai = taiKhoan.SoDienThoai;
                user.DiaChi = taiKhoan.DiaChi;
                user.HoTen = taiKhoan.HoTen;
                user.Quyen = taiKhoan.Quyen;
                user.TrangThai = taiKhoan.TrangThai;
                db.SaveChanges();
                return true;
        }
        public bool UpdateClient(TaiKhoan taiKhoan)
        {

            var user = db.TaiKhoans.Find(taiKhoan.TenDangNhap);
            user.Email = taiKhoan.Email;
            user.SoDienThoai = taiKhoan.SoDienThoai;
            user.DiaChi = taiKhoan.DiaChi;
            user.HoTen = taiKhoan.HoTen;
            user.TrangThai = true;
            user.Quyen = -1;
          
            db.SaveChanges();
            return true;
        }
        public int Login( string tenDangNhap, string matKhau)
        {
            var result = db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tenDangNhap );
            if (result==null)
            {
                return 0; //khong ton tai
            }
            else
            {
                if (result.TrangThai == false)
                {
                    return -1; //bi khoa
                }
                else
                {
                    if (result.MatKhau == matKhau)
                    {
                        return 1; //thoa man
                    }
                    else
                    {
                        return -2; //khong thoa man
                    }
                }
            }
            
        }
        public TaiKhoan GetByUserName(string tenTK)
        {
            return db.TaiKhoans.SingleOrDefault(x => x.TenDangNhap == tenTK); //lay bang ghi don
        }
        public TaiKhoan ViewDetail(string tenTK)
        {
            return db.TaiKhoans.Find(tenTK); 
        }
        //Phan trang
        public IEnumerable<TaiKhoan> ListAllPaging(string searchString,int page, int pageSize)
        {
            IQueryable<TaiKhoan> model = db.TaiKhoans;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.TenDangNhap.Contains(searchString) || x.HoTen.Contains(searchString));
            }
            return model.OrderBy(x=>x.TenDangNhap).ToPagedList(page,pageSize);
        }
        public bool CheckUserName(string userName)
        {
            return db.TaiKhoans.Count(x => x.TenDangNhap == userName) > 0;
        }
        public bool CheckEmail(string email)
        {
            return db.TaiKhoans.Count(x => x.Email == email) > 0;
        }
    }
}
