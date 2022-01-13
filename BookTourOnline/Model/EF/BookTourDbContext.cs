using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Model.EF
{
    public partial class BookTourDbContext : DbContext
    {
        public BookTourDbContext()
            : base("name=BookTourDbContext")
        {
        }

        public virtual DbSet<DanhMuc> DanhMucs { get; set; }
        public virtual DbSet<DonHang> DonHangs { get; set; }
        public virtual DbSet<Feedback> Feedbacks { get; set; }
        public virtual DbSet<HinhAnh> HinhAnhs { get; set; }
        public virtual DbSet<LienHe> LienHes { get; set; }
        public virtual DbSet<LoaiKhachHang> LoaiKhachHangs { get; set; }
        public virtual DbSet<LoaiVe> LoaiVes { get; set; }
        public virtual DbSet<Order_Tour> Order_Tour { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<TinTuc> TinTucs { get; set; }
        public virtual DbSet<Tour> Tours { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DanhMuc>()
                .HasMany(e => e.Tours)
                .WithRequired(e => e.DanhMuc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DonHang>()
                .Property(e => e.TongTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<DonHang>()
                .Property(e => e.SoDienThoai)
                .IsFixedLength();

            modelBuilder.Entity<DonHang>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<Feedback>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<Feedback>()
                .Property(e => e.Phone)
                .IsFixedLength();

            modelBuilder.Entity<LoaiKhachHang>()
                .HasMany(e => e.DonHangs)
                .WithRequired(e => e.LoaiKhachHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiVe>()
                .Property(e => e.GiaVe)
                .HasPrecision(18, 0);

            modelBuilder.Entity<LoaiVe>()
                .HasMany(e => e.DonHangs)
                .WithRequired(e => e.LoaiVe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Order_Tour>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<Order_Tour>()
                .Property(e => e.DienThoai)
                .IsFixedLength();

            modelBuilder.Entity<OrderDetail>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.SoDienThoai)
                .IsFixedLength();

            modelBuilder.Entity<TaiKhoan>()
                .HasMany(e => e.DonHangs)
                .WithRequired(e => e.TaiKhoan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TaiKhoan>()
                .HasMany(e => e.TinTucs)
                .WithRequired(e => e.TaiKhoan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Tour>()
                .Property(e => e.Gia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Tour>()
                .HasMany(e => e.DonHangs)
                .WithRequired(e => e.Tour)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Tour>()
                .HasMany(e => e.HinhAnhs)
                .WithRequired(e => e.Tour)
                .WillCascadeOnDelete(false);
        }

        public System.Data.Entity.DbSet<Model.ViewModel.TourViewModel> TourViewModels { get; set; }

        //public System.Data.Entity.DbSet<BookTourOnline.Models.Login> Logins { get; set; }

        //  public System.Data.Entity.DbSet<BookTourOnline.Models.Register> Registers { get; set; }
    }
}
