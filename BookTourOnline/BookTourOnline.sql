USE [BookTourOnline]
GO
ALTER TABLE [dbo].[Tour] DROP CONSTRAINT [FK__Tour__MaDM__45F365D3]
GO
ALTER TABLE [dbo].[TinTuc] DROP CONSTRAINT [FK__TinTuc__TenDangN__48CFD27E]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK_OrderDetail_Order_Tour]
GO
ALTER TABLE [dbo].[HinhAnh] DROP CONSTRAINT [FK__HinhAnh__MaTour__46E78A0C]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [DF_OrderDetail_CreateDate]
GO
ALTER TABLE [dbo].[Order_Tour] DROP CONSTRAINT [DF_Order_Tour_Status]
GO
ALTER TABLE [dbo].[LienHe] DROP CONSTRAINT [DF_LienHe_Status]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [DF_Feedback_Status]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tour]') AND type in (N'U'))
DROP TABLE [dbo].[Tour]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc]') AND type in (N'U'))
DROP TABLE [dbo].[TinTuc]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type in (N'U'))
DROP TABLE [dbo].[TaiKhoan]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Order_Tour]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order_Tour]') AND type in (N'U'))
DROP TABLE [dbo].[Order_Tour]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LienHe]') AND type in (N'U'))
DROP TABLE [dbo].[LienHe]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhAnh]') AND type in (N'U'))
DROP TABLE [dbo].[HinhAnh]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 01/01/2022 22:46:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhMuc]') AND type in (N'U'))
DROP TABLE [dbo].[DanhMuc]
GO
USE [master]
GO
/****** Object:  Database [BookTourOnline]    Script Date: 01/01/2022 22:46:25 ******/
DROP DATABASE [BookTourOnline]
GO
/****** Object:  Database [BookTourOnline]    Script Date: 01/01/2022 22:46:25 ******/
CREATE DATABASE [BookTourOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookTourOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BookTourOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookTourOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BookTourOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookTourOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookTourOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookTourOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookTourOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookTourOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookTourOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookTourOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookTourOnline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookTourOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookTourOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookTourOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookTourOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookTourOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookTourOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookTourOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookTourOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookTourOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookTourOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookTourOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookTourOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookTourOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookTourOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookTourOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookTourOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookTourOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookTourOnline] SET  MULTI_USER 
GO
ALTER DATABASE [BookTourOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookTourOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookTourOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookTourOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookTourOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookTourOnline] SET QUERY_STORE = OFF
GO
USE [BookTourOnline]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nchar](50) NULL,
	[Phone] [nchar](12) NULL,
	[Address] [nvarchar](150) NULL,
	[NoiDung] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[DiaDiem] [nvarchar](100) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhAnh] [nvarchar](150) NULL,
	[TieuDe] [nvarchar](100) NULL,
	[MaTour] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Tour]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Tour](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[Customer] [int] NULL,
	[Name] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [nchar](30) NULL,
	[DienThoai] [nchar](12) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Order_Tour] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TourID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[TenTour] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[TourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [nchar](12) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[Quyen] [int] NOT NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[MoTaNgan] [nvarchar](500) NULL,
	[MoTaChiTiet] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[HinhAnhMinhHoa] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 01/01/2022 22:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NOT NULL,
	[TenTour] [nvarchar](200) NOT NULL,
	[DiaDiem] [nvarchar](100) NULL,
	[QuyMo] [nvarchar](100) NULL,
	[ThoiGian] [nvarchar](100) NULL,
	[PhuongTien] [nvarchar](100) NULL,
	[KhoiHanh] [ntext] NULL,
	[GioiThieu] [ntext] NULL,
	[LichTrinhTour] [ntext] NULL,
	[TourBaoGom] [ntext] NULL,
	[TourKhongBaoGom] [ntext] NULL,
	[DieuKhoanHuyTour] [ntext] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[Gia] [decimal](18, 0) NULL,
	[HinhAnh] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [NgayTao], [NgayCapNhat]) VALUES (1, N'Du Lịch Miền Bắc', CAST(N'2021-05-05T00:00:00.000' AS DateTime), CAST(N'2021-10-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [NgayTao], [NgayCapNhat]) VALUES (2, N'Du Lịch Miền Trung', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [NgayTao], [NgayCapNhat]) VALUES (4, N'Du Lịch Miền Nam', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [NgayTao], [NgayCapNhat]) VALUES (5, N'Du Lịch Biển', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [NgayTao], [NgayCapNhat]) VALUES (7, N'Du Lịch Lễ Hội', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Phone], [Address], [NoiDung], [CreatedDate], [Status], [DiaDiem]) VALUES (1, N'Tuấn Anh', N'tanhdo18@gmail.com                                ', N'+84981580436', N'Hà Nội', N'Không có yêu cầu
                        ', CAST(N'2021-12-03T23:03:36.040' AS DateTime), 0, NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Phone], [Address], [NoiDung], [CreatedDate], [Status], [DiaDiem]) VALUES (2, N'Tuấn Anh', N'tanhdo18@gmail.com                                ', N'+84981580436', N'Bắc Giang', N'test contact
                        ', CAST(N'2021-12-08T00:45:11.773' AS DateTime), 0, NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Phone], [Address], [NoiDung], [CreatedDate], [Status], [DiaDiem]) VALUES (3, N'Phạm Hồng Mạnh', N'tanhdo18@gmail.com                                ', N'+84981580436', N'Ba Vì, Hà Nội', N'test
                        ', CAST(N'2021-12-08T00:51:39.853' AS DateTime), 0, NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Phone], [Address], [NoiDung], [CreatedDate], [Status], [DiaDiem]) VALUES (9, NULL, NULL, N'+84981580436', NULL, NULL, CAST(N'2022-01-01T21:53:10.930' AS DateTime), 1, N'Hà Nội')
INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Phone], [Address], [NoiDung], [CreatedDate], [Status], [DiaDiem]) VALUES (12, NULL, NULL, N'+84981580436', NULL, NULL, CAST(N'2022-01-01T21:53:11.427' AS DateTime), 1, N'Hà Nội')
INSERT [dbo].[Feedback] ([ID], [Name], [Email], [Phone], [Address], [NoiDung], [CreatedDate], [Status], [DiaDiem]) VALUES (14, NULL, NULL, N'+84981580436', NULL, NULL, CAST(N'2022-01-01T21:57:52.303' AS DateTime), 1, N'Khánh Hòa - Việt Nam')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (16, N'halong-small-img-7.jpeg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (17, N'halong-small-img-6.jpeg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (18, N'halong-small-img-5.jpeg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (19, N'halong-small-img-3.jpeg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (20, N'halong-small-img-1.jpeg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (21, N'big-img.jpeg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (22, N'food-halong-3.jpg', N'Hạ long', 12)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (24, N'ha-giang.jpeg', N'Hà Giang', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (25, N'Nho Que river Vietnam Tourism.jpg', N'Hà Giang', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (26, N'ha-giang-3.jpeg', N'Hà Giang', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (27, N'Ha Giang Travel Guide Vietnam Tourism.jpg', N'Hà Giang', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (28, N'Ha Giang Loop Vietnam Tourism.jpg', N'Hà Giang', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (29, N'things to do in hoi an vietnam-7.jpg', N'hoi-an-art', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (30, N'things to do in hoi an vietnam-2.jpg', N'hoi-an-art', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (31, N'things to do in hoi an vietnam-10.jpg', N'hoi-an-art', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (32, N'things to do in hoi an vietnam-4.jpg', N'hoi-an-art', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (33, N'things to do in hoi an vietnam-6.jpg', N'hoi-an-art', 10)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (34, N'Da Lat Pine Trees Vietnam Tourism.jpg', N'dalat', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (35, N'Tuyen Lam Lake Da Lat Vietnam.jpg', N'dalat', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (36, N'What to do in Dalat-10.jpg', N'dalat', 5)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (37, N'What to do in Dalat-10.jpg', N'dalat', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (38, N'Nha Trang Travel Guide Vietnam Tourism.jpg', N'dalat', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (39, N'Da Lat Travel Guide Vietnam Tourism.jpg', N'dalat', 9)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (40, N'vung tau attractions.jpg', N'vungtau', 13)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (41, N'vung tau attractions-3.jpg', N'vungtau', 13)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (42, N'vung tau travel guide-2.jpg', N'vungtau', 13)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (43, N'responsible travel sapa.jpg', N'mocchau', 20)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (44, N'Vietnam Best Marathons_-5.jpg', N'mocchau', 20)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (45, N'Vietnam Best Marathons_-21.jpg', N'mocchau', 20)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (46, N'responsible travel sapa.jpg', N'sapa', 16)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (47, N'Vietnam Best Marathons_-5.jpg', N'mocchau', 20)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (48, N'Binh Thuy Ancestral House Can Tho Vietnam.jpg', N'cantho', 26)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (49, N'Ferries Can Tho Vietnam Tourism.jpg', N'cantho', 26)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (50, N'Sampans Can Tho Vietnam Tourism.jpg', N'cantho', 26)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (51, N'Chua Hang Chau Doc Vietnam Tourism.jpg', N'chau doc', 27)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (52, N'inside guide to chau doc-2_0.jpg', N'chau doc', 27)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (53, N'Victoria Chau Doc Vietnam Tourism.jpg', N'chau doc', 27)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [TieuDe], [MaTour]) VALUES (54, N'things to do in chau doc.jpg', N'chau doc', 27)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([ID], [NoiDung], [Status]) VALUES (3, N'<h4><span style="font-size:22px"><span style="color:#DAA520">C&Ocirc;NG TY TNHH THƯƠNG MẠI &amp; SỰ KIỆN DU LỊCH VIETNAM TRAVEL</span></span></h4>

<p>Số giấy ph&eacute;p lữ h&agrave;nh quốc tế: 01-800/TCDL &ndash; GPLHQT</p>

<p><strong>Địa chỉ:</strong>&nbsp;Số 28, ng&otilde; 26 Hồ T&ugrave;ng Mậu, phường Mai Dịch, quận Cầu Giấy, H&agrave; Nội</p>

<p><strong>Điện thoại:</strong>&nbsp;<span style="color:#DAA520">(+84) 981 580 436</span></p>

<p><strong>Email:<span style="font-size:14px">&nbsp;</span></strong><span style="font-size:14px">tanhdo18@gmail.com</span></p>

<p><strong>Website:</strong>&nbsp;http://www.vietnamtravel.com</p>
', 1)
SET IDENTITY_INSERT [dbo].[LienHe] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Tour] ON 

INSERT [dbo].[Order_Tour] ([OrderID], [CreatedDate], [Customer], [Name], [DiaChi], [Email], [DienThoai], [Status]) VALUES (32, CAST(N'2021-12-17T22:58:27.310' AS DateTime), NULL, N'Đỗ Mạnh Quân', N'Vĩnh Phúc', N'tanhdo18567@gmail.com         ', N'0973005730  ', 1)
INSERT [dbo].[Order_Tour] ([OrderID], [CreatedDate], [Customer], [Name], [DiaChi], [Email], [DienThoai], [Status]) VALUES (33, CAST(N'2021-12-24T00:03:33.750' AS DateTime), NULL, N'Đỗ Tuấn Anh', N'Hà Nội', N'tanhdo18@gmail.com            ', N'09815780432 ', 1)
INSERT [dbo].[Order_Tour] ([OrderID], [CreatedDate], [Customer], [Name], [DiaChi], [Email], [DienThoai], [Status]) VALUES (34, CAST(N'2021-12-24T00:41:30.223' AS DateTime), NULL, N'', N'', N'                              ', N'            ', 1)
INSERT [dbo].[Order_Tour] ([OrderID], [CreatedDate], [Customer], [Name], [DiaChi], [Email], [DienThoai], [Status]) VALUES (35, CAST(N'2021-12-24T00:41:46.160' AS DateTime), NULL, N'Đỗ Tuấn Anh', N'Vĩnh Phúc', N'tanhdo18@gmail.com            ', N'09815780432 ', 1)
INSERT [dbo].[Order_Tour] ([OrderID], [CreatedDate], [Customer], [Name], [DiaChi], [Email], [DienThoai], [Status]) VALUES (36, CAST(N'2022-01-01T22:01:21.893' AS DateTime), NULL, N'Đỗ Tuấn Anh', N'Hải Dương', N'tanhdo18@gmail.com            ', N'09815780432 ', 1)
SET IDENTITY_INSERT [dbo].[Order_Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [TourID], [OrderID], [Quantity], [Price], [TenTour], [CreateDate]) VALUES (14, 28, 32, 6, CAST(550000 AS Decimal(18, 0)), N'Tour Chùa Tam Chúc', CAST(N'2021-12-17T22:58:27.473' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID], [TourID], [OrderID], [Quantity], [Price], [TenTour], [CreateDate]) VALUES (15, 29, 33, 4, CAST(10510000 AS Decimal(18, 0)), N'Nghỉ Dưỡng Tại Vinpearl Phú Quốc', CAST(N'2021-12-24T00:03:34.050' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID], [TourID], [OrderID], [Quantity], [Price], [TenTour], [CreateDate]) VALUES (16, 12, 34, 2, CAST(2520000 AS Decimal(18, 0)), N'Nghỉ Dưỡng Du Thuyền La Regina Royal Cruise', CAST(N'2021-12-24T00:41:30.410' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID], [TourID], [OrderID], [Quantity], [Price], [TenTour], [CreateDate]) VALUES (17, 12, 35, 2, CAST(2520000 AS Decimal(18, 0)), N'Nghỉ Dưỡng Du Thuyền La Regina Royal Cruise', CAST(N'2021-12-24T00:41:46.167' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID], [TourID], [OrderID], [Quantity], [Price], [TenTour], [CreateDate]) VALUES (18, 19, 36, 3, CAST(4265000 AS Decimal(18, 0)), N'Khám Phá Ruộng Bậc Thang ở Sapa', CAST(N'2022-01-01T22:01:21.940' AS DateTime))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'anhdt', N'e10adc3949ba59abbe56e057f20f883e', N'tanhdo18@gmail.com', N'0981580436  ', N'VinhPhuc', N'Tuấn Anh', 1, 1, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'binhtb', N'e10adc3949ba59abbe56e057f20f883e', N'binhthanh0205@gmail.com', N'0355369395  ', N'Bắc Ninh', N'Nguyễn Thanh Bình', -1, 1, CAST(N'2021-12-19T00:46:33.443' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'DoTA', N'e10adc3949ba59abbe56e057f20f883e', N'dta231000@gmail.com', N'0355369395  ', N'Vĩnh Phúc', N'Tuấn Anh', 0, 1, CAST(N'2021-12-05T22:33:21.633' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'Dtanh', N'e10adc3949ba59abbe56e057f20f883e', N'dta181100@gmail.com', N'09815780432 ', N'Vĩnh Phúc', N'Đỗ Tuấn Anh', 0, 0, CAST(N'2021-12-05T22:36:07.523' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'QuanDMD', N'25d55ad283aa400af464c76d713c07ad', N'tanhdo18567@gmail.com', N'0973005730  ', N'Vĩnh Phúc', N'Đỗ Mạnh Quân', 0, 1, CAST(N'2021-12-11T13:33:30.913' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'quandmd43', N'e10adc3949ba59abbe56e057f20f883e', N'dtanhhttt4@gmail.com', N'09815780432 ', N'Hải Dương', N'Đỗ Mạnh Quân', 0, 1, CAST(N'2021-12-13T22:52:46.020' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'QuanMD', N'fcea920f7412b5da7be0cf42b8c93759', N'manhquanhappy@gmail.com', N'0973005730  ', N'Vĩnh Phúc', NULL, 0, 1, CAST(N'2021-12-04T00:33:03.387' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'test', N'e10adc3949ba59abbe56e057f20f883e', N'AnhDT92@fsoft.com.vn', N'09815780436 ', N'Bắc Giang', N'test6', -1, 1, CAST(N'2021-12-25T00:20:04.630' AS DateTime))
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email], [SoDienThoai], [DiaChi], [HoTen], [Quyen], [TrangThai], [NgayTao]) VALUES (N'TuanDT', N'e10adc3949ba59abbe56e057f20f883e', N'tuandt@gmail.com', N'09815780432 ', N'Vinh', N'Đỗ Tuấn', -1, 1, CAST(N'2021-12-16T22:59:25.053' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [MoTaNgan], [MoTaChiTiet], [NgayTao], [NgayCapNhat], [TenDangNhap], [HinhAnhMinhHoa]) VALUES (12, N'Biển', N'KHU BẢO TỒN BÃI BIỂN KIÊN GIANG đã được UNESCO công nhận', N'<p>Trước khi Ph&uacute; Quốc trở th&agrave;nh một điểm đến du lịch sinh th&aacute;i đẹp đẽ v&agrave; được chăm ch&uacute;t như ng&agrave;y nay, n&oacute; l&agrave; một h&ograve;n đảo y&ecirc;n tĩnh với kh&ocirc;ng qu&aacute; 45.000 người. Chỉ trong v&agrave;i thập kỷ, h&ograve;n đảo đ&atilde; ph&aacute;t triển với sức chứa gần 180.000 cư d&acirc;n v&agrave; ng&agrave;nh du lịch ph&aacute;t triển mạnh - hơn 50% đảo Ph&uacute; Quốc v&agrave; v&ugrave;ng biển xung quanh vẫn c&ograve;n rất nhiều cảnh đẹp tự nhi&ecirc;n.</p>

<p>Th&agrave;nh c&ocirc;ng đ&aacute;ng kinh ngạc về mặt sinh th&aacute;i l&agrave; do Khu dự trữ sinh quyển Ki&ecirc;n Giang được UNESCO c&ocirc;ng nhận, nơi trực tiếp bảo vệ đất, nước v&agrave; t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n đồng thời hỗ trợ sự ph&aacute;t triển bền vững của khu vực xung quanh. Sinh quyển cũng c&oacute; chức năng như một cơ quan bảo vệ văn h&oacute;a, t&iacute;ch hợp kiến ​​thức truyền thống v&agrave;o quản l&yacute; hệ sinh th&aacute;i v&agrave; t&igrave;m kiếm &yacute; kiến ​​đ&oacute;ng g&oacute;p của địa phương v&agrave;o c&aacute;c quyết định ph&aacute;t triển.</p>

<p>Khu bảo tồn của UNESCO được th&agrave;nh lập v&agrave;o năm 2006 v&agrave; kể từ đ&oacute; n&oacute; đ&atilde; trở th&agrave;nh một trong những nơi tốt nhất ở Việt Nam để trải nghiệm thi&ecirc;n nhi&ecirc;n dưới những h&igrave;nh thức ch&acirc;n thực nhất. Sinh quyển bảo vệ hệ thống 105 h&ograve;n đảo (đảo lớn nhất l&agrave; Ph&uacute; Quốc), nơi vẫn l&agrave; m&ocirc;i trường sống quan trọng của h&agrave;ng trăm lo&agrave;i động thực vật, bao gồm cả những lo&agrave;i c&oacute; nguy cơ tuyệt chủng. Đại dương xung quanh đ&atilde; được bảo vệ rất tốt n&ecirc;n đ&aacute;nh bắt c&aacute; vẫn l&agrave; một ng&agrave;nh c&ocirc;ng nghiệp ch&iacute;nh m&agrave; kh&ocirc;ng g&acirc;y tổn hại đến sự c&acirc;n bằng của hệ sinh th&aacute;i địa phương. C&aacute;c nguồn t&agrave;i nguy&ecirc;n v&agrave; sinh vật biển trong khu vực n&agrave;y, đặc biệt l&agrave; mực, mực nang v&agrave; c&aacute; cơm, được coi l&agrave; một trong những sinh vật biển tốt nhất trong to&agrave;n bộ khu vực T&acirc;y Nam của Việt Nam, v&agrave; rất quan trọng đối với sinh kế của địa phương.</p>

<p><img alt="Phu Quoc island" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1660147072_resize.jpg" /></p>

<p>Khu dự trữ sinh quyển được UNESCO c&ocirc;ng nhận l&agrave; kho b&aacute;u qu&yacute; gi&aacute; nhất của đảo Ph&uacute; Quốc v&agrave; cần được kh&aacute;m ph&aacute; cả tr&ecirc;n bộ v&agrave; đường biển.</p>

<hr />
<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Tr&ecirc;n đất liền - Vườn quốc gia Ph&uacute; Quốc</strong></span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">Hơn một nửa diện t&iacute;ch ph&iacute;a bắc của đảo Ph&uacute; Quốc được d&agrave;nh cho Vườn quốc gia Ph&uacute; Quốc, v&ugrave;ng tr&ecirc;n cạn của khu dự trữ sinh quyển đ&atilde; được UNESCO c&ocirc;ng nhận. Một chuyến đi bộ xuy&ecirc;n qua khu rừng rậm thường xanh sẽ đưa du kh&aacute;ch qua một mạng lưới c&aacute;c hệ sinh th&aacute;i phức tạp v&agrave; c&aacute;c v&ugrave;ng kh&iacute; hậu ph&acirc;n tầng xuống d&atilde;y n&uacute;i. Rừng nguy&ecirc;n sinh gh&eacute;p với rừng thứ sinh v&agrave; rừng ch&agrave;m; v&ugrave;ng đất thấp ngập lụt th&agrave;nh đất ngập nước; c&acirc;y ngập mặn v&agrave; cỏ biển bảo vệ c&aacute;c b&atilde;i bồi ven biển v&agrave; c&aacute;c tuyến đường thủy; c&aacute;c lo&agrave;i phong lan qu&yacute; hiếm mọc b&ecirc;n cạnh c&aacute;c c&acirc;y thuốc.</span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">Đi bộ l&ecirc;n đỉnh N&uacute;i Ch&uacute;a (&ldquo;N&uacute;i Ch&uacute;a&rdquo;, c&ograve;n được gọi l&agrave; &ldquo;n&oacute;c nh&agrave; của Ph&uacute; Quốc&rdquo;) để ngắm nh&igrave;n khu rừng k&eacute;o d&agrave;i đến tận ch&acirc;n trời xanh non nước trong v&ocirc; v&agrave;n sắc xanh. Nếu N&uacute;i Ch&uacute;a bị đ&oacute;ng cửa để x&acirc;y dựng, th&igrave; N&uacute;i Trời l&agrave; đỉnh cao thứ hai v&agrave; l&agrave; một sự thay thế xứng đ&aacute;ng, với c&aacute;i t&ecirc;n ph&ugrave; hợp với tầm nh&igrave;n. Chuyến đi bộ k&eacute;o d&agrave;i nửa ng&agrave;y l&agrave; phần thưởng từ đầu đến cuối, v&igrave; những con suối c&oacute; thể bơi được v&agrave; những th&aacute;c nước đổ về tưới ti&ecirc;u cho cảnh quan khu rừng khi trời mưa.</span></span></p>

<p><img alt="mount Chua" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1014180304_resize.jpg" /></p>

<p>&nbsp;</p>

<p><img alt="mount Heaven" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_787090315_resize.jpg" /></p>

<p>Đảo nhảy quần đảo An Thới l&agrave; một trong những c&aacute;ch phổ biến nhất để kh&aacute;m ph&aacute; thế giới tự nhi&ecirc;n Ph&uacute; Quốc. Một chiếc thuyền du lịch sẽ đưa bạn đi giữa những h&ograve;n đảo hoang, nơi thi&ecirc;n nhi&ecirc;n ph&aacute;t triển đậm n&eacute;t, hoang sơ v&agrave; chưa được l&agrave;m sạch.</p>

<hr />
<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Đường biển - Khu bảo tồn biển Ph&uacute; Quốc</strong></span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">V&ugrave;ng biển cerulean bao quanh Ph&uacute; Quốc v&agrave; h&agrave;ng chục đảo l&acirc;n cận l&agrave; nơi c&oacute; hệ sinh th&aacute;i đa dạng của ri&ecirc;ng m&igrave;nh. 41% diện t&iacute;ch ho&agrave;n chỉnh xung quanh những h&ograve;n đảo n&agrave;y bao gồm hệ thống h&agrave;ng trăm lo&agrave;i san h&ocirc; cứng v&agrave; mềm v&agrave; c&aacute;c lo&agrave;i c&aacute; sinh sống. C&aacute;c thảm cỏ biển v&agrave; cỏ biển ph&aacute;t triển mạnh mẽ ở đ&acirc;y cung cấp m&ocirc;i trường sống cần thiết cho c&aacute;c lo&agrave;i động vật cực kỳ nguy cấp như đồi mồi v&agrave; r&ugrave;a xanh, cũng như c&aacute; nược, một lo&agrave;i sinh vật biển đang tr&ecirc;n đ&agrave; tuyệt chủng chỉ c&oacute; thể t&igrave;m thấy ở một nơi kh&aacute;c ở Việt Nam.</span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">Những b&atilde;i biển đ&aacute;nh dấu bi&ecirc;n giới của hai miền. Mỗi h&ograve;n đảo của sinh quyển đều c&oacute; những b&atilde;i biển độc đ&aacute;o của ri&ecirc;ng m&igrave;nh, được định h&igrave;nh bởi thủy triều, hệ sinh th&aacute;i v&agrave; lịch sử địa chất kh&aacute;c nhau. Đảo Ph&uacute; Quốc - đảo lớn nhất trong số đ&oacute; v&agrave; l&agrave; điểm du lịch biển ở trung t&acirc;m - c&oacute; một số b&atilde;i biển d&agrave;i v&agrave; đẹp nhất, bao gồm cả B&atilde;i Sao nổi tiếng, nằm ở ph&iacute;a bắc v&agrave; ph&iacute;a nam bởi rừng rậm. Để kết hợp quan s&aacute;t động vật hoang d&atilde; với bơi lội v&agrave; tắm nắng, h&atilde;y đến &quot;B&atilde;i biển Sao biển&quot; gần L&agrave;ng Rạch Vẹm, nơi những con sao biển tụ tập tr&ecirc;n c&aacute;c tảng đ&aacute; dưới l&agrave;n nước trong vắt. V&agrave;o những đ&ecirc;m may mắn, bạn c&oacute; thể nh&igrave;n thấy sinh vật ph&ugrave; du ph&aacute;t quang sinh học chiếu s&aacute;ng l&agrave;n nước trong suốt, một đ&oacute;ng g&oacute;p đầy nghệ thuật kh&aacute;c cho sinh quyển.</span></span></p>

<p><img alt="The UNESCO Biosphere Reserve protects a complex system of hard and soft coral reefs" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1873822645_resize.jpg" /></p>

<p><img alt="The UNESCO Biosphere Reserve protects a complex system of hard and soft coral reefs" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1397382653.jpg" /></p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'anhdt', N'shutterstock_1660147072_resize_0.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [MoTaNgan], [MoTaChiTiet], [NgayTao], [NgayCapNhat], [TenDangNhap], [HinhAnhMinhHoa]) VALUES (13, N'VĂN HOÁ', N' MỘT NGÀY Ở PHÚ QUỐC', N'<p style="text-align: justify;"><span style="color:#A9A9A9"><span style="font-size:16px">Đảo Ph&uacute; Quốc l&agrave; một trong những điểm đến h&agrave;ng đầu của Việt Nam đối với cả du kh&aacute;ch trong nước v&agrave; quốc tế. &quot;Đảo Ngọc&quot; của đất nước n&agrave;y được biết đến nhiều nhất với những b&atilde;i biển của n&oacute;, nhưng h&ograve;n đảo n&agrave;y c&ograve;n nhiều thứ hơn cả c&aacute;t. Kh&aacute;ch du lịch c&oacute; sở th&iacute;ch v&agrave; phong c&aacute;ch du lịch kh&aacute;c nhau c&oacute; thể tận dụng nhiều hoạt động đa dạng tr&ecirc;n đảo, bao gồm mọi thứ từ v&aacute;n trượt phản lực v&agrave; d&ugrave; lượn đến đi bộ đường d&agrave;i tự nhi&ecirc;n th&ocirc;ng qua c&aacute;c hệ sinh th&aacute;i được UNESCO bảo vệ; từ hải sản ở chợ đường phố ở l&agrave;ng ch&agrave;i đến du ngoạn ngắm ho&agrave;ng h&ocirc;n ri&ecirc;ng từ c&aacute;c khu nghỉ dưỡng năm sao.</span></span></p>

<p style="text-align: justify;"><span style="color:#A9A9A9"><span style="font-size:16px">Cho d&ugrave; bạn đến với gia đ&igrave;nh hay đối t&aacute;c; cho d&ugrave; bạn quan t&acirc;m đến hải sản hay lặn biển; c&oacute; một thế giới ở Ph&uacute; Quốc d&agrave;nh ri&ecirc;ng cho bạn.</span></span></p>

<hr />
<p style="text-align: justify;"><span style="color:#A52A2A"><span style="font-size:16px"><strong>D&agrave;nh cho gia đ&igrave;nh v&agrave; c&aacute;c cặp đ&ocirc;i</strong></span></span></p>

<p style="text-align: justify;"><span style="color:#000000"><span style="font-size:14px">Tho&aacute;t khỏi đ&aacute;m đ&ocirc;ng v&agrave; d&agrave;nh buổi s&aacute;ng tr&ecirc;n một số b&atilde;i c&aacute;t k&iacute;n đ&aacute;o, như B&atilde;i biển G&agrave;nh Dầu ở ph&iacute;a bắc, nơi c&aacute;c ch&acirc;n bảo vệ của d&atilde;y n&uacute;i của vườn quốc gia giữ c&aacute;c khu nghỉ dưỡng cao tầng c&aacute;ch xa bi&ecirc;n giới b&atilde;i biển. Hoặc, đối với c&aacute;c loại h&igrave;nh kh&aacute;c, h&atilde;y h&ograve;a m&igrave;nh s&acirc;u hơn v&agrave;o thi&ecirc;n nhi&ecirc;n, đi bộ đường d&agrave;i qua Vườn Quốc gia Ph&uacute; Quốc để bơi trong tiếng chim h&oacute;t v&agrave; th&aacute;c nước được cung cấp bởi một d&ograve;ng nước ngọt.</span></span></p>

<p style="text-align: justify;"><span style="color:#000000"><span style="font-size:14px">V&agrave;o buổi chiều, bạn c&oacute; thể lặn biển để kh&aacute;m ph&aacute; những rạn san h&ocirc; rộng h&agrave;ng trăm hecta bao quanh đảo, một số rạn san h&ocirc; khỏe mạnh v&agrave; nhiều m&agrave;u sắc nhất trong cả nước. Đến Dinh Cậu v&agrave;o buổi chiều muộn để ngắm ho&agrave;ng h&ocirc;n tr&ecirc;n bến cảng từ ngọn hải đăng, nơi giống như một ng&ocirc;i đền thờ Nữ thần Biển.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><img alt="Phu Quoc Beachs" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1659495571.jpg" /></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><img alt="hike and bike or wine and dine Phu Quoc" src="https://vietnam.travel/sites/default/files/inline-images/Copy%20of%206Z3A1836.jpg" /></p>

<p style="text-align: justify;">Bữa tối v&agrave; cocktail được phục vụ ở bất cứ đ&acirc;u tr&ecirc;n B&atilde;i D&agrave;i, trung t&acirc;m của đời sống x&atilde; hội v&agrave; ng&agrave;nh kh&aacute;ch sạn của h&ograve;n đảo.</p>

<hr />
<p style="text-align: justify;"><span style="color:#A52A2A"><span style="font-size:16px"><strong>Qu&aacute;n ăn ở Ph&uacute; Quốc</strong></span></span></p>

<p style="text-align: justify;"><span style="color:#000000"><span style="font-size:14px">B&iacute; mật được giữ k&iacute;n tốt nhất của Đảo Ph&uacute; Quốc l&agrave; m&oacute;n ăn của n&oacute;, chịu ảnh hưởng của ẩm thực miền Nam Việt Nam. Đặc sản địa phương c&oacute; thể được phục vụ tr&ecirc;n khăn trải b&agrave;n trắng trong c&aacute;c qu&aacute;n rượu nhỏ sang trọng v&agrave; tr&ecirc;n những chiếc ghế đẩu nhựa nhỏ x&iacute;u tr&ecirc;n vỉa h&egrave; b&ecirc;n ngo&agrave;i c&aacute;c gian h&agrave;ng b&aacute;n đồ ăn đường phố. Tuy nhi&ecirc;n, nh&agrave; h&agrave;ng của bạn c&oacute; nhiều sao, một số m&oacute;n ăn kh&ocirc;ng thể bỏ qua. Nh&igrave;n chung, hải sản rẻ v&agrave; tươi ngon; Nh&iacute;m biển v&agrave; gỏi c&aacute; tr&iacute;ch sống l&agrave; hai m&oacute;n được người d&acirc;n địa phương y&ecirc;u th&iacute;ch.</span></span></p>

<p style="text-align: justify;"><span style="color:#000000"><span style="font-size:14px">Đến B&atilde;i D&agrave;i hoặc thị trấn Dương Đ&ocirc;ng để thưởng thức một t&ocirc; b&uacute;n ri&ecirc;u hay &quot;b&uacute;n x&agrave;o&quot;. D&agrave;nh buổi s&aacute;ng muộn để thăm một l&agrave;ng ch&agrave;i như H&agrave;m Ninh để xem người d&acirc;n địa phương thực sự sống như thế n&agrave;o, sau đ&oacute; thưởng thức m&oacute;n c&aacute; tươi quay cuồng chỉ trong buổi s&aacute;ng h&ocirc;m đ&oacute;, tại một trong những nh&agrave; h&agrave;ng nổi trong thị trấn.</span></span></p>

<p style="text-align: justify;"><img alt="The best seafood in Phu Quoc" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_resize.jpg" />Trước khi ăn tối tại Chợ đ&ecirc;m Ph&uacute; Quốc, nơi c&oacute; hơn một trăm người b&aacute;n h&agrave;ng địa phương đang b&aacute;n gấp đ&ocirc;i c&aacute;c loại hải sản, h&atilde;y gh&eacute; thăm một nh&agrave; m&aacute;y sản xuất nước mắm. Nước mắm ở Ph&uacute; Quốc ngon nhất nước (ngon nhất thế giới, theo nhiều người). Thử hương vị m&oacute;n ăn ch&iacute;nh được đ&aacute;nh gi&aacute; cao n&agrave;y của Việt Nam l&agrave; điều bắt buộc đối với bất kỳ t&iacute;n đồ ẩm thực n&agrave;o.</p>

<hr />
<p style="text-align: justify;"><span style="color:#A52A2A"><span style="font-size:16px"><strong>Nh&agrave; th&aacute;m hiểm &#39;Escape</strong></span></span></p>

<p style="text-align: justify;"><span style="font-size:14px">Tăng với mặt trời v&agrave; hướng thẳng xuống mặt nước. Bạn c&oacute; muốn d&agrave;nh một buổi s&aacute;ng để bơi c&ugrave;ng đ&agrave;n c&aacute;, hay lướt nhanh tr&ecirc;n gi&oacute; v&agrave; s&oacute;ng? Được PADI chứng nhận để lặn v&agrave; tương t&aacute;c th&acirc;n mật hơn với thế giới đầy m&agrave;u sắc của v&ugrave;ng nhiệt đới dưới nước hoặc thử ch&egrave;o thuyền bằng gi&oacute; để đ&aacute;nh gi&aacute; cao đại dương từ xa tr&ecirc;n bề mặt của n&oacute;.</span></p>

<p style="text-align: justify;"><img alt="An Thoi Archipelago" src="https://vietnam.travel/sites/default/files/inline-images/6Z3A2612_resize.jpg" />D&agrave;nh cả buổi chiều để kh&aacute;m ph&aacute; c&aacute;c đảo hoang của Quần đảo An Thới như một t&ecirc;n cướp biển tr&ecirc;n một con t&agrave;u ri&ecirc;ng. Hoặc thử th&aacute;ch hơn, h&atilde;y lấy một chiếc thuyền kayak v&agrave; tự ch&egrave;o quanh m&igrave;nh. Mang theo thiết bị lặn với ống thở để tham gia chuyến tham quan c&aacute;c rạn san h&ocirc; v&agrave; thiết bị d&atilde; ngoại để bạn c&oacute; thể h&ograve;a m&igrave;nh v&agrave;o một b&atilde;i biển hoang vắng trong một kỳ nghỉ xứng đ&aacute;ng sau chuyến th&aacute;m hiểm của m&igrave;nh.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'anhdt', N'6Z3A3524_resize_2.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [MoTaNgan], [MoTaChiTiet], [NgayTao], [NgayCapNhat], [TenDangNhap], [HinhAnhMinhHoa]) VALUES (14, N'THIÊN NHIÊN', N'Việt Nam từng bước chào đón khách du lịch quốc tế', N'<p><span style="font-size:16px"><span style="color:#A9A9A9"><em>Th&aacute;ng n&agrave;y chứng kiến ​​sự khởi đầu của kế hoạch ch&agrave;o đ&oacute;n du kh&aacute;ch nước ngo&agrave;i đến Việt Nam lần đầu ti&ecirc;n sau hơn 18 th&aacute;ng. Miễn l&agrave; đ&aacute;p ứng c&aacute;c điều kiện nhất định, sẽ kh&ocirc;ng cần thời gian c&aacute;ch ly.</em></span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">Trong một quyết định mang lại nhiều hy vọng cho ng&agrave;nh du lịch v&agrave; người d&acirc;n Việt Nam, ng&agrave;y 2/11, Ch&iacute;nh phủ đ&atilde; đồng &yacute; một chương tr&igrave;nh được mong đợi nhiều hơn để đ&oacute;n kh&aacute;ch du lịch quốc tế sau hơn 18 th&aacute;ng. Năm tỉnh c&oacute; điểm du lịch h&agrave;ng đầu Việt Nam sẽ mở cửa trở lại đầu ti&ecirc;n với điều kiện đ&aacute;p ứng c&aacute;c điều kiện cụ thể: Ki&ecirc;n Giang, Kh&aacute;nh H&ograve;a, Quảng Nam, Đ&agrave; Nẵng v&agrave; Quảng Ninh. V&agrave; miễn l&agrave; kh&aacute;ch du lịch đến x&eacute;t nghiệm &acirc;m t&iacute;nh với SARS CoV-2 v&agrave; đ&atilde; ti&ecirc;m hai liều vắc-xin, họ sẽ kh&ocirc;ng cần phải tự c&aacute;ch ly.</span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">Trong một động th&aacute;i nhanh ch&oacute;ng sau đ&oacute; được ca ngợi tr&ecirc;n to&agrave;n cầu, Việt Nam đ&atilde; ngừng ch&agrave;o đ&oacute;n kh&aacute;ch du lịch quốc tế v&agrave;o th&aacute;ng 3 năm 2020, để ngăn chặn sự l&acirc;y lan của Covid-19. Kể từ đ&oacute;, chỉ c&aacute;c chuy&ecirc;n gia nước ngo&agrave;i v&agrave; c&ocirc;ng d&acirc;n hồi hương mới được ph&eacute;p nhập cảnh. Nhưng đến th&aacute;ng 11 năm 2021, Ph&oacute; Thủ tướng Thường trực Phạm B&igrave;nh Minh đ&atilde; đồng &yacute; đề &aacute;n mở cửa trở lại do Bộ Văn h&oacute;a, Thể thao v&agrave; Du lịch đưa ra v&agrave;o ng&agrave;y 25 th&aacute;ng 10. Đ&acirc;y l&agrave; một phần trong nỗ lực của đất nước nhằm bắt đầu th&iacute;ch ứng với &#39;sự b&igrave;nh thường mới&#39;.</span></span></p>

<p><span style="color:#000000"><span style="font-size:14px">Sau nhiều th&aacute;ng xa c&aacute;ch x&atilde; hội nghi&ecirc;m ngặt, c&aacute;c hạn chế đang dần được dỡ bỏ để c&aacute;c hoạt động kinh tế x&atilde; hội tiếp tục trở lại. Điều n&agrave;y xảy ra sau khi c&aacute;c đợt triển khai ti&ecirc;m chủng h&agrave;ng loạt đ&atilde; c&oacute; hơn 86 triệu liều được sử dụng (tại thời điểm xuất bản). Phục hồi ng&agrave;nh du lịch Việt Nam l&agrave; ch&igrave;a kh&oacute;a để phục hồi kinh tế. &quot;Ch&uacute;ng t&ocirc;i đang tiến từng bước, thận trọng nhưng linh hoạt, để th&iacute;ch ứng với c&aacute;c t&igrave;nh huống thực tế của đại dịch&quot;, Ch&iacute;nh phủ cho biết trong một tuy&ecirc;n bố b&aacute;o ch&iacute;. Nhiều bộ sẽ l&agrave;m việc c&ugrave;ng nhau để đảm bảo rằng mọi bước của kế hoạch th&iacute; điểm được thực hiện một c&aacute;ch an to&agrave;n v&agrave; hiệu quả.</span></span></p>

<p><strong><span style="color:#A52A2A"><span style="font-size:16px">NHỮNG NƠI DU LỊCH C&Oacute; THỂ THAM QUAN</span></span></strong></p>

<p><span style="color:#000000"><span style="font-size:14px">Năm điểm du lịch trọng điểm đ&atilde; được x&aacute;c định: Đảo Ph&uacute; Quốc; th&agrave;nh phố biển Đ&agrave; Nẵng; Tỉnh Kh&aacute;nh H&ograve;a, qu&ecirc; hương của th&agrave;nh phố biển Nha Trang; Tỉnh Quảng Nam, qu&ecirc; hương của Hội An lịch sử; v&agrave; Vịnh Hạ Long, thuộc tỉnh Quảng Ninh.</span></span></p>

<p style="margin-left:80px"><br />
<strong><a href="https://drive.google.com/file/d/1cxHfx6QW-T2269L6uB9wSrkTb95e1_FT/view?usp=sharing" rel="noopener noreferrer" target="_blank"><img src="https://lh3.googleusercontent.com/BZteVN52Gg8gxe6lykA5EHK0sbXU-I03mzvU6baEB7DNALttUnjlSjo0HAsYrhUjBp9xwYIhM96FkEpnPnj4A6YHKWzfo-_X3-FB4VeUAZeib__Dt57dG1Lrp_lphQ" style="height:411px; width:602px" /></a></strong></p>

<p style="text-align:center"><span style="color:#A9A9A9"><em>&quot;Hạ Long - Trung t&acirc;m Di sản Thế giới được UNESCO c&ocirc;ng nhận&quot;</em></span></p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'anhdt', N'Copy of 6Z3A2560_0.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [MoTaNgan], [MoTaChiTiet], [NgayTao], [NgayCapNhat], [TenDangNhap], [HinhAnhMinhHoa]) VALUES (15, N'ĐỒ ĂN ', N'10 món ăn Hà Nội nhất định phải thử', N'<p style="text-align: center;"><strong>M&oacute;n ngon đặc trưng Ph&uacute; Quốc đang g&acirc;y x&ocirc;n xao dư luận.</strong></p>

<p>Mong đợi l&agrave; điều dễ thấy khi những t&iacute;n đồ ẩm thực v&agrave; du kh&aacute;ch h&agrave;o hứng đến nh&agrave; h&agrave;ng B&uacute;n Quay nổi tiếng nhất Ph&uacute; Quốc. B&uacute;n Quay nổi tiếng với nguy&ecirc;n liệu v&agrave; hương vị tươi thơm. Tr&agrave;n ra khỏi cửa trước v&agrave; nửa v&ograve;ng quanh d&atilde;y nh&agrave;, du kh&aacute;ch h&aacute;o hức chờ đợi để thử v&agrave; trải nghiệm m&oacute;n t&ocirc;m truyền miệng huyền thoại của Ph&uacute; Quốc. B&ecirc;n ngo&agrave;i nh&agrave; h&agrave;ng, bạn c&oacute; thể nghe thấy tiếng chuyển động v&agrave; tr&ograve; chuyện s&ocirc;i nổi của thực kh&aacute;ch, sự dịch chuyển của b&aacute;t đĩa sứ v&agrave; những người cầm đũa nhiệt t&igrave;nh. Hương thơm ng&agrave;o ngạt tỏa ra con phố nằm đối diện với bến cảng quyến rũ của Ph&uacute; Quốc. Kh&ocirc;ng nghi ngờ g&igrave; nữa, bạn đang đến đ&uacute;ng nơi để thưởng thức m&oacute;n ăn đặc trưng qu&yacute; gi&aacute; của Ph&uacute; Quốc.</p>

<p>Nguồn gốc sơ khai của B&uacute;n Quay (dịch trực tiếp l&agrave; &#39;b&uacute;n quậy&#39; hay &#39;phở x&agrave;o&#39;) được đưa v&agrave;o Ph&uacute; Quốc từ miền Trung Việt Nam v&agrave;o năm 1955, được chế biến từ t&ocirc;m đất. Được biết đến tr&ecirc;n đảo với c&aacute;i t&ecirc;n B&uacute;n T&ocirc;m (b&uacute;n t&ocirc;m) cho đến năm 1996, khi gia đ&igrave;nh Ki&ecirc;n X&acirc;y bắt đầu thử nghiệm hương vị, ăn thử nhiều loại hải sản tươi sống của Ph&uacute; Quốc v&agrave; gia vị c&oacute; nguồn gốc địa phương. Với c&ocirc;ng thức mới được &aacute;p dụng, nh&agrave; h&agrave;ng đ&atilde; chứng kiến ​​sự nổi tiếng đ&aacute;ng kể. Từ năm 1996 đến năm 2012, nh&agrave; h&agrave;ng gia đ&igrave;nh Kiến X&acirc;y được biết đến tr&ecirc;n khắp Việt Nam như một nơi để trải nghiệm hương vị độc quyền của m&oacute;n &#39;B&uacute;n Quay&#39;.</p>

<p><img alt="bun quay - phu quoc island" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1421011250.jpg" /></p>

<p>Một khi bạn đi ngang qua nh&agrave; h&agrave;ng, kh&ocirc;ng bao giờ c&oacute; một khoảnh khắc buồn tẻ. Ở Việt Nam, được biết đến như một &#39;m&oacute;n ăn vui vẻ&#39;, t&iacute;nh chất hợp t&aacute;c của B&uacute;n Quay khiến nơi đ&acirc;y trở th&agrave;nh một lựa chọn l&yacute; tưởng cho c&aacute;c bữa ăn tập thể. Điều cốt yếu của m&oacute;n ăn l&agrave; nước chấm - được pha ri&ecirc;ng bởi từng thực kh&aacute;ch theo sở th&iacute;ch khẩu vị của họ. Nước chấm gồm c&oacute; 4 phần gồm ớt, đường, nước mắm, sả tạo th&agrave;nh c&aacute;c phần bằng nhau, chua, ngọt, mặn, chua. Đ&aacute;nh gi&aacute; cao việc những người kh&ocirc;ng phải người d&acirc;n địa phương v&agrave; người nước ngo&agrave;i c&oacute; thể bối rối trước quy tr&igrave;nh độc đ&aacute;o, họ đ&atilde; đặt c&aacute;c biển hiệu minh họa khắp nh&agrave; h&agrave;ng bằng tiếng Anh v&agrave; tiếng Việt để đảm bảo bạn c&oacute; được trải nghiệm B&uacute;n Quay của m&igrave;nh một c&aacute;ch tốt nhất.</p>

<p>Tiếng người di chuyển v&agrave; trạm phục vụ li&ecirc;n tục c&oacute; nghĩa l&agrave; tay v&agrave; c&aacute;c gi&aacute;c quan của bạn lu&ocirc;n bận rộn. Sau khi nước sốt được tạo ra theo sở th&iacute;ch của bạn, bạn di chuyển đến quầy m&igrave;, đ&oacute; l&agrave; một thỏa th&iacute;ch thị gi&aacute;c v&agrave; kh&aacute;m ph&aacute; những n&eacute;t tinh tế của ẩm thực Việt Nam. Những người đầu bếp l&agrave;nh nghề đan những dải m&igrave; d&agrave;i bằng bột gạo, tất cả trong khi bạn khuấy nước sốt v&agrave; c&aacute;c đầu bếp đang khuấy nước s&uacute;p. Th&ecirc;m b&uacute;n, c&aacute;, t&ocirc;m, mực, rau thơm v&agrave; h&agrave;nh l&agrave; bạn đ&atilde; sẵn s&agrave;ng ngồi với t&ocirc; B&uacute;n Quay trứ danh Ph&uacute; Quốc của m&igrave;nh rồi.</p>

<p><img alt="bun quay - phu quoc island" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1384010831.jpg" /></p>

<p>B&uacute;n Quay ng&agrave;y c&agrave;ng nổi tiếng đ&atilde; chứng kiến ​​m&oacute;n ăn được nhiều đầu bếp tr&ecirc;n khắp Việt Nam s&aacute;ng tạo lại, v&agrave; giờ đ&acirc;y m&oacute;n ăn n&agrave;y được phục vụ ở nhiều v&ugrave;ng miền tr&ecirc;n cả nước. Tuy nhi&ecirc;n, kh&ocirc;ng c&oacute; nơi n&agrave;o giống như ở nh&agrave;, v&agrave; những thực kh&aacute;ch h&aacute;o hức đổ x&ocirc; đến để thử m&oacute;n B&uacute;n Quay ch&iacute;nh gốc tr&ecirc;n h&ograve;n đảo đẹp như tranh vẽ nơi khởi nguồn của n&oacute;.</p>

<p>Ph&uacute; Quốc hiện c&oacute; hơn mười nh&agrave; h&agrave;ng B&uacute;n Quay, mỗi nh&agrave; h&agrave;ng mang đến một trải nghiệm hơi kh&aacute;c nhau, nhưng tất cả đều sử dụng những nguy&ecirc;n liệu địa phương v&agrave; hải sản tươi ngon nhất của Ph&uacute; Quốc. Mặc d&ugrave; nổi tiếng khắp Việt Nam, nhưng đ&acirc;y vẫn l&agrave; một m&oacute;n ăn tương đối &iacute;t được biết đến tr&ecirc;n to&agrave;n thế giới. Tuy nhi&ecirc;n, hầu hết thực kh&aacute;ch nước ngo&agrave;i may mắn được ăn thử đều quay lại nhiều lần trong thời gian ở Ph&uacute; Quốc; họ say m&ecirc; hương vị v&agrave; bị quyến rũ bởi qu&aacute; tr&igrave;nh n&agrave;y.</p>

<p><img alt="bun quay - phu quoc island" src="https://vietnam.travel/sites/default/files/inline-images/shutterstock_1384010837.jpg" /></p>

<p><span style="color:#A9A9A9"><em>Để thử m&oacute;n B&uacute;n Quay tr&ecirc;n đảo Ph&uacute; Quốc, bạn c&oacute; thể đến đ&acirc;y:</em></span></p>

<p>Qu&aacute;n B&uacute;n Quay - Kiến X&acirc;y, 28 Bạch Đằng, Dương Đ&ocirc;ng, được nhiều du kh&aacute;ch y&ecirc;u th&iacute;ch.</p>

<p>Qu&aacute;n B&uacute;n Quay - Th&agrave;nh H&ugrave;ng, 77 Đường 30/4, Dương Đ&ocirc;ng, l&agrave; địa chỉ nổi tiếng đối với cả du kh&aacute;ch trong nước v&agrave; Việt Nam.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'anhdt', N'shutterstock_1384010831_0.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [MoTaNgan], [MoTaChiTiet], [NgayTao], [NgayCapNhat], [TenDangNhap], [HinhAnhMinhHoa]) VALUES (16, N'Bảo tàng', N'Bảo tàng không thể bỏ qua của Việt Nam', N'<p style="text-align:justify">Lịch sử Việt Nam c&ograve;n l&acirc;u mới thẳng thắn. Đ&atilde; c&oacute; rất nhiều truyền thuyết, nhiều cuộc x&acirc;m lược v&agrave; nhiều cuộc thay đổi, đ&oacute; l&agrave; l&yacute; do tại sao việc chung tay giải m&atilde; tất cả l&agrave; điều hữu &iacute;ch. C&aacute;c bảo t&agrave;ng của Việt Nam l&agrave; điểm khởi đầu ho&agrave;n hảo cho bất kỳ du kh&aacute;ch n&agrave;o muốn hiểu r&otilde; hơn về điểm đến. Đi s&acirc;u hơn để hiểu một chương cụ thể của lịch sử đất nước hoặc để biết một kh&iacute;a cạnh kỳ lạ của nền văn h&oacute;a đầy m&agrave;u sắc của n&oacute;. Dưới đ&acirc;y l&agrave; danh s&aacute;ch c&aacute;c bảo t&agrave;ng tuyệt vời d&agrave;nh ri&ecirc;ng cho người Việt Nam v&agrave; c&aacute;ch sống của họ.</p>

<p style="text-align:justify"><span style="font-size:16px"><span style="color:#A9A9A9"><strong><em>Miền bắc việt nam</em></strong></span></span></p>

<p style="text-align:justify"><strong><span style="color:#A52A2A"><span style="font-size:16px">Bảo t&agrave;ng Phụ nữ Việt Nam</span></span></strong></p>

<p style="text-align:justify"><span style="font-size:14px">C&aacute;ch Hồ Gươm H&agrave; Nội chỉ v&agrave;i ph&uacute;t về ph&iacute;a Nam, Bảo t&agrave;ng Phụ nữ Việt Nam l&agrave; minh chứng cho vai tr&ograve; quan trọng của phụ nữ trong lịch sử v&agrave; văn h&oacute;a địa phương. Phụ nữ Việt Nam từ l&acirc;u đ&atilde; giữ vững vị tr&iacute; của m&igrave;nh trong x&atilde; hội v&agrave; bảo t&agrave;ng t&ocirc;n vinh điều n&agrave;y bằng c&aacute;c cuộc triển l&atilde;m v&agrave; trưng b&agrave;y tương t&aacute;c theo chủ đề. Điểm nổi bật bao gồm một tầng trang phục truyền thống của c&aacute;c nh&oacute;m d&acirc;n tộc thiểu số v&agrave; những c&acirc;u chuyện chi tiết kh&aacute;c về những người phụ nữ đ&atilde; chiến đấu cho Việt Nam trong v&agrave; ngo&agrave;i chiến trường.</span></p>

<p style="text-align:justify"><img alt="Vietnamese history" src="https://vietnam.travel/sites/default/files/inline-images/war%20museum%20in%20vietnam.jpg" /><strong>Admission:&nbsp;</strong>40,000 VND<br />
<strong>Hours:</strong>&nbsp;8:00am to 5:00pm daily<br />
<strong>Address:</strong>&nbsp;36 Ly Thuong Kiet, Hoan Kiem, Hanoi</p>

<hr />
<p style="text-align:justify"><strong><span style="color:#A52A2A"><span style="font-size:16px">Bảo t&agrave;ng D&acirc;n tộc học</span></span></strong></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#000000">Bảo t&agrave;ng D&acirc;n tộc học cung cấp một cuộc kh&aacute;m ph&aacute; mới mẻ v&agrave; to&agrave;n diện về 54 d&acirc;n tộc của Việt Nam. Sảnh ch&iacute;nh trưng b&agrave;y quần &aacute;o truyền thống của từng d&acirc;n tộc, hộ gia đ&igrave;nh, nhạc cụ, c&ocirc;ng cụ v&agrave; đồ tạo t&aacute;c qu&yacute; gi&aacute;. C&aacute;c cuộc triển l&atilde;m ngo&agrave;i trời bao gồm c&aacute;c bản sao của c&aacute;c ng&ocirc;i nh&agrave; d&acirc;n tộc thiểu số với quy m&ocirc; đầy đủ, v&agrave; c&aacute;nh thứ hai d&agrave;nh ri&ecirc;ng cho c&aacute;c t&aacute;c phẩm nghệ thuật của c&aacute;c nền văn h&oacute;a Đ&ocirc;ng Nam &Aacute;.</span></span></p>

<p style="text-align:justify"><img alt="best museums in Vietnam" src="https://vietnam.travel/sites/default/files/inline-images/Vietnam%20museum%20of%20ethnology.jpg" /><em>MẸO: Bạn t&ograve; m&ograve; về m&uacute;a rối nước Việt Nam? Tại Bảo t&agrave;ng D&acirc;n tộc học, bạn c&oacute; thể thưởng thức c&aacute;c buổi biểu diễn miễn ph&iacute; hai lần mỗi ng&agrave;y trong vườn.</em></p>

<p style="text-align:justify"><strong>Admission:</strong>&nbsp;40,000 VND<br />
<strong>Hours:</strong>&nbsp;8:30am to 5:30pm daily, closed Mondays<br />
<strong>Address:</strong>&nbsp;Nguyen Van Huyen, Cau Giay, Hanoi</p>

<hr />
<p style="text-align:justify"><strong><span style="color:#A52A2A"><span style="font-size:16px">Bảo t&agrave;ng Mỹ thuật Quốc gia Việt Nam</span></span></strong></p>

<p style="text-align:justify">Ban đầu l&agrave; trường học d&agrave;nh cho con g&aacute;i của c&aacute;c quan chức Đ&ocirc;ng Dương v&agrave;o những năm 1930, t&ograve;a nh&agrave; m&agrave;u hồng nhạt n&agrave;y đ&atilde; được chuyển th&agrave;nh Bảo t&agrave;ng Mỹ thuật Quốc gia Việt Nam. L&agrave; nơi lưu giữ hơn 2.000 t&aacute;c phẩm ở nhiều phương tiện kh&aacute;c nhau, bảo t&agrave;ng l&agrave; nơi lưu giữ lịch sử về kỹ thuật v&agrave; tr&iacute; tưởng tượng của c&aacute;c nghệ sĩ Việt Nam trước v&agrave; trong suốt thế kỷ 20. Nằm đối diện với Văn Miếu v&agrave; c&aacute;ch Ho&agrave;ng th&agrave;nh Thăng Long 10 ph&uacute;t đi bộ, bảo t&agrave;ng n&agrave;y l&agrave; một điểm dừng ch&acirc;n tuyệt vời trong chuyến du ngoạn H&agrave; Nội.</p>

<p style="text-align:justify"><img alt="vietnam museum of fine arts" src="https://vietnam.travel/sites/default/files/inline-images/museums%20in%20Vietnam-4.jpg" /></p>

<p style="text-align:justify"><strong>Admission:</strong>&nbsp;40,000VND<br />
<strong>Hours:</strong>&nbsp;8:30am to 5:00pm daily, closed Mondays<br />
<strong>Address:</strong>&nbsp;66 Nguyen Thai Hoc, Ba Dinh, Hanoi</p>

<hr />
<h3 style="text-align:justify"><strong><span style="color:#A52A2A"><span style="font-size:16px">Ho Chi Minh Museum</span></span></strong></h3>

<p style="text-align:justify"><span style="color:#000000"><span style="font-size:14px">Nằm sau nơi an nghỉ cuối c&ugrave;ng của anh h&ugrave;ng d&acirc;n tộc Hồ Ch&iacute; Minh, bảo t&agrave;ng ấn tượng n&agrave;y l&agrave; nơi d&agrave;nh ri&ecirc;ng cho cuộc đời của &lsquo;B&aacute;c Hồ&rsquo;. Ph&ograve;ng triển l&atilde;m ch&iacute;nh của bảo t&agrave;ng do sinh vi&ecirc;n trường Đại học Mỹ thuật H&agrave; Nội x&acirc;y dựng v&agrave; đưa du kh&aacute;ch v&agrave;o cuộc h&agrave;nh tr&igrave;nh về cuộc đời của Chủ tịch Hồ Ch&iacute; Minh. C&aacute;c t&aacute;c phẩm nghệ thuật sắp đặt si&ecirc;u thực v&agrave; c&ocirc;ng phu m&ocirc; tả di sản của &ocirc;ng, từ n&ocirc;ng th&ocirc;n Việt Nam đến c&aacute;ch mạng.</span></span></p>

<p style="text-align:justify"><img alt="museum in Vietnam" src="https://vietnam.travel/sites/default/files/inline-images/vietnamese%20history.jpg" /><strong>Admission:</strong>&nbsp;40,000VND<br />
<strong>Hours:</strong>&nbsp;8:00am to noon daily, 2:00pm to 4.30pm Tuesday to Thursday, Saturday and Sunday<br />
<strong>Address:</strong>&nbsp;19 Ngoc Ha, Ba Dinh, Hanoi</p>

<hr />
<h4 style="text-align:justify"><span style="color:#A9A9A9"><span style="font-size:16px"><em><strong>Miền Trung Việt Nam</strong></em></span></span></h4>

<p style="text-align:justify"><span style="color:#A52A2A"><span style="font-size:16px"><strong>Bảo t&agrave;ng đi&ecirc;u khắc Chăm</strong></span></span></p>

<p style="text-align:justify">Được x&acirc;y dựng v&agrave;o năm 1915 bởi Trường Viễn Đ&ocirc;ng B&aacute;c cổ Ph&aacute;p, Bảo t&agrave;ng Đi&ecirc;u khắc Chăm ở Đ&agrave; Nẵng l&agrave; nơi lưu giữ bộ sưu tập đồ tạo t&aacute;c Chăm lớn nhất thế giới. Khoa khảo cổ của trường đ&atilde; hợp t&aacute;c với hai kiến ​​tr&uacute;c sư người Ph&aacute;p để thiết kế một t&ograve;a nh&agrave; lấy cảm hứng từ đế chế h&ugrave;ng mạnh một thời ở Việt Nam. C&aacute;c bức tượng v&agrave; chạm khắc của c&aacute;c vị thần linh thi&ecirc;ng c&oacute; ở khắp mọi nơi, với c&aacute;c phần bằng đ&aacute; sa thạch, đất nung v&agrave; đồng.</p>

<p style="text-align:justify"><img alt="best museums in Vietnam" src="https://vietnam.travel/sites/default/files/inline-images/museums%20in%20Vietnam-11.jpg" /></p>

<p style="text-align:justify"><strong>Admission:</strong>&nbsp;40,000VND<br />
<strong>Hours:</strong>&nbsp;7:00am to 5:00pm daily<br />
<strong>Address:</strong>&nbsp;1 Trung Nu Vuong, Hai Chau, Da Nang</p>

<hr />
<p style="text-align:justify"><em><span style="color:#A9A9A9"><span style="font-size:16px"><strong>Miền nam việt nam</strong></span></span></em></p>

<p style="text-align:justify"><span style="color:#A52A2A"><span style="font-size:16px"><strong>Bảo t&agrave;ng Mỹ thuật Hồ Ch&iacute; Minh</strong></span></span></p>

<p style="text-align:justify"><span style="color:#000000"><span style="font-size:14px">Nằm trong ng&ocirc;i nh&agrave; cũ của một gia đ&igrave;nh thương gia gi&agrave;u c&oacute; người Hoa, Bảo t&agrave;ng Mỹ thuật Hồ Ch&iacute; Minh l&agrave; một v&iacute; dụ tuyệt đẹp về kiến ​​tr&uacute;c thời Indochine, v&agrave; l&agrave; nơi trưng b&agrave;y nhiều t&aacute;c phẩm c&oacute; gi&aacute; trị. Tầng 1 c&oacute; triển l&atilde;m lu&acirc;n phi&ecirc;n, c&ograve;n tầng tr&ecirc;n c&oacute; c&aacute;c khu trưng b&agrave;y tượng, đồ sơn m&agrave;i, tranh khắc gỗ truyền thống v&agrave; nhiều ph&ograve;ng d&agrave;nh ri&ecirc;ng cho nghệ thuật truyền thống v&agrave; đương đại Việt Nam.</span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><img alt="vietnam museum of fine arts" src="https://vietnam.travel/sites/default/files/inline-images/best%20museums%20in%20vietnam%20%282%29.jpg" /></p>

<p style="text-align:justify"><strong>Admission:&nbsp;</strong>10,000 VND<br />
<strong>Hours:</strong>&nbsp;9:00am to 5:00pm daily, closed Mondays<br />
<strong>Address:</strong>&nbsp;97A Duc Chinh, Nguyen Thai Binh, District 1, Ho Chi Minh City</p>

<hr />
<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="color:#A52A2A"><span style="font-size:16px"><strong>Bảo t&agrave;ng Y học Cổ truyền Việt Nam</strong></span></span></p>

<p style="text-align:justify">Bảo t&agrave;ng Y học Cổ truyền Việt Nam (FITO Museum) t&aacute;i hiện một b&agrave;i thuốc cổ, với đầy đủ c&aacute;c loại dược liệu, rễ c&acirc;y v&agrave; c&aacute;c sản phẩm kh&aacute;c. Y học cổ truyền Việt Nam c&oacute; một lịch sử s&acirc;u rộng v&agrave; bộ sưu tập của bảo t&agrave;ng bao gồm hơn 3.000 hiện vật, một số c&oacute; ni&ecirc;n đại từ thời kỳ đồ đ&aacute;. H&atilde;y đến đ&acirc;y để t&igrave;m hiểu c&aacute;c phương ph&aacute;p chữa bệnh bằng thảo dược đ&atilde; được sử dụng t&iacute;ch cực ở Việt Nam trong h&agrave;ng thi&ecirc;n ni&ecirc;n kỷ như thế n&agrave;o v&agrave; những truyền thống n&agrave;y vẫn c&ograve;n tồn tại trong cuộc sống h&agrave;ng ng&agrave;y của người Việt Nam như thế n&agrave;o.</p>

<p style="text-align:justify"><img alt="museum in Vietnam" src="https://vietnam.travel/sites/default/files/inline-images/vietnamese%20culture%20%282%29.jpg" /></p>

<p style="text-align:justify"><strong>Admission:</strong>&nbsp;120,000 VND<br />
<strong>Hours:</strong>&nbsp;8:30am to 5:00pm daily<br />
<strong>Address:</strong>&nbsp;41 Hoang Du Khuong, Ward 12, District 10, Ho Chi Minh City</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'anhdt', N'vietnam museum guide-3_0.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [MoTaNgan], [MoTaChiTiet], [NgayTao], [NgayCapNhat], [TenDangNhap], [HinhAnhMinhHoa]) VALUES (18, N'CHIẾN LƯỢC AN TOÀN', N'Cách Việt Nam vượt qua đại dịch', N'<p><span style="font-family:trebuchet ms,helvetica,sans-serif"><span style="color:#A9A9A9"><span style="font-size:16px">Đối với Việt Nam, khả năng phục hồi l&agrave; điều đương nhi&ecirc;n. Khi đại dịch COVID-19 đến, người Việt Nam biết rằng bằng c&aacute;ch l&agrave;m việc c&ugrave;ng nhau, họ c&oacute; thể vượt qua khủng hoảng. Trải qua hai đợt đại dịch, người Việt Nam đ&atilde; tu&acirc;n theo chỉ đạo của ch&iacute;nh phủ v&agrave; c&aacute;c quan chức y tế, coi sự an to&agrave;n của đất nước l&agrave; ưu ti&ecirc;n h&agrave;ng đầu. Do đ&oacute;, vi-r&uacute;t đ&atilde; nhanh ch&oacute;ng bị kiềm chế v&agrave; c&aacute;c th&oacute;i quen b&igrave;nh thường trở lại chỉ sau v&agrave;i tuần xa c&aacute;ch x&atilde; hội. Đọc tiếp để t&igrave;m hiểu th&ecirc;m về c&aacute;ch Việt Nam xử l&yacute; th&agrave;nh c&ocirc;ng vi-r&uacute;t v&agrave; điều g&igrave; khiến đất nước n&agrave;y trở th&agrave;nh một trong những nơi an to&agrave;n nhất để đến thăm khi bi&ecirc;n giới mở cửa</span></span></span></p>

<hr />
<p><span style="font-size:16px"><span style="color:#A52A2A"><strong>Chiến lược</strong></span></span></p>

<p><img alt="vietnam coronavirus response" src="https://vietnam.travel/sites/default/files/inline-images/Vietnam%20covid%2019%20success-3.jpg" /></p>

<p>Việt Nam đ&atilde; phải đối mặt với một số cuộc khủng hoảng sức khỏe trong những năm gần đ&acirc;y. Khi COVID-19 xuất hiện, Việt Nam đặc biệt dễ bị tổn thương do c&oacute; đường bi&ecirc;n giới d&agrave;i với Trung Quốc v&agrave; nguồn lực chăm s&oacute;c sức khỏe hạn chế. Ch&iacute;nh phủ đ&atilde; sớm h&agrave;nh động quyết liệt để ngăn chặn một đợt b&ugrave;ng ph&aacute;t to&agrave;n diện. Một tuần sau khi trường hợp COVID-19 đầu ti&ecirc;n được x&aacute;c nhận trong nước, Thủ tướng Ch&iacute;nh phủ đ&atilde; tuy&ecirc;n bố c&oacute; dịch trong nước. Một Ban Chỉ đạo Quốc gia về Ph&ograve;ng chống COVID-19 được th&agrave;nh lập để điều phối v&agrave; chỉ đạo chiến lược của ch&iacute;nh phủ một c&aacute;ch thống nhất.</p>

<p>Ch&iacute;nh phủ đ&atilde; dựa v&agrave;o việc truy t&igrave;m li&ecirc;n lạc, kiểm tra rộng r&atilde;i v&agrave; kh&oacute;a mục ti&ecirc;u để ngăn chặn vi r&uacute;t l&acirc;y lan trong c&aacute;c cộng đồng địa phương. Việc truy t&igrave;m v&agrave; x&eacute;t nghiệm dựa tr&ecirc;n nguy cơ l&acirc;y nhiễm, thay v&igrave; c&aacute;c triệu chứng. Điều n&agrave;y khiến nhiều bệnh nh&acirc;n tiệm cận kh&ocirc;ng truyền vi-r&uacute;t cho người kh&aacute;c. Việt Nam đ&atilde; sớm quyết định đ&oacute;ng cửa bi&ecirc;n giới với du kh&aacute;ch, đ&igrave;nh chỉ c&aacute;c cuộc tụ tập đ&ocirc;ng người v&agrave; y&ecirc;u cầu c&aacute;ch ly đối với tất cả những người đến nước ngo&agrave;i. Khi kh&ocirc;ng c&oacute; rủi ro mới từ b&ecirc;n ngo&agrave;i, Việt Nam tập trung to&agrave;n lực v&agrave;o việc ti&ecirc;u diệt vi r&uacute;t trong phạm vi bi&ecirc;n giới của m&igrave;nh.</p>

<hr />
<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Chuẩn bị v&agrave; cung cấp</strong></span></span></p>

<p><img alt="vietnam coronavirus update" src="https://vietnam.travel/sites/default/files/inline-images/vietnam%20coronavirus%20response.jpg" />Ngay cả trước khi những ca nhiễm COVID-19 đầu ti&ecirc;n đến Việt Nam v&agrave;o ng&agrave;y 23/1, Bộ Y tế đ&atilde; bắt đầu chuẩn bị cho một đợt b&ugrave;ng ph&aacute;t c&oacute; thể xảy ra. Doanh trại qu&acirc;n đội được chuyển th&agrave;nh trại c&aacute;ch ly v&agrave; bệnh viện d&atilde; chiến với h&agrave;ng ngh&igrave;n giường bệnh được chuẩn bị sẵn s&agrave;ng. Việt Nam đ&atilde; th&agrave;nh lập 45 đội phản ứng nhanh tr&ecirc;n to&agrave;n quốc v&agrave; 31 bệnh viện tư nh&acirc;n đ&atilde; tổ chức lực lượng đặc nhiệm của ri&ecirc;ng họ. C&aacute;c cơ sở x&eacute;t nghiệm v&agrave; đường d&acirc;y n&oacute;ng y tế nhanh ch&oacute;ng được mở cửa cho c&ocirc;ng ch&uacute;ng. Ng&agrave;y nay, Việt Nam c&oacute; hơn 200 trung t&acirc;m x&eacute;t nghiệm c&oacute; thể thu thập tới 46.000 mẫu mỗi ng&agrave;y.</p>

<p>V&agrave;o ng&agrave;y 1 th&aacute;ng 2, ch&iacute;nh phủ hứa sẽ cung cấp li&ecirc;n tục c&aacute;c nguồn cung cấp cho c&ocirc;ng ch&uacute;ng. Bộ Y tế đẩy mạnh sản xuất khẩu trang v&agrave; tất cả c&aacute;c cửa h&agrave;ng ở Việt Nam bắt buộc phải mang khẩu trang v&agrave; nước rửa tay để b&aacute;n. Ch&iacute;nh phủ quyết định đ&agrave;i thọ chi ph&iacute; y tế cho bất kỳ ai bị nhiễm vi r&uacute;t, v&agrave; người Việt Nam được lưu tr&uacute; c&aacute;ch ly miễn ph&iacute; trong hầu hết thời gian xảy ra đại dịch. Nhờ c&oacute; chỉ thị r&otilde; r&agrave;ng, Việt Nam kh&ocirc;ng bị thiếu thực phẩm, khẩu trang, kể cả trong thời gian kh&oacute;a cửa, v&agrave; người Việt Nam c&oacute; thể tranh thủ kiểm tra, kiểm dịch.</p>

<hr />
<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Phản ứng ngăn chặn</strong></span></span></p>

<p><img alt="vietnam covid update" src="https://vietnam.travel/sites/default/files/inline-images/vietnam%20coronavirus%20response%20%282%29.jpg" /></p>

<p>Việt Nam đ&atilde; sử dụng c&aacute;c biện ph&aacute;p đ&oacute;ng cửa bi&ecirc;n giới v&agrave; kh&oacute;a mục ti&ecirc;u để ngăn chặn việc truyền tải của cộng đồng. V&agrave;o ng&agrave;y 31 th&aacute;ng 1, Việt Nam đ&atilde; đ&oacute;ng cửa bi&ecirc;n giới với Trung Quốc v&agrave; trong những tuần tới, nhiều cuộc đ&oacute;ng cửa khỏi c&aacute;c khu vực bị ảnh hưởng đ&atilde; được c&ocirc;ng bố, cho đến khi Việt Nam đ&oacute;ng cửa ho&agrave;n to&agrave;n bi&ecirc;n giới v&agrave;o ng&agrave;y 22 th&aacute;ng 3. Người Việt Nam v&agrave; người nước ngo&agrave;i trở về từ nước ngo&agrave;i được đưa thẳng v&agrave;o kiểm dịch, nơi họ được đưa nhiều lần kiểm tra trước khi xuất viện.</p>

<p><img alt="vietnam coronavirus timeline" src="https://vietnam.travel/sites/default/files/inline-images/covid%20pandemic%20vietnam__1.jpg" /></p>

<hr />
<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Theo d&otilde;i v&agrave; thử nghiệm</strong></span></span></p>

<p><img alt="vietnam covid update" src="https://vietnam.travel/sites/default/files/inline-images/covid%20situation%20in%20vietnam.jpg" /></p>

<p>Việt Nam đ&atilde; chọn &aacute;p dụng phương ph&aacute;p theo d&otilde;i li&ecirc;n hệ mức độ thứ ba, sử dụng cả phương ph&aacute;p thủ c&ocirc;ng v&agrave; c&ocirc;ng nghệ cao. C&aacute;c quan chức y tế đ&atilde; kiểm tra v&agrave; c&aacute;ch ly những người tiếp x&uacute;c gần với từng người bị nhiễm bệnh, cho d&ugrave; họ c&oacute; biểu hiện triệu chứng hay kh&ocirc;ng. C&aacute;c li&ecirc;n hệ của những người đ&oacute; lần lượt được đưa v&agrave;o diện c&aacute;ch ly tại nh&agrave;, v&agrave; đến lượt c&aacute;c địa chỉ li&ecirc;n hệ của họ. Bất kỳ ai c&oacute; kết quả x&eacute;t nghiệm dương t&iacute;nh đều được đưa v&agrave;o chăm s&oacute;c y tế, trong khi những người c&oacute; kết quả x&eacute;t nghiệm &acirc;m t&iacute;nh tự c&aacute;ch ly tại nh&agrave;. Mọi người trong nước đều được y&ecirc;u cầu điền v&agrave;o c&aacute;c tờ khai y tế v&agrave; ngay sau đ&oacute; ch&iacute;nh phủ đ&atilde; tung ra c&aacute;c ứng dụng theo d&otilde;i để mọi người x&aacute;c định khả năng phơi nhiễm.</p>

<hr />
<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Th&ocirc;ng tin c&ocirc;ng cộng</strong></span></span></p>

<p><img alt="covid situation in vietnam" src="https://vietnam.travel/sites/default/files/inline-images/Vietnam%20covid%20success.jpg" /></p>

<p>Bộ Th&ocirc;ng tin nhận nhiệm vụ chuyển tải tin tức v&agrave; tư vấn cho c&ocirc;ng ch&uacute;ng. Người d&acirc;n địa phương c&oacute; quyền truy cập v&agrave;o c&aacute;c bản cập nhật mới nhất th&ocirc;ng qua cổng th&ocirc;ng tin web COVID-19 ch&iacute;nh thức, được cập nhật h&agrave;ng ng&agrave;y với th&ocirc;ng tin minh bạch về c&aacute;c trường hợp mới. C&aacute;c tin nhắn SMS được gửi thường xuy&ecirc;n từ Bộ Y tế đưa ra c&aacute;c khuyến c&aacute;o về sức khỏe v&agrave; khuyến kh&iacute;ch những người c&oacute; triệu chứng gọi đến đường d&acirc;y n&oacute;ng về sức khỏe.</p>

<p>Chiến dịch truyền th&ocirc;ng đ&atilde; tiến th&ecirc;m một bước khi một b&agrave;i h&aacute;t pop từ năm 2017 được phối lại th&agrave;nh một b&agrave;i h&aacute;t chống COVID-19. Được đặt t&ecirc;n l&agrave; &lsquo;Ghen Co Vy&rsquo; (COVID ghen tị), giai điệu hấp dẫn đ&atilde; n&ecirc;u ra c&aacute;c phương ph&aacute;p hay nhất để đẩy l&ugrave;i vi r&uacute;t. N&oacute; cũng thu h&uacute;t hơn 65 triệu lượt xem tr&ecirc;n YouTube v&agrave; sự ch&uacute; &yacute; của quốc tế. Bộ Y tế Việt Nam sau đ&oacute; đ&atilde; hợp t&aacute;c với TikTok v&agrave; UNICEF trong một chiến dịch &lsquo;#ONhaVanVui&rsquo; (ở nh&agrave; l&agrave; vui), chiến dịch n&agrave;y đ&atilde; c&oacute; hơn 10 tỷ lượt xem tổng hợp.</p>
', CAST(N'2021-10-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'anhdt', N'Vietnam covid 19 success-2.jpg')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (5, 1, N'Hành Trình Tới Thăm Cao Nguyên Đá Hà Giang', N'Hà Giang', N'10', N'3 Ngày 2 Đêm', N'Ô tô', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Hà Giang được biết tới là điểm đến mang sắc thái của miền sơn cước núi rừng trùng điệp như một bức tranh thủy mặc, Quý khách sẽ không khỏi ngỡ ngàng khi lạc mình giữa chốn thiên nhiên kỳ thú khi đến với Hà Giang. Với địa hình phong phú, núi non trùng điệp, Hà Giang hứa hẹn là điểm đến du lịch hấp dẫn cho mỗi bước chân khám phá của Quý khách.', N'<ul>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: H&agrave; Nội - Quản Bạ (Ăn trưa; Ăn tối)</span></span></h5>

	<p><strong>06h00:</strong>&nbsp;Xe đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn trong trung t&acirc;m H&agrave; Nội khởi h&agrave;nh đi H&agrave; Giang, tỉnh cực Bắc của Việt Nam v&agrave; được biết tới l&agrave; một trong những v&ugrave;ng đất chưa ho&agrave;n to&agrave;n hiện đại h&oacute;a, c&ograve;n lưu giữ được vẻ đẹp hoang sơ v&agrave; n&eacute;t văn ho&aacute; địa phương truyền thống. Tr&ecirc;n đường đi xe sẽ dừng để qu&yacute; kh&aacute;ch ăn s&aacute;ng theo y&ecirc;u cầu (Chi ph&iacute; kh&ocirc;ng bao gồm)</p>

	<p><strong>09h30:</strong>&nbsp;Đo&agrave;n dừng nghỉ tại Tp. Tuy&ecirc;n Quang, Qu&yacute; kh&aacute;ch tự do nghỉ ngơi, uống nước (Chi ph&iacute; kh&ocirc;ng bao gồm)</p>

	<p><strong>12h00:</strong>&nbsp;Đo&agrave;n dừng nghỉ v&agrave; ăn trưa tại nh&agrave; h&agrave;ng tại thị trấn Vinh Quang, huyện Bắc Quang tỉnh H&agrave; Giang. Sau bữa trưa, đo&agrave;n tiếp tục di chuyển tới huyện Quản Bạ.</p>

	<p><strong>15h30:</strong>&nbsp;Xe tới điểm dừng ch&acirc;n&nbsp;<strong>Cổng Trời Quản Bạ</strong>. Từ đ&acirc;y Qu&yacute; kh&aacute;ch c&oacute; thể chứng kiến tận mắt kiệt t&aacute;c của thi&ecirc;n nhi&ecirc;n v&agrave; nghe những truyền thuyết cảm động về&nbsp;<strong>N&uacute;i Đ&ocirc;i Quản Bạ</strong>, 2 ngọn n&uacute;i tr&ograve;n trịa, quyến rũ như bộ ngực căng tr&ograve;n của n&agrave;ng ti&ecirc;n đang say giấc nồng giữa n&uacute;i rừng kỳ vĩ.</p>

	<p><strong>16h00:</strong>&nbsp;Đo&agrave;n tới&nbsp;<strong>H&rsquo;mong Village Resort</strong>, khu nghỉ dưỡng tuyệt đẹp giữa l&ograve;ng cao nguy&ecirc;n đ&aacute; H&agrave; Giang với bể bơi v&ocirc; cực lặng lẽ, giản dị nhưng kh&ocirc;ng k&eacute;m phần sang trọng. Qu&yacute; kh&aacute;ch l&agrave;m thủ tục check-in, nhận ph&ograve;ng v&agrave; nghỉ ngơi tự do.&nbsp;</p>

	<p>Sở hữu bể bơi v&ocirc; cực với view tuyệt đẹp của thung lũng Tr&aacute;ng K&igrave;m c&ugrave;ng hệ thống nước kho&aacute;ng tự nhi&ecirc;n chảy hai chiều song song, H&rsquo;mong Village Resort hứa hẹn sẽ mang đến cho Qu&yacute; kh&aacute;ch những ph&uacute;t gi&acirc;y thư gi&atilde;n, h&ograve;a m&igrave;nh với thi&ecirc;n nhi&ecirc;n.</p>

	<p><strong>18h30:</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tại nh&agrave; h&agrave;ng của Resort với những m&oacute;n ăn đặc sản địa phương. Sau bữa tối, đo&agrave;n tự do kh&aacute;m ph&aacute; Resort v&agrave; tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh của thi&ecirc;n nhi&ecirc;n nơi đ&acirc;y.</p>

	<p>Nghỉ đ&ecirc;m tại H&rsquo;Mong Village Resort.</p>
	</li>
	<li>
	<h5><span style="font-size:16px"><span style="color:#DAA520">Ng&agrave;y 2: Quản Bạ - Đồng Văn - Y&ecirc;n Minh (Ăn s&aacute;ng; Ăn trưa; Ăn tối)</span></span></h5>

	<p><strong>07h00:</strong>&nbsp;Sau bữa s&aacute;ng tại Resort, đo&agrave;n check-out v&agrave; di chuyển tới x&atilde; Sủng L&agrave;, nơi người ta vẫn gọi l&agrave; b&ocirc;ng hoa rực rỡ giữa cao nguy&ecirc;n đ&aacute; lu&ocirc;n cuốn h&uacute;t du kh&aacute;ch bởi vẻ đẹp hết sức b&igrave;nh dị, mộc mạc của những ruộng ng&ocirc; xanh mướt, những dải hoa Tam gi&aacute;c mạch phủ khắp c&aacute;c triền đồi, những m&aacute;i nh&agrave; tường tr&igrave;nh nhỏ nhắn,&hellip; Tr&ecirc;n đường đi Qu&yacute; kh&aacute;ch sẽ dừng nghỉ, tham quan v&agrave; chụp ảnh tại&nbsp;Phố C&aacute;o&nbsp;với những ng&ocirc;i nh&agrave; đặc trưng của người H&rsquo;m&ocirc;ng bởi những h&agrave;ng r&agrave;o đ&aacute; cung quanh nh&agrave;.</p>

	<p><strong>09h00:</strong>&nbsp;Đo&agrave;n c&oacute; mặt tại l&agrave;ng văn ho&aacute; du lịch th&ocirc;n Lũng Cẩm, Qu&yacute; kh&aacute;ch tới thăm ng&ocirc;i nh&agrave; cổ nơi được chọn l&agrave;m&nbsp;phim trường bộ phim &ldquo;Chuyện Của Pao&rdquo;. Bộ phim được chuyển thể từ truyện ngắn &ldquo;Tiếng đ&agrave;n m&ocirc;i sau bờ r&agrave;o đ&aacute;&rdquo; của nh&agrave; văn Đỗ B&iacute;ch Thủy do đạo diễn Ng&ocirc; Quang Hải thực hiện đ&atilde; gi&agrave;nh được 4 giải C&aacute;nh diều v&agrave;ng v&agrave;o năm 2006. HDV sẽ dẫn đo&agrave;n tham quan v&agrave; t&igrave;m hiểu vẻ đep của ng&ocirc;i nh&agrave; tr&igrave;nh tường, một t&agrave;i sản thuộc tầng lớp qu&yacute; tộc xưa của đồng b&agrave;o người M&ocirc;ng với tuổi đời gần 100 năm.</p>

	<p><strong>09h45:&nbsp;</strong>Đo&agrave;n tiếp tục gh&eacute; thăm&nbsp;Dinh Vua M&egrave;o Vương Ch&iacute;nh Đức tại thung lũng S&agrave; Ph&igrave;n, một c&ocirc;ng tr&igrave;nh đặc sắc đ&atilde; được xếp hạng di t&iacute;ch Quốc Gia v&agrave;o năm 1993. Sở hữu sự giao thoa kiến tr&uacute;c th&uacute; vị c&ugrave;ng một sự hợp lưu văn h&oacute;a một c&aacute;ch tự nhi&ecirc;n kh&ocirc;ng hề khi&ecirc;n cưỡng, khi đến đ&acirc;y, Qu&yacute; kh&aacute;ch kh&ocirc;ng chỉ được chi&ecirc;m ngưỡng khiến tr&uacute;c độc đ&aacute;o của ng&ocirc;i nh&agrave; cổ l&acirc;u đời m&agrave; c&ograve;n c&oacute; cơ hội kh&aacute;m ph&aacute; văn h&oacute;a của đồng b&agrave;o H&rsquo;m&ocirc;ng tại đ&acirc;y.</p>

	<p><strong>10h15:&nbsp;</strong>Xe đưa đo&agrave;n di chuyển tới&nbsp;cột cờ Lũng C&uacute; &ndash; Nơi địa đầu cực Bắc của Tổ Quốc, hay c&ograve;n được mi&ecirc;u tả l&agrave;: &ldquo;Nơi c&uacute;i mặt s&aacute;t đất, ngẩng mặt đụng trời&rdquo;. Từ cột cờ Lũng C&uacute;, bạn c&oacute; thể ngắm phong cảnh ruộng bậc thang đẹp mắt xen kẽ những m&aacute;i nh&agrave; của d&acirc;n tộc L&ocirc; L&ocirc; trong bản S&eacute;o Lủng b&ecirc;n dưới.&nbsp;</p>

	<p><strong>12h00:&nbsp;</strong>Đo&agrave;n d&ugrave;ng bữa trưa tại homestay tại bản L&ocirc; L&ocirc; Chải. Sau bữa trưa, Qu&yacute; kh&aacute;ch c&oacute; thể dạo bước b&ecirc;n những ng&ocirc;i nh&agrave; tr&igrave;nh tường để cảm nhận được sự y&ecirc;n b&igrave;nh của mảnh đất miền viễn bi&ecirc;n.</p>

	<p><strong>13h30:</strong>&nbsp;Qu&yacute; kh&aacute;ch di chuyển tới T&agrave; L&agrave;ng, tại đ&acirc;y đội ngũ xe &ocirc;m do những người địa phương d&agrave;y dạn kinh nghiệm sẽ cầm l&aacute;i v&agrave; đưa bạn vượt qua những kh&uacute;c cua quanh co tới bến thuyền&nbsp;hẻm Tu Sản -&nbsp;hẻm vực s&acirc;u nhất Đ&ocirc;ng Nam &Aacute;. Với chiều cao v&aacute;ch đ&aacute; l&ecirc;n tới 700 &ndash; 900 m, hẻm Tu Sản được biết tới l&agrave; danh thắng kỳ vỹ độc nhất của Cao nguy&ecirc;n đ&aacute; Đồng Văn.&nbsp;</p>

	<p>Qu&yacute; kh&aacute;ch sẽ đi thuyền thưởng ngoạn cảnh đẹp hai b&ecirc;n bờ s&ocirc;ng Nho Quế với m&agrave;u nước xanh ngọc b&iacute;ch v&agrave; những v&aacute;ch đ&aacute; cao dựng đứng của hẻm s&acirc;u Tu Sản.</p>

	<p><strong>16h30:</strong>&nbsp;Đo&agrave;n di chuyển về thị trấn Đồng Văn. HDV đưa đo&agrave;n tới thăm&nbsp;di t&iacute;ch Đồn Cao, một nơi vừa mang &yacute; nghĩa lịch sử, vừa l&agrave; địa điểm l&yacute; tưởng để chi&ecirc;m ngưỡng trọn vẹn thị trấn nhỏ Đồng Văn. Qua đ&oacute;, cảm nhận r&otilde; cuộc sống ấm &aacute;p, hiền h&ograve;a của người v&ugrave;ng cao với những mảng ruộng b&igrave;nh y&ecirc;n giữa thung lũng; những con đường uốn lượn, kh&uacute;c cua đ&egrave;o h&ugrave;ng vĩ, m&acirc;y, n&uacute;i điệp tr&ugrave;ng đầy quyến rũ. Qu&yacute; kh&aacute;ch cũng c&oacute; thể tự do&nbsp;kh&aacute;m ph&aacute; thị trấn, gh&eacute; thăm phố cổ Đồng Văn.</p>

	<p><strong>17h30:</strong>&nbsp;Xe đưa Qu&yacute; kh&aacute;ch di chuyển về thị trấn Y&ecirc;n Minh.</p>

	<p><strong>19h00:&nbsp;</strong>Đo&agrave;n d&ugrave;ng bữa tại nh&agrave; h&agrave;ng của kh&aacute;ch sạn trong thị trấn Y&ecirc;n Minh. Sau bữa tối, đo&agrave;n tự do kh&aacute;m ph&aacute; thị trấn về đ&ecirc;m.</p>

	<p>Nghỉ đ&ecirc;m tại kh&aacute;ch sạn Phương Đ&ocirc;ng Y&ecirc;n Minh</p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 3: Y&ecirc;n Minh - H&agrave; Giang - H&agrave; Nội (Ăn s&aacute;ng; Ăn trưa)</span></span></h5>

	<p>Sau bữa s&aacute;ng tại kh&aacute;ch sạn, Qu&yacute; kh&aacute;ch tự do nghỉ ngơi hoặc mua sắm tại chợ phi&ecirc;n Y&ecirc;n Minh (họp v&agrave;o s&aacute;ng Chủ Nhật h&agrave;ng tuần)</p>

	<p><strong>09h00:</strong>&nbsp;Đo&agrave;n tạm biệt Y&ecirc;n Minh v&agrave; di chuyển về th&agrave;nh phố H&agrave; Giang.</p>

	<p><strong>12h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa trưa tại th&agrave;nh phố H&agrave; Giang. Sau bữa trưa, xe đưa Qu&yacute; kh&aacute;ch trở về H&agrave; Nội&nbsp;</p>

	<p><strong>20h00:&nbsp;</strong>Xe đưa Qu&yacute; kh&aacute;ch về tới điểm hẹn trong khu vực trung t&acirc;m H&agrave; Nội. Kết th&uacute;c chuyến du lịch tới H&agrave; Giang th&uacute; vị với nhiều kỷ niệm đ&aacute;ng nhớ. Hẹn gặp lại Qu&yacute; kh&aacute;ch trong những chương tr&igrave;nh tiếp theo!</p>
	</li>
</ul>
', N'<p>- Xe vận chuyển đời mới theo chương tr&igrave;nh</p>

<p style="text-align:justify">- Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh</p>

<p>- 01 đ&ecirc;m nghỉ tại Resort H&rsquo;mong Village, hạng ph&ograve;ng Deluxe Mountain View (02 kh&aacute;ch/ ph&ograve;ng)</p>

<p>- 01 đ&ecirc;m nghỉ tại kh&aacute;ch sạn 3* Phương Đ&ocirc;ng Y&ecirc;n Minh, hạng ph&ograve;ng Superior (02 kh&aacute;ch/ ph&ograve;ng)</p>

<p>- C&aacute;c bữa ăn đề cập trong chương tr&igrave;nh (02 bữa s&aacute;ng tại kh&aacute;ch sạn; 03 bữa trưa ti&ecirc;u chuẩn 150,000 VNĐ/ kh&aacute;ch; 01 bữa tối ti&ecirc;u chuẩn 150.000 VNĐ/ kh&aacute;ch; 01 bữa tối ti&ecirc;u chuẩn 250,000 VNĐ/ kh&aacute;ch)</p>

<p>- V&eacute; tham quan c&aacute;c địa điểm trong chương tr&igrave;nh</p>

<p>- Chi ph&iacute; thuyền tham quan s&ocirc;ng Nho Quế</p>

<p>- Chi ph&iacute; xe &ocirc;m vận chuyển</p>

<p>- Nước uống: 500ml/người/ng&agrave;y</p>

<p>- Bảo hiểm du lịch</p>

<p>- Thuế, ph&iacute; theo Quy định nh&agrave; nước</p>
', N'<p>- Phụ thu ph&ograve;ng đơn</p>

<p>- Phụ thu cuối tuần, lễ tết &amp; giai đoạn cao điểm.</p>

<p>- Đồ uống trong&nbsp;c&aacute;c bữa ăn.</p>

<p>- C&aacute;c bữa ăn kh&ocirc;ng bao gồm trong chương tr&igrave;nh</p>

<p>- C&aacute;c chi ph&iacute; ph&aacute;t sinh&nbsp;kh&ocirc;ng đề cập trong chương tr&igrave;nh.</p>

<p>- C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n kh&aacute;c.</p>

<p>- Tiền tip HDV v&agrave; l&aacute;i xe</p>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-11-11T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(2511000 AS Decimal(18, 0)), N'Ha Giang Travel Guide Vietnam Tourism.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (7, 4, N'Tham quan Phan Thiết ', N'Phan Thiết', N'4 Người', N'2 ngày', N'Ô tô & Thuyền chèo', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Phan Thiết có đủ cả: từ cảnh quan thiên nhiên đa dạng của đồi cát bay Mũi Né, những hòn đảo lớn nhỏ; đến những di tích lịch sử minh chứng cho nền văn minh Chăm Pa hưng thịnh một thời… Có lẽ bởi những điều thú vị này mà du lịch Phan Thiết chưa bao giờ hết hot và chắc chắn lại càng sôi động mỗi khi hè về.', NULL, NULL, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(7500000 AS Decimal(18, 0)), N'Mui Ne Travel Guide Vietnam Tourism_0.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (8, 4, N'Nghỉ Dưỡng, Khám Phá Nha Trang', N'Nha Trang', N'40 Người', N'3 ngày', N'Máy bay & Ô tô', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Được công nhận là một trong những vịnh biển đẹp nhất thế giới với thành phố êm ả nằm ngay bên bờ biển, du lịch Nha Trang trung tâm của tỉnh Khánh Hòa – miền đất được mệnh danh là “xứ Trầm, biển Yến”. Tại đây, quý khách sẽ có cơ hội được thư giãn tại những hòn đảo hoang sơ tuyệt đẹp bên cạnh những bãi biển trong xanh, cát trắng mịn màng trải dài hàng ngút tầm mắt.', NULL, NULL, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(3825000 AS Decimal(18, 0)), N'Nha Trang Travel Guide Vietnam Tourism.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (9, 4, N'Khám phá địa điểm mới tại Đà Lạt', N'Đà Lạt', N'10 Người', N'2 ngày', N'Ô tô ', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Đối với nhiều du khách Đà Lạt đơn thuần chỉ là một điểm đến. Nhưng đối với những bạn ưa thích cái đẹp, ưa thích thiên nhiên, vùng đất của rất nhiều cái đẹp như Đà Lạt thì đây lại là một cuộc hành trình đầy thú vị.   Hãy cùng Mytour tới thăm và khám phá những địa điểm siêu đẹp, siêu hot cùng vô vàn những góc check-in sẽ giúp bạn có những bức ảnh nghìn like.', N'<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: Kh&aacute;m Ph&aacute; Đ&agrave; Lạt</span></span></h5>

<ol>
	<li>Check in đồi ch&egrave; Cầu Đất Farm&nbsp;</li>
	<li>Tham quan v&agrave; thưởng thức hồng treo địa phương</li>
	<li>Nắng &ndash; Lạc v&agrave;o đồng Cừu giữa phố n&uacute;i Đ&agrave; Lạt, (Hồ C&aacute; Koi, hoa C&uacute;c Họa Mi, hoa Thạch Thảo&hellip;) (theo m&ugrave;a).</li>
	<li>Tham quan vườn d&acirc;u T&acirc;y c&ocirc;ng nghệ cao</li>
	<li>Mama Dala &ndash; Tổ hợp check in si&ecirc;u Hot (hơn 30 concepts với Đồng hồ TikTak, Dương Sĩ cổ đại, nh&agrave; bong b&oacute;ng&hellip;)</li>
	<li>Lạc Ti&ecirc;n Giới &ndash; Thung lũng check in v&ocirc; c&ugrave;ng ảo diệu (trải nghiệm xe jeep k&igrave; th&uacute;, hơn 30 tiểu cảnh tham hồ chọn lựa)&nbsp;</li>
	<li>Khu du lịch Th&uacute;y Thuận &ndash; Xưởng c&agrave; ph&ecirc; lớn ở Đ&agrave; Lạt</li>
</ol>
', N'<p>Xe đời mới đưa đ&oacute;n tại kh&aacute;ch sạn hoặc điểm hẹn trong trung t&acirc;m TP Đ&agrave; Lạt</p>

<p>V&eacute; tham quan tất cả c&aacute;c địa điểm trong chương tr&igrave;nh tour.</p>

<p>Hướng dẫn vi&ecirc;n du lịch chuy&ecirc;n nghiệp</p>

<p>Thuế VAT theo quy định của nh&agrave; nước</p>

<p>Nước uống 500ml/ ng&agrave;y/ kh&aacute;ch</p>
', N'<p>Xe đời mới đưa đ&oacute;n tại kh&aacute;ch sạn hoặc điểm hẹn trong trung t&acirc;m TP Đ&agrave; Lạt</p>

<p>V&eacute; tham quan tất cả c&aacute;c địa điểm trong chương tr&igrave;nh tour.</p>

<p>Hướng dẫn vi&ecirc;n du lịch chuy&ecirc;n nghiệp</p>

<p>Thuế VAT theo quy định của nh&agrave; nước</p>

<p>Nước uống 500ml/ ng&agrave;y/ kh&aacute;ch</p>
', N'<p>Lưu &yacute;:&nbsp;</p>

<ul>
	<li>Qu&yacute; kh&aacute;ch tự kiểm tra v&agrave; chịu tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ, ch&iacute;nh x&aacute;c, đảm bảo hộ chiếu c&ograve;n hạn &iacute;t nhất 6 th&aacute;ng t&iacute;nh từ ng&agrave;y kết th&uacute;c tour (đối với kh&aacute;ch đi nước ngo&agrave;i) v&agrave; chứng minh thư c&ograve;n hạn trong v&ograve;ng 15 năm (đối với kh&aacute;ch đi tour trong nước) trước khi nộp cho Mytour để đặt c&aacute;c dịch vụ du lịch cho Qu&yacute; kh&aacute;ch.</li>
	<li>Kh&aacute;ch h&agrave;ng muốn xuất h&oacute;a đơn đỏ vui l&ograve;ng b&aacute;o với nh&acirc;n vi&ecirc;n tư vấn ngay khi đặt tour. Muộn nhất sau khi kết th&uacute;c tour 07 ng&agrave;y.</li>
	<li>Nếu trẻ em đi c&ugrave;ng họ h&agrave;ng, y&ecirc;u cầu phải c&oacute; hộ chiếu ri&ecirc;ng, giấy ủy quyền của cha mẹ v&agrave; x&aacute;c nhận của Phường, x&atilde; nơi đăng k&yacute; hộ khẩu thường tr&uacute;.</li>
	<li>V&eacute; đ&atilde; xuất l&agrave; v&eacute; đo&agrave;n, vui l&ograve;ng kh&ocirc;ng ho&agrave;n hủy.</li>
	<li>Chương tr&igrave;nh v&agrave; kh&aacute;ch sạn c&oacute; thể thay đổi thứ tự cho ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế của đo&agrave;n nhưng tổng số điểm tham quan kh&ocirc;ng thay đổi.</li>
	<li>Khách v&ecirc;̀ kh&ocirc;ng đúng lịch trình của đoàn sẽ chịu phí ch&ecirc;nh l&ecirc;̣ch vé máy bay.</li>
	<li>Qu&yacute; kh&aacute;ch từ 70 tuổi đến dưới 75 tuổi y&ecirc;u cầu k&yacute; cam kết sức khỏe với C&ocirc;ng ty. Qu&yacute; kh&aacute;ch từ 75 tuổi trở l&ecirc;n y&ecirc;u cầu phải c&oacute; giấy x&aacute;c nhận đầy đủ sức khoẻ để đi du lịch nước ngo&agrave;i do b&aacute;c sĩ cấp v&agrave; + giấy cam kết sức khỏe với C&ocirc;ng ty. Y&ecirc;u cầu phải c&oacute; người th&acirc;n dưới 60 tuổi (đầy đủ sức khoẻ) đi theo. Ngo&agrave;i ra, kh&aacute;ch tr&ecirc;n 75 tuổi khuyến kh&iacute;ch đ&oacute;ng th&ecirc;m ph&iacute; bảo hiểm cao cấp (ph&iacute; thay đổi t&ugrave;y theo tour). Kh&ocirc;ng nhận kh&aacute;ch từ 80 tuổi trở l&ecirc;n.</li>
	<li>Qu&yacute; kh&aacute;ch mang thai xin vui l&ograve;ng b&aacute;o cho nh&acirc;n vi&ecirc;n b&aacute;n tour ngay tại thời điểm đăng k&yacute; để được tư vấn th&ecirc;m th&ocirc;ng tin. Kh&ocirc;ng nhận kh&aacute;ch mang thai từ 5 th&aacute;ng trở l&ecirc;n v&igrave; l&iacute; do an to&agrave;n cho kh&aacute;ch.</li>
	<li>Nếu y&ecirc;u cầu ở ph&ograve;ng đơn hoặc đi du lịch một m&igrave;nh, trong nh&oacute;m&nbsp;lẻ 3 ,5,7 kh&aacute;ch nhưng kh&ocirc;ng c&oacute; người gh&eacute;p ph&ograve;ng c&ugrave;ng , Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n ph&iacute; phụ thu.</li>
	<li>Nếu kh&aacute;ch l&agrave; Việt Kiều hoặc nước ngo&agrave;i c&oacute; visa rời phải mang theo l&uacute;c đi tour.</li>
	<li>Khi đăng k&yacute; tour du lịch, Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ chương tr&igrave;nh, gi&aacute; tour, c&aacute;c khoản bao gồm cũng như kh&ocirc;ng bao gồm trong chương tr&igrave;nh, c&aacute;c điều kiện hủy tour tr&ecirc;n bi&ecirc;n nhận đ&oacute;ng tiền. Trong trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng trực tiếp đến đăng k&yacute; tour m&agrave; do người kh&aacute;c đến đăng k&yacute; th&igrave; Qu&yacute; kh&aacute;ch vui l&ograve;ng t&igrave;m hiểu kỹ chương tr&igrave;nh từ người đăng k&yacute; cho m&igrave;nh.</li>
	<li>Do c&aacute;c chuyến bay phụ thuộc v&agrave;o c&aacute;c h&atilde;ng H&agrave;ng Kh&ocirc;ng n&ecirc;n trong một số trường hợp giờ bay c&oacute; thể thay đổi m&agrave; kh&ocirc;ng được b&aacute;o trước.</li>
	<li>Mytour sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm bảo đảm c&aacute;c điểm tham quan trong trường hợp:</li>
</ul>

<ol>
	<li>Xảy ra thi&ecirc;n tai: b&atilde;o lụt, hạn h&aacute;n, động đất&hellip;</li>
	<li>Sự cố về an ninh: khủng bố, biểu t&igrave;nh</li>
	<li>Sự cố về h&agrave;ng kh&ocirc;ng: trục trặc kỹ thuật, an ninh, dời, hủy, ho&atilde;n chuyến bay.</li>
</ol>

<p>Ch&iacute;nh s&aacute;ch ho&agrave;n huỷ:</p>

<ul>
	<li>Thanh to&aacute;n 100% trong khoảng thời gian giữ chỗ</li>
	<li>Đặt chỗ kh&ocirc;ng &aacute;p dụng ho&agrave;n, hủy trong mọi trường hợp.</li>
	<li>Được ph&eacute;p thay đổi ng&agrave;y khởi h&agrave;nh với điều kiện b&aacute;o trước 3 ng&agrave;y l&agrave;m việc (kh&ocirc;ng t&iacute;nh thứ 7 v&agrave; chủ nhật)</li>
</ul>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(382000 AS Decimal(18, 0)), N'Da Lat Travel Guide Vietnam Tourism.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (10, 2, N'HOI AN ARTIST', N'Hội An', N'10 Người', N'1 ngày', N'Ô tô ', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Một cuộc phiêu lưu thực sự và trọn vẹn để khám phá Hội An bằng xe điện mà du khách thực sự có thể tận hưởng. Trong chuyến tham quan này, chúng tôi mang đến một cái nhìn sâu sắc về văn hóa và tìm hiểu về lối sống của người Việt Nam. Bên cạnh đó, bạn sẽ có cơ hội thử sức với các hoạt động truyền thống như hái và trồng rau hay tự tay tạo nên những chiếc lồng đèn xinh xắn.', N'<h5><span style="color:#A52A2A"><span style="font-size:16px">Ng&agrave;y 1: Hội An</span></span></h5>

<p><strong>08h30:</strong>&nbsp;Đ&oacute;n kh&aacute;ch tại Hội An, tập trung tại b&atilde;i đỗ xe Hội An.&nbsp;</p>

<p><strong>08h30 - 09h30:</strong>&nbsp;Di chuyển bằng xe điện đến l&ograve; mỳ cao lầu truyền thống l&acirc;u đời nhất phố Hội, quan s&aacute;t c&aacute;ch l&agrave;m v&agrave; phương thức sinh hoạt của người thợ l&agrave;m mỳ.</p>

<p><strong>09:30 - 13:30:&nbsp;</strong>Di chuyển qua những c&aacute;nh đồng bao la b&aacute;t ng&aacute;t, tận hưởng kh&iacute; trời thi&ecirc;n nhi&ecirc;n để đến với l&agrave;ng rau Tr&agrave; Quế - vườn rau hữu cơ với những c&aacute;ch l&agrave;m truyền thống l&acirc;u đời nhất ở Hội An. Được hướng dẫn những kỹ thuật trồng rau cơ bản, sau đ&oacute; h&aacute;i rau v&agrave; tổ chức nấu ăn trưa l&agrave; m&oacute;n mỳ quảng. Nghỉ ngơi thư gi&atilde;n với phương ph&aacute;p ng&acirc;m ch&acirc;n thảo mộc, thưởng thức nước uống đặc trưng tươi m&aacute;t.</p>

<p><strong>13h30 - 14h00:</strong>&nbsp;Tham quan l&agrave;ng lụa Hội An, đ&acirc;y l&agrave; một trong những vật liệu ch&iacute;nh tạo n&ecirc;n chiếc đ&egrave;n lồng nổi tiếng phố Hội. Tại đ&acirc;y kh&aacute;ch được dẫn đi tham quan, thấy được những dụng cụ v&agrave; qu&aacute; tr&igrave;nh l&agrave;m n&ecirc;n lụa từ c&aacute;ch truyền thống.</p>

<p><strong>14h00 - 15h00:</strong>&nbsp;Tham gia trải nghiệm l&agrave;m đ&egrave;n lồng Hội An, những chiếc đ&egrave;n lồng b&eacute; b&eacute; xinh xinh sẽ theo ch&acirc;n du kh&aacute;ch về đến nh&agrave; v&agrave; đ&oacute; l&agrave; m&oacute;n qu&agrave; lưu niệm m&agrave; Hacotour d&agrave;nh tặng cho qu&yacute; kh&aacute;ch.</p>

<p><strong>15h20 - 16h00:&nbsp;</strong>Tham quan l&ograve; l&agrave;m b&aacute;nh bao b&aacute;nh vạc, kết th&uacute;c chuyến đi bằng bữa ăn nhẹ l&agrave; b&aacute;nh bao b&aacute;nh vạc. Kết th&uacute;c tour.</p>
', N'<p>Bữa trưa</p>

<p>&nbsp;Xe điện</p>

<p>&nbsp;HDV chuy&ecirc;n nghiệp (Tiếng Việt/ Tiếng Anh)</p>

<p>&nbsp;1 chai nước suối</p>

<p>&nbsp;N&oacute;n l&aacute;</p>

<p>Bảo hiểm</p>

<p>Thuế VAT theo quy định của nh&agrave; nước</p>
', N'<p>Chi ph&iacute; c&aacute; nh&acirc;n</p>

<p>Đ&ocirc;̀ u&ocirc;́ng trong bữa ăn và chi phí cá nh&acirc;n, hương hoa, đồ lễ&hellip;</p>

<p>Tiền tips</p>
', N'<p>Thanh to&aacute;n 100% trong khoảng thời gian giữ chỗ</p>

<p>Đặt chỗ kh&ocirc;ng &aacute;p dụng ho&agrave;n, hủy trong mọi trường hợp</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(1020000 AS Decimal(18, 0)), N'vietnam-tourism.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (11, 2, N' Nghỉ Dưỡng Tại  Đà Nẵng', N'Đà Nẵng', N'4 Người', N'3 ngày', N'Ô tô & Máy bay', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Đà Nẵng là một trong 20 thành phố sạch nhất thế giới. Nằm ở vùng Nam Trung Bộ, Đà Nẵng có cả núi, đồng bằng và biển. Các điểm tham quan du lịch nổi tiếng khi du lịch Đà Nẵng bao gồm khu du lịch Bà Nà, bãi biển Mỹ Khê, và khu vui chơi giải trí trong nhà Fantasy Park lớn nhất châu Á. Đà Nẵng còn có nhiều thắng cảnh mê hồn như đèo Hải Vân, rừng nguyên sinh ở bán đảo Sơn Trà và Ngũ Hành Sơn. Cùng Mytour khám phá Đà Nẵng ngay hôm nay thôi nào!', NULL, NULL, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(15050000 AS Decimal(18, 0)), N'da-nang.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (12, 1, N'Nghỉ Dưỡng Du Thuyền La Regina Royal Cruise', N'Hạ Long', N'2 Người', N'2 ngày', N'Du thuyền', N'Theo yêu cầu của khách hàng', N'Chào mừng bạn đến vớidu thuyền La Regina Royal - Một thành viên của Bộ sưu tập Du thuyền La Regina. Một chuyến đi du thuyền với La Regina Royal là sự kết hợp của vịnh biển với phong cảnh tuyệt vời nhất khởi hành từ cảng Bãi Cháy, Hạ Long. Được biết đến như "em gái" quyến rũ của du thuyền La Regina Legend và du thuyền La Regina Grand, du thuyền La Regina Royal không chỉ đơn thuần thanh lịch và sang trọng đến từng chi tiết như hai "chị gái" mà còn hướng đến sự trẻ trung và sự thú vị của thiết kế truyền thống Việt Nam. ', N'<ul>
	<li>
	<h2 style="text-align: justify;"><span style="font-size:16px"><span style="color:#DAA520">Ng&agrave;y 1: Hạ Long - La Regina Royal Cruise - Vịnh Hạ Long (Ăn trưa, Ăn tối)</span></span></h2>

	<p style="text-align: justify;"><strong>11h30 - 12h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch c&oacute; mặt tại sảnh tầng 1 cảng quốc tế Sun Group khu vực lounge của La Regina Royal.</p>

	<p style="text-align: justify;"><strong>12h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch l&ecirc;n t&agrave;u nhận ph&ograve;ng, thưởng thức Cocktail<br />
	ch&agrave;o mừng v&agrave; nghe Quản l&yacute; t&agrave;u giới thiệu th&ocirc;ng tin an to&agrave;n h&agrave;nh tr&igrave;nh trong khi t&agrave;u khởi h&agrave;nh đi vịnh Hạ Long</p>

	<p style="text-align: justify;"><strong>13h00:&nbsp;</strong>Bữa trưa được phục vụ tại nh&agrave; h&agrave;ng với hương vị ẩm<br />
	thực độc đ&aacute;o của Việt Nam. Trong l&uacute;c qu&iacute; kh&aacute;ch thưởng thức bữa trưa v&agrave; ngắm cảnh vịnh, t&agrave;u sẽ h&agrave;nh tr&igrave;nh qua c&aacute;c đảo đ&aacute; của vịnh Hạ Long, những kiệt t&aacute;c của thi&ecirc;n nhi&ecirc;n.</p>

	<p style="text-align: justify;"><strong>14h30:&nbsp;</strong>T&agrave;u đến khu vực b&atilde;i biển TiTop, tại đ&acirc;y qu&iacute; kh&aacute;ch vừa<br />
	được h&ograve;a m&igrave;nh v&agrave;o d&ograve;ng nước trong xanh của vịnh Hạ Long, vừa c&oacute; thể lựa chọn h&agrave;nh tr&igrave;nh hơn 200 bậc l&ecirc;n đỉnh n&uacute;i TiTop để ngắm to&agrave;n cảnh của vịnh Hạ Long v&agrave; chọn cho m&igrave;nh điểm check in l&iacute; tưởng.</p>

	<p style="text-align: justify;"><strong>15h30:&nbsp;</strong>Qu&yacute; kh&aacute;ch lựa chọn tham gia hoạt động bơi thuyền<br />
	Kayak tr&ecirc;n Vịnh Hạ Long</p>

	<p style="text-align: justify;"><strong>17h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch trở về t&agrave;u, nghỉ ngơi thư gi&atilde;n, chụp h&igrave;nh v&agrave;<br />
	ngắm cảnh ho&agrave;ng h&ocirc;n tr&ecirc;n Vịnh.</p>

	<p style="text-align: justify;"><strong>19h00:&nbsp;</strong>Thưởng thức bữa tối ngo&agrave;i trời trong điều kiện thời tiết cho ph&eacute;p.</p>

	<p style="text-align: justify;"><strong>21h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch tự do nghỉ ngơi, tham gia hoạt động c&acirc;u<br />
	mực, hoặc lựa chọn cho m&igrave;nh c&aacute;c dịch vụ kh&aacute;c như: Spa hay h&aacute;t Karaoke...(c&oacute; t&iacute;nh ph&iacute;)</p>
	</li>
	<li>
	<h5 style="text-align: justify;"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 2: Vịnh Hạ Long - Hạ Long (Ăn s&aacute;ng, Ăn trưa)</span></span></h5>

	<p style="text-align: justify;"><strong>06h15:&nbsp;</strong>Đừng ngủ qu&ecirc;n khi b&igrave;nh minh tr&ecirc;n vịnh Hạ Long đang thức dậy. Đến đ&acirc;y m&agrave; kh&ocirc;ng c&oacute; cơ hội ngắm nh&igrave;n cảnh mặt trời mọc th&igrave; quả thật rất uổng.</p>

	<p style="text-align: justify;"><strong>06h45:</strong>&nbsp;Bữa s&aacute;ng nhẹ được phục vụ tại nh&agrave; h&agrave;ng.</p>

	<p style="text-align: justify;"><strong>07h30:&nbsp;</strong>Qu&yacute; kh&aacute;ch rời t&agrave;u thăm hang Sửng Sốt, một trong những hang động to v&agrave; đẹp nhất vịnh Hạ Long, tại đ&acirc;y qu&yacute; kh&aacute;ch sẽ được chi&ecirc;m ngưỡng cảnh đẹp ngỡ ng&agrave;ng với mu&ocirc;n v&agrave;n tạo h&igrave;nh kỳ th&uacute; của hệ thống măng nhũ đ&aacute; trong hang động, ngăn thứ 3 của hang được v&iacute; như Nh&agrave; H&aacute;t Opera giữa long vịnh.</p>

	<p style="text-align: justify;"><strong>09h00 - 09h45:</strong>&nbsp;Trở về t&agrave;u nghỉ ngơi v&agrave; l&agrave;m thủ tục trả ph&ograve;ng tại quầy Lễ t&acirc;n</p>

	<p style="text-align: justify;"><strong>09h45:&nbsp;</strong>Bữa ăn nhẹ được phục vụ tại nh&agrave; h&agrave;ng.</p>

	<p style="text-align: justify;"><strong>11h00 - 11h30:&nbsp;</strong>T&agrave;u cập bến, thủy thủ đo&agrave;n tạm biệt Qu&yacute; kh&aacute;ch, kết th&uacute;c chương tr&igrave;nh.</p>
	</li>
</ul>
', N'<ul>
	<li>Ph&ograve;ng nghỉ sang trọng vớiban c&ocirc;ng ri&ecirc;ng, điều h&ograve;a hai<br />
	chiều hiện đại</li>
	<li>Hướng dẫn vi&ecirc;n du lịch tiếng Anh/ tiếng Việt</li>
	<li>Tất cả c&aacute;c bữa ăn tr&ecirc;n t&agrave;u như trong lịch tr&igrave;nh.</li>
	<li>Kayak, thuyền nan, tắm biển, pool party....</li>
	<li>V&eacute; tham quan c&aacute;c điểm du lịch</li>
	<li>Nước uống đ&oacute;n kh&aacute;ch, khăn lạnh, hai chai nước kho&aacute;ng<br />
	trong mỗi ph&ograve;ng.</li>
	<li>Bảo hiểm tr&ecirc;n t&agrave;u</li>
	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>
</ul>
', N'<ul>
	<li>Dịch vụ chăm s&oacute;c sắc đẹp, Spa v&agrave; Massage</li>
	<li>Tiền đồ uống, tiền tip v&agrave; chi ti&ecirc;u c&aacute; nh&acirc;n</li>
	<li>Xe đưa đ&oacute;n 2 chiều</li>
	<li>Tất cả c&aacute;c dịch vụ kh&aacute;c kh&ocirc;ng đề cập r&otilde; trong chương tr&igrave;nh</li>
</ul>
', N'<p>Lưu &yacute;:</p>

<ul>
	<li>Gi&aacute; &aacute;p dụng cho booking từ 02 kh&aacute;ch</li>
	<li>Chương tr&igrave;nh chỉ &aacute;p dụng cho kh&aacute;ch h&agrave;ng qu&ocirc;́c tịch Vi&ecirc;̣t Nam v&agrave; người nước ngo&agrave;i sinh s&ocirc;́ng v&agrave; l&agrave;m vi&ecirc;̣c tại Vi&ecirc;̣t Nam</li>
	<li>Qu&yacute; kh&aacute;ch nếu tự di chuyển tới Hạ Long, vui l&ograve;ng c&oacute; mặt tại sảnh tầng 1 cảng quốc tế Sun Group khu vực lounge của La Regina Royal muộn nhất 11h30 để l&agrave;m thủ tục l&ecirc;n t&agrave;u.</li>
	<li>Lịch tr&igrave;nh c&oacute; thể thay đổi tuỳ theo điều kiện thời tiết, điều kiện thuỷ triều, điều kiện vận h&agrave;nh &amp; quy định của ch&iacute;nh quyền địa phương.</li>
</ul>

<p>Ch&iacute;nh s&aacute;ch ho&agrave;n huỷ:</p>

<ul>
	<li>Li&ecirc;n hệ để biết th&ecirc;m chi tiết</li>
</ul>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(2520000 AS Decimal(18, 0)), N'nghiduonghalong.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (13, 4, N'Team Building Và Khám Phá Long Hải', N'Vũng Tàu', N'30 Người', N'1 ngày', N'Ô tô', N'Theo yêu cầu của khách hàng', N'Nằm cách Tp. Hồ Chí Minh không quá xa, Long Hải là một điểm du lịch nổi tiếng quyến rũ bởi khung cảnh thiên nhiên nên thơ, hữu tình, bờ biển chạy dài uốn lượn sau dãy núi Minh Đạm hùng vỹ, với bờ cát mịn màng cùng làn nước trong xanh tuyệt đẹp. ', N'<h5 style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: Tp. Hồ Ch&iacute; Minh - Biển Long Hải (Ăn trưa)</span></span></span></h5>

<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>07h30:&nbsp;</strong>Xe v&agrave; HDV đ&oacute;n Qu&yacute; kh&aacute;ch tại trường, khởi h&agrave;nh đi Long Hải. Qu&yacute; phụ huynh v&agrave; nh&agrave; trường n&ecirc;n cho c&aacute;c bạn học sinh ăn s&aacute;ng ở nh&agrave; để tr&aacute;nh bị say xe.</span></p>

<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>09h30:&nbsp;</strong>Đo&agrave;n gh&eacute; thăm N&ocirc;ng Trại Cừu Suối Nghệ, địa điểm check-in kh&ocirc;ng thể thiếu khi tới Vũng T&agrave;u. Tại đ&acirc;y c&aacute;c bạn học sinh c&oacute; thể thư gi&atilde;n, tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; chơi đ&ugrave;a chụp ảnh c&ugrave;ng h&agrave;ng trăm ch&uacute; cừu đ&aacute;ng y&ecirc;u.&nbsp;</span></p>

<p style="text-align:justify"><br />
<span style="font-family:tahoma,geneva,sans-serif"><strong>10h30:</strong>&nbsp;Xe đưa đo&agrave;n tới Di T&iacute;ch N&uacute;i Minh Đạm. Hướng dẫn vi&ecirc;n sẽ gi&uacute;p qu&yacute; phụ huynh c&ugrave;ng c&aacute;c bạn học sinh hiểu th&ecirc;m về lịch sử d&acirc;n tộc thời kh&aacute;ng chiến chống Ph&aacute;p, Mỹ cũng như để trải nghiệm sự hoang sơ, mộc mạc của hồn thi&ecirc;ng s&ocirc;ng n&uacute;i.&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>11h30:</strong>&nbsp;Đo&agrave;n di chuyển tới nh&agrave; h&agrave;ng để ăn trưa v&agrave; thay đồ tắm biển, chuẩn bị cho chương tr&igrave;nh team building.</span></p>

<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>14h30:&nbsp;</strong>C&aacute;c bạn học sinh tham gia chương tr&igrave;nh Teambuilding từ 2 - 3 tr&ograve; chơi với chủ đề v&agrave; mục đ&iacute;ch: Đo&agrave;n kết - Kh&eacute;o l&eacute;o tại b&atilde;i biển Long Hải. C&aacute;c bạn sẽ c&oacute; cơ hội để ph&aacute;t triển, ph&aacute;t huy năng lực tiềm ẩn qua c&aacute;c hoạt động gi&uacute;p trau dồi c&aacute;c kỹ năng mềm như kỹ năng giao tiếp, l&agrave;m việc nh&oacute;m hoặc xử l&yacute; t&igrave;nh huống.</span></p>

<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>16h30:</strong>&nbsp;Đo&agrave;n l&ecirc;n xe khởi h&agrave;nh về Tp. Hồ Ch&iacute; Minh.</span></p>

<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>16h30:&nbsp;</strong>Đo&agrave;n về đến trường, chia tay HDV, v&agrave; kết th&uacute;c chuyến đi bổ &iacute;ch v&agrave; nhiều kỉ niệm.</span></p>
', N'<ul>
	<li><span style="font-family:tahoma,geneva,sans-serif">Xe vận chuyển đời mới theo chương tr&igrave;nh</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Hướng dẫn vi&ecirc;n chuy&ecirc;n nghiệp, nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Bữa ăn theo chương tr&igrave;nh tại nh&agrave; h&agrave;ng. Mức ăn 150.000 VNĐ/ bữa (01 bữa trưa)&nbsp;</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Chương tr&igrave;nh teambuilding, ph&iacute; địa điểm, ph&iacute; &acirc;m thanh</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">01 Thợ chụp ảnh</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">V&eacute; tham quan c&aacute;c địa điểm trong chương tr&igrave;nh</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Nước uống: 500ml/người/ng&agrave;y</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Bảo hiểm du lịch</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Thuế, ph&iacute; theo Quy định nh&agrave; nước</span></li>
</ul>
', N'<ul>
	<li><span style="font-family:tahoma,geneva,sans-serif">Chi ph&iacute; đồ uống trong bữa ăn &amp; c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c trong chương tr&igrave;nh.</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">Tiền bồi dưỡng cho HDV v&agrave; LX.</span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif">C&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng nằm trong mục bao gồm</span></li>
</ul>
', N'<p><span style="font-family:tahoma,geneva,sans-serif">Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</span></p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(710000 AS Decimal(18, 0)), N'top things to do in vung tau.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (14, 4, N' Khám Phá 4 Đảo, VinWonders, VinSafari Phú Quốc', N'Phú Quốc', N'30 Người', N'3 Ngày 2 Đêm', N'Máy bay & Ô tô', N'Theo yêu cầu của khách hàng', N'Phú Quốc, từ lâu đã trở nên nổi tiếng với khách du lịch khắp mọi miền đất nước và quốc tế. Sở hữu hệ sinh thái gồm nhiều bãi biển đẹp trải dài từ phía bắc đến phía nam, 99 ngọn núi đồi và dãy rừng nguyên sinh với hệ động thực vật đa dạng, Phú Quốc đang dần trở thành Thiên Đường Nhiệt Đới của Việt Nam', N'<ul>
	<li>
	<h5 style="text-align:justify"><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 1: S&agrave;i G&ograve;n &ndash; Chuyến bay đi Ph&uacute; Quốc</span></span></span></h5>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>18h30:&nbsp;</strong>Xe đ&oacute;n Đo&agrave;n tại văn ph&ograve;ng, đưa đo&agrave;n ra s&acirc;n bay quốc tế T&acirc;n Sơn Nhất, l&agrave;m thủ tục l&ecirc;n chuyến bay đi Ph&uacute; Quốc của Vietnam Airlines (mỗi người c&oacute; 10kg h&agrave;nh l&yacute; x&aacute;ch tay, 23kg k&yacute; gửi)</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">S&agrave;i G&ograve;n 20:45 &ndash; Ph&uacute; Quốc 21:45</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>21h45:&nbsp;</strong>Đo&agrave;n đến s&acirc;n bay Ph&uacute; Quốc. Xe v&agrave; hướng dẫn vi&ecirc;n đ&oacute;n đo&agrave;n đưa về kh&aacute;ch sạn trung t&acirc;m thị trấn, nhận ph&ograve;ng v&agrave; nghỉ ngơi.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Đo&agrave;n tự do dạo chơi thị trấn về đ&ecirc;m.</span></p>
	</li>
	<li>
	<h5 style="text-align:justify"><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 2: Tour cano tham quan 4 đảo Ph&uacute; Quốc &ndash; C&aacute;p treo H&ograve;n Thơm (Ăn s&aacute;ng, Ăn trưa, Ăn tối)</span></span></span></h5>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Đo&agrave;n d&ugrave;ng điểm t&acirc;m s&aacute;ng tại kh&aacute;ch sạn.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>08h00&nbsp;</strong>Xe đ&oacute;n Đo&agrave;n tại kh&aacute;ch sạn &nbsp;</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><em>Đo&agrave;n n&ecirc;n mang theo kem chống nắng v&agrave; đồ bơi, c&aacute;c h&ograve;n ở ngo&agrave;i đều c&oacute; wc cho mọi người thay đồ.</em></span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>08h30&nbsp;</strong>Đến Cảng An Thới, Đo&agrave;n l&ecirc;n Cano đ&atilde; chờ sẵn, ổn định chỗ ngồi, mặc &aacute;o phao .</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Cano sẽ đi qua tất cả&nbsp;<strong>12</strong>&nbsp;h&ograve;n đảo lớn nhỏ kh&aacute;c nhau,&nbsp;</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Đo&agrave;n vui chơi tr&ecirc;n&nbsp;<strong>H&ograve;n M&oacute;ng Tay</strong>: Đảo nổi tiếng v&agrave; được nhiều người biết đến nhất tại Ph&uacute; Quốc, tr&ecirc;n h&ograve;n c&oacute; tới&nbsp;<strong>2</strong>&nbsp;c&acirc;y cầu để neo đậu cano, đặt ch&acirc;n đến H&ograve;n M&oacute;ng Tay để trải nghiệm &ldquo;1 buổi l&agrave;m ROBINSON tr&ecirc;n đảo hoang&rdquo; ngay tại Ph&uacute; Quốc.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Bạn n&ecirc;n thay đồ tại đ&acirc;y để tắm biển v&agrave; chụp h&igrave;nh. B&atilde;i biển tuy nhỏ nhưng c&aacute;t trắng mịn v&agrave; l&agrave;n nước trong xanh như ngọc b&iacute;ch. Ngo&agrave;i ra ở đ&acirc;y Đo&agrave;n cũng c&oacute; thể&nbsp;<em>ngắm san h&ocirc;.</em></span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Điểm tiếp theo l&agrave;&nbsp;<strong>H&ograve;n M&acirc;y R&uacute;t Trong</strong>: Đảo c&oacute; b&atilde;i biển d&agrave;i nhất trong số&nbsp;<strong>4</strong>&nbsp;h&ograve;n, với h&agrave;ng x&iacute;ch đu d&agrave;i v&agrave; b&atilde;i c&aacute;t trắng, nước trong thơ mộng. Đ&acirc;y l&agrave; 1 điểm check in kh&ocirc;ng n&ecirc;n bỏ lỡ trong chuyến h&agrave;nh tr&igrave;nh tour 4 đảo của bạn.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Tại M&acirc;y R&uacute;t Trong, Đo&agrave;n cũng c&oacute; thể kh&aacute;m ph&aacute; khu check in MAY RUT LUXURY với h&agrave;ng loạt điểm &ldquo;check in&rdquo; đang g&acirc;y b&atilde;o MXH như: &ldquo;Tổ chim Bali&rdquo;, &ldquo;nấc thang l&ecirc;n thi&ecirc;n đường&rdquo;, &ldquo;chiếc v&otilde;ng c&ocirc; đơn&rdquo; (ph&iacute; tự t&uacute;c 70.000đ/người)</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">L&ecirc;n&nbsp;<strong>H&ograve;n M&acirc;y R&uacute;t Ngo&agrave;i</strong>&nbsp;ăn trưa v&agrave; nghỉ ngơi: Đo&agrave;n l&ecirc;n đảo để&nbsp;<em>tắm tr&aacute;ng nước ngọt</em>&nbsp;miễn ph&iacute;. H&ograve;n n&agrave;y gắn liền với sự t&iacute;ch B&agrave; ch&uacute;a đảo Bảy Y&ecirc;n đ&atilde; sống c&ugrave;ng gia đ&igrave;nh tr&ecirc;n dưới&nbsp;<strong>60</strong>&nbsp;năm tại đ&acirc;y. Đo&agrave;n sẽ ăn trưa ngay tr&ecirc;n h&ograve;n với thực đơn&nbsp;<strong>8 m&oacute;n bao gồm hải sản</strong>&nbsp;(Lẩu c&aacute; bớp, mực x&agrave;o chua ngọt, t&ocirc;m nướng, s&ograve; t&ocirc; nướng mỡ h&agrave;nh, c&aacute; kho tộ, trứng chi&ecirc;n, cơm trắng v&agrave; tr&aacute;i c&acirc;y tr&aacute;ng miệng).</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Tr&ecirc;n đảo l&agrave; những h&agrave;ng dừa xanh ngả b&oacute;ng m&aacute;t, ph&iacute;a dưới l&agrave;&nbsp;<em>b&agrave;n ghế</em>&nbsp;v&agrave; những<em>&nbsp;chiếc v&otilde;ng đu đưa</em>&nbsp;gi&uacute;p bạn&nbsp;<em>ăn trưa v&agrave; nghỉ trưa</em>, tận hưởng kh&ocirc;ng kh&iacute; tươi m&aacute;t của gi&oacute; biển. Điều kh&ocirc;ng thể thiếu l&agrave;&nbsp;<strong>H&ograve;n M&acirc;y R&uacute;t Ngo&agrave;i</strong>&nbsp;cũng c&oacute; 1 b&atilde;i biển tuy nhỏ nhưng l&agrave;n nước&nbsp;<em>trong xanh v&agrave; cực đẹp</em>.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Kh&aacute;m ph&aacute;&nbsp;<strong>H&ograve;n Gầm Gh&igrave;</strong>&nbsp;(<em>Dăm Ngang</em>) để lặn ngắm san h&ocirc;: H&ograve;n đảo c&oacute; định h&igrave;nh kh&aacute; độc đ&aacute;o với điểm nhấn l&agrave; những b&atilde;i đ&aacute; kỳ l&acirc;n lớp ngang lớp dọc chen ch&uacute;c nhau. Nơi đ&acirc;y được mệnh danh l&agrave;&nbsp;<strong>vương quốc san h&ocirc;</strong>&nbsp;bởi n&oacute; c&oacute; tới&nbsp;<strong>17&nbsp;</strong><em>loại san h&ocirc; cứng mềm v&agrave; hải quỳ kh&aacute;c nhau.</em></span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Tại đ&acirc;y Đo&agrave;n sẽ được trải nghiệm lặn, ngắm san h&ocirc;. Nếu Đo&agrave;n kh&ocirc;ng biết bơi cũng đừng lo, v&igrave; c&oacute; những người hướng dẫn vi&ecirc;n, hỗ trợ nhiệt t&igrave;nh sẽ theo s&aacute;t bạn.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Cả&nbsp;<strong>4 h&ograve;n</strong>&nbsp;nước đều trong xanh, vẫn c&ograve;n hoang sơ, đến đ&acirc;y bạn vừa trải nghiệm vừa đắm ch&igrave;m trước vẻ đẹp của đại dương biển đảo.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Sau đ&oacute; xe đưa đo&agrave;n đến&nbsp;<strong>H&ograve;n Thơm</strong>: Đo&agrave;n được đi c&aacute;p treo đến&nbsp;H&ograve;n Thơm. Một hệ thống c&aacute;p treo c&oacute; tổng chiều d&agrave;i 7.899,9m, nối từ thị trấn An Thới qua c&aacute;c đảo&nbsp;H&ograve;n Rỏi,&nbsp;H&ograve;n Dừa&nbsp;tới H&ograve;n Thơm. Hệ thống c&aacute;p treo H&ograve;n Thơm được tổ chức Guinness trao tặng chứng nhận c&aacute;p treo vượt biển d&agrave;i nhất thế giới.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Ngồi tr&ecirc;n cabin c&aacute;p treo đo&agrave;n sẽ nh&igrave;n ngắm được vẻ đẹp hoang sơ của H&ograve;n Thơm được ph&oacute;ng tầm mắt ra biển cả, chi&ecirc;m ngưỡng vẻ đẹp của đại dương xanh qua hệ thống c&aacute;p treo vượt biển d&agrave;i nhất thế giới.&nbsp;</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Bước xuống c&aacute;p treo, Đo&agrave;n sẽ được thỏa sức tận hưởng vẻ đẹp của H&ograve;n Thơm với b&atilde;i tắm c&aacute;t trắng mịn, nước trong veo m&agrave;u ngọc b&iacute;ch b&ecirc;n rừng gi&agrave; hoang sơ v&agrave; những b&atilde;i đ&aacute; được tự nhi&ecirc;n sắp xếp ngoạn mục.&nbsp;Đo&agrave;n tắm biển v&agrave; nghỉ ngơi tại H&ograve;n Thơm.&nbsp;</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Sau đ&oacute; xe v&agrave; HDV đưa Đo&agrave;n đi ăn tối v&agrave; về resort.</span></p>
	</li>
	<li>
	<h5 style="text-align:justify"><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 3: Vin Wonders &amp; Vin Safari &ndash; S&agrave;i G&ograve;n (Ăn s&aacute;ng, Ăn trưa, Ăn tối)</span></span></span></h5>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Đo&agrave;n d&ugrave;ng điểm t&acirc;m s&aacute;ng tại kh&aacute;ch sạn.</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Chuẩn bị cho m&igrave;nh k&iacute;nh r&acirc;m v&agrave; kem chống nắng, để c&ugrave;ng kh&aacute;m ph&aacute; thi&ecirc;n đường giải tr&iacute; VinWonders&nbsp;tại đảo ngọc thật th&uacute; vị:</span></p>

	<ul>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">C&ocirc;ng vi&ecirc;n chủ đề - khu vui chơi giải tr&iacute; Vinwonders&nbsp;khổng lồ, Bắt đầu trải nghiệm với 06 ph&acirc;n khu độc đ&aacute;o tại đ&acirc;y:&nbsp;</span></li>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Khu l&acirc;u đ&agrave;i trung t&acirc;m &ndash; Ch&acirc;u &acirc;u trung cổ:&nbsp;Multi-Media Show tại hồ nước Trung T&acirc;m, Interactive Dark Ride &ndash; lời nguyền &aacute;c long (tương t&aacute;c trong nh&agrave; tối), lối m&ocirc; h&igrave;nh kiến tr&uacute;c Ch&acirc;u &Acirc;u trung cổ với c&aacute;c nh&agrave; h&agrave;ng đ&ocirc;ng đ&uacute;c &amp; c&aacute;c cửa h&agrave;ng mua sắm nhộn nhịp</span></li>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Khu cổ t&iacute;ch &ndash; Thế giới diệu kỳ:&nbsp;Thế giới cổ t&iacute;ch 5 ch&acirc;u đầy diệu kỳ với c&aacute;c tr&ograve; chơi được thiết kế theo từng c&acirc;u chuyện như: C&ugrave;ng Alice lạc v&agrave;o xứ sở thần ti&ecirc;n, Bước v&agrave;o v&ugrave;ng Ốc đảo Ba Tư huyền b&iacute; &amp; c&ugrave;ng ch&agrave;ng Aladdin, Đến thăm c&aacute;c thần Ai Cập tại Thung lũng cổ đại (Ch&acirc;u Phi); H&oacute;a th&acirc;n th&agrave;nh cao bồi thứ thiệt tại Miền T&acirc;y hoang d&atilde; (Ch&acirc;u Mỹ), chuyến phi&ecirc;u lưu của Thạch Sanh đ&aacute;nh lại Đại b&agrave;ng v&agrave; chằn tinh&hellip;</span></li>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Khu Viking &ndash; Ng&ocirc;i l&agrave;ng b&iacute; mật: Du kh&aacute;ch sẽ l&ecirc;nh đ&ecirc;nh tr&ecirc;n d&ograve;ng s&ocirc;ng kh&aacute;m ph&aacute; những b&iacute; mật ẩn chứa trong c&aacute;c ng&ocirc;i l&agrave;ng Viking hay thử sức với c&aacute;c tr&ograve; leo tr&egrave;o mạo hiểm len lỏi trong rừng c&acirc;y, c&acirc;y cầu d&acirc;y treo &amp; c&aacute;c đường zipline băng qua d&ograve;ng song, Ng&ocirc;i l&agrave;ng của người Viking nơi t&ugrave; tưởng Urik v&agrave; đội qu&acirc;n đ&atilde; định cư v&agrave; ch&ocirc;n giấu kho b&aacute;u sau những chuỗi ng&agrave;y l&ecirc;nh đ&ecirc;nh tr&ecirc;n biển</span></li>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Khu cảm gi&aacute;c mạnh &ndash; thế giới phi&ecirc;u lưu:&nbsp;T&agrave;u lượn si&ecirc;u tốc, Đĩa quay si&ecirc;u tốc, Đu quay v&ograve;ng xoay, Đu quay d&acirc;y văng, Cối xay gi&oacute;, Đĩa bay, Đu quay lật cảm gi&aacute;c mạnh,&hellip;</span></li>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Khu c&ocirc;ng vi&ecirc;n nước &ndash; thế giới lốc xo&aacute;y:&nbsp;Đường Trượt Lốc Xo&aacute;y Tornado, Đường Trượt Si&ecirc;u L&ograve;ng Chảo, Đường Trượt Nhiều L&agrave;n, Đường Trượt Xoắn ốc, D&ograve;ng Song Lười, bề tạo sống khổng lồ&hellip;</span></li>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Khu cung điện hải dương:&nbsp;Thủy cung lớn &amp; hiện đại nhất Việt Nam với diện t&iacute;ch 15,000 m2/3 tầng v&agrave; thiết kế độc đ&aacute;o với h&igrave;nh d&aacute;ng một con r&ugrave;a biển khổng lồ mang trong m&igrave;nh cả đại dương bao la kỳ th&uacute; nơi sinh sống của c&aacute;c lo&agrave;i c&aacute;/động vật biển.</span></li>
	</ul>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Chiều:&nbsp;Đo&agrave;n đi kh&aacute;m ph&aacute; Vườn Th&uacute; Safari</span></p>

	<ul>
		<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Vưởn th&uacute; mở - Safari Ph&uacute; Quốc&nbsp;theo m&ocirc; h&igrave;nh Safari Singapore C&ocirc;ng vi&ecirc;n Chăm s&oacute;c v&agrave; Bảo tồn Động vật Vinpearl Safari Ph&uacute; Quốc c&oacute; tổng diện t&iacute;ch gần 500ha, được x&acirc;y dựng theo m&ocirc; h&igrave;nh b&aacute;n hoang d&atilde;, trong đ&oacute;, c&aacute;c động vật qu&yacute; hiếm được đảm bảo chăm s&oacute;c v&agrave; bảo tồn trong m&ocirc;i trường thi&ecirc;n nhi&ecirc;n mở.</span></li>
	</ul>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><strong>18h15&nbsp;</strong>Xe v&agrave; Hướng dẫn vi&ecirc;n đưa đo&agrave;n ra s&acirc;n bay Ph&uacute; Quốc l&agrave;m thủ tục cho chuyến bay về S&agrave;i G&ograve;n (mỗi người c&oacute; 07kg h&agrave;nh l&yacute; x&aacute;ch tay v&agrave; 23kg k&yacute; gửi).</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Ph&uacute; Quốc 20:45 &ndash; S&agrave;i G&ograve;n 21:55</span></p>

	<p style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Đo&agrave;n đến s&acirc;n bay T&acirc;n Sơn Nhất. Xe đ&oacute;n đo&agrave;n đưa về văn ph&ograve;ng.</span></p>
	</li>
</ul>
', N'<ul>
	<li>V&eacute; m&aacute;y bay khứ hồi, bao gồm thuế ph&iacute;; 07kg h&agrave;nh l&yacute; x&aacute;ch tay v&agrave; 01 kiện h&agrave;nh l&yacute; k&yacute; gửi 23kg mỗi người. Gi&aacute; b&aacute;o tại thời điểm hiện tại v&agrave; c&oacute; thể thay đổi.</li>
	<li>01 xe 35 chỗ đưa đ&oacute;n s&acirc;n bay tại S&agrave;i G&ograve;n</li>
	<li>01 xe vận chuyển theo lịch tr&igrave;nh tại Ph&uacute; Quốc</li>
	<li>01 Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh, th&acirc;n thiện theo lịch tr&igrave;nh tại Ph&uacute; Quốc</li>
	<li>01 đ&ecirc;m nghỉ tại kh&aacute;ch sạn 3 sao tại trung t&acirc;m (15 ph&ograve;ng hai người), bao gồm ăn s&aacute;ng</li>
	<li>01 đ&ecirc;m nghỉ tại kh&aacute;ch sạn 5 sao Vin Oasis (15 ph&ograve;ng hai người), bao gồm ăn s&aacute;ng</li>
	<li>C&aacute;c bữa ăn ch&iacute;nh trong chương tr&igrave;nh: 02 bữa trưa, 01 bữa tối ti&ecirc;u chuẩn&nbsp;</li>
	<li>Cano ri&ecirc;ng tham quan 4 đảo, lặn ngắm san h&ocirc;</li>
	<li>V&eacute; c&aacute;p treo H&ograve;n Thơm</li>
	<li>V&eacute; vui chơi tại Vin Wonders v&agrave; Vin Safari</li>
	<li>Bảo hiểm du lịch</li>
	<li>Nước uống: 500ml/người/ng&agrave;y</li>
	<li>Thuế, ph&iacute; theo Quy định nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn</li>
	<li>Đồ uống trong c&aacute;c bữa ăn</li>
	<li>C&aacute;c chi ph&iacute; kh&ocirc;ng bao gồm trong chương tr&igrave;nh&nbsp;</li>
	<li>C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n kh&aacute;c</li>
	<li>Tips cho HDV &amp; l&aacute;i xe</li>
</ul>
', N'<p>100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(6420000 AS Decimal(18, 0)), N'phu-quoc.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (15, 4, N' Tham Quan Nam Đảo Phú Quốc Bằng Ô Tô', N'Phú Quốc', N'1 Người', N'1 ngày', N'Ô tô', N'Theo yêu cầu của khách hàng', N'Tour Nam đảo Phú Quốc sẽ đưa bạn đến tham quan 8 điểm nổi tiếng nhất phía Nam Phú Quốc.  Đã có ai bảo với bạn Nam Phú Quốc chỉ có biển xanh, cát trắng và nắng vàng hay chưa. Điều đó chỉ đúng với ngày xưa thôi, còn bây giờ đã khác nhiều lắm rồi. Nơi đây đã được đầu tư và xây dựng, với vô vàn những trải nghiệm bạn nhất định phải thử một lần trong đời.  Nam Đảo Phú Quốc được ví như chốn thiên đường nơi hạ giới vậy. Nơi đây sở hữu những bãi biển trong xanh màu ngọc bích, những rạn san hô rực rỡ sắc màu và cả những bãi cát trắng mịn lấp lánh dưới ánh nắng của miền nhiệt đới. Có rất nhiều cách để bạn cảm nhận vẻ đẹp tựa thiên đường này và lựa chọn tham quan theo tour là hợp lý nhất.', N'<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 1: Kh&aacute;ch sạn &ndash; Nam Đảo Ph&uacute; Quốc &ndash; Kh&aacute;ch sạn</span></span></span></h5>

<p><strong>08h00</strong>&nbsp;Xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n kh&aacute;ch tại kh&aacute;ch sạn trung t&acirc;m, khởi h&agrave;nh đi tham quan Nam Đảo Ph&uacute; Quốc.</p>

<ul>
	<li><strong>Vườn ti&ecirc;u Ph&uacute; Quốc</strong>&nbsp;với tổng diện t&iacute;ch l&ecirc;n đến 470 ha, sản lượng 1.250 tấn/năm (2007), Ph&uacute; Quốc trở th&agrave;nh thủ phủ của hồ ti&ecirc;u khi được biết đến với chất lượng ti&ecirc;u tuyệt hảo v&agrave; nhiều qu&agrave; lưu niệm được chế biến từ ti&ecirc;u. Đến tham quan vườn ti&ecirc;u tham quan bạn sẽ được tận tay sờ những hạt ti&ecirc;u c&ograve;n tr&ecirc;n c&acirc;y, t&igrave;m hiểu quy tr&igrave;nh trồng ti&ecirc;u của người n&ocirc;ng d&acirc;n cũng như mua ti&ecirc;u về l&agrave;m qu&agrave;.</li>
	<li><strong>Vườn sim Ph&uacute; Quốc</strong>&nbsp;Cứ mỗi m&ugrave;a Sim đến, Ph&uacute; Quốc lại kho&aacute;c l&ecirc;n m&igrave;nh m&agrave;u &aacute;o mới &ndash; m&agrave;u t&iacute;m thủy chung của hoa Sim. Kh&ocirc;ng chỉ vậy, gh&eacute; thăm vườn sim bạn c&ograve;n được thưởng thức&nbsp;<a href="https://rootytrip.com/tim-hieu-ve-ruou-sim-phu-quoc/">rượu Sim</a>&nbsp;thơm lạ, vị ngọt thanh pha lẫn vị ch&aacute;t của tr&aacute;i sim rừng &ndash; đ&acirc;y cũng l&agrave; một đặc sản kh&ocirc;ng thể bỏ qua nếu đ&atilde; lỡ say l&ograve;ng Ph&uacute; Quốc.</li>
	<li><strong>Cơ sở nu&ocirc;i cấy ngọc trai Ph&uacute; Quốc</strong>&nbsp;bạn sẽ được tận mắt chứng kiến quy tr&igrave;nh nu&ocirc;i cấy, qu&aacute; tr&igrave;nh lấy ngọc từ trai, c&aacute;c qu&aacute; tr&igrave;nh gia c&ocirc;ng trang sức từ vi&ecirc;n ngọc xinh đẹp đ&oacute;. Đặc biệt hơn, c&oacute; rất nhiều trang sức từ ngọc trai bạn c&oacute; thể thỏa sức mua về l&agrave;m qu&agrave; cho gia đ&igrave;nh, bạn b&egrave;.</li>
	<li><strong>Nh&agrave; t&ugrave; Ph&uacute; Quốc</strong>&nbsp;đ&acirc;y l&agrave; di t&iacute;ch lịch sử h&agrave;o h&ugrave;ng chứng minh sự ki&ecirc;n cường v&agrave; dũng cảm của c&aacute;c anh h&ugrave;ng thương binh, liệt sĩ đ&atilde; hy sinh để ch&uacute;ng ta c&oacute; được ng&agrave;y h&ograve;a b&igrave;nh như h&ocirc;m nay.</li>
	<li><strong>Cơ sở sản xuất nước mắm Ph&uacute; Quốc</strong>&nbsp;Được thi&ecirc;n nhi&ecirc;n ưu đ&atilde;i cho nguồn lợi thủy sản phong ph&uacute;, từ l&acirc;u ng&agrave;nh sản xuất nước mắm tại Ph&uacute; Quốc đ&atilde; vang danh khắp mọi nơi. Đến với cơ sở sản xuất nước mắm bạn sẽ được t&igrave;m hiểu về quy tr&igrave;nh l&agrave;m ra những giọt nước lắm thơm ngon v&agrave; tốt cho sức khỏe người ti&ecirc;u d&ugrave;ng cũng như mang về cho m&igrave;nh m&oacute;n qu&agrave; đặc biệt n&agrave;y của xứ đảo m&agrave; chắc chắn người được tặng sẽ th&iacute;ch th&uacute; lắm.</li>
	<li><a href="https://rootytrip.com/bai-sao-phu-quoc-bai-bien-dep-nhat-phu-quoc/"><strong>B&atilde;i Sao Ph&uacute; Quốc</strong></a>&nbsp;được mệnh danh l&agrave; một trong những b&atilde;i biển đẹp nhất Ph&uacute; Quốc, b&atilde;i Sao từ l&acirc;u đ&atilde; l&agrave; điểm đến du lịch quen thuộc của du kh&aacute;ch trong nước v&agrave; nước ngo&agrave;i.&nbsp;</li>
</ul>

<p><strong>12h00</strong>&nbsp;Tại đ&acirc;y bạn sẽ được thưởng thức những m&oacute;n ăn được chế biến từ hải sản thơm ngon v&agrave; nghỉ trưa b&ecirc;n b&atilde;i c&aacute;t trắng mịn, gi&oacute; thổi m&aacute;t rượi v&agrave; tiếng s&oacute;ng biển vỗ r&igrave; r&agrave;o.</p>

<p>Sau bữa trưa, Qu&yacute; kh&aacute;ch tiếp tục tham quan:</p>

<ul>
	<li><strong>Ch&ugrave;a Hộ Quốc</strong>&nbsp;(hay thiền viện Tr&uacute;c L&acirc;m Hộ Quốc): Với vị thế lưng tựa n&uacute;i, mặt hướng biển đ&acirc;y l&agrave; một trong những ng&ocirc;i ch&ugrave;a đặc biệt v&agrave; linh thi&ecirc;ng tại Ph&uacute; Quốc. Ngo&agrave;i Dinh Cậu, điểm đến t&acirc;m linh n&agrave;y cũng được c&aacute;c du kh&aacute;ch t&igrave;m đến để tham quan v&agrave; cầu nguyện khi gh&eacute; thăm Ph&uacute; Quốc.</li>
	<li><strong>16h30: Sunset Sanato</strong>&nbsp;&ndash; điểm đến ngắm ho&agrave;ng h&ocirc;n được tr&ocirc;ng đợi nhất Ph&uacute; Quốc</li>
</ul>

<p>Đ&acirc;y l&agrave; một kh&ocirc;ng gian tr&igrave;nh diễn ho&agrave;ng h&ocirc;n đẹp bật nhất Ph&uacute; Quốc với c&aacute;c tiểu cảnh được dựng b&ecirc;n bờ b&atilde;i Trường &ecirc;m đềm. V&eacute; v&agrave;o cổng đ&atilde; bao gồm trong tour.&nbsp;</p>

<p><strong>17h30</strong>&nbsp;Kết th&uacute;c h&agrave;nh tr&igrave;nh bạn sẽ được đưa về kh&aacute;ch sạn nghỉ ngơi cho h&agrave;nh tr&igrave;nh tiếp theo.</p>
', N'<ul>
	<li>Bảo hiểm h&agrave;nh kh&aacute;ch</li>
	<li>Nước suối</li>
	<li>Xe đưa đ&oacute;n theo lịch tr&igrave;nh (TT Dương Đ&ocirc;ng)</li>
	<li>Hướng dẫn vi&ecirc;n suốt tuyến&nbsp;&nbsp;</li>
	<li>01 bữa trưa 09 m&oacute;n bao gồm hải sản&nbsp;</li>
	<li>V&eacute; v&agrave;o cổng Sunset Sanato</li>
	<li>Thuế ph&iacute; theo quy định của nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>Đồ uống trong bữa ăn</li>
	<li>Ăn s&aacute;ng</li>
	<li>Ở Xa trung t&acirc;m, t&ugrave;y vị tr&iacute; sẽ c&oacute; mức phụ thu ri&ecirc;ng</li>
</ul>
', N'<ul>
	<li>Thanh to&aacute;n 100% trong khoảng thời gian giữ chỗ</li>
	<li>Đặt chỗ kh&ocirc;ng &aacute;p dụng ho&agrave;n, hủy trong mọi trường hợp.</li>
	<li>Được ph&eacute;p thay đổi ng&agrave;y khởi h&agrave;nh với điều kiện b&aacute;o trước 3 ng&agrave;y l&agrave;m việc (kh&ocirc;ng t&iacute;nh thứ 7 v&agrave; chủ nhật)</li>
</ul>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(535000 AS Decimal(18, 0)), N'phu-quoc-2.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (16, 1, N' Khám Phá Sapa', N'Sapa', N'2 Người', N'3 Ngày 2 Đêm', N'Xe khách limousine & Ôtô riêng', N' Theo yêu cầu của khách hàng', N'Sapa như một vùng đất khiêm nhường, lặng lẽ nhưng ẩn chứa bao điều kỳ diệu của cảnh sắc thiên nhiên. Du khách tới Sapa không chỉ để tận hưởng không khí trong lành, sự yên bình giản dị của một vùng đất phía Tây Bắc, mà còn để chiêm ngưỡng những vẻ đẹp hoang sơ của những ruộng bậc thang, thác nước, những ngọn vúi hùng vĩ ẩn sau những đám mây huyền ảo và khám phá những phong tục tập quán, nét đẹp văn hóa của các dân tộc vùng cao.', N'<ul>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 1: H&agrave; Nội &ndash; Sapa - Bản C&aacute;t C&aacute;t (Ăn trưa)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>07:00</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại điểm hẹn, xe đưa Qu&yacute; kh&aacute;ch đi Sapa bằng đường cao tốc. Tr&ecirc;n đường qu&yacute; kh&aacute;ch dừng ch&acirc;n nghỉ ngơi 30 ph&uacute;t.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>13:00</strong>&nbsp;Đến thị trấn Sapa. HDV đ&oacute;n Qu&yacute; kh&aacute;ch v&agrave; đưa Qu&yacute; kh&aacute;ch đi ăn trưa tại nh&agrave; h&agrave;ng.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>14:00&nbsp;</strong>Qu&yacute; kh&aacute;ch nhận ph&ograve;ng tại kh&aacute;ch sạn 3 sao ở trung t&acirc;m thị trấn.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>15:00</strong>&nbsp;Xe v&agrave; HDV địa phương đ&oacute;n kh&aacute;ch đi tham quan bản C&aacute;t C&aacute;t nơi sinh sống của người&nbsp;H&rsquo;Mong&nbsp;đen, một nơi phong cảnh hữu t&igrave;nh tại thung lũng nằm dưới ch&acirc;n đỉnh&nbsp;Phanxipang&nbsp;h&ugrave;ng vĩ. HDV địa phương sẽ giới thiệu cho qu&yacute; kh&aacute;ch cuộc sống thường ng&agrave;y của người d&acirc;n tộc nơi đ&acirc;y, sau đ&oacute; qu&yacute; kh&aacute;ch tiếp tục đi bộ đến th&aacute;c nước&nbsp;C&aacute;t C&aacute;t, trạm thủy điện&nbsp;C&aacute;t C&aacute;t&nbsp;của người Ph&aacute;p x&acirc;y dựng từ những năm đầu thế kỉ XX. Qu&yacute; kh&aacute;ch vui chơi chụp h&igrave;nh lưu niệm v&agrave; xe đ&oacute;n qu&yacute; kh&aacute;ch quay trở lại thị trấn&nbsp;Sa Pa.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">Lưu &yacute;: Chuyến đi bộ kh&aacute;m ph&aacute; kh&eacute;o d&agrave;i trong khoảng 2 giờ với qu&atilde;ng đường 2.5 km</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">Tối Qu&yacute; kh&aacute;ch tự do dạo chơi thăm quan thị trấn, thưởng thức c&aacute;c m&oacute;n nướng nổi tiếng của Sapa.&nbsp;Nghỉ đ&ecirc;m tại kh&aacute;ch sạn trung t&acirc;m.</span></p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 2: Sapa &ndash; Fansipan &ndash; N&uacute;i H&agrave;m Rồng (Ăn s&aacute;ng, Ăn trưa)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>08h00</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>09h00</strong>&nbsp;Sau bữa s&aacute;ng tại kh&aacute;ch sạn, Qu&yacute; kh&aacute;ch thưởng thức h&agrave;nh tr&igrave;nh đi t&agrave;u hỏa leo n&uacute;i ngắm thung lũng Mường Hoa từ tr&ecirc;n cao. T&agrave;u đưa kh&aacute;ch đến garage&nbsp;c&aacute;p treo Fansipan. Qu&yacute; kh&aacute;ch tham quan chinh phục Fansipan, ngọn n&uacute;i cao nhất Việt Nam (3.143 m) thuộc d&atilde;y n&uacute;i Ho&agrave;ng Li&ecirc;n Sơn, c&aacute;ch thị trấn Sa Pa khoảng 9 km về ph&iacute;a t&acirc;y nam. Du kh&aacute;ch chinh phục &ldquo;N&oacute;c nh&agrave; Đ&ocirc;ng Dương&rdquo; với hệ thống c&aacute;p treo Fansipan Sa Pa d&agrave;i 6,2km đạt 2 kỷ lục Guinness thế giới: C&aacute;p treo ba d&acirc;y c&oacute; độ ch&ecirc;nh giữa ga đi v&agrave; ga đến lớn nhất thế giới: 1410m v&agrave; C&aacute;p treo ba d&acirc;y d&agrave;i nhất thế giới: 6292.5m. Từ tuyến c&aacute;p treo, du kh&aacute;ch c&oacute; thể cảm nhận được thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, chi&ecirc;m ngưỡng khung cảnh thung lũng Mường Hoa v&agrave; rừng quốc gia Ho&agrave;ng Li&ecirc;n từ tr&ecirc;n cao. Ngo&agrave;i ra, du kh&aacute;ch c&ograve;n c&oacute; thể đến h&agrave;nh hương tại Khu du lịch t&acirc;m linh &ndash; Ch&ugrave;a Tr&igrave;nh, Ch&ugrave;a Hạ tại ga đến.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>12h00</strong>&nbsp;Qu&yacute; kh&aacute;ch thưởng thức bữa trưa với c&aacute;c m&oacute;n đặc sản v&ugrave;ng T&acirc;y Bắc tại khu vực nh&agrave; h&agrave;ng. Sau đ&oacute; Qu&yacute; kh&aacute;ch quay về thị trấn,</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>14h00</strong>&nbsp;Qu&yacute; kh&aacute;ch tham quan khu du lịch H&agrave;m Rồng&nbsp;ngắm nh&igrave;n to&agrave;n cảnh&nbsp;Sapa&nbsp;từ tr&ecirc;n cao, thăm tháp truy&ecirc;̀n hình r&ocirc;̀i xu&ocirc;́ng vườn l&ecirc;, vườn Táo Mèo, thăm vườn Lan 1, vườn Lan 2, cổng trời, thưởng thức chương tr&igrave;nh văn nghệ&hellip; chinh phục đỉnh S&acirc;n M&acirc;y &ndash; ngắm to&agrave;n cảnh thị trấn Sapa từ tr&ecirc;n cao v&agrave; chụp những bức ảnh kỷ niệm. Qu&yacute; kh&aacute;ch sẽ được đặt ch&acirc;n đến&nbsp;nơi cao nhất của H&agrave;m Rồng đ&oacute; l&agrave; s&acirc;n M&acirc;y&nbsp;&ndash; nơi giao thoa của đất trời, ngắm to&agrave;n cảnh Sapa từ tr&ecirc;n cao.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">Qu&yacute; kh&aacute;ch về kh&aacute;ch sạn, tự do dạo chơi, thưởng thức caf&eacute; phố n&uacute;i. Ngủ đ&ecirc;m tại&nbsp;Sapa.</span></p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 3: Sapa &ndash; Th&aacute;c Bạc &ndash; Th&aacute;c T&igrave;nh Y&ecirc;u &ndash; H&agrave; Nội (Ăn s&aacute;ng, Ăn trưa)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>07h00</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn.&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>08h00</strong>&nbsp;Sau bữa s&aacute;ng, l&aacute;i xe v&agrave; HDV đưa Qu&yacute; kh&aacute;ch đi tham quan khu du lịch Th&aacute;c Bạc ở độ cao 1.900m so với mực nước biển. Đến đ&acirc;y Qu&yacute; kh&aacute;ch sẽ được chi&ecirc;m ngưỡng giữa khung cảnh thi&ecirc;n nhi&ecirc;n một d&ograve;ng th&aacute;c tr&aacute;ng lệ, trắng như &aacute;nh bạc. Sau đ&oacute; ch&uacute;ng ta tiếp tục thăm quan th&aacute;c Tinh Y&ecirc;u l&agrave; th&aacute;c đẹp nhất Sapa với những c&acirc;u chuyện thần b&iacute; về c&aacute;c đ&ocirc;i trai g&aacute;i ngươi Hmong... chi&ecirc;m ngưỡng vẻ đẹp tuy&ecirc;t vời v&agrave; huyền ảo của cổng trời Việt Nam. Kế tiếp xe c&ugrave;ng HDV đưa Qu&yacute; kh&aacute;ch quay trở lại Sa Pa ăn trưa v&agrave; l&agrave;m thủ tục trả ph&ograve;ng kh&aacute;ch sạn.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>13h30:</strong>&nbsp;Xe đưa Qu&yacute; kh&aacute;ch ra điểm hẹn, đ&oacute;n xe limousine chuyến 14h00 quay về H&agrave; Nội. Nghỉ dừng ch&acirc;n giữa chặng.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>20h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch về đến điểm hẹn tại H&agrave; Nội. Kết th&uacute;c h&agrave;nh tr&igrave;nh 3 ng&agrave;y 2 đ&ecirc;m tại Sapa.</span></p>
	</li>
</ul>
', N'<ul>
	<li>Xe gh&eacute;p limousine 29 chỗ đời mới khứ hồi H&agrave; Nội &ndash; Sa Pa &ndash; H&agrave; Nội &amp; Xe ri&ecirc;ng 16 chỗ tham quan Sa Pa</li>
	<li>01 Đ&ecirc;m Nghỉ Hạng Ph&ograve;ng Deluxe Kh&aacute;ch Sạn Nomad Trail Sapa (Ti&ecirc;u chuẩn 02 kh&aacute;ch/ ph&ograve;ng)</li>
	<li>Hướng dẫn vi&ecirc;n chuy&ecirc;n nghiệp&nbsp;suốt h&agrave;nh tr&igrave;nh&nbsp;</li>
	<li>C&aacute;c bữa ăn theo chương tr&igrave;nh: 2 bữa s&aacute;ng, 3 bữa trưa.</li>
	<li>V&eacute; c&aacute;p treo Fansipan khứ hồi</li>
	<li>V&eacute; t&agrave;u hỏa leo n&uacute;i Mường Hoa</li>
	<li>V&eacute; tham quan C&aacute;t C&aacute;t, Th&aacute;c Bạc, Th&aacute;c T&igrave;nh Y&ecirc;u</li>
	<li>Nước suối 1 chai 500ml/kh&aacute;ch/ng&agrave;y.</li>
	<li>Thuế VAT 10%</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn</li>
	<li>Đồ uống trong c&aacute;c bữa ăn</li>
	<li>C&aacute;c bữa ăn kh&ocirc;ng đề cập trong chương tr&igrave;nh</li>
	<li>C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n</li>
	<li>C&aacute;c chi ph&aacute;t sinh kh&ocirc;ng đề cập trong chương tr&igrave;nh</li>
	<li>Chi ph&iacute; bồi dưỡng l&aacute;i xe &amp; HDV</li>
</ul>
', N'<p>Điều kiện hủy tour (ng&agrave;y thường)</p>

<ul>
	<li>Sau khi đăng k&yacute; huỷ tour mất 10% gi&aacute; tour</li>
	<li>Hủy tour 10 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh chịu ph&iacute; 30% gi&aacute; tour (Kh&ocirc;ng t&iacute;nh ng&agrave;y lễ v&agrave; chủ nhật). Ph&iacute; hủy v&eacute; m&aacute;y bay theo qui định của h&atilde;ng.</li>
	<li>Hủy tour 8 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh chịu ph&iacute; 50% gi&aacute; tour (Kh&ocirc;ng t&iacute;nh ng&agrave;y lễ v&agrave; chủ nhật).Ph&iacute; hủy v&eacute; m&aacute;y bay theo qui định của h&atilde;ng.</li>
	<li>Hủy tour 5 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh chịu ph&iacute; 100% gi&aacute; tour (Kh&ocirc;ng t&iacute;nh ng&agrave;y lễ v&agrave; chủ nhật).Ph&iacute; hủy v&eacute; m&aacute;y bay theo qui định của h&atilde;ng.</li>
	<li>Sau khi hủy tour, du kh&aacute;ch vui l&ograve;ng đến c&ocirc;ng ty nhận tiền trong v&ograve;ng 2 tuần kể từ ng&agrave;y đăng k&yacute; hủy tour. Ch&uacute;ng t&ocirc;i chỉ thanh to&aacute;n trong thời gian 14 ng&agrave;y n&oacute;i tr&ecirc;n.</li>
</ul>

<p>Điều kiện hủy tour (ng&agrave;y lễ tết)</p>

<ul>
	<li>C&aacute;c ng&agrave;y lễ tết việc dời ng&agrave;y v&agrave; hủy tour mất 100% gi&aacute; tour.</li>
	<li>Trường hợp hủy tour do sự cố kh&aacute;ch quan như thi&ecirc;n tai, dịch bệnh hoặc do t&agrave;u thủy, xe lửa, m&aacute;y bay ho&atilde;n/hủy chuyến,</li>
</ul>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(3265000 AS Decimal(18, 0)), N'Sapa Rice Terraces Vietnam Tourism.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (17, 1, N'Nghỉ Dưỡng, Khám Phá Cát Bà', N'Hải Phòng', N'40 Người', N'2 Ngày 1 Đêm', N' Ô tô', N'Theo yêu cầu của khách hàng', N'Nằm ở phía Nam của Vịnh Hạ Long và phía Đông của đảo Cát Bà, Vịnh Lan Hạ đang dần trở thành một địa điểm du lịch biển lý tưởng, hứa hẹn nhiều sự trải nghiệm thú vị cho những du khách tìm kiếm sự khác biệt. Sở hữu gần 400 hòn đảo lớn nhỏ dày đặc, mang nhiều hình thù độc đáo với hơn 130 bãi cát vàng nhỏ nhắn, xinh xắn và hoang vắng như những “eo biển xanh” gọi mời du khách khám phá.', N'<ul>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 1: H&agrave; Nội - C&aacute;t B&agrave; (Ăn trưa; Ăn tối)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>08h00</strong>: Xe đ&oacute;n qu&yacute; kh&aacute;ch tại điểm hẹn (trong nội th&agrave;nh H&agrave; Nội) v&agrave; khởi h&agrave;nh đến C&aacute;t B&agrave;, h&ograve;n ngọc của Vịnh Bắc Bộ với gần 400 h&ograve;n đảo n&uacute;i đ&aacute; v&ocirc;i lớn nhỏ, c&ugrave;ng hơn 100 b&atilde;i tắm mini với vẻ đẹp hoang sơ nằm rải r&aacute;c.&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>10h00:</strong>&nbsp;Xe đưa qu&yacute; kh&aacute;ch qua cầu vượt biển T&acirc;n Vũ Lạch Huyện, c&ograve;n được biết tới l&agrave; cầu vượt biển d&agrave;i nhất Đ&ocirc;ng Nam &Aacute; để tới bến Ph&agrave; G&oacute;t. Tại đ&acirc;y, ch&uacute;ng ta sẽ bắt chuyến ph&agrave; qua eo biển Lạch Huyện để tới đảo ngọc C&aacute;t B&agrave;.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>10h30:&nbsp;</strong>Ph&agrave; sẽ đưa qu&yacute; kh&aacute;ch tới bến C&aacute;i Viềng. Xe sẽ tiếp tục đưa qu&yacute; kh&aacute;ch đi qua cung đường ven biển đẹp nhất Vịnh Bắc Bộ, qu&yacute; kh&aacute;ch c&oacute; thể chi&ecirc;m ngưỡng khung cảnh hoang sơ thơ mộng của Khu Dự Trữ Sinh Quyển Thế Giới C&aacute;t B&agrave; với thảm thực vật đa dạng của hệ thống rừng nguy&ecirc;n sinh được bảo tồn chặt chẽ.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>11h30:&nbsp;</strong>Xe đưa qu&yacute; kh&aacute;ch tới Catba Island Resort, khu resort đầy đủ tiện nghi theo ti&ecirc;u chuẩn 4* với vị tr&iacute; thuận lợi gần với b&atilde;i biển. Qu&yacute; kh&aacute;ch nhận ph&ograve;ng, ăn trưa v&agrave; nghỉ ngơi hoặ kh&aacute;m ph&aacute; thị trấn.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>15h00:&nbsp;</strong>Đo&agrave;n tập trung v&agrave; tham gia chương tr&igrave;nh Team Building với những tr&ograve; chơi x&acirc;y dựng l&ograve;ng tin v&agrave; xo&aacute; bỏ khoảng c&aacute;ch, gi&uacute;p gắn kết tinh thần của nh&acirc;n vi&ecirc;n đồng thời k&iacute;ch hoạt năng lượng v&agrave; r&egrave;n luyện kỷ luật th&eacute;p để tập thể c&ocirc;ng ty vượt qua kh&oacute; khăn v&agrave; ph&aacute;t triển mạnh mẽ hơn.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>18h00:&nbsp;</strong>Đo&agrave;n trở về kh&aacute;ch sạn nghỉ ngơi ăn tối v&agrave; d&agrave;nh thời gian tự do buổi tối. Qu&yacute; kh&aacute;ch c&oacute; thể ngắm cảnh to&agrave;n bộ Vịnh C&aacute;t B&agrave; trong khi thưởng thức một ly cocktail tại Skybar &amp; Restaurant tr&ecirc;n tầng thượng của Flamingo Resort</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">Nghỉ đ&ecirc;m tại CatBa Island Resort</span></p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 2: C&aacute;t B&agrave; - H&agrave; Nội (Ăn s&aacute;ng; Ăn trưa)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>07h30</strong>: Sau bữa s&aacute;ng tại kh&aacute;ch sạn, xe sẽ đưa qu&yacute; kh&aacute;ch tới thăm Vườn Quốc Gia C&aacute;t B&agrave;. Được c&ocirc;ng nhận l&agrave; Khu Dự Trữ Sinh Quyển của thế giới năm 2004, Rừng Quốc Gia C&aacute;t B&agrave; sở hữu một hệ sinh th&aacute;i sinh động với hơn 2.300 lo&agrave;i động thực vật kh&aacute;c nhau. Đ&acirc;y c&ograve;n l&agrave; nh&agrave; của ph&acirc;n lo&agrave;i voọc đầu trắng cực kỳ qu&yacute; hiếm tr&ecirc;n thế giới, hiện chỉ c&ograve;n được bảo tồn tại đ&acirc;y.&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>08h00</strong>: Hướng dẫn vi&ecirc;n sẽ c&ugrave;ng qu&yacute; kh&aacute;ch băng qua những con đường m&ograve;n v&agrave; leo l&ecirc;n điểm cao nhất của rừng quốc gia. Đặt ch&acirc;n tới đỉnh Ngự L&acirc;m, qu&yacute; kh&aacute;ch sẽ thấy được khung cảnh h&ugrave;ng vĩ to&agrave;n cảnh rừng quốc gia. Chi&ecirc;m ngưỡng những d&atilde;y n&uacute;i nhấp nh&ocirc; giữa những t&aacute;n rừng nguy&ecirc;n sinh sẽ mang tới cho qu&yacute; kh&aacute;ch một sự sảng kho&aacute;i nhẹ nh&agrave;ng.&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>11h00:&nbsp;</strong>Xe sẽ đưa qu&yacute; kh&aacute;ch trở về kh&aacute;ch sạn để thay đồ v&agrave; l&agrave;m thủ tục check-out. Xe sẽ đưa Qu&yacute; kh&aacute;ch tới nh&agrave; h&agrave;ng để ăn trưa. Sau bữa trưa, đo&agrave;n sẽ c&oacute; thời gian tự do để gh&eacute; qua chợ trung t&acirc;m thị trấn để mua sắm c&aacute;c loại đặc sản địa phương.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>14h00:</strong>&nbsp;Xe đưa đo&agrave;n di chuyển tới bến C&aacute;i Viềng, đ&oacute;n chuyến ph&agrave; tới C&aacute;t Hải để trở về H&agrave; Nội</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>17h30:&nbsp;</strong>Xe đưa qu&yacute; kh&aacute;ch về tới điểm hẹn tại H&agrave; Nội, kết th&uacute;c chuyến h&agrave;nh tr&igrave;nh tham quan Đảo C&aacute;t B&agrave; v&agrave; Vịnh Lan Hạ với nhiều kỷ niệm đ&aacute;ng nhớ. Ch&agrave;o tạm biệt qu&yacute; kh&aacute;ch v&agrave; hẹn gặp lại trong c&aacute;c chương tr&igrave;nh tiếp theo.</span></p>
	</li>
</ul>
', N'<ul>
	<li>Xe vận chuyển đời mới theo chương tr&igrave;nh</li>
	<li>Hướng dẫn vi&ecirc;n chuy&ecirc;n nghiệp, nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh</li>
	<li>Ph&ograve;ng kh&aacute;ch sạn ti&ecirc;u chuẩn 4 sao C&aacute;t B&agrave; Island Resort (02 kh&aacute;ch/ph&ograve;ng)</li>
	<li>Bữa ăn theo chương tr&igrave;nh. Mức ăn 150.000 VNĐ/ bữa ch&iacute;nh (01 bữa s&aacute;ng, 02 bữa trưa v&agrave; 01 đ&ecirc;m Gala Dinner, ti&ecirc;u chuẩn 300.000 VNĐ/ kh&aacute;ch)</li>
	<li>V&eacute; tham quan c&aacute;c địa điểm trong chương tr&igrave;nh</li>
	<li>Chi ph&iacute; tổ chức Team Building, địa điểm, setup backdrop, loa đ&agrave;i,&hellip;</li>
	<li>Chi ph&iacute; tổ chức Gala Dinner: &Acirc;m thanh, &aacute;nh s&aacute;ng, m&agrave;n h&igrave;nh, m&aacute;y chiếu, MC.</li>
	<li>Chi ph&iacute; Media (Ảnh, video c&aacute;c hoạt động team building &amp; Gala Dinner)&nbsp;</li>
	<li>Khăn lạnh (01 c&aacute;i/kh&aacute;ch/ng&agrave;y), Nước suối tr&ecirc;n xe (01 chai 0,5l/kh&aacute;ch/ng&agrave;y)</li>
	<li>Thuế VAT theo quy định của nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn.</li>
	<li>Phụ thu cuối tuần, lễ tết &amp; giai đoạn cao điểm</li>
	<li>Chi ph&iacute; đồ uống trong bữa ăn &amp; c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c trong chương tr&igrave;nh.</li>
	<li>Tiền bồi dưỡng cho HDV v&agrave; LX.</li>
	<li>C&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng nằm trong mục bao gồm</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(2690000 AS Decimal(18, 0)), N'haiphong.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (18, 1, N'Khám Phá Hang Động, Thiên Nhiên Cố Đô', N'Ninh Bình', N'30 Người', N'3 ngày', N'Ô tô', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Sở hữu thiên hiên hoang sơ, phong cảnh hữu tình cùng với địa hình núi đá vôi đa dạng, hệ động thực vật phong phú, Ninh Bình được mệnh danh là Vịnh Hạ Long trên cạn và là địa điểm quay bộ phim bom tấn của Hollywood Kong: Skull Island. Hãy cùng Mytour tới thăm Ninh Bình để tham gia các hoạt động Team Building thú vị và hào hứng, đồng thời tận hưởng khoảng thời gian tuyệt vời bên cạnh người thân và đồng nghiệp.', N'<ul>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 1: H&agrave; Nội - Hoa Lư - Thung Nham (Ăn trưa; Ăn tối)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>07h30</strong>: Xe đ&oacute;n qu&yacute; kh&aacute;ch tại điểm hẹn (trong nội th&agrave;nh H&agrave; Nội) v&agrave; khởi h&agrave;nh đến Ninh B&igrave;nh, được mệnh danh l&agrave; Vịnh Hạ Long tr&ecirc;n cạn với địa h&igrave;nh n&uacute;i đ&aacute; v&ocirc;i đa dạng, hệ động thực vật phong ph&uacute; v&agrave; l&agrave; địa điểm quay bộ phim bom tấn của Hollywood Kong: Skull Island.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>09h30:</strong>&nbsp;Xe đưa Qu&yacute; kh&aacute;ch tới Cố Đ&ocirc; Hoa Lư, quần thể di t&iacute;ch quốc gia đặc biệt quan trọng của Việt Nam mang kiến tr&uacute;c h&agrave;i h&ograve;a giữa nh&acirc;n tạo v&agrave; thi&ecirc;n tạo. Đ&acirc;y l&agrave; nơi lưu trữ c&aacute;c di t&iacute;ch lịch sử qua nhiều thời đại li&ecirc;n quan đến sự nghiệp của c&aacute;c nh&acirc;n vật lịch sử thuộc ba triều đại nh&agrave; Đinh, nh&agrave; Tiền L&ecirc; v&agrave; khởi đầu nh&agrave; L&yacute; trước khi dời đ&ocirc; tới Thăng Long.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">HDV sẽ c&ugrave;ng Qu&yacute; kh&aacute;ch gh&eacute; thăm Đền Vua Đinh Ti&ecirc;n Ho&agrave;ng, nơi duy nhất ở Việt Nam thờ đồng thời Vua Đinh Ti&ecirc;n Ho&agrave;ng, cha mẹ &ocirc;ng c&ugrave;ng c&aacute;c con trai v&agrave; c&aacute;c tướng triều Đinh. C&aacute;ch đ&oacute; kh&ocirc;ng xa l&agrave; Đền Vua L&ecirc; Đại H&agrave;nh, vị Ho&agrave;ng đế s&aacute;ng lập nh&agrave; Tiền L&ecirc; nước Đại Cồ Việt. Đền Vua Đinh c&ugrave;ng với đền Vua L&ecirc; đ&atilde; được xếp hạng &quot;Top 100 c&ocirc;ng tr&igrave;nh 100 tuổi nổi tiếng ở Việt Nam&quot; v&agrave; mang nhiều gi&aacute; trị về lịch sử, văn h&oacute;a v&agrave; nghệ thuật kiến tr&uacute;c của thế kỷ XVII.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>10h30:&nbsp;</strong>Đo&agrave;n di chuyển tới Tuyệt Tịnh Cốc, nơi được biết tới với giai thoại t&igrave;nh y&ecirc;u của ph&ograve; m&atilde; Trương Qu&aacute;n Sơn v&agrave; c&ocirc;ng ch&uacute;a Đinh Ph&ugrave; Dung, đồng thời cũng l&agrave; nơi Th&aacute;i Hậu Dương Văn Nga xuất gia tu h&agrave;nh với ph&aacute;p danh l&agrave; Bảo quang Ho&agrave;ng th&aacute;i hậu. Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội kh&aacute;m ph&aacute; Ch&ugrave;a động Am Ti&ecirc;n, ẩn sau những t&aacute;n c&acirc;y cổ thụ nằm giữa lưng chừng n&uacute;i. HDV sẽ c&ugrave;ng Qu&yacute; kh&aacute;ch chinh phục 205 bậc đ&aacute; b&ecirc;n v&aacute;ch n&uacute;i, gh&eacute; thăm Ch&ugrave;a, Động Am Ti&ecirc;n v&agrave; thưởng ngoạn khung cảnh tuyệt vời của Tuyệt Tịnh Cốc.&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>12h00:</strong>&nbsp;Xe đưa qu&yacute; kh&aacute;ch tới Thung Nham Resort để d&ugrave;ng bữa. Sau bữa trưa, Qu&yacute; kh&aacute;ch l&agrave;m thủ tục check-in, nhận ph&ograve;ng v&agrave; nghỉ ngơi tự do.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>14h30:</strong>&nbsp;Qu&yacute; kh&aacute;ch xuống thuyền tham quan vườn chim Thung Nham &ndash; tr&aacute;i tim di sản. Vườn chim l&agrave; nơi cư tr&uacute; v&agrave; sinh sống của đa dạng c&aacute;c loại của khoảng 40.000 con, khoảng 5.000 tổ chim c&aacute;c loại, thuộc 46 lo&agrave;i chim như c&ograve;, vạc, diệp, le le, m&ograve;ng k&eacute;t, ch&iacute;ch ch&ograve;e lửa, cho tới s&aacute;o đ&aacute;&hellip; Điều đặc biệt ở vườn chim l&agrave; c&oacute; hai lo&agrave;i chim đặc biệt qu&yacute; hiếm được ghi trong s&aacute;ch đỏ l&agrave; Hằng Hạc v&agrave; Phượng Ho&agrave;ng, một trong những linh vật nằm trong bộ tứ linh Long-Ly-Quy-Phượng.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>15h30:&nbsp;</strong>Đo&agrave;n tập trung v&agrave; tham gia chương tr&igrave;nh Team Building với những tr&ograve; chơi x&acirc;y dựng l&ograve;ng tin v&agrave; xo&aacute; bỏ khoảng c&aacute;ch, gi&uacute;p gắn kết tinh thần của nh&acirc;n vi&ecirc;n đồng thời k&iacute;ch hoạt năng lượng v&agrave; r&egrave;n luyện kỷ luật th&eacute;p để tập thể c&ocirc;ng ty vượt qua kh&oacute; khăn v&agrave; ph&aacute;t triển mạnh mẽ hơn.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>17h30:&nbsp;</strong>Qu&yacute; kh&aacute;ch về ph&ograve;ng nghỉ ngơi v&agrave; chuẩn bị tham dự Gala Dinner&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">Nghỉ đ&ecirc;m tại Thung Nham Resort.</span></p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 2: Thung Nham - Tam Cốc B&iacute;ch Động - Thung Nham (Ăn s&aacute;ng; Ăn trưa; Ăn tối)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>08h00:&nbsp;</strong>Sau bữa s&aacute;ng, HDV c&ugrave;ng sẽ c&ugrave;ng Qu&yacute; kh&aacute;ch đạp xe gh&eacute; thăm B&iacute;ch Động, một trong những thắng cảnh nổi tiếng được mệnh danh l&agrave; &quot;Nam Thi&ecirc;n đệ nhị động&quot;, c&oacute; nghĩa l&agrave; động đẹp thứ nh&igrave; của trời Nam. Nằm tr&ecirc;n n&uacute;i Ngũ Nhạc, ch&ugrave;a được x&acirc;y dựng dựa v&agrave;o sườn n&uacute;i v&agrave; được chia l&agrave;m ba cấp l&agrave; ch&ugrave;a Hạ, ch&ugrave;a Trung v&agrave; ch&ugrave;a Thượng. Ph&iacute;a trước động l&agrave; d&ograve;ng s&ocirc;ng Ho&agrave;ng Long uốn lượn b&ecirc;n sườn n&uacute;i v&agrave; c&aacute;nh đồng Tr&agrave;ng Thi rợp m&agrave;u xanh m&aacute;t.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>10h30:&nbsp;</strong>Đo&agrave;n di chuyển tới khu vực bến thuyền Tam Cốc. Tr&ecirc;n đường Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội đạp xe qua những c&aacute;nh đồng l&uacute;a b&aacute;t ng&aacute;t, tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; n&eacute;t đẹp hoang sơ của đồng qu&ecirc; Việt với những lũy tre l&agrave;ng, đồng l&uacute;a xanh mướt v&agrave; l&agrave;ng qu&ecirc; thanh b&igrave;nh, mộc mạc. Tới khu vực bến thuyền Tam Cốc, đo&agrave;n dừng nghi v&agrave; d&ugrave;ng bữa tại nh&agrave; h&agrave;ng địa phương.&nbsp;</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>14h00:</strong>&nbsp;Sau bữa trưa, Qu&yacute; kh&aacute;ch xuống bến thuyền Tam Cốc, hay c&ograve;n được biết tới với t&ecirc;n Vịnh Hạ Long tr&ecirc;n cạn nổi tiếng bởi hệ thống hang động, n&uacute;i đ&aacute; v&ocirc;i nổi tr&ecirc;n mặt nước v&agrave; c&aacute;c di t&iacute;ch lịch sử li&ecirc;n quan đến triều đại nh&agrave; Trần từ thế kỷ XIII - XIV. Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội du ngoạn tr&ecirc;n d&ograve;ng Ng&ocirc; Giang, nghe người d&acirc;n địa phương kể những c&acirc;u chuyện lịch sử, những sự t&iacute;ch gắn với t&ecirc;n gọi của từng mỏm n&uacute;i, v&aacute;ch đ&aacute;. Nhiều c&aacute;i t&ecirc;n độc đ&aacute;o được đặt cho c&aacute;c ngọn n&uacute;i dựa theo h&igrave;nh d&aacute;ng của ch&uacute;ng như mỏm Kim Quy, n&uacute;i H&agrave;m Rồng,..</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>15h30:&nbsp;</strong>Thuyền đưa đo&agrave;n cập Bến Th&aacute;nh, HDV sẽ c&ugrave;ng Qu&yacute; kh&aacute;ch tản bộ tr&ecirc;n con đường đất dọc theo những c&aacute;nh đồng b&aacute;t ng&aacute;t cạnh d&atilde;y n&uacute;i Cấm Sơn tới thăm đền Th&aacute;i Vi. Đ&acirc;y l&agrave; một nơi thờ c&aacute;c vua đầu nh&agrave; Trần, c&aacute;c tướng lĩnh v&agrave; ho&agrave;ng hậu Thuận Thi&ecirc;n, những người đ&atilde; lập ra h&agrave;nh cung Vũ L&acirc;m, một cứ địa trong kh&aacute;ng chiến chống Nguy&ecirc;n M&ocirc;ng.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>16h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch đạp xe di chuyển về Thung Nham Resort v&agrave; nghỉ ngơi tự do trước khi d&ugrave;ng bữa tối tại nh&agrave; h&agrave;ng.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif">Nghỉ đ&ecirc;m tại Thung Nham Resort.</span></p>
	</li>
	<li>
	<h5><span style="font-size:16px"><span style="color:#DAA520"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 3: Thung Nham - Hang M&uacute;a - H&agrave; Nội (Ăn s&aacute;ng; Ăn trưa)</span></span></span></h5>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>09h00</strong>: Sau bữa s&aacute;ng tại Resort, xe sẽ đưa qu&yacute; kh&aacute;ch tới thăm Hang M&uacute;a, một địa điểm v&ocirc; c&ugrave;ng độc đ&aacute;o để ngắm to&agrave;n cảnh Tam Cốc từ tr&ecirc;n cao với nhiều n&eacute;t đặc sắc. Hướng dẫn vi&ecirc;n sẽ c&ugrave;ng qu&yacute; kh&aacute;ch vượt qua 486 bậc thang đ&aacute; m&ocirc; phỏng theo kiến tr&uacute;c Vạn L&yacute; Trường Th&agrave;nh dẫn l&ecirc;n đỉnh N&uacute;i M&uacute;a để chi&ecirc;m ngưỡng được to&agrave;n bộ vẻ đẹp của khu vực Tam Cốc với những c&aacute;nh đồng l&uacute;a bạt ng&agrave;n, xanh mướt, những d&atilde;y n&uacute;i tr&ugrave;ng điệp, những con thuyền xu&ocirc;i d&ograve;ng Ng&ocirc; Đồng v&agrave; khung cảnh thật qu&aacute; đỗi b&igrave;nh y&ecirc;n, xanh m&aacute;t.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>11h30:&nbsp;</strong>Xe đưa Qu&yacute; kh&aacute;ch tới nh&agrave; h&agrave;ng Ch&iacute;nh Thư để thưởng thức thịt d&ecirc; - cơm ch&aacute;y, m&oacute;n ăn đặc sản của v&ugrave;ng đất Cố Đ&ocirc;.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>14h00:</strong>&nbsp;Đo&agrave;n khởi h&agrave;nh về Tp. H&agrave; Nội. Qu&yacute; kh&aacute;ch c&oacute; thể mua một số đặc sản để mang về l&agrave;m qu&agrave; trước khi l&ecirc;n xe.</span></p>

	<p><span style="font-family:tahoma,geneva,sans-serif"><strong>16h00:&nbsp;</strong>Xe đưa qu&yacute; kh&aacute;ch về tới điểm hẹn tại H&agrave; Nội, kết th&uacute;c chuyến h&agrave;nh tr&igrave;nh tham quan Ninh B&igrave;nh với nhiều kỷ niệm đ&aacute;ng nhớ. Ch&agrave;o tạm biệt qu&yacute; kh&aacute;ch v&agrave; hẹn gặp lại trong c&aacute;c chương tr&igrave;nh tiếp theo.</span></p>
	</li>
</ul>
', N'<ul>
	<li>Xe vận chuyển đời mới theo chương tr&igrave;nh</li>
	<li>Hướng dẫn vi&ecirc;n chuy&ecirc;n nghiệp, nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh</li>
	<li>02 đ&ecirc;m nghỉ tại Resort 3 sao Thung Nham Resort hạng ph&ograve;ng Superior (02 kh&aacute;ch/ph&ograve;ng)</li>
	<li>Bữa ăn theo chương tr&igrave;nh tại nh&agrave; h&agrave;ng. Mức ăn 160.000 VNĐ/ bữa (03 bữa trưa; 01 bữa tối) v&agrave; 350.000 VNĐ/ kh&aacute;ch (Đ&ecirc;m Gala Dinner)</li>
	<li>V&eacute; tham quan c&aacute;c địa điểm trong chương tr&igrave;nh</li>
	<li>Chi ph&iacute; tổ chức Team Building, địa điểm, setup backdrop, loa đ&agrave;i,&hellip;</li>
	<li>Chi ph&iacute; tổ chức Gala Dinner: &Acirc;m thanh, &aacute;nh s&aacute;ng, m&agrave;n h&igrave;nh, m&aacute;y chiếu, MC.</li>
	<li>Chi ph&iacute; Media (Ảnh, video c&aacute;c hoạt động team building &amp; Gala Dinner)&nbsp;</li>
	<li>Khăn lạnh (01 c&aacute;i/kh&aacute;ch/ng&agrave;y), Nước suối tr&ecirc;n xe (01 chai 0,5l/kh&aacute;ch/ng&agrave;y)</li>
	<li>Thuế VAT theo quy định của nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn.</li>
	<li>Phụ thu cuối tuần, lễ tết &amp; giai đoạn cao điểm</li>
	<li>Chi ph&iacute; đồ uống trong bữa ăn &amp; c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c trong chương tr&igrave;nh.</li>
	<li>Tiền bồi dưỡng cho HDV v&agrave; LX.</li>
	<li>C&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng nằm trong mục bao gồm</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(3590000 AS Decimal(18, 0)), N'ninhbinh.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (19, 1, N'Khám Phá Ruộng Bậc Thang ở Sapa', N'Sapa', N'10 Người', N' 3 Ngày 2 Đêm', N' Ôtô', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Sapa như một vùng đất khiêm nhường, lặng lẽ nhưng ẩn chứa bao điều kỳ diệu của cảnh sắc thiên nhiên. Du khách tới Sapa không chỉ để tận hưởng không khí trong lành, sự yên bình giản dị của một vùng đất phía Tây Bắc, mà còn để chiêm ngưỡng những vẻ đẹp hoang sơ của những ruộng bậc thang, thác nước, những ngọn vúi hùng vĩ ẩn sau những đám mây huyền ảo và khám phá những phong tục tập quán, nét đẹp văn hóa của các dân tộc vùng cao.', N'<ul>
	<li>
	<h5 style="text-align:justify"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: H&agrave; Nội &ndash; Sapa - Bản C&aacute;t C&aacute;t (Ăn trưa)</span></span></h5>

	<p style="text-align:justify"><strong>07:00</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại điểm hẹn, xe đưa Qu&yacute; kh&aacute;ch đi Sapa bằng đường cao tốc. Tr&ecirc;n đường qu&yacute; kh&aacute;ch dừng ch&acirc;n nghỉ ngơi 30 ph&uacute;t.</p>

	<p style="text-align:justify"><strong>13:00</strong>&nbsp;Đến thị trấn Sapa. HDV đ&oacute;n Qu&yacute; kh&aacute;ch v&agrave; đưa Qu&yacute; kh&aacute;ch đi ăn trưa tại nh&agrave; h&agrave;ng.</p>

	<p style="text-align:justify"><strong>14:00&nbsp;</strong>Qu&yacute; kh&aacute;ch nhận ph&ograve;ng tại kh&aacute;ch sạn 3 sao ở trung t&acirc;m thị trấn.</p>

	<p style="text-align:justify"><strong>15:00</strong>&nbsp;Xe v&agrave; HDV địa phương đ&oacute;n kh&aacute;ch đi tham quan bản C&aacute;t C&aacute;t nơi sinh sống của người&nbsp;H&rsquo;Mong&nbsp;đen, một nơi phong cảnh hữu t&igrave;nh tại thung lũng nằm dưới ch&acirc;n đỉnh&nbsp;Phanxipang&nbsp;h&ugrave;ng vĩ. HDV địa phương sẽ giới thiệu cho qu&yacute; kh&aacute;ch cuộc sống thường ng&agrave;y của người d&acirc;n tộc nơi đ&acirc;y, sau đ&oacute; qu&yacute; kh&aacute;ch tiếp tục đi bộ đến th&aacute;c nước&nbsp;C&aacute;t C&aacute;t, trạm thủy điện&nbsp;C&aacute;t C&aacute;t&nbsp;của người Ph&aacute;p x&acirc;y dựng từ những năm đầu thế kỉ XX. Qu&yacute; kh&aacute;ch vui chơi chụp h&igrave;nh lưu niệm v&agrave; xe đ&oacute;n qu&yacute; kh&aacute;ch quay trở lại thị trấn&nbsp;Sa Pa.</p>

	<p style="text-align:justify">Lưu &yacute;: Chuyến đi bộ kh&aacute;m ph&aacute; kh&eacute;o d&agrave;i trong khoảng 2 giờ với qu&atilde;ng đường 2.5 km</p>

	<p style="text-align:justify">Tối Qu&yacute; kh&aacute;ch tự do dạo chơi thăm quan thị trấn, thưởng thức c&aacute;c m&oacute;n nướng nổi tiếng của Sapa.&nbsp;Nghỉ đ&ecirc;m tại kh&aacute;ch sạn trung t&acirc;m.</p>
	</li>
	<li>
	<h5 style="text-align:justify"><span style="font-size:16px"><span style="color:#DAA520">Ng&agrave;y 2: Sapa &ndash; Fansipan &ndash; N&uacute;i H&agrave;m Rồng (Ăn s&aacute;ng, Ăn trưa)</span></span></h5>

	<p style="text-align:justify"><strong>08h00</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn.</p>

	<p style="text-align:justify"><strong>09h00</strong>&nbsp;Sau bữa s&aacute;ng tại kh&aacute;ch sạn, Qu&yacute; kh&aacute;ch thưởng thức h&agrave;nh tr&igrave;nh đi t&agrave;u hỏa leo n&uacute;i ngắm thung lũng Mường Hoa từ tr&ecirc;n cao. T&agrave;u đưa kh&aacute;ch đến garage&nbsp;c&aacute;p treo Fansipan. Qu&yacute; kh&aacute;ch tham quan chinh phục Fansipan, ngọn n&uacute;i cao nhất Việt Nam (3.143 m) thuộc d&atilde;y n&uacute;i Ho&agrave;ng Li&ecirc;n Sơn, c&aacute;ch thị trấn Sa Pa khoảng 9 km về ph&iacute;a t&acirc;y nam. Du kh&aacute;ch chinh phục &ldquo;N&oacute;c nh&agrave; Đ&ocirc;ng Dương&rdquo; với hệ thống c&aacute;p treo Fansipan Sa Pa d&agrave;i 6,2km đạt 2 kỷ lục Guinness thế giới: C&aacute;p treo ba d&acirc;y c&oacute; độ ch&ecirc;nh giữa ga đi v&agrave; ga đến lớn nhất thế giới: 1410m v&agrave; C&aacute;p treo ba d&acirc;y d&agrave;i nhất thế giới: 6292.5m. Từ tuyến c&aacute;p treo, du kh&aacute;ch c&oacute; thể cảm nhận được thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, chi&ecirc;m ngưỡng khung cảnh thung lũng Mường Hoa v&agrave; rừng quốc gia Ho&agrave;ng Li&ecirc;n từ tr&ecirc;n cao. Ngo&agrave;i ra, du kh&aacute;ch c&ograve;n c&oacute; thể đến h&agrave;nh hương tại Khu du lịch t&acirc;m linh &ndash; Ch&ugrave;a Tr&igrave;nh, Ch&ugrave;a Hạ tại ga đến.</p>

	<p style="text-align:justify"><strong>12h00</strong>&nbsp;Qu&yacute; kh&aacute;ch thưởng thức bữa trưa với c&aacute;c m&oacute;n đặc sản v&ugrave;ng T&acirc;y Bắc tại khu vực nh&agrave; h&agrave;ng. Sau đ&oacute; Qu&yacute; kh&aacute;ch quay về thị trấn,</p>

	<p style="text-align:justify"><strong>14h00</strong>&nbsp;Qu&yacute; kh&aacute;ch tham quan khu du lịch H&agrave;m Rồng&nbsp;ngắm nh&igrave;n to&agrave;n cảnh&nbsp;Sapa&nbsp;từ tr&ecirc;n cao, thăm tháp truy&ecirc;̀n hình r&ocirc;̀i xu&ocirc;́ng vườn l&ecirc;, vườn Táo Mèo, thăm vườn Lan 1, vườn Lan 2, cổng trời, thưởng thức chương tr&igrave;nh văn nghệ&hellip; chinh phục đỉnh S&acirc;n M&acirc;y &ndash; ngắm to&agrave;n cảnh thị trấn Sapa từ tr&ecirc;n cao v&agrave; chụp những bức ảnh kỷ niệm. Qu&yacute; kh&aacute;ch sẽ được đặt ch&acirc;n đến&nbsp;nơi cao nhất của H&agrave;m Rồng đ&oacute; l&agrave; s&acirc;n M&acirc;y&nbsp;&ndash; nơi giao thoa của đất trời, ngắm to&agrave;n cảnh Sapa từ tr&ecirc;n cao.</p>

	<p style="text-align:justify">Qu&yacute; kh&aacute;ch về kh&aacute;ch sạn, tự do dạo chơi, thưởng thức caf&eacute; phố n&uacute;i. Ngủ đ&ecirc;m tại&nbsp;Sapa.</p>
	</li>
	<li>
	<h5 style="text-align:justify"><span style="font-size:16px"><span style="color:#DAA520">Ng&agrave;y 3: Sapa &ndash; Th&aacute;c Bạc &ndash; Th&aacute;c T&igrave;nh Y&ecirc;u &ndash; H&agrave; Nội (Ăn s&aacute;ng, Ăn trưa)</span></span></h5>

	<p style="text-align:justify"><strong>07h00</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn.&nbsp;</p>

	<p style="text-align:justify"><strong>08h00</strong>&nbsp;Sau bữa s&aacute;ng, l&aacute;i xe v&agrave; HDV đưa Qu&yacute; kh&aacute;ch đi tham quan khu du lịch Th&aacute;c Bạc ở độ cao 1.900m so với mực nước biển. Đến đ&acirc;y Qu&yacute; kh&aacute;ch sẽ được chi&ecirc;m ngưỡng giữa khung cảnh thi&ecirc;n nhi&ecirc;n một d&ograve;ng th&aacute;c tr&aacute;ng lệ, trắng như &aacute;nh bạc. Sau đ&oacute; ch&uacute;ng ta tiếp tục thăm quan th&aacute;c Tinh Y&ecirc;u l&agrave; th&aacute;c đẹp nhất Sapa với những c&acirc;u chuyện thần b&iacute; về c&aacute;c đ&ocirc;i trai g&aacute;i ngươi Hmong... chi&ecirc;m ngưỡng vẻ đẹp tuy&ecirc;t vời v&agrave; huyền ảo của cổng trời Việt Nam. Kế tiếp xe c&ugrave;ng HDV đưa Qu&yacute; kh&aacute;ch quay trở lại Sa Pa ăn trưa v&agrave; l&agrave;m thủ tục trả ph&ograve;ng kh&aacute;ch sạn.</p>

	<p style="text-align:justify"><strong>13h30:</strong>&nbsp;Xe đưa Qu&yacute; kh&aacute;ch ra điểm hẹn, đ&oacute;n xe limousine chuyến 14h00 quay về H&agrave; Nội. Nghỉ dừng ch&acirc;n giữa chặng.</p>

	<p style="text-align:justify"><strong>20h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch về đến điểm hẹn tại H&agrave; Nội. Kết th&uacute;c h&agrave;nh tr&igrave;nh 3 ng&agrave;y 2 đ&ecirc;m tại Sapa.</p>
	</li>
</ul>
', N'<ul>
	<li>Xe gh&eacute;p limousine 29 chỗ đời mới khứ hồi H&agrave; Nội &ndash; Sa Pa &ndash; H&agrave; Nội &amp; Xe ri&ecirc;ng 16 chỗ tham quan Sa Pa</li>
	<li>01 Đ&ecirc;m Nghỉ Hạng Ph&ograve;ng Deluxe Kh&aacute;ch Sạn Nomad Trail Sapa (Ti&ecirc;u chuẩn 02 kh&aacute;ch/ ph&ograve;ng)</li>
	<li>Hướng dẫn vi&ecirc;n chuy&ecirc;n nghiệp&nbsp;suốt h&agrave;nh tr&igrave;nh&nbsp;</li>
	<li>C&aacute;c bữa ăn theo chương tr&igrave;nh: 2 bữa s&aacute;ng, 3 bữa trưa.</li>
	<li>V&eacute; c&aacute;p treo Fansipan khứ hồi</li>
	<li>V&eacute; t&agrave;u hỏa leo n&uacute;i Mường Hoa</li>
	<li>V&eacute; tham quan C&aacute;t C&aacute;t, Th&aacute;c Bạc, Th&aacute;c T&igrave;nh Y&ecirc;u</li>
	<li>Nước suối 1 chai 500ml/kh&aacute;ch/ng&agrave;y.</li>
	<li>Thuế VAT 10%</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn</li>
	<li>Đồ uống trong c&aacute;c bữa ăn</li>
	<li>C&aacute;c bữa ăn kh&ocirc;ng đề cập trong chương tr&igrave;nh</li>
	<li>C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n</li>
	<li>C&aacute;c chi ph&aacute;t sinh kh&ocirc;ng đề cập trong chương tr&igrave;nh</li>
	<li>Chi ph&iacute; bồi dưỡng l&aacute;i xe &amp; HDV</li>
</ul>
', N'<p>Điều kiện hủy tour (ng&agrave;y thường)</p>

<ul>
	<li>Sau khi đăng k&yacute; huỷ tour mất 10% gi&aacute; tour</li>
	<li>Hủy tour 10 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh chịu ph&iacute; 30% gi&aacute; tour (Kh&ocirc;ng t&iacute;nh ng&agrave;y lễ v&agrave; chủ nhật). Ph&iacute; hủy v&eacute; m&aacute;y bay theo qui định của h&atilde;ng.</li>
	<li>Hủy tour 8 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh chịu ph&iacute; 50% gi&aacute; tour (Kh&ocirc;ng t&iacute;nh ng&agrave;y lễ v&agrave; chủ nhật).Ph&iacute; hủy v&eacute; m&aacute;y bay theo qui định của h&atilde;ng.</li>
	<li>Hủy tour 5 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh chịu ph&iacute; 100% gi&aacute; tour (Kh&ocirc;ng t&iacute;nh ng&agrave;y lễ v&agrave; chủ nhật).Ph&iacute; hủy v&eacute; m&aacute;y bay theo qui định của h&atilde;ng.</li>
	<li>Sau khi hủy tour, du kh&aacute;ch vui l&ograve;ng đến c&ocirc;ng ty nhận tiền trong v&ograve;ng 2 tuần kể từ ng&agrave;y đăng k&yacute; hủy tour. Ch&uacute;ng t&ocirc;i chỉ thanh to&aacute;n trong thời gian 14 ng&agrave;y n&oacute;i tr&ecirc;n.</li>
</ul>

<p>Điều kiện hủy tour (ng&agrave;y lễ tết)</p>

<ul>
	<li>C&aacute;c ng&agrave;y lễ tết việc dời ng&agrave;y v&agrave; hủy tour mất 100% gi&aacute; tour.</li>
	<li>Trường hợp hủy tour do sự cố kh&aacute;ch quan như thi&ecirc;n tai, dịch bệnh hoặc do t&agrave;u thủy, xe lửa, m&aacute;y bay ho&atilde;n/hủy chuyến,&nbsp;</li>
</ul>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(4265000 AS Decimal(18, 0)), N'Sapa Travel Guide Vietnam Tourism.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (20, 1, N'Cao Nguyên Mộc Châu Ngày Đông', N'Mộc Châu', N'20 Người', N'3 ngày', N' Ôtô ', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Mùa đông ở Mộc Châu thường bắt đầu vào tháng 10 âm lịch ( tức khoảng cuối tháng 11 dương lịch). Thời tiết bắt đầu lạnh dần cho đến khi rớt xuống khoảng 0 đến 3 độ.Với nhiệt độ này hầu khắp các huyện vùng cao của Sơn La đều ngập tràn trong sắc trắng của tuyết. Du lịch Mộc Châu vào cuối tháng 11 đến đầu tháng 2, Nếu may mắn bạn sẽ có cơ hội ngắm nhìn những bông tuyết trắng xóa. Thời gian này cũng là mùa hoa mận và hoa đào nở ở Mộc Châu', N'<h5>&nbsp;</h5>

<p><span style="font-size:16px"><span style="color:#DAA520"><strong>Ng&agrave;y 1: H&Agrave; NỘI- MỘC CH&Acirc;U - ĐỒI CH&Egrave; TR&Aacute;I TIM - THUNG LŨNG MẬN N&Agrave; KA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (Ăn trưa, tối )</strong></span></span></p>

<p><strong>6h30 :&nbsp;</strong>Xe v&agrave; hướng dẫn vi&ecirc;n đ&oacute;n qu&yacute; kh&aacute;ch tại điểm hẹn khởi h&agrave;nh đi&nbsp;<strong>Mộc Ch&acirc;u</strong>. Tr&ecirc;n đường đi, đo&agrave;n dừng ch&acirc;n nghỉ ngơi v&agrave; ngắm cảnh, chụp ảnh Checkin tại&nbsp;<strong>Dốc Đ&aacute; Trắng</strong>&nbsp;(đ&egrave;o Thung Khe)&nbsp;<strong>Mai Ch&acirc;u - H&ograve;a B&igrave;nh</strong>, sau đ&oacute; tiếp tục h&agrave;nh tr&igrave;nh đi&nbsp;<strong>cao nguy&ecirc;n Mộc Ch&acirc;u</strong></p>

<p>Mộc Ch&acirc;u l&agrave; điểm du lịch hấp dẫn của Miền Bắc, đi du lịch Mộc Ch&acirc;u v&agrave;o m&ugrave;a h&egrave; hay m&ugrave;a đ&ocirc;ng, ng&agrave;y sương m&ugrave; trắng n&uacute;i hay ng&agrave;y nắng trải v&agrave;ng mơ tr&ecirc;n rừng đều khiến du kh&aacute;ch ngẩn ngơ về vẻ đẹp thi&ecirc;n nhi&ecirc;n của Mộc Ch&acirc;u.&nbsp;</p>

<p>Mùa đ&ocirc;ng ở M&ocirc;̣c Ch&acirc;u thường bắt đ&acirc;̀u vào tháng 10 &acirc;m lịch ( tức khoảng cuối th&aacute;ng 11 dương lịch). Thời ti&ecirc;́t bắt đ&acirc;̀u lạnh d&acirc;̀n cho đ&ecirc;́n khi rớt xu&ocirc;́ng khoảng 0 đ&ecirc;́n 3 đ&ocirc;̣.Với nhiệt độ này h&acirc;̀u khắp các huy&ecirc;̣n vùng cao của Sơn La đ&ecirc;̀u ng&acirc;̣p tràn trong sắc trắng của tuy&ecirc;́t. Du lịch Mộc Ch&acirc;u v&agrave;o cuối th&aacute;ng 11 đến đầu th&aacute;ng 2, Nếu may mắn bạn sẽ c&oacute; cơ hội&nbsp;<strong>ngắm nh&igrave;n những b&ocirc;ng tuyết trắng x&oacute;a</strong>. Thời gian n&agrave;y cũng l&agrave; m&ugrave;a&nbsp;<strong>hoa mận</strong>&nbsp;v&agrave;&nbsp;<strong>hoa đ&agrave;o</strong>&nbsp;nở ở Mộc Ch&acirc;u</p>

<p><strong>12h30 :&nbsp;</strong>Tới Mộc Ch&acirc;u, xe đưa qu&yacute; kh&aacute;ch tới Nh&agrave; h&agrave;ng, thưởng thức bữa trưa với c&aacute;c đặc sản Mộc Ch&acirc;u.&nbsp;</p>

<p>Sau bữa trưa đo&agrave;n về kh&aacute;ch sạn nhận ph&ograve;ng nghỉ ngơi .</p>

<p><strong>14h30 :&nbsp;</strong>Buổi chiều Qu&yacute; kh&aacute;ch đi tham quan<strong>&nbsp;Đồi Ch&egrave; Tr&aacute;i Tim:&nbsp;</strong>điểm check in kh&ocirc;ng thể thiếu khi đến Mộc Ch&acirc;u. Tại đ&acirc;y, qu&yacute; kh&aacute;ch c&oacute; thể thu&ecirc; trang phục ( Chi ph&iacute; tự t&uacute;c) v&agrave; lưu lại những bức ảnh th&uacute; vị v&agrave; thả hồn v&agrave;o kh&ocirc;ng gian trong l&agrave;nh của những đồi ch&egrave; ng&uacute;t mắt.&nbsp;</p>

<p><strong>15h30 :&nbsp;</strong>Đo&agrave;n tiếp tục di chuyển tới&nbsp;<strong>Thung Lũng Mận N&agrave; Ka</strong>: được v&iacute; von như chốn thi&ecirc;n đường ng&agrave;n m&acirc;y của v&ugrave;ng đất T&acirc;y Bắc xinh đẹp n&agrave;y. L&agrave; thung lũng mận lớn nhất Mộc Ch&acirc;u, N&agrave; Ka sở hữu những vườn mận b&aacute;t ng&aacute;t mang vẻ đẹp tượng trưng cho T&acirc;y Bắc. Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội được h&ograve;a m&igrave;nh giữa bạt ng&agrave;n hoa mận trắng hay ngắm nh&igrave;n b&ocirc;ng hoa đ&agrave;o nở dọc theo con đường đi v&agrave;o thung lũng.</p>

<p><strong>18h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch thưởng thức m&oacute;n ăn đặc sản của mộc Ch&acirc;u tại nh&agrave; h&agrave;ng<strong>&nbsp;</strong></p>

<p>Buổi tối qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute; Mộc Ch&acirc;u về đ&ecirc;m&nbsp;</p>

<p><em><strong>Nghỉ đ&ecirc;m tại&nbsp; Mộc Ch&acirc;u - Kh&aacute;ch sạn ti&ecirc;u chuẩn 4*</strong></em></p>

<p><span style="font-size:16px"><span style="color:#DAA520"><strong>Ng&agrave;y 2: HAPPY LAND - TH&Aacute;C DẢI YẾM - RỪNG TH&Ocirc;NG BẢN &Aacute;NG - VƯỜN D&Acirc;U CHIMI&nbsp; &nbsp; &nbsp; &nbsp; (Ăn S&aacute;ng, Trưa, Tối)&nbsp;</strong></span></span></p>

<p><strong>08h00</strong>: Sau bữa s&aacute;ng tại kh&aacute;ch sạn, xe sẽ đưa qu&yacute; kh&aacute;ch h&agrave;nh tr&igrave;nh đi thăm Mộc Ch&acirc;u:&nbsp;</p>

<ul>
	<li><strong>KDL Happy Land</strong>: L&agrave; khu du lịch Mộc Ch&acirc;u rộng lớn với diện t&iacute;ch gần 5 ha thu h&uacute;t đ&ocirc;ng đảo c&aacute;c t&iacute;n đồ y&ecirc;u hoa, thi&ecirc;n nhi&ecirc;n đến đ&acirc;y. Nằm ngay giữa thung lũng ở b&agrave;n L&ugrave;n, x&atilde; Mường Sang với 2 cổng v&agrave;o. Tại đ&acirc;y, những thảm hoa được trưng b&agrave;y với nhiều loại hoa đặc trưng T&acirc;y Bắc được trồng th&agrave;nh c&aacute;c khối h&igrave;nh bắt mắt, hấp dẫn du kh&aacute;ch.</li>
	<li><strong>Th&aacute;c Dải Yếm:</strong>&nbsp;&nbsp;một địa danh gắn liền với lịch sử cư tr&uacute; từ rất xa xưa của tộc người Th&aacute;i ở v&ugrave;ng đất Mộc Ch&acirc;u. Tại đ&acirc;y bạn sẽ được chi&ecirc;m ngưỡng khung cảnh d&ograve;ng th&aacute;c tuyệt đẹp được thi&ecirc;n nhi&ecirc;n ban tặng cho v&ugrave;ng đất n&agrave;y bởi d&ograve;ng nước từ tr&ecirc;n đổ xuống, trắng x&oacute;a, nh&igrave;n từ xa th&aacute;c như chốn bồng lai ti&ecirc;n cảnh.</li>
</ul>

<p><strong>12h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng.&nbsp;</p>

<p>Sau đ&oacute; đo&agrave;n di chuyển về kh&aacute;ch sạn để qu&yacute; kh&aacute;ch nghỉ ngơi&nbsp;</p>

<p><strong>14h30 :</strong>&nbsp;Qu&yacute; kh&aacute;ch tiếp tục cuộc h&agrave;nh tr&igrave;nh tham quan v&agrave; trải nghiệm ở Mộc Ch&acirc;u</p>

<ul>
	<li><strong>Rừng Th&ocirc;ng Bản &Aacute;ng :</strong>&nbsp;Người ta v&iacute; nơi đ&acirc;y như Đ&agrave; Lạt thu nhỏ của T&acirc;y Bắc, với rừng th&ocirc;ng xanh cao v&uacute;t, thẳng đứng mạnh mẽ trải d&agrave;i bạt ng&agrave;n tr&ecirc;n d&atilde;y đồi đất feralit đỏ n&acirc;u tạo n&ecirc;n cảnh quan tự nhi&ecirc;n đẹp m&ecirc; hồn như một bức tranh thủy mặc, sương giăng huyền ảo, cảnh sắc mộng mơ</li>
	<li><strong>Vườn d&acirc;u Chimi Farm :</strong>&nbsp;Nơi l&yacute; tưởng để du kh&aacute;ch thả hồn v&agrave;o với thi&ecirc;n nhi&ecirc;n, đất trời, tận hưởng kh&ocirc;ng gian y&ecirc;n tĩnh, trong l&agrave;nh, m&aacute;t mẻ. Tại khu vườn d&acirc;u t&acirc;y lớn nhất Mộc Ch&acirc;u, qu&yacute; kh&aacute;ch sẽ được tự do h&aacute;i v&agrave; thưởng thức những quả d&acirc;u ch&iacute;n mọng ngay tại vườn</li>
</ul>

<p><em><strong>Nghỉ đ&ecirc;m tại&nbsp; Mộc Ch&acirc;u - Kh&aacute;ch sạn ti&ecirc;u chuẩn 4*</strong></em></p>

<p><span style="color:#DAA520"><span style="font-size:16px"><strong>Ng&agrave;y 3: MỘC CH&Acirc;U - H&Agrave; NỘI &nbsp; (Ăn S&aacute;ng, Trưa, Tối)&nbsp;</strong></span></span></p>

<p><strong>Buổi s&aacute;ng</strong>&nbsp;qu&yacute; kh&aacute;ch thức dậy ngắm cảnh b&igrave;nh minh v&agrave; ăn s&aacute;ng.</p>

<p>Sau khi ăn s&aacute;ng, Qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute; thị trấn , thưởng thức kh&ocirc;ng kh&iacute; trong l&agrave;nh tại v&ugrave;ng đất cao nguy&ecirc;n, t&igrave;m hiểu đời sống thường nhật của người d&acirc;n địa phương. Ngo&agrave;i ra Qu&yacute; kh&aacute;ch c&oacute; thể đi mua đồ về l&agrave;m qu&agrave; cho người th&acirc;n</p>

<p><strong>11h30</strong>: Qu&yacute; kh&aacute;ch trả ph&ograve;ng sau đ&oacute; d&ugrave;ng bữa trưa</p>

<p><strong>13h00 :&nbsp;</strong>Qu&yacute; kh&aacute;ch l&ecirc;n xe v&agrave; trở về H&agrave; Nội.</p>

<p><strong>17h00 :</strong>&nbsp; Đến H&agrave; Nội, chia tay v&agrave; hẹn gặp lại qu&yacute; kh&aacute;ch</p>
', N'<ul>
	<li>2 Đ&ecirc;m tại kh&aacute;ch sạn 4*, ti&ecirc;u chuẩn 02 người/ph&ograve;ng, lẻ nam/nữ ngủ gh&eacute;p ba. Dự kiến kh&aacute;ch sạn&nbsp; Mường Thanh Holiday Mộc Ch&acirc;u hoặc tương đương.&nbsp;</li>
	<li>Xe 29c đưa đ&oacute;n theo lịch tr&igrave;nh</li>
	<li>2 Bữa s&aacute;ng theo ti&ecirc;u chuẩn của kh&aacute;ch sạn</li>
	<li>5 Bữa ăn trưa ch&iacute;nh ti&ecirc;u chuẩn 150.000++/ người/ bữa</li>
	<li>Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh suốt tuyến</li>
	<li>V&eacute; thắng cảnh c&aacute;c điểm thăm quan theo chương tr&igrave;nh&nbsp;</li>
	<li>Nước uống tr&ecirc;n xe, mỗi ng&agrave;y 1 chai</li>
	<li>Bảo hiểm du lịch</li>
	<li>Thuế, ph&iacute; theo quy định nh&agrave; nước (VAT)</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn.</li>
	<li>Chi ph&iacute; đồ uống &amp; c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c trong chương tr&igrave;nh.</li>
	<li>Chi ph&iacute; tip cho Hướng dẫn vi&ecirc;n ( 30.000đ/ ng&agrave;y/ 1 kh&aacute;ch )</li>
	<li>C&aacute;c chi ph&iacute; kh&ocirc;ng nằm trong mục bao gồm</li>
	<li>Thăm quan vận chuyển, ăn uống ph&aacute;t sinh ngo&agrave;i chương tr&igrave;nh</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hợp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-11-11T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(2935000 AS Decimal(18, 0)), N'Vietnam Best Marathons_-21.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (21, 1, N'Khám Phá Văn Hoá Người Thái Mai Châu', N'Hoà Bình', N'30 Người', N'2 ngày', N'Ô tô', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Mai Châu là điểm du lịch thuộc tỉnh Hòa Bình mang trong mình vẻ đẹp đặc trưng của Tây Bắc. Đến Mai Châu, du khách sẽ được hòa mình vào không gian đầy lãng mạn với các địa danh du lịch thơ mộng, hùng vĩ và những kỹ niệm khó quên.', N'<ul>
	<li>
	<h5 style="text-align: justify;"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: H&agrave; Nội - Mai Ch&acirc;u - Team Building (Ăn trưa, Ăn tối)</span></span></h5>

	<p style="text-align: justify;"><strong>07h30:</strong>&nbsp;Xe v&agrave; HDV đ&oacute;n qu&yacute; phụ huynh c&ugrave;ng c&aacute;c bạn học sinh tại trường, khởi h&agrave;nh đi Mai Ch&acirc;u, Ho&agrave; B&igrave;nh. Kh&ocirc;ng quá &ocirc;̀n ào t&acirc;́p n&acirc;̣p hay náo nhi&ecirc;̣t, Mai Ch&acirc;u ch&agrave;o đ&oacute;n du kh&aacute;ch với vẻ đẹp m&ocirc;̣c mạc, giản dị, kh&ocirc;ng gian y&ecirc;n bình c&ugrave;ng sự hiếu kh&aacute;ch của những người d&acirc;n địa phương nơi đ&acirc;y.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>10h00:&nbsp;</strong>Đo&agrave;n dừng tại Đ&egrave;o Đ&aacute; Trắng nghỉ ngơi uống nước, thưởng thức một số m&oacute;n điểm t&acirc;m như ng&ocirc;, khoai nướng, cơm lam v&agrave; chi&ecirc;m ngưỡng khung cảnh của thung lũng Ba Khan v&agrave; l&ograve;ng hồ Ho&agrave; B&igrave;nh.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>11h00:</strong>&nbsp;Đo&agrave;n đến Mai Ch&acirc;u, xe đưa qu&yacute; phụ huynh c&ugrave;ng c&aacute;c bạn học sinh tới nh&agrave; s&agrave;n nghỉ ngơi, thay đồ v&agrave; thư gi&atilde;n b&ecirc;n bể bơi.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>12h00:</strong>&nbsp;Đo&agrave;n d&ugrave;ng bữa trưa tại homestay với những m&oacute;n ăn đặc sản như lợn đen, g&agrave; bản, c&aacute; suối.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>15h00:</strong>&nbsp;C&aacute;c bạn học sinh tập trung tại s&acirc;n lửa trại bản L&aacute;c v&agrave; tham gia chương tr&igrave;nh Teambuilding từ 2 - 3 tr&ograve; chơi với chủ đề v&agrave; mục đ&iacute;ch: Đo&agrave;n kết - Kh&eacute;o l&eacute;o.&nbsp;C&aacute;c bạn sẽ c&oacute; cơ hội để ph&aacute;t triển, ph&aacute;t huy năng lực tiềm ẩn qua c&aacute;c hoạt động gi&uacute;p trau dồi c&aacute;c kỹ năng mềm như kỹ năng giao tiếp, l&agrave;m việc nh&oacute;m hoặc xử l&yacute; t&igrave;nh huống.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>17h00:&nbsp;</strong>Kết th&uacute;c team building, đo&agrave;n trở về nh&agrave; s&agrave;n tắm rửa nghỉ ngơi v&agrave; d&ugrave;ng bữa ăn tối tại homestay. Sau bữa tối, đo&agrave;n tự do thư gi&atilde;n, đi dạo trong bản bản hoặc thưởng thức văn nghệ tại homestay (chi ph&iacute; kh&ocirc;ng bao gồm)</p>
	</li>
	<li>
	<h5 style="text-align: justify;"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 2: Kh&aacute;m Ph&aacute; Mai Ch&acirc;u - H&agrave; Nội (Ăn s&aacute;ng, Ăn trưa)</span></span></h5>

	<p style="text-align: justify;"><strong>09h00:</strong>&nbsp;Sau bữa s&aacute;ng tại homestay, đo&agrave;n tham gia lớp học g&oacute;i b&aacute;nh chưng d&agrave;i người Th&aacute;i dưới sự hướng dẫn của những nghệ nh&acirc;n người địa phương. Qu&yacute; phụ huynh c&ugrave;ng c&aacute;c bạn học sinh sẽ c&oacute; cơ hội t&igrave;m hiểu về văn ho&aacute; truyền thống của người Th&aacute;i tại bản Pom Coong. Sau khi ho&agrave;n th&agrave;nh lớp học, b&aacute;nh chưng sẽ được đem lu&ocirc;c v&agrave; đo&agrave;n c&oacute; thể thưởng thức th&agrave;nh quả của m&igrave;nh v&agrave;o bữa trưa hoặc mang về nh&agrave; như một m&oacute;n qu&agrave; đầy &yacute; nghĩa.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>10h00:</strong>&nbsp;Hướng dẫn vi&ecirc;n sẽ dẫn qu&yacute; kh&aacute;ch đạp xe tham quan bản l&agrave;ng, những c&aacute;nh đồng l&uacute;a ng&uacute;t ng&agrave;n v&agrave; quan s&aacute;t những hoạt động thường ng&agrave;y của người d&acirc;n địa phương.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>11h00:</strong>&nbsp;Đo&agrave;n trở về homestay nghỉ ngơi, thư gi&atilde;n b&ecirc;n bể bơi v&agrave; thưởng thức bữa trưa.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>14h30:&nbsp;</strong>Ch&agrave;o tạm biệt chủ nh&agrave; hiếu kh&aacute;ch dễ mến c&ugrave;ng thung lũng Mai Ch&acirc;u xinh đẹp, xe c&ugrave;ng HDV sẽ đưa qu&yacute; kh&aacute;ch trở về H&agrave; Nội.</p>

	<p style="text-align: justify;">&nbsp;</p>

	<p style="text-align: justify;"><strong>17h30:</strong>&nbsp;Đo&agrave;n về đến trường, chia tay HDV, v&agrave; kết th&uacute;c chuyến đi bổ &iacute;ch v&agrave; nhiều kỉ niệm</p>
	</li>
</ul>
', N'<ul>
	<li>Xe vận chuyển đời mới 35 chỗ đời mới</li>
	<li>Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh &amp; chi ph&iacute; ăn nghỉ của HDV, LX</li>
	<li>01 đ&ecirc;m nghỉ tại nh&agrave; s&agrave;n Người Th&aacute;i bản Pom Coong sạch sẽ tiện nghi c&ugrave;ng bể bơi.</li>
	<li>02 Bữa ăn trưa + 01 Bữa ăn tối (Mức ăn 150,000 VNĐ/ suất)</li>
	<li>Chương tr&igrave;nh teambuilding, ph&iacute; địa điểm, ph&iacute; &acirc;m thanh, đạo cụ game</li>
	<li>01 Thợ chụp ảnh</li>
	<li>V&eacute; thăm quan, chi ph&iacute; trải nghiệm những điểm trong chương tr&igrave;nh</li>
	<li>Chi ph&iacute; xe đạp</li>
	<li>Nước uống: 500ml/người/ng&agrave;y</li>
	<li>Bảo hiểm du lịch</li>
	<li>Thuế, ph&iacute; theo Quy định nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>C&aacute;c chi ph&iacute; kh&ocirc;ng bao gồm trong chương tr&igrave;nh.</li>
	<li>C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c.</li>
	<li>Đồ uống c&aacute;c bữa ăn.</li>
	<li>Tiền tip HDV v&agrave; l&aacute;i xe.</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(1310000 AS Decimal(18, 0)), N'Maichau.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (22, 2, N'Ký Ức Hoàng Cung Huế', N'Thừa Thiên Huế', N'30 Người', N'3 Ngày 2 Đêm', N'Ôtô & Máy bay', N'Hà Nội', N'Nhắc đến xứ Huế là ta lại liên tưởng đến nhiều công trình kiến trúc cổ cùng những cảnh sắc thiên nhiên mang nét thơ mộng, hữu tình trong không gian thư thái, tĩnh lặng của vùng đất cố đô cũ.', N'<ul>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: H&agrave; Nội - Huế (Ăn trưa; Ăn tối)</span></span></h5>

	<p><strong>07h00</strong>: Xe v&agrave; hướng dẫn vi&ecirc;n đ&oacute;n đo&agrave;n tại điểm hẹn đi s&acirc;n bay Nội B&agrave;i, chuyến bay l&uacute;c 9h40 khởi h&agrave;nh từ s&acirc;n bay Ph&uacute; B&agrave;i đến Huế.&nbsp;<strong>&nbsp;</strong></p>

	<p>Nhắc đến xứ Huế l&agrave; ta lại li&ecirc;n tưởng đến nhiều c&ocirc;ng tr&igrave;nh kiến tr&uacute;c cổ c&ugrave;ng những cảnh sắc thi&ecirc;n nhi&ecirc;n mang n&eacute;t thơ mộng, hữu t&igrave;nh trong kh&ocirc;ng gian thư th&aacute;i, tĩnh lặng của v&ugrave;ng đất cố đ&ocirc; cũ.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

	<p><strong>11h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại s&acirc;n bay Ph&uacute; B&agrave;i, &Ocirc; t&ocirc; v&agrave; Hướng dẫn vi&ecirc;n địa phương đ&oacute;n đo&agrave;n về lại trung t&acirc;m th&agrave;nh phố Huế.</p>

	<p><strong>11h30:&nbsp;</strong>Qu&yacute; kh&aacute;ch đến nh&agrave; h&agrave;ng d&ugrave;ng bữa trưa.</p>

	<p><strong>13h00 - 14h00:</strong>&nbsp;Sau khi d&ugrave;ng bữa trưa, qu&yacute; kh&aacute;ch về kh&aacute;ch sạn l&agrave;m thủ tục nhận ph&ograve;ng v&agrave; nghỉ ngơi. Qu&yacute; kh&aacute;ch lưu &yacute; giữ kh&oacute;a ph&ograve;ng v&agrave; phiếu ăn s&aacute;ng cẩn thận để tr&aacute;nh phải mua lại phiếu ăn, hoặc đền tiền mất kh&oacute;a tại kh&aacute;ch sạn.</p>

	<p><strong>15h00:&nbsp;</strong>Buổi chiều sau khi đ&atilde; c&oacute; 1 giấc nghỉ ngơi, xe v&agrave; hướng dẫn vi&ecirc;n đ&oacute;n qu&yacute; kh&aacute;ch đi tham quan những điểm thăm quan nổi bật m&agrave; du kh&aacute;ch n&agrave;o tới th&agrave;nh phố mộng mơ n&agrave;y cũng kh&ocirc;ng thể bỏ qua, trải nghiệm, chi&ecirc;m ngưỡng, t&igrave;m hiểu văn h&oacute;a lịch sử v&agrave; kh&ocirc;ng qu&ecirc;n chụp cho m&igrave;nh những tấm h&igrave;nh lưu trữ thật đẹp. Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội thăm quan những điểm thăm quan nổi tiếng như:</p>

	<p><strong>Đại Nội Huế&nbsp;</strong>(Ho&agrave;ng Cung của 13 vị vua triều Nguyễn, triều đại phong kiến cuối c&ugrave;ng của Việt Nam: Ngọ M&ocirc;n, Điện Th&aacute;i H&ograve;a, Tử Cấm Th&agrave;nh, Thế Miếu, Hiển L&acirc;m C&aacute;c, Cửu Đỉnh). Qu&yacute; kh&aacute;ch c&oacute; thể trải nghiệm mặc trang phục của Cung Đ&igrave;nh Huế triều Nh&agrave; Nguyễn để ghi lại những bức h&igrave;nh kỉ niệm (chi ph&iacute; thu&ecirc; phục trang tự t&uacute;c).</p>

	<p><strong>Ch&ugrave;a Thi&ecirc;n Mụ&nbsp;</strong>hay c&ograve;n gọi l&agrave; ch&ugrave;a Linh Mụ l&agrave; một ng&ocirc;i ch&ugrave;a cổ nằm tr&ecirc;n đồi H&agrave; Kh&ecirc;, tả ngạn s&ocirc;ng Hương, c&aacute;ch trung t&acirc;m th&agrave;nh phố Huế khoảng 5 km về ph&iacute;a T&acirc;y, được x&acirc;y dựng từ năm 1601, đ&atilde; qua nhiều lần tr&ugrave;ng tu x&acirc;y dựng cho đến ng&agrave;y nay. Ngay ph&iacute;a trước ch&ugrave;a Thi&ecirc;n Mụ l&agrave; ngọn Th&aacute;p Phước Duy&ecirc;n sừng sững. Ngọn th&aacute;p 7 tầng cao 21m l&agrave; biểu tượng của ng&ocirc;i ch&ugrave;a, tại mỗi tầng th&aacute;p đều thờ tượng Phật. Ch&ugrave;a Thi&ecirc;n Mụ l&agrave; linh hồn của Cố đ&ocirc; Huế, l&agrave; di t&iacute;ch lịch sử - văn h&oacute;a - nghệ thuật v&ocirc; gi&aacute;.</p>

	<p><strong>17h30 :&nbsp;</strong>Đo&agrave;n thưởng thức ẩm thực Huế tại nh&agrave; h&agrave;ng với thực đơn đậm hương sắc của Huế mộng mơ.</p>

	<p><strong>19h00:</strong>&nbsp;Sau ăn tối, Xe v&agrave; Hướng dẫn vi&ecirc;n đưa qu&yacute; kh&aacute;ch ra<strong>&nbsp;</strong>s&ocirc;ng Hương, đo&agrave;n l&ecirc;n thuyền rồng nghe Ca Huế -&nbsp;<strong>Ca Huế tr&ecirc;n s&ocirc;ng Hương&nbsp;</strong>l&agrave; một loại h&igrave;nh nghệ thuật đặc sắc của v&ugrave;ng đất Cố đ&ocirc; Huế. Bao gồm khoảng tr&ecirc;n 80 l&agrave;n điệu, b&agrave;i bản của d&ograve;ng &acirc;m nhạc d&acirc;n gian, &acirc;m nhạc th&iacute;nh ph&ograve;ng v&agrave; một phần Nh&atilde; nhạc cung Huế. Ca Huế mang &acirc;m điệu h&agrave;i h&ograve;a h&ograve;a giữa con người, &acirc;m nhạc với s&ocirc;ng nước v&agrave; cảnh vật của d&ograve;ng s&ocirc;ng Hương thơ mộng.</p>

	<p>Nghỉ đ&ecirc;m tại Huế</p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 2: Kh&aacute;m Ph&aacute; Huế</span></span></h5>

	<p><strong>7h30:</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn.</p>

	<p><strong>08h30</strong>&nbsp;: Sau khi d&ugrave;ng bữa s&aacute;ng đo&agrave;n di chuyển đi tham quan:&nbsp;</p>

	<p><strong>Lăng Minh Mạng&nbsp;</strong>nằm tr&ecirc;n n&uacute;i Cẩm Kh&ecirc;, kh&aacute;c với những lăng tẩm kh&aacute;c, kiến tr&uacute;c ở đ&acirc;y lại đậm n&eacute;t truyền thống v&agrave; Nho gi&aacute;o cổ xưa.Đ&acirc;y l&agrave; một trong số 7 khu lăng tẩm được x&acirc;y dựng dưới triều Nguyễn, vừa l&agrave; một di t&iacute;ch lịch sử vừa l&agrave; một điểm đến&nbsp; hấp dẫn trong h&agrave;nh tr&igrave;nh về thăm miền đất cố đ&ocirc; của du kh&aacute;ch với những c&acirc;u chuyện lịch sử của nước nh&agrave;.</p>

	<p><strong>Lăng Khải Định</strong>&nbsp;- Một trong những lăng tẩm đồ sộ được x&acirc;y dựng kỳ c&ocirc;ng. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh kiến tr&uacute;c cuối c&ugrave;ng của triều Nguyễn v&agrave; cũng l&agrave; c&ocirc;ng tr&igrave;nh nổi bật nhất trong tất cả những lăng tẩm kh&aacute;c nhờ sự giao thoa của hai nền văn ho&aacute; Đ&ocirc;ng &ndash; T&acirc;y. Tới đ&acirc;y bạn sẽ cho&aacute;ng ngợp bởi kiến tr&uacute;c từ ngo&agrave;i v&agrave;o trong v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; thu h&uacute;t.</p>

	<p><strong>11h30</strong>: Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tại nh&agrave; h&agrave;ng sau đ&oacute; về kh&aacute;ch sạn nghỉ ngơi .</p>

	<p><strong>15h00:</strong>&nbsp;Xe v&agrave; HDV đưa đo&agrave;n đi tham quan<strong>&nbsp;L&agrave;ng Hương Thủy Xu&acirc;n</strong>, được gọi l&agrave; l&agrave;ng l&agrave;m nhang xứ Huế - đ&acirc;y l&agrave; 1 nghề truyền thống đ&atilde; tồn tại rất l&acirc;u đời ở Thủy Xu&acirc;n. Trong c&aacute;c nghi lễ t&acirc;m linh, người Huế kh&ocirc;ng d&ugrave;ng hương c&oacute; m&ugrave;i thơm h&oacute;a chất; do đ&oacute; hương &ldquo;trầm&rdquo; Thủy Xu&acirc;n rất đắt kh&aacute;ch. Hương Thủy Xu&acirc;n mang hương vị đặc trưng của trầm nguy&ecirc;n chất, phải trải qua nhiều c&ocirc;ng đoạn b&agrave;o chế, l&agrave; cả sự kỳ c&ocirc;ng của người thợ. Muốn c&oacute; một mẻ hương tốt, người thợ thường ch&uacute; &yacute; đến kh&acirc;u tuyển chọn nguy&ecirc;n liệu trầm, trộn th&ecirc;m quế chi, thảo quả, nụ t&ugrave;ng, đinh hương, hoa hồi.&nbsp;&nbsp;</p>

	<p><strong>17h00:</strong>&nbsp;Xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n qu&yacute; kh&aacute;ch trở về kh&aacute;ch sạn nghỉ ngơi chuẩn bị cho bữa tối</p>

	<p><strong>18h00</strong>: Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tối ở nh&agrave; h&agrave;ng.&nbsp;</p>

	<p>Sau bữa tối, qu&yacute; kh&aacute;ch c&oacute; thể tự do ra&nbsp;<strong>cầu</strong>&nbsp;<strong>Trường Tiền</strong>&nbsp;dạo sống Hương hoặc<strong>&nbsp;dạo phố T&acirc;y</strong>, Tự do kh&aacute;m ph&aacute; Huế về đ&ecirc;m, thưởng thức c&aacute;c m&oacute;n ăn vặt nơi đ&acirc;y.</p>

	<p>Nghỉ đ&ecirc;m tại Huế</p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 3: Huế - Chợ Đ&ocirc;ng Ba - H&agrave; Nội</span></span></h5>

	<p><strong>07h30 :&nbsp;</strong>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn. Sau đ&oacute; xe đưa đo&agrave;n di chuyển ra&nbsp;<strong>chợ Đ&ocirc;ng Ba&nbsp;</strong>để mua c&aacute;c đặc sản Huế về cho người th&acirc;n ( chợ Đ&ocirc;ng Ba l&agrave; Chợ lớn nhất ở đ&acirc;y, b&aacute;n c&aacute;c m&oacute;n đặc sản như: B&aacute;nh cu đơ, vải may &aacute;o d&agrave;i, mắm t&ocirc;m chua&hellip;). Qu&yacute; kh&aacute;ch tự do đi dạo v&agrave; kh&aacute;m ph&aacute; th&agrave;nh phố Huế</p>

	<p><strong>11h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch trở về kh&aacute;ch sạn v&agrave; chuẩn bị đồ đạc.</p>

	<p><strong>11h30 -12h00:</strong>&nbsp;Đo&agrave;n l&agrave;m thủ tục trả ph&ograve;ng kh&aacute;ch sạn. Qu&yacute; kh&aacute;ch lưu &yacute; kiểm tra h&agrave;nh l&yacute; cẩn thận, thanh to&aacute;n h&oacute;a đơn cho dịch vụ ph&aacute;t sinh qu&yacute; kh&aacute;ch sử dụng trong qu&aacute; tr&igrave;nh lưu tr&uacute; tại kh&aacute;ch sạn.</p>

	<p><strong>12h30&nbsp;</strong>: Đo&agrave;n ăn trưa tại nh&agrave; h&agrave;ng. Sau bữa trưa, xe đưa đo&agrave;n ra s&acirc;n bay l&agrave;m thủ tục đ&aacute;p chuyến bay về H&agrave; Nội.</p>

	<p><strong>18h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại s&acirc;n bay Nội B&agrave;i , xe v&agrave; hướng dẫn vi&ecirc;n đ&oacute;n qu&yacute; kh&aacute;ch v&agrave; đưa qu&yacute; kh&aacute;ch về điểm hẹn, kết th&uacute;c chuyến đi.</p>

	<p>Hẹn gặp lại qu&yacute; kh&aacute;ch!</p>
	</li>
</ul>
', N'<ul>
	<li>Xe vận chuyển 35 chỗ đời mới theo chương tr&igrave;nh tại Huế, xe đ&oacute;n tiễn s&acirc;n bay tại H&agrave; Nội</li>
	<li>Ph&ograve;ng kh&aacute;ch sạn ti&ecirc;u chuẩn 3 sao tại trung t&acirc;m Huế ( dự kiến Cherish Hotel Huế)</li>
	<li>2 Bữa s&aacute;ng tại kh&aacute;ch sạn ( theo ti&ecirc;u chuẩn của kh&aacute;ch sạn)</li>
	<li>5 Bữa ăn ch&iacute;nh ti&ecirc;u chuẩn : 140.000++</li>
	<li>V&eacute; Tham Quan c&aacute;c điểm c&oacute; trong chương tr&igrave;nh:</li>
	<li>V&eacute; tham quan Đại Nội Huế</li>
</ul>

<ol>
	<li>V&eacute; tham quan Lăng Khải Định</li>
	<li>V&eacute; tham quan Lăng Minh Mạng</li>
	<li>Thuyền đi s&ocirc;ng Hương + Ca Huế ( 1 giờ)</li>
</ol>

<ul>
	<li>HDV nhiệt t&igrave;nh suốt tuyến</li>
	<li>Nước suối mỗi ng&agrave;y tr&ecirc;n xe</li>
	<li>Bảo hiểm du lịch</li>
	<li>Thuế VAT</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn.</li>
	<li>V&eacute; m&aacute;y bay H&agrave; Nội - Huế - H&agrave; Nội. (Gi&aacute; v&eacute; v&agrave; giờ bay sẽ được x&aacute;c nhận khi Qu&yacute; kh&aacute;ch đ&atilde; lựa chọn được ng&agrave;y cụ thể )</li>
	<li>Chi ph&iacute; đồ uống trong c&aacute;c bữa ăn &amp; c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c trong chương tr&igrave;nh.</li>
	<li>Tiền bồi dưỡng cho HDV v&agrave; LX.</li>
	<li>Chi ph&iacute;&nbsp; v&agrave;o Khu vui chơi giải tr&iacute; những tr&ograve; chơi kh&ocirc;ng nằm trong danh mục trọn g&oacute;i</li>
	<li>C&aacute;c chi ph&iacute; kh&ocirc;ng nằm trong mục bao gồm</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(3900000 AS Decimal(18, 0)), N'Hue.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (23, 4, N'Khám phá Mũi Né', N'Bình Thuận', N'10 Người', N'1 ngày', N'Ô tô ', N'Khởi hành trong toàn bộ các ngày từ 09/03/2021 đến 31/12/2021', N'Mũi Né là trung tâm du lịch của thành phố phan thiết, nổi tiếng với những đồi cát rộng mênh mang, bãi   biển tuyệt đẹp và những hàng dừa cao vút bao quanh bao biển quanh năm tràn ngập ánh nắng.  Du khách đến Mũi Né không chỉ bị hấp dẫn bởi vẻ đẹp hoang sơ của tự nhiên mà còn bị thu hút bởi nét ẩm thực độc đáo cùng sự mến khách của người dân làng chài tốt bụng.', N'<h5><span style="color:#DAA520"><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Ng&agrave;y 1: Kh&aacute;m ph&aacute; Mũi N&eacute;</span></span></span></h5>

<p>Xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n Qu&yacute; Kh&aacute;ch tại Kh&aacute;ch Sạn / Điểm hẹn tham quan c&aacute;c điểm sau:</p>

<ul>
	<li>Th&aacute;p Chăm Poshanu&nbsp;</li>
	<li>Vườn Nho &amp; L&acirc;u Đ&agrave;i Rượu Vang Sealinks</li>
	<li>Suối Ti&ecirc;n</li>
	<li>Bồng Lai Ti&ecirc;n Cảnh</li>
	<li>Đồi C&aacute;t Bay Mũi N&eacute;</li>
	<li>L&agrave;ng Ch&agrave;i Mũi N&eacute;</li>
</ul>
', N'<ul>
	<li>Xe &Ocirc; T&ocirc; m&aacute;y lạnh&nbsp;</li>
	<li>01 chai nước &amp; 01 khăn lạnh/ ng&agrave;y</li>
	<li>V&eacute; tham quan theo tour&nbsp;</li>
	<li>Hướng Dẫn Vi&ecirc;n Tiếng Việt&nbsp;</li>
	<li>Bảo hiểm tai nạn du lịch 20.000.000 vnđ/ vụ</li>
	<li>Thuế ph&iacute; theo quy định của nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>&nbsp;Ăn trưa v&agrave; đồ uống trong bữa ăn</li>
	<li>Tiền tip cho HDV v&agrave; l&aacute;i xe</li>
</ul>
', N'<ul>
	<li>Thanh to&aacute;n 100% trong khoảng thời gian giữ chỗ</li>
	<li>Đặt chỗ kh&ocirc;ng &aacute;p dụng ho&agrave;n, hủy trong mọi trường hợp.</li>
	<li>Được ph&eacute;p thay đổi ng&agrave;y khởi h&agrave;nh với điều kiện b&aacute;o trước 3 ng&agrave;y l&agrave;m việc (kh&ocirc;ng t&iacute;nh thứ 7 v&agrave; chủ nhật)</li>
</ul>
', CAST(N'2021-08-10T00:00:00.000' AS DateTime), CAST(N'2021-06-08T00:00:00.000' AS DateTime), CAST(705000 AS Decimal(18, 0)), N'mui-ne.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (24, 2, N'Khám Phá Phong Nha Kẻ Bàng', N'Quảng Bình', N'40 Người', N' 3 Ngày 2 Đêm', N'Máy bay & Ô tô', N'Theo yêu cầu của khách hàng', N'Trong suốt tiến trình phát triển của đất nước, Quảng Bình là nơi ghi dấu nhiều sự kiện lịch sử thăng trầm của công cuộc mở đất và giữ đất. Cùng với nét văn hóa truyền thống đặc trưng, địa hình, hệ sinh thái đa dạng và những di sản thiên nhiên độc đáo, Quảng Bình đã và đang trở thành điểm đến hấp dẫn trên dải đất Miền Trung dọc dài.', N'<ul>
	<li>
	<h5 style="text-align: justify;"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: H&agrave; Nội - Quảng B&igrave;nh - Team Building (Ăn tối)</span></span></h5>

	<p style="text-align: justify;"><strong>09h20</strong>: Xe đ&oacute;n qu&yacute; kh&aacute;ch tại điểm hẹn (trong nội th&agrave;nh H&agrave; Nội) v&agrave; khởi h&agrave;nh tới s&acirc;n bay Nội B&agrave;i.&nbsp;</p>

	<p style="text-align: justify;"><strong>11h10</strong>: Qu&yacute; kh&aacute;ch đ&oacute;n chuyến bay từ H&agrave; Nội tới Đồng Hới</p>

	<p style="text-align: justify;"><strong>13h00:</strong>&nbsp;Xe đ&oacute;n qu&yacute; kh&aacute;ch tại S&acirc;n bay Đồng Hới v&agrave; đưa qu&yacute; kh&aacute;ch tới Sun Spa Resort. Đo&agrave;n check-in nhận ph&ograve;ng.</p>

	<p style="text-align: justify;"><strong>15h00:</strong>&nbsp;Đo&agrave;n tập trung tại b&atilde;i biển của Resort để tham gia chương tr&igrave;nh Team Building với những tr&ograve; chơi x&acirc;y dựng l&ograve;ng tin v&agrave; xo&aacute; bỏ khoảng c&aacute;ch, gi&uacute;p gắn kết tinh thần của nh&acirc;n vi&ecirc;n đồng thời k&iacute;ch hoạt năng lượng v&agrave; r&egrave;n luyện kỷ luật th&eacute;p để tập thể c&ocirc;ng ty vượt qua kh&oacute; khăn v&agrave; ph&aacute;t triển mạnh mẽ hơn.</p>

	<p style="text-align: justify;"><strong>18h00</strong>: Kết th&uacute;c chương tr&igrave;nh Team Building, đo&agrave;n về ph&ograve;ng nghỉ ngơi v&agrave; ăn trưa tự do.</p>

	<p style="text-align: justify;">Nghỉ đ&ecirc;m tại Sun Spa Resort Quảng B&igrave;nh.</p>
	</li>
	<li>
	<h5 style="text-align: justify;"><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 2: Kh&aacute;m Ph&aacute; Phong Nha - Gala Dinner (Ăn S&aacute;ng, Ăn trưa, Ăn tối)</span></span></h5>

	<p style="text-align: justify;"><strong>08h00:</strong>&nbsp;Xe đưa qu&yacute; kh&aacute;ch khởi h&agrave;nh đi Phong Nha, qu&ecirc; hương của Kong trong bộ phim bom tấn Hollywood Kong: Skull Island. Được UNESCO 2 lần c&ocirc;ng nhận l&agrave; Di sản thi&ecirc;n nhi&ecirc;n thế giới, Vườn Quốc Gia Phong Nha Kẻ B&agrave;ng sở hệ sinh th&aacute;i v&ocirc; c&ugrave;ng sinh động với hơn 300 hang động v&agrave; hệ thống c&aacute;c s&ocirc;ng ngầm c&oacute; tuổi đời h&agrave;ng triệu năm, h&agrave;ng trăm lo&agrave;i động, thực vật qu&yacute; hiếm đang tồn tại, trong đ&oacute; c&oacute; nhiều lo&agrave;i c&oacute; t&ecirc;n trong s&aacute;ch đỏ Việt Nam v&agrave; thế giới.</p>

	<p style="text-align: justify;"><strong>09h00:&nbsp;</strong>Đến bến thuyền, qu&yacute; kh&aacute;c sẽ l&ecirc;n thuyền ngược d&ograve;ng Son thơ mộng, c&ugrave;ng nghe c&acirc;u chuyện t&igrave;nh y&ecirc;u oan tr&aacute;i gắn liền với d&ograve;ng s&ocirc;ng. Chi&ecirc;m ngưỡng bức tranh thi&ecirc;n nhi&ecirc;n non nước hữu t&igrave;nh của vườn quốc gia Phong Nha Kẻ B&agrave;ng. Sau khoảng 30 ph&uacute;t ngồi l&ecirc;nh đ&ecirc;nh tr&ecirc;n thuyền ngắm nh&igrave;n cuộc sống l&agrave;ng qu&ecirc; b&igrave;nh dị hai b&ecirc;n bờ s&ocirc;ng, qu&yacute; kh&aacute;ch sẽ đến cửa động Phong Nha, được mệnh danh l&agrave; Kỳ Quan Đệ Nhất Động. Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội kh&aacute;m ph&aacute; Hang nước d&agrave;i nhất Đ&ocirc;ng Nam &Aacute; v&agrave; hệ thống s&ocirc;ng ngầm d&agrave;i nhất thế giới.&nbsp;</p>

	<p style="text-align: justify;"><strong>11h30:&nbsp;</strong>Qu&yacute; kh&aacute;ch trở về bến thuyền, d&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng với c&aacute;c m&oacute;n đặc sản địa phương.</p>

	<p style="text-align: justify;"><strong>13h00:&nbsp;</strong>Tham gia ch&egrave;o Kayak tại s&ocirc;ng Ch&agrave;y, qu&yacute; kh&aacute;ch sẽ cảm nhận được d&ograve;ng chảy &ecirc;m đềm, l&atilde;ng mạn với m&agrave;u nước trong xanh như ngọc b&iacute;ch với những d&atilde;y n&uacute;i đ&aacute; v&ocirc;i kỳ vỹ.&nbsp; Hai b&ecirc;n bờ l&agrave; những c&aacute;nh đồng ng&ocirc; trải d&agrave;i tạo n&ecirc;n một bức tranh sơn thủy hữu t&igrave;nh, du kh&aacute;ch sẽ tận hưởng những ph&uacute;t gi&acirc;y thư gi&atilde;n thoải m&aacute;i khi đắm m&igrave;nh v&agrave;o thế giới tự nhi&ecirc;n. Tiếp theo, qu&yacute; kh&aacute;ch thử cảm gi&aacute;c mạnh với dịch vụ Zipline đu d&acirc;y tr&ecirc;n s&ocirc;ng Ch&agrave;y bằng hệ thống zip-line được đầu tư b&agrave;i bản v&agrave; hết sức hiện đại để từ đ&oacute; rơi xuống tắm m&aacute;t với d&ograve;ng s&ocirc;ng xanh biếc v&agrave; thơ mộng n&agrave;y v&agrave; tham gia c&aacute;c tr&ograve; chơi dưới nước kh&aacute;c.&nbsp;</p>

	<p style="text-align: justify;">Đo&agrave;n tiếp tục kh&aacute;m ph&aacute; Hang Tối: l&agrave; một nh&aacute;nh thuộc hệ thống hang động Phong Nha, kh&ocirc;ng c&oacute; hệ thống chiếu s&aacute;ng n&ecirc;n vẫn giữ được vẻ đẹp huyền b&iacute;, nguy&ecirc;n sơ của tạo h&oacute;a. Qu&yacute; kh&aacute;ch sẽ trở th&agrave;nh nh&agrave; th&aacute;m hiểm hang động với đ&egrave;n pin đội đầu v&agrave; c&aacute;c thiết bị chuy&ecirc;n dụng kh&aacute;m ph&aacute; hệ thống s&ocirc;ng ngầm, chi&ecirc;m ngưỡng h&agrave;ng ng&agrave;n cột nhũ đ&aacute; h&igrave;nh th&ugrave; đa dạng v&agrave; đặc sắc. Du kh&aacute;ch sẽ c&oacute; trải nghiệm v&ocirc; c&ugrave;ng th&uacute; vị khi c&oacute; dịp tắm b&ugrave;n thi&ecirc;n nhi&ecirc;n hay bơi qua hồ Thủy Ti&ecirc;n, Hồ Bồng Lai m&aacute;t lạnh</p>

	<p style="text-align: justify;"><strong>16h00:</strong>&nbsp;Tạm biệt Vườn quốc gia Phong Nha - Kẻ B&agrave;ng, qu&yacute; kh&aacute;ch l&ecirc;n xe quay trở về th&agrave;nh phố Đồng Hới.</p>

	<p style="text-align: justify;"><strong>17h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch trở về kh&aacute;ch sạn nghỉ v&agrave; chuẩn bị tham gia đ&ecirc;m Gala Dinner tại Resort.</p>

	<p style="text-align: justify;">Nghỉ đ&ecirc;m tại Sun Spa Resort Quảng B&igrave;nh.</p>
	</li>
	<li>
	<h5 style="text-align: justify;"><span style="font-size:16px"><span style="color:#DAA520">Ng&agrave;y 3: Quảng B&igrave;nh - Tự Do Kh&aacute;m Ph&aacute; - H&agrave; Nội (Ăn s&aacute;ng)</span></span></h5>

	<p style="text-align: justify;">Buổi s&aacute;ng qu&yacute; kh&aacute;ch ăn s&aacute;ng tại Resort v&agrave; tự do tắm biển hoặc kh&aacute;m ph&aacute; th&agrave;nh phố biển Đồng Hới.<strong>&nbsp;</strong>Qu&yacute; kh&aacute;ch c&oacute; thể gh&eacute; qua khu chợ trung t&acirc;m v&agrave; mua c&aacute;c loại đặc sản tại đ&acirc;y.</p>

	<p style="text-align: justify;"><strong>12h00:&nbsp;</strong>Đo&agrave;n tập trung check-out v&agrave; di chuyển tới s&acirc;n bay Đồng Hới.</p>

	<p style="text-align: justify;"><strong>13h00</strong>: Qu&yacute; kh&aacute;ch đ&oacute;n chuyến bay từ Đồng Hới tới H&agrave; Nội</p>

	<p style="text-align: justify;"><strong>15h00:</strong>&nbsp;Xe đ&oacute;n qu&yacute; kh&aacute;ch tại S&acirc;n bay Nội B&agrave;i v&agrave; đưa qu&yacute; kh&aacute;ch tới về điểm hẹn, kết th&uacute;c chuyến h&agrave;nh tr&igrave;nh tới Quảng B&igrave;nh với nhiều kỷ niệm đ&aacute;ng nhớ. Ch&agrave;o tạm biệt qu&yacute; kh&aacute;ch v&agrave; hẹn gặp lại trong c&aacute;c chương tr&igrave;nh tiếp theo.</p>
	</li>
</ul>
', N'<ul>
	<li>Xe vận chuyển đời mới theo chương tr&igrave;nh</li>
	<li>Hướng dẫn vi&ecirc;n chuy&ecirc;n nghiệp, nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh</li>
	<li>Ph&ograve;ng kh&aacute;ch sạn ti&ecirc;u chuẩn 5 sao Sun Spa Resort Quảng B&igrave;nh (02 kh&aacute;ch/ph&ograve;ng)</li>
	<li>Bữa ăn theo chương tr&igrave;nh. Mức ăn 150.000 VNĐ/ bữa ch&iacute;nh (02 bữa s&aacute;ng, 01 bữa trưa v&agrave; 02 bữa tối) v&agrave; 450.000 VNĐ/ kh&aacute;ch (01 đ&ecirc;m Gala Dinner)</li>
	<li>V&eacute; tham quan c&aacute;c địa điểm trong chương tr&igrave;nh</li>
	<li>Chi ph&iacute; tổ chức Team Building, địa điểm, setup backdrop, loa đ&agrave;i,&hellip;</li>
	<li>Chi ph&iacute; tổ chức Gala Dinner: &Acirc;m thanh, &aacute;nh s&aacute;ng, m&agrave;n h&igrave;nh, m&aacute;y chiếu, MC.</li>
	<li>Chi ph&iacute; Media (Ảnh, video c&aacute;c hoạt động team building &amp; Gala Dinner)</li>
	<li>Khăn lạnh (01 c&aacute;i/kh&aacute;ch/ng&agrave;y), Nước suối tr&ecirc;n xe (01 chai 0,5l/kh&aacute;ch/ng&agrave;y)</li>
	<li>Thuế VAT theo quy định của nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>V&eacute; m&aacute;y bay khứ hồi H&agrave; Nội - Quảng B&igrave;nh</li>
	<li>Phụ thu ph&ograve;ng đơn.</li>
	<li>Phụ thu cuối tuần, lễ tết &amp; giai đoạn cao điểm</li>
	<li>Chi ph&iacute; đồ uống trong bữa ăn &amp; c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c trong chương tr&igrave;nh.</li>
	<li>Tiền bồi dưỡng cho HDV v&agrave; LX.</li>
	<li>C&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng nằm trong mục bao gồm</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(3390000 AS Decimal(18, 0)), N'phong-nha.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (25, 4, N'Tìm Hiểu Và Tới Thăm Nha Trang', N'Khánh Hòa', N'30 Người', N'4 Ngày', N'Máy bay & Ô tô', N'Theo yêu cầu của khách hàng', N'Được công nhận là một trong những vịnh biển đẹp nhất thế giới với thành phố êm ả nằm ngay bên bờ biển, du lịch Nha Trang trung tâm của tỉnh Khánh Hòa – miền đất được mệnh danh là “xứ Trầm, biển Yến”. Tại đây, quý khách sẽ có cơ hội được thư giãn tại những hòn đảo hoang sơ tuyệt đẹp bên cạnh những bãi biển trong xanh, cát trắng mịn màng trải dài hàng ngút tầm mắt.', N'<ul>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: H&agrave; Nội &ndash; S&acirc;n bay quốc tế Nội B&agrave;i &ndash; Nha Trang (Ăn trưa, Ăn tối)</span></span></h5>

	<p><strong>06h00:&nbsp;</strong>Xe v&agrave; HDV đ&oacute;n Đo&agrave;n tại trường học, khởi h&agrave;nh ra s&acirc;n bay quốc tế Nội B&agrave;i, l&agrave;m thủ tục l&ecirc;n chuyến bay đi Nha Trang l&uacute;c 08:25 (mỗi người c&oacute; 07kg h&agrave;nh l&yacute; x&aacute;ch tay v&agrave; 20kg h&agrave;nh l&yacute; k&yacute; gửi)</p>

	<p>Qu&yacute; kh&aacute;ch đến s&acirc;n bay Cam Ranh, xe v&agrave; hướng dẫn vi&ecirc;n đ&oacute;n kh&aacute;ch đưa về kh&aacute;ch sạn, nhận ph&ograve;ng v&agrave; nghỉ ngơi.</p>

	<p>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng sau đ&oacute; tự do nghỉ ngơi v&agrave; tắm biển.</p>

	<p>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tối tại kh&aacute;ch sạn v&agrave; tự do dạo chơi th&agrave;nh phố về đ&ecirc;m</p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 2: Tour cano tham quan 3 đảo (Ăn s&aacute;ng, Ăn trưa, Ăn tối)</span></span></h5>

	<p>Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng tại kh&aacute;ch sạn.</p>

	<p><strong>08h00 &ndash; 08h30:</strong>&nbsp;Hướng dẫn vi&ecirc;n đ&oacute;n Qu&yacute; kh&aacute;ch tại kh&aacute;ch sạn.</p>

	<p><strong>09h00:</strong>&nbsp;Khởi h&agrave;nh&nbsp;<strong>Tour 3 đảo</strong>&nbsp;bằng&nbsp;<strong>Can&ocirc; cao cấp, đ</strong>ến&nbsp;<strong>H&ograve;n Mun</strong>&nbsp;hoặc<strong>&nbsp;Vịnh San H&ocirc;</strong></p>

	<ul>
		<li>Qu&yacute; kh&aacute;ch tự do tắm biển, ngắm nh&igrave;n những mảng san h&ocirc; v&agrave; c&aacute;c lo&agrave;i sinh vật biển qu&yacute; hiếm bằng dụng cụ k&iacute;nh lặn ống thở. Qu&yacute; kh&aacute;ch sẽ biết được thế n&agrave;o l&agrave; cảm gi&aacute;c tận tay sờ v&agrave;o san h&ocirc; sống, may mắn th&igrave; sẽ được chạm tay v&agrave;o những ch&uacute; c&aacute; đang bơi lội, nh&igrave;n ngắm cận cảnh những ch&uacute; cầu gai, hải s&acirc;m.</li>
		<li>Tham gia tr&ograve; chơi tr&ecirc;n biển: bay d&ugrave;, m&ocirc; t&ocirc; nước, ngắm san hồ t&agrave;u đ&aacute;y k&iacute;nh, lặn b&igrave;nh hơi kh&aacute;m ph&aacute; đại dương (chi ph&iacute; tự t&uacute;c).</li>
	</ul>

	<p><strong>11h30:</strong>&nbsp;Đến&nbsp;<strong>H&ograve;n Một (L&agrave;ng Ch&agrave;i)</strong>. Tham quan, ăn trưa tr&ecirc;n b&egrave; với thực đơn chất lượng nhất.</p>

	<p><strong>13h30:&nbsp;Đến B&atilde;i Tranh, một b&atilde;i biển đẹp, y&ecirc;n tĩnh, thơ mộng giữa biển.</strong></p>

	<p>Qu&yacute; kh&aacute;ch l&ecirc;n đảo tiếp tục tắm biển hoặc nằm tắm nắng thư gi&atilde;n tr&ecirc;n b&atilde;i biển với tiếng s&oacute;ng vỗ r&igrave; r&agrave;o&hellip;</p>

	<p>B&atilde;i Tranh c&ograve;n được biết đến với hệ thống tr&ograve; chơi tr&ecirc;n biển mạo hiểm v&agrave; độc đ&aacute;o, như: Jetski, Kayak, d&ugrave; bay, lướt v&aacute;n... B&atilde;i Tranh l&agrave; điểm đến l&yacute; tưởng trong du lịch Biển đảo Nha Trang.</p>

	<p><strong>15h30:</strong>&nbsp;Xe v&agrave; HDV đưa Qu&yacute; kh&aacute;ch về kh&aacute;ch sạn.&nbsp;&nbsp;</p>

	<p><strong>18h00</strong>: Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tối tại nh&agrave; h&agrave;ng sau đ&oacute; tự do dạo chơi thị trấn về đ&ecirc;m.</p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 3: Tắm b&ugrave;n tại H&ograve;n Tằm &ndash; Bể bơi v&ocirc; cực (Ăn s&aacute;ng, Ăn trưa, Ăn tối)</span></span></h5>

	<p>Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng tại kh&aacute;ch sạn.</p>

	<p><strong>8h00-8h30</strong>: Xe đ&oacute;n kh&aacute;ch tại kh&aacute;ch sạn trung t&acirc;m th&agrave;nh phố đến cảng, Cano đưa kh&aacute;ch qua đảo H&ograve;n Tằm Qu&yacute; kh&aacute;ch sử dụng c&aacute;c dịch vụ như:&nbsp;</p>

	<ul>
		<li>Ng&acirc;m b&ugrave;n kho&aacute;ng n&oacute;ng hoặc thảo dược trong bồn&nbsp;</li>
		<li>Thưởng thức nước uống detox&nbsp;</li>
		<li>Massage to&agrave;n th&acirc;n bằng hệ thống &ocirc;n tuyền thủy liệu ph&aacute;p&nbsp;</li>
		<li>Tự do thả m&igrave;nh trong hồ kho&aacute;ng n&oacute;ng rộng 1.350m2&nbsp;</li>
		<li>Trải nghiệm tắm th&aacute;c kho&aacute;ng v&agrave; hồ kho&aacute;ng tr&agrave;n&nbsp;</li>
		<li>Miễn ph&iacute; sử dụng khan, đồ tắm</li>
	</ul>

	<p><strong>11h30</strong>: D&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng sau đ&oacute; Qu&yacute; kh&aacute;ch tự do thư gi&atilde;n, tắm hồ bơi.</p>

	<p><strong>15h00 -15h30</strong>:&nbsp;Cano đưa Qu&yacute; kh&aacute;ch về cảng, Xe đưa về lại kh&aacute;ch sạn, kết th&uacute;c h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; vịnh đảo Nha Trang đầy th&uacute; vị.</p>

	<p><strong>18h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tối tại nh&agrave; h&agrave;ng sau đ&oacute; tự do dạo chơi th&agrave;nh phố về đ&ecirc;m.</p>
	</li>
	<li>
	<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 4: Tham quan th&agrave;nh phố Nha Trang &ndash; H&agrave; Nội (Ăn s&aacute;ng, Ăn trưa)</span></span></h5>

	<p>Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng tại kh&aacute;ch sạn. Qu&yacute; kh&aacute;ch l&agrave;m thủ tục trả ph&ograve;ng.</p>

	<p>Xe đ&oacute;n Qu&yacute; kh&aacute;ch tại kh&aacute;ch sạn khởi h&agrave;nh tham quan những điểm đẹp nổi tiếng Nha Trang:&nbsp;</p>

	<ul>
		<li>Nh&agrave; Thờ N&uacute;i: Tham quan c&ocirc;ng tr&igrave;nh kiến tr&uacute;c Ph&aacute;p nổi tiếng độc đ&aacute;o vẫn giữ nguy&ecirc;n được những gi&aacute; trị lịch sử để lại.</li>
		<li>Ch&ugrave;a Long Sơn: L&agrave; ng&ocirc;i ch&ugrave;a lớn nhất ở Nha Trang, nổi tiếng với bức tượng Phật trắng ngo&agrave;i trời lớn nhất Việt Nam.</li>
		<li>Th&aacute;p B&agrave; Ponagar: Một c&ocirc;ng tr&igrave;nh kiến tr&uacute;c chăm cổ được x&acirc;y dựng năm 817 l&agrave; biểu tượng văn h&oacute;a, t&acirc;m linh Xứ Trầm - Nơi mọi người c&oacute; thể nguyện cầu b&igrave;nh an cho gia đ&igrave;nh.</li>
		<li>H&ograve;n Chồng: Nơi c&oacute; vị tr&iacute; đẹp nhất để ngắm to&agrave;n cảnh Vịnh Nha Trang.</li>
	</ul>

	<p><strong>12h00</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.</p>

	<p><strong>14h00&nbsp;</strong>Xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n kh&aacute;ch tại kh&aacute;ch sạn, đưa ra s&acirc;n bay Cam Ranh l&agrave;m thủ tục cho chuyến bay về H&agrave; N&ocirc;i l&uacute;c 16h15 (mỗi người c&oacute; 07kg h&agrave;nh l&yacute; x&aacute;ch tay v&agrave; 20kg h&agrave;nh l&yacute; k&yacute; gửi).</p>

	<p>Tại s&acirc;n bay Nội B&agrave;i, xe v&agrave; hướng dẫn đ&oacute;n Đo&agrave;n đưa về điểm hẹn ban đầu.</p>
	</li>
</ul>
', N'<ul>
	<li>V&eacute; m&aacute;y bay khứ hồi của Bamboo, bao gồm thuế ph&iacute; v&agrave; 07 kg h&agrave;nh l&yacute; x&aacute;ch tay v&agrave; 20 kg h&agrave;nh l&yacute; k&yacute; gửi mỗi người. Gi&aacute; tại thời điểm b&aacute;o v&agrave; c&oacute; thể thay đổi.</li>
	<li>01 xe 45 chỗ vận chuyển đời mới v&agrave; 01 HDV đưa đ&oacute;n s&acirc;n bay tại H&agrave; Nội</li>
	<li>01 xe 45 chỗ vận chuyển đời mới theo lịch tr&igrave;nh tại Nha Trang</li>
	<li>Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh, th&acirc;n thiện theo lịch tr&igrave;nh tại Nha Trang</li>
	<li>03 đ&ecirc;m nghỉ tại kh&aacute;ch sạn 3 sao (15 ph&ograve;ng hai người), bao gồm ăn s&aacute;ng</li>
	<li>C&aacute;c bữa ăn ch&iacute;nh trong chương tr&igrave;nh: 04 bữa trưa, 03 bữa tối ti&ecirc;u chuẩn&nbsp;</li>
	<li>V&eacute; tham quan c&aacute;c điểm trong lịch tr&igrave;nh</li>
	<li>Cano tham quan 3 đảo&nbsp;</li>
	<li>V&eacute; tắm b&ugrave;n</li>
	<li>Bảo hiểm du lịch</li>
	<li>Nước uống: 500ml/người/ng&agrave;y</li>
	<li>Thuế, ph&iacute; theo Quy định nh&agrave; nước</li>
</ul>
', N'<ul>
	<li>Phụ thu ph&ograve;ng đơn</li>
	<li>Đồ uống trong c&aacute;c bữa ăn</li>
	<li>C&aacute;c chi ph&iacute; kh&ocirc;ng bao gồm trong chương tr&igrave;nh&nbsp;</li>
	<li>C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n kh&aacute;c</li>
	<li>Tips cho l&aacute;i xe v&agrave; HDV</li>
</ul>
', N'<p>100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(8810000 AS Decimal(18, 0)), N'nha-trang2.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (26, 4, N'Cần Thơ  Du lịch cộng đồng Cồn Sơn', N'Cần Thơ', N'1 Người', N'1 ngày', N'Ô tô', N'03/02/2021', N'Nếu bạn có một ngày thảnh thơi ở thành phố Cần Thơ và muốn tìm hiểu cuộc sống của người dân miền Tây nơi miệt vườn xanh mướt, thưởng thức những món ăn địa phương vừa ngon lành vừa dân dã, hãy đến cù lao Cồn Sơn. Chỉ cách đất liền 5 - 10 phút đi đò nhưng đó là một thế giới hoàn toàn khác so với cuộc sống phố thị ồn ào.', N'<h5><span style="color:#DAA520"><span style="font-size:16px">Ng&agrave;y 1: Cần Thơ- Du lịch cộng đồng Cồn Sơn</span></span></h5>

<p><strong>08h00 hoặc (14h00):</strong>&nbsp;Xe v&agrave; HDV&nbsp; đ&oacute;n đo&agrave;n tại kh&aacute;ch sạn nội &ocirc; Tp Cần Thơ<strong>&nbsp;tham quan Nh&agrave; Cổ B&igrave;nh Thủy&nbsp;</strong>&ndash; một ng&ocirc;i nh&agrave; mang đậm dấu ấn của bộ phim Người T&igrave;nh nổi tiếng, lối kiến tr&uacute;c độc đ&aacute;o v&agrave; vườn lan khoe sắc</p>

<p>&nbsp;</p>

<p><strong>8h30 hoặc (14h30)</strong>: Sau khi t&igrave;m hiểu Nh&agrave; Cổ đo&agrave;n sẽ tiếp tục di chuyển đến bến ph&agrave; C&ocirc; Bắc. Đ&ograve; ngang sẽ xu&ocirc;i d&ograve;ng s&ocirc;ng Hậu đưa Q&uacute;y kh&aacute;ch&nbsp;<strong>đến với l&agrave;ng c&aacute; b&egrave; Cồn Sơn</strong>&nbsp;tại đ&acirc;y đo&agrave;n sẽ được tham quan m&ocirc; h&igrave;nh nu&ocirc;i c&aacute; b&egrave; với khoảng 50 b&egrave; c&aacute;, c&ugrave;ng người địa phương cho c&aacute; ăn, chụp ảnh lưu niệm.</p>

<p><strong>9h00 hoặc (15h00):</strong>&nbsp;Rời b&egrave; c&aacute;, Qu&yacute; kh&aacute;ch tiếp tục di chuyển tr&ecirc;n s&ocirc;ng Hậu để đến Cồn Sơn. Qu&yacute; kh&aacute;ch sẽ được người d&acirc;n Cồn Sơn mến kh&aacute;ch ch&agrave;o đ&oacute;n bằng loại nước m&aacute;t đặc trưng được nấu từ l&aacute; c&acirc;y Sa K&ecirc; v&agrave; Đinh Lăng trong vườn nh&agrave;,&nbsp;<em>trải nghiệm l&agrave;m c&aacute;c loại b&aacute;nh ngon d&acirc;n d&atilde; mang đậm chất Nam Bộ.</em></p>

<p><strong>9h30 hoặc (15h30):</strong>&nbsp;Đo&agrave;n di chuyển tham quan Vườn Ổi &ndash; Ao Sen, tại đ&acirc;y qu&yacute; kh&aacute;ch sẽ được&nbsp;<strong>chi&ecirc;m ngưỡng m&ocirc; h&igrave;nh nu&ocirc;i c&aacute; l&oacute;c bay</strong><em>&nbsp;</em>&ndash; điểm nhấn đặc biệt nhất tại Cồn Sơn. Trong suốt h&igrave;nh tr&igrave;nh kh&aacute;m ph&aacute; v&agrave; t&igrave;m hiểu về người v&agrave; đất Cồn Sơn qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c tr&aacute;i c&acirc;y đặc sản địa phương (theo m&ugrave;a như: v&uacute; sữa, ổi, bưởi&hellip;)</p>

<p><strong>10h00 hoặc 16h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch Trải nghiệm&nbsp;<strong>l&agrave;m Cốm Nổ - Quay Mật Ong &amp; Thưởng thức Cốm Mật Ong.&nbsp;</strong>Sau đ&oacute; tham&nbsp;<strong>gia Đ&uacute;t C&aacute; Tai Tượng Ăn Cơm Chay - Thưởng Thức B&aacute;nh T&eacute;t Nh&acirc;n S&acirc;m</strong>&nbsp;<em>.</em></p>

<p><strong>11h00 hoặc (17h00)</strong>: Đo&agrave;n về điểm hẹn ban đầu, HDV thay mặt c&ocirc;ng ty chia tay v&agrave; ch&uacute;c sức khỏe cả đo&agrave;n, hẹn sớm gặp lại!</p>
', N'<ul>
	<li>Hướng dẫn vi&ecirc;n n&oacute;i tiếng Việt.</li>
	<li>Xe du lịch đời mới, ghế ngả, m&aacute;y lạnh, k&iacute;nh liền, wifi suốt tuyến.</li>
	<li>L&aacute;i xe vui vẻ, nhiệt t&igrave;nh, c&oacute; nhiều năm kinh nghiệm trong nghề.</li>
	<li>V&eacute; tham quan c&aacute;c điểm theo chương tr&igrave;nh.</li>
	<li>Bảo hiểm du lịch nội địa (mức đền b&ugrave; cao nhất l&agrave; 20.000.000đ/người/vụ)</li>
	<li>01 khăn lạnh/ng&agrave;y, 01 chai nước suối 500ml/ng&agrave;y. 01 Khăn rằn Nam B&ocirc;̣</li>
</ul>
', N'<ul>
	<li>&nbsp;Đồ uống trong bữa ăn</li>
	<li>C&aacute;c chi ph&iacute; ph&aacute;t sinh c&aacute; nh&acirc;n kh&aacute;c.</li>
</ul>
', N'<ul>
	<li>Thanh to&aacute;n 100% trong khoảng thời gian giữ chỗ</li>
	<li>Đặt chỗ kh&ocirc;ng &aacute;p dụng ho&agrave;n, hủy trong mọi trường hợp.</li>
	<li>Được ph&eacute;p thay đổi ng&agrave;y khởi h&agrave;nh với điều kiện b&aacute;o trước 3 ng&agrave;y l&agrave;m việc (kh&ocirc;ng t&iacute;nh thứ 7 v&agrave; chủ nhật)</li>
</ul>
', CAST(N'2021-05-04T00:00:00.000' AS DateTime), CAST(N'2021-02-06T00:00:00.000' AS DateTime), CAST(425000 AS Decimal(18, 0)), N'Can Tho Travel Guide Vietnam Tourism_2.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (27, 4, N'Du Lịch Châu Đốc', N'Châu Đốc', N'30', N' 5 ngày 4 đêm', N'Oto', N'03/02/2021', N'Miền Tây - hai tiếng gọi ngắn gọn mà thân thương, đơn giản mà nhiều cảm xúc. Đi du lịch miền Tây, Quý khách không chỉ đến với hoa trái miệt vườn, dòng kênh con nước mà còn đến với những nụ cười hiền hậu, với tấm lòng hiếu khách của người dân miền Tây, về với vùng Đồng bằng sông Cửu Long để nhìn ngắm, chiêm ngưỡng, nghe thấy và trải nghiệm những điều thú vị mà lâu nay nhiều du khách trong và ngoài nước yêu thích.', N'<p><strong><span style="font-size:14px"><span style="color:#DAA520">NG&Agrave;Y 1: H&Agrave; NỘI - S&Agrave;I G&Ograve;N - MỸ THO - TIỀN GIANG -&nbsp;BẾN TRE - DU LỊCH CẦN THƠ&nbsp;(ĂN: T, T):</span></span></strong></p>

<p><strong>03h30:</strong>&nbsp;Xe v&agrave; hướng dẫn vi&ecirc;n&nbsp;<strong>Tour Pro&nbsp;</strong>đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn khởi h&agrave;nh đi&nbsp;<strong>s&acirc;n bay Nội B&agrave;i</strong>, đ&aacute;p chuyến bay&nbsp;<strong>VJ 143</strong>&nbsp;đi&nbsp;<strong>TP HCM</strong>&nbsp;l&uacute;c&nbsp;<strong>06h00</strong>.&nbsp;</p>

<p><strong>08h00:&nbsp;</strong>Đến s&acirc;n bay&nbsp;<strong>T&acirc;n Sơn Nhất</strong>, xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n qu&yacute; kh&aacute;ch&nbsp;khởi h&agrave;nh đi<strong>&nbsp;Mỹ Tho - Tiền Giang</strong>. Xe đưa qu&yacute; kh&aacute;ch&nbsp;đến bến t&agrave;u 3/2, qu&yacute; kh&aacute;ch di chuyển l&ecirc;n thuyền, du thuyền tr&ecirc;n s&ocirc;ng Tiền ngắm cảnh bốn c&ugrave; lao&nbsp;<strong>Long, L&acirc;n, Qui, Phụng.&nbsp;</strong>Tham quan cảng C&aacute; Mỹ Tho v&agrave; l&agrave;ng nu&ocirc;i C&aacute; B&egrave; dọc theo s&ocirc;ng Tiền, Cầu Rạch Miễu.</p>

<p>Đến&nbsp;<strong>c&ugrave; lao Thới Sơn</strong>, tản bộ tr&ecirc;n đường l&agrave;ng, tham quan vườn c&acirc;y ăn tr&aacute;i, thưởng thức c&aacute;c loại tr&aacute;i c&acirc;y theo m&ugrave;a v&agrave; nghe đờn ca t&agrave;i tử Nam Bộ.&nbsp;Tham quan trại nu&ocirc;i ong mật, thưởng thức tr&agrave; mật ong v&agrave; rượu chuối hột.</p>

<p>D&ugrave;ng xuồng ch&egrave;o len lỏi trong rạch nhỏ, th&aacute;m hiểm hai h&agrave;ng dừa nước thi&ecirc;n nhi&ecirc;n v&agrave; t&igrave;m hiểu cuộc sống của người d&acirc;n miền qu&ecirc;. Xu&ocirc;i d&ograve;ng s&ocirc;ng Tiền đến&nbsp;<strong>rạch T&acirc;n Thạch (Bến Tre)</strong>,<strong>&nbsp;</strong>tham quan l&ograve; kẹo dừa đặc sản v&agrave; l&agrave;ng nghề thủ c&ocirc;ng mỹ nghệ l&agrave;m từ gỗ dừa. Đo&agrave;n ăn trưa tại nh&agrave; h&agrave;ng.</p>

<p><strong>Chiều:</strong>&nbsp;Qu&yacute; kh&aacute;ch về đất liền, xe đưa đo&agrave;n khởi h&agrave;nh về Cần Thơ. Tới&nbsp;<strong>TP Cần Thơ</strong>, Qu&yacute; kh&aacute;ch l&agrave;m thủ tục nhận ph&ograve;ng, nghỉ ngơi tại kh&aacute;ch sạn.</p>

<p><strong>Tối:&nbsp;</strong>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa tối tr&ecirc;n du thuyền, ngắm cảnh s&ocirc;ng nước Nam Bộ sau đ&oacute; tự do dạo bến Ninh Kiều, kh&aacute;m ph&aacute; th&agrave;nh phố Cần Thơ về đ&ecirc;m.&nbsp;</p>

<p><strong><span style="color:#DAA520">NG&Agrave;Y 2: DU LỊCH CẦN THƠ - BẾN NINH KIỀU - CH&Acirc;U ĐỐC - AN GIANG&nbsp;(ĂN: S, T, T):</span></strong></p>

<p><strong>S&aacute;ng:&nbsp;</strong>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn, sau đ&oacute; xe đưa qu&yacute; kh&aacute;ch ra&nbsp;<strong>bến Ninh Kiều</strong>, l&ecirc;n thuyền đi tham quan&nbsp;<strong>chợ nổi C&aacute;i Răng</strong>&nbsp;- L&agrave; một trong ba chợ nổi lớn nhất Cần Thơ. N&eacute;t độc đ&aacute;o v&agrave; đặc điểm ch&iacute;nh của khu chợ nổi tiếng n&agrave;y l&agrave; chuy&ecirc;n bu&ocirc;n b&aacute;n c&aacute;c loại tr&aacute;i c&acirc;y, đặc sản của v&ugrave;ng đồng bằng s&ocirc;ng Cửu Long.</p>

<p>Về Cần Thơ đi chơi chợ nổi C&aacute;i Răng l&agrave; một trải nghiệm cực chất v&agrave; th&uacute; vị nhất quả đất. Xe tiếp tục đưa đo&agrave;n thăm quan<strong>&nbsp;nh&agrave; cổ B&igrave;nh Thủy</strong>. Ng&ocirc;i nh&agrave; cổ năm gian hai ch&aacute;i được gia đ&igrave;nh họ Dương x&acirc;y dựng năm 1870 theo lối kiến tr&uacute;c Ph&aacute;p vẫn c&ograve;n lưu giữ nhiều cổ vật qu&yacute; gi&aacute;.</p>

<p><strong>Trưa:</strong>&nbsp;Qu&yacute; kh&aacute;ch về kh&aacute;ch sạn l&agrave;m thủ tục trả ph&ograve;ng, ăn trưa tại nh&agrave; h&agrave;ng.</p>

<p><strong>13h00:&nbsp;</strong>Qu&yacute; kh&aacute;ch khởi h&agrave;nh đi Ch&acirc;u Đốc, đến&nbsp;<strong>Ch&acirc;u Đốc - An Giang,&nbsp;</strong>Qu&yacute; kh&aacute;ch tham quan:&nbsp;<strong>Miếu B&agrave; Ch&uacute;a Xứ, Ch&ugrave;a Phật Thầy T&acirc;y An&nbsp;</strong>(T&acirc;y An Cổ Tự), một trong những ng&ocirc;i ch&ugrave;a nổi tiếng thu h&uacute;t nhiều phật tử khắp nơi đến c&uacute;ng b&aacute;i<strong>, Lăng Thoại Ngọc Hầu,&nbsp;</strong>một c&ocirc;ng thần triều Nguyễn c&oacute; c&ocirc;ng khai khẩn v&ugrave;ng đất An Giang với c&ocirc;ng tr&igrave;nh thủy lợi nổi bật như K&ecirc;nh Vĩnh Tế, K&ecirc;nh Thoại H&agrave;&hellip;</p>

<p>Tham quan v&agrave; mua sắm tại chợ Ch&acirc;u Đốc -&nbsp;&quot;Vương quốc mắm&quot; của miền T&acirc;y với nhiều loại mắm kh&aacute;c nhau như mắm th&aacute;i, mắm c&aacute; tr&egrave;n, mắm c&aacute; l&oacute;c. Ngo&agrave;i ra, c&ograve;n c&oacute; đường Thốt Nốt&hellip;.</p>

<p><strong>18h30:</strong>&nbsp;Ăn tối tại nh&agrave; h&agrave;ng địa phương với c&aacute;c m&oacute;n ăn đậm chất Nam Bộ. Tự do kh&aacute;m ph&aacute; TP Ch&acirc;u Đốc<strong>&nbsp;</strong>về đ&ecirc;m, Nghỉ đ&ecirc;m tại kh&aacute;ch sạn.</p>

<p><img src="https://bizweb.dktcdn.net/100/101/075/files/cd-jpg.jpg?v=1553942331790" /></p>

<p><strong><span style="color:#DAA520"><span style="font-size:14px">NG&Agrave;Y 3: RỪNG TR&Agrave;M TR&Agrave; SƯ - KHỞI H&Agrave;NH VỀ TP HỒ CH&Iacute; MINH (ĂN: S, T, T):</span></span></strong></p>

<p><strong>S&aacute;ng:&nbsp;</strong>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn, sau đ&oacute; trả ph&ograve;ng l&ecirc;n xe khởi h&agrave;nh đi&nbsp;<strong>Rừng Tr&agrave;m Tr&agrave; Sư</strong>. Đến Tr&agrave; Sư, Qu&yacute; kh&aacute;ch đi tắc r&aacute;ng len l&otilde;i trong rừng tr&agrave;m ngắm c&aacute;c lo&agrave;i chim tự nhi&ecirc;n. Sau đ&oacute; ngồi xuồng ba l&aacute; tham quan nơi sinh sản của c&aacute;c lo&agrave;i chim, c&ograve;. Qu&yacute; kh&aacute;ch l&ecirc;n th&aacute;p quan s&aacute;t ngắm to&agrave;n cảnh<strong>&nbsp;</strong>rừng tr&agrave;m Tr&agrave; Sư v&agrave; v&ocirc; số chim, c&ograve; khắp nơi bay về .</p>

<p><strong>11h30:&nbsp;</strong>Ăn trưa tại khu du lịch Rừng Tr&agrave;m. Sau bữa trưa xe đưa Qu&yacute; kh&aacute;ch khởi h&agrave;nh về TP HCM.</p>

<p><strong>Chiều:&nbsp;</strong>Về đến&nbsp;<strong>TPHCM</strong>, Qu&yacute; kh&aacute;ch nhận ph&ograve;ng kh&aacute;ch sạn, Qu&yacute; kh&aacute;ch tự do nghỉ ngơi,</p>

<p><strong>Tối: Qu&yacute; kh&aacute;ch&nbsp;</strong>ăn tối tại nh&agrave; h&agrave;ng. Nghỉ đ&ecirc;m tại kh&aacute;ch sạn.</p>

<p><strong><span style="color:#DAA520"><span style="font-size:14px">NG&Agrave;Y 4: THAM QUAN S&Agrave;I G&Ograve;N - TP HCM - DI T&Iacute;CH ĐỊA ĐẠO CỦ CHI (ĂN: S, T, T):</span></span></strong></p>

<p><strong>S&aacute;ng:&nbsp;</strong>D&ugrave;ng bữa s&aacute;ng tại kh&aacute;ch sạn, xe đưa đo&agrave;n đi tham quan&nbsp;<strong>TPHCM:&nbsp;Nh&agrave; thờ Đức B&agrave;, Bưu Điện Th&agrave;nh Phố, Cảng Nh&agrave; Rồng&nbsp;</strong>- nơi B&aacute;c Hồ ra đi t&igrave;m đường cứu nước.</p>

<p><strong>Trưa:</strong>&nbsp;Qu&yacute; kh&aacute;ch d&ugrave;ng bữa&nbsp;trưa tại nh&agrave; h&agrave;ng. Thưởng thức c&aacute;c m&oacute;n ăn mang hương vị địa phương.</p>

<p><strong>Chiều:&nbsp;</strong>Xe đưa Qu&yacute; kh&aacute;ch đi&nbsp;<strong>Củ Chi.</strong>&nbsp;Tham quan, t&igrave;m hiểu&nbsp;<strong>Địa đạo Củ Chi</strong>&nbsp;được x&acirc;y dựng tr&ecirc;n v&ugrave;ng đất được mệnh danh l&agrave; &ldquo;đất th&eacute;p&rdquo;, nằm ở điểm cuối Đường m&ograve;n Hồ Ch&iacute; Minh. Trong Chiến dịch Tết Mậu Th&acirc;n 1968, Mặt trận D&acirc;n tộc Giải ph&oacute;ng miền Nam Việt Nam đ&atilde; sử dụng hệ thống địa đạo n&agrave;y để tấn c&ocirc;ng S&agrave;i G&ograve;n.</p>

<p>Sau khi tham quan Đo&agrave;n thưởng thức m&oacute;n ăn đặc sản &ldquo;Khoai m&igrave; Củ chi&rdquo; v&agrave; uống nước l&aacute;, 1 m&oacute;n ăn đ&atilde; tồn tại suốt trong thời kỳ gian nan kh&aacute;ng chiến của d&acirc;n tộc Việt Nam. Được tận mắt chứng kiến những vũ kh&iacute; th&ocirc; sơ tự chế, bẫy ch&ocirc;ng bằng tre&hellip;, b&ograve; trườn trong c&aacute;c đường địa đạo, v&agrave; xem người d&acirc;n địa phương l&agrave;m b&aacute;nh tr&aacute;ng v&agrave; rượu gạo. Ngo&agrave;i ra, qu&yacute; kh&aacute;ch c&ograve;n c&oacute; cơ hội bắn s&uacute;ng tại trường tập bắn ở địa đạo.</p>

<p><strong>Tối:&nbsp;</strong>Qu&yacute; kh&aacute;ch về TP HCM ăn tối. Sau bữa tối Qu&yacute; kh&aacute;ch&nbsp;tự do tham quan TP về đ&ecirc;m.</p>

<p><img src="https://bizweb.dktcdn.net/100/101/075/files/cc-6a4d53dc-2362-4f88-9356-e129ea167be8.jpg?v=1553942388377" /></p>

<p><strong><span style="color:#DAA520"><span style="font-size:14px">NG&Agrave;Y 5: TH&Agrave;NH PHỐ HỒ CH&Iacute; MINH - KHỞI H&Agrave;NH VỀ H&Agrave; NỘI (ĂN: S, T):</span></span></strong></p>

<p><strong>S&aacute;ng:</strong>&nbsp;Qu&yacute; kh&aacute;ch ăn s&aacute;ng tại kh&aacute;ch sạn. Sau bữa s&aacute;ng Qu&yacute; kh&aacute;ch&nbsp;tham&nbsp;<strong>Dinh Độc Lập</strong>, mua sắm tại chợ Bến Th&agrave;nh v&agrave; c&aacute;c trung t&acirc;m Thương mại.&nbsp;Sau đ&oacute; về kh&aacute;ch sạn l&agrave;m thủ tục trả ph&ograve;ng.</p>

<p><strong>12h00:</strong>&nbsp;Ăn trưa tại nh&agrave; h&agrave;ng, sau đ&oacute; đo&agrave;n tự do mua sắm cho đến</p>

<p><strong>15h30:&nbsp;</strong>Xe đưa đo&agrave;n ra s&acirc;n bay T&acirc;n Sơn Nhất<strong>&nbsp;</strong>đ&aacute;p chuyến bay&nbsp;<strong>VJ 130&nbsp;</strong>về H&agrave; Nội l&uacute;c&nbsp;<strong>17h50</strong>.</p>

<p><strong>19h50:</strong>&nbsp;Về đến s&acirc;n bay Nội B&agrave;i, xe đưa qu&yacute; kh&aacute;ch trở về điểm đ&oacute;n ban đầu. Hướng dẫn vi&ecirc;n&nbsp;<strong>Tour Pro&nbsp;</strong>cảm ơn, chia tay, hẹn gặp lại qu&yacute; kh&aacute;ch. Kết th&uacute;c chuyến h&agrave;nh tr&igrave;nh&nbsp;<strong>du lịch&nbsp;S&agrave;i G&ograve;n - Mỹ Tho - Ch&acirc;u Đốc - Cần Thơ - Rừng Tr&agrave;m Tr&agrave; Sư.</strong></p>
', N'<p>- Xe du lịch đời mới, m&aacute;y lạnh đưa đ&oacute;n theo lịch tr&igrave;nh: Đ&oacute;n tiễn s&acirc;n bay Nội B&agrave;i, phục vụ suốt h&agrave;nh tr&igrave;nh: S&agrave;i G&ograve;n - Du Lịch Cần Thơ - An Giang &nbsp;Tiền Giang - Hồ Ch&iacute; Minh.</p>

<p>- Loại xe: Sản xuất: 2014 - 2021(45, 35 chỗ: Hyundai, Isuzu Samco, 29 chỗ: Hyundai County/Samco, 16 chỗ: Mercedes Sprinter, Ford Transit. 07 chỗ: Innova).</p>

<p>- V&eacute; m&aacute;y bay khứ hồi Vietjet air (đ&atilde; bao gồm 20 kg h&agrave;nh l&yacute; k&yacute; gửi) Chặng H&agrave; Nội - &nbsp;TPHCM - H&agrave; Nội.</p>

<p>- Bữa ăn ch&iacute;nh: 08 bữa theo lịch tr&igrave;nh - 130.000đ/bữa/kh&aacute;ch. 01 bữa ăn tại du thuyền Cần Thơ mức 180.000đ/kh&aacute;ch/bữa.</p>

<p>- Bữa ăn phụ: 04 bữa theo lịch tr&igrave;nh - Buffet tại kh&aacute;ch sạn</p>
', N'<p>- Chi phí cá nh&acirc;n, hành lý quá cước, đi&ecirc;̣n thoại, giặt ủi, tham quan ngoài chương trình.</p>

<p>- Phụ thu phòng đơn.</p>

<p>- Tips cho tài x&ecirc;́ địa phương và hướng d&acirc;̃n vi&ecirc;n.</p>

<p>- 10% thuế GTGT</p>

<p>- Phụ Thu cho người nước ngo&agrave;i 950.000 VND/ người.</p>
', NULL, CAST(N'2021-10-07T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), CAST(9800000 AS Decimal(18, 0)), N'chau doc travel guide_0.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (28, 7, N'Tour Chùa Tam Chúc', N'Hà Nam', N'40 Người', N'1 ngày', N'Ô tô', N'03/02/2021', N'Chùa Tam Chúc trước đây được xây dựng dưới thời nhà Đinh, dựa trên truyền thuyết “Tiền lục nhạc - hậu thất tinh” thờ những vị cao tăng có công lớn với Phật giáo Việt Nam thời điểm bây giờ. Ngày nay, khu du lịch Tam Chúc được xây dựng với quy mô bề thế ngay trên nền móng của chùa cũ, nằm giữa không gian bao la của non thanh thủy tú chùa Tam Chúc nổi lên như ánh hào quang Phật giáo tỏa ra bốn phương đầy ấm áp, soi rọi những tâm hồn thanh khiết của nhân gian, hướng thiện cho muôn người , là nơi phật từ, khách du lịch tề tựu về một lòng hướng thiện với tâm thức trong sáng, nhẹ nhàng bỏ đi tất cả muộn phiền.', N'<p><strong><span style="color:#DAA520"><span style="font-size:14px">S&aacute;ng: Từ&nbsp;H&agrave; Nội - Du Lịch Chi&ecirc;m B&aacute;i Ch&ugrave;a Tam Ch&uacute;c - H&agrave; Nam</span></span></strong></p>

<p><strong>06h30:&nbsp;</strong>Xe v&agrave; hướng dẫn vi&ecirc;n Tour Pro đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn trong TP H&agrave; Nội khởi h&agrave;nh đi Kim Bảng - H&agrave; Nam. Tr&ecirc;n xe hướng dẫn vi&ecirc;n tổ chức thuyết minh v&agrave; hoạt n&aacute;o vui nhộn.</p>

<p><strong>07h30:&nbsp;</strong>Xe đưa du kh&aacute;ch đến với quần thể khu du lịch&nbsp;<strong>ch&ugrave;a Tam Ch&uacute;c</strong>&nbsp;- Du kh&aacute;ch tham quan v&agrave; l&agrave;m lễ, chi&ecirc;m b&aacute;i tại ch&ugrave;a Ngọc, điện Tam Thế, điện Ph&aacute;p Chủ, điện Quan &Acirc;m, cổng Tam Quan,&hellip;( Kh&ocirc;ng bao gồm chương tr&igrave;nh đi thuyền tham quan).</p>

<p><strong>10h30:&nbsp;</strong>Kết th&uacute;c chương tr&igrave;nh tham quan tại ch&ugrave;a Tam Ch&uacute;c, Qu&yacute; kh&aacute;ch trở lại xe khởi h&agrave;nh đi Ninh B&igrave;nh.</p>

<p>Chiều: Ăn trưa - Tham Quan Chi&ecirc;m B&aacute;i Ở Ch&ugrave;a B&aacute;i Đ&iacute;nh - Về H&agrave; Nội</p>

<p><strong>11h30:&nbsp;</strong>Qu&yacute; Kh&aacute;ch ăn trưa v&agrave; nghỉ ngơi tại nh&agrave; h&agrave;ng, thưởng thức c&aacute;c m&oacute;n ăn đặc sản Ninh B&igrave;nh như thịt d&ecirc;, cơm ch&aacute;y...</p>

<p><strong>13h00:</strong>&nbsp;Xe đưa Qu&yacute; kh&aacute;ch đến&nbsp;<strong>ch&ugrave;a B&aacute;i Đ&iacute;nh</strong>&nbsp;- Qu&yacute; kh&aacute;ch tự do l&agrave;m lễ, chi&ecirc;m b&aacute;i v&agrave; tham quan quần thể khu du lịch t&acirc;m linh ch&ugrave;a B&aacute;i Đ&iacute;nh.</p>

<p><strong>16h00:&nbsp;</strong>Kết th&uacute;c chương tr&igrave;nh tham quan, Xe đ&oacute;n Qu&yacute; kh&aacute;ch khởi h&agrave;nh về lại H&agrave; Nội</p>

<p><strong>18h00:</strong>&nbsp;Xe đưa du kh&aacute;ch về đến H&agrave; Nội, Hướng dẫn vi&ecirc;n chia tay Qu&yacute; kh&aacute;ch v&agrave; kết th&uacute;c chương tr&igrave;nh. Hẹn gặp lại Qu&yacute; kh&aacute;ch!</p>
', N'<p>+ Xe du lịch đời mới, m&aacute;y lạnh đưa đ&oacute;n theo lịch tr&igrave;nh như tr&ecirc;n: H&agrave; Nội - Du lịch Tam Ch&uacute;c - Ch&ugrave;a B&aacute;i Đ&iacute;nh - Ninh B&igrave;nh - H&agrave; Nội.</p>

<p>+ Loại xe: Sản xuất: 2015 - 2019 (45, 35 chỗ: Hyundai, Isuzu Samco, 29 chỗ: Hyundai County / Samco, 16 chỗ: Mercedes Sprinter, Ford Transit. 07 chỗ: Innova).</p>

<p>+ Phục vụ 01 bữa ăn ch&iacute;nh: 150.000 vnđ/suất.</p>

<p>+ Hướng dẫn vi&ecirc;n tiếng việt theo chương tr&igrave;nh h&agrave;i hước vui nhộn v&agrave; nhiệt t&igrave;nh.</p>

<p>+ Bảo hiểm du lịch với mức 40.000.000đ/trường hợp.</p>

<p>+ Xe điện di chuyển, Ph&iacute; m&ocirc;i trường v&agrave; tham quan tại c&aacute;c điểm theo lịch tr&igrave;nh.</p>

<p>&nbsp;</p>
', N'<p>- Ăn uống ngo&agrave;i chương tr&igrave;nh.</p>

<p>- Gi&aacute; kh&ocirc;ng &aacute;p dụng dịp lễ, tết</p>

<p>- Chi ph&iacute; xuất h&oacute;a đơn VAT 10%</p>
', NULL, CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2021-11-11T00:00:00.000' AS DateTime), CAST(550000 AS Decimal(18, 0)), N'slide-4.jpg')
INSERT [dbo].[Tour] ([MaTour], [MaDM], [TenTour], [DiaDiem], [QuyMo], [ThoiGian], [PhuongTien], [KhoiHanh], [GioiThieu], [LichTrinhTour], [TourBaoGom], [TourKhongBaoGom], [DieuKhoanHuyTour], [NgayTao], [NgayCapNhat], [Gia], [HinhAnh]) VALUES (29, 5, N'Nghỉ Dưỡng Tại Vinpearl Phú Quốc', N'Phú Quốc', N'4 Người', N' 3 Ngày 2 Đêm', N'Máy bay & Ô tô', N'Theo yêu cầu của khách hàng', N'Phú Quốc, từ lâu đã trở nên nổi tiếng với khách du lịch khắp mọi miền đất nước và quốc tế. Sở hữu hệ sinh thái gồm nhiều bãi biển đẹp trải dài từ phía bắc đến phía nam, 99 ngọn núi đồi và dãy rừng nguyên sinh với hệ động thực vật đa dạng, Phú Quốc đang dần trở thành Thiên Đường Nhiệt Đới của Việt Nam.', N'<ul>
	<li>
	<p><strong><span style="color:#A52A2A"><span style="font-size:16px">Ng&agrave;y 1: Tp. Hồ Ch&iacute; Minh - Ph&uacute; Quốc</span></span></strong></p>

	<p><strong>07h00:&nbsp;</strong>Xe đ&oacute;n qu&yacute; kh&aacute;ch tại điểm hẹn trong nội th&agrave;nh Tp. Hồ Ch&iacute; Minh v&agrave; di chuyển tới s&acirc;n bay T&acirc;n Sơn Nhất để l&agrave;m thủ tục check-in.</p>

	<p><strong>09h20:</strong>&nbsp;Qu&yacute; kh&aacute;ch đ&oacute;n chuyến bay mang số hiệu VN1825 khởi l&uacute;c 09:45 tới Ph&uacute; Quốc</p>

	<p><strong>10h45:</strong>&nbsp;Xe v&agrave; HDV đ&oacute;n qu&yacute; kh&aacute;ch tại s&acirc;n bay Ph&uacute; Quốc v&agrave; đưa qu&yacute; kh&aacute;ch tới Vinpearl Resort &amp; Golf.</p>

	<p><strong>12h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch tự do d&ugrave;ng bữa tại nh&agrave; h&agrave;ng của kh&aacute;ch sạn. Sau bữa trưa, qu&yacute; kh&aacute;ch check-in, nhận ph&ograve;ng v&agrave; nghỉ ngơi.</p>

	<p><strong>14h00:</strong>&nbsp;Qu&yacute; kh&aacute;ch di chuyển tới s&acirc;n golf Vinpearl Ph&uacute; Quốc. Tọa lạc giữa ng&uacute;t ng&agrave;n xanh hoang sơ ph&iacute;a Bắc đảo Ph&uacute; Quốc, Vinpearl Golf Ph&uacute; Quốc mang đến cảm gi&aacute;c độc đ&aacute;o của thi&ecirc;n đường nhiệt đới với những t&aacute;n rừng rậm rạp v&agrave; b&atilde;i biển thanh b&igrave;nh. Khung cảnh thi&ecirc;n nhi&ecirc;n tuyệt mỹ v&agrave; th&aacute;ch thức th&uacute; vị tr&ecirc;n c&aacute;c đường golf sẽ đem đến cho qu&yacute; kh&aacute;ch những bất ngờ l&yacute; th&uacute; ngay lần đầu trải nghiệm.</p>

	<p><strong>14h30:</strong>&nbsp;Bắt đầu Tee Time, Qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội trải nghiệm s&acirc;n golf 18 hố đạt chuẩn quốc tế được thiết kế bởi IMG Worldwide. Với ưu thế địa h&igrave;nh đồi n&uacute;i, s&acirc;n golf Vinpearl Ph&uacute; Quốc sở hữu nhiều thử th&aacute;ch bất ngờ với những hố golf nằm ngay dưới t&aacute;n c&acirc;y cổ thụ, mang vẻ đẹp nguy&ecirc;n sơ, cổ điển pha lẫn n&eacute;t hiện đại.&nbsp;</p>

	<p>S&acirc;n golf Vinpearl được chia l&agrave;m 2 s&acirc;n 9 hố ri&ecirc;ng biệt, mỗi s&acirc;n lại mang dấu ấn ri&ecirc;ng từ địa h&igrave;nh khu vực đến c&aacute;c chướng ngại vật tr&ecirc;n s&acirc;n với những mức độ kh&oacute; kh&aacute;c nhau, mang đến trải nghiệm đa dạng cho những golfer kh&oacute; t&iacute;nh nhất. Qu&yacute; kh&aacute;ch c&oacute; thể cảm nhận r&otilde; vẻ đẹp của những đường fairway gợn s&oacute;ng nhấp nh&ocirc;, t&ocirc; điểm bởi cảnh quan như tranh vẽ từ mảng xanh m&ecirc;nh m&ocirc;ng, kho&aacute;ng đạt của khu rừng nhiệt đới nh&igrave;n ra Vịnh Th&aacute;i Lan bao la tạo cảm gi&aacute;c trong l&agrave;nh, thư th&aacute;i.</p>

	<p><strong>18h30:</strong>&nbsp;Kết th&uacute;c thời gian chơi golf, qu&yacute; kh&aacute;ch tự do ăn tối v&agrave; nghỉ ngơi hoặc kh&aacute;m ph&aacute; th&agrave;nh phố Ph&uacute; Quốc về đ&ecirc;m.</p>

	<p>Nghỉ đ&ecirc;m tại Vinpearl Resort &amp; Golf.</p>
	</li>
	<li>
	<p><span style="color:#A52A2A"><span style="font-size:16px"><strong>Ng&agrave;y 2: Kh&aacute;m Ph&aacute; 4 Đảo Ph&uacute; Quốc (Ăn s&aacute;ng, Ăn trưa)</strong></span></span></p>

	<p><strong>08h00 &ndash; 08h30:&nbsp;</strong>Xe v&agrave; HDV đ&oacute;n Qu&yacute; kh&aacute;ch tại Resort. Qu&yacute; kh&aacute;ch n&ecirc;n mang theo kem chống nắng v&agrave; đồ bơi, c&aacute;c h&ograve;n ở ngo&agrave;i đều c&oacute; wc cho mọi người thay đồ.<br />
	&nbsp;</p>

	<p><strong>09h00:&nbsp;</strong>Đến Cảng An Thới, Qu&yacute; kh&aacute;ch l&ecirc;n Cano đ&atilde; chờ sẵn, ổn định chỗ ngồi, mặc &aacute;o phao.</p>

	<p><br />
	Cano sẽ đi qua tất cả 12 h&ograve;n đảo lớn nhỏ kh&aacute;c nhau. v&agrave; gh&eacute; qua c&ocirc;ng vi&ecirc;n san h&ocirc; nh&acirc;n tạo, tại đ&acirc;y những bạn đ&atilde; đăng k&yacute; mua để qu&yacute; kh&aacute;ch trải nghiệm đi bộ dưới đ&aacute;y biển (Chi ph&iacute; tự t&uacute;c)</p>

	<p>Qu&yacute; kh&aacute;ch tự do vui chơi thư gi&atilde;n tr&ecirc;n H&ograve;n M&oacute;ng Tay, h&ograve;n đảo nổi tiếng v&agrave; được nhiều người biết đến nhất tại Ph&uacute; Quốc với b&atilde;i c&aacute;t trắng mịn v&agrave; l&agrave;n nước trong xanh như ngọc b&iacute;ch. Ngo&agrave;i ra ở đ&acirc;y Qu&yacute; kh&aacute;ch cũng c&oacute; thể ngắm những rặng san h&ocirc; tuyệt đẹp với v&ocirc; v&agrave;n h&igrave;nh th&ugrave; v&agrave; m&agrave;u sắc kh&aacute;c nhau.</p>

	<p>Điểm tiếp theo l&agrave; H&ograve;n M&acirc;y R&uacute;t Trong, h&ograve;n đảo c&oacute; b&atilde;i biển d&agrave;i nhất trong số 4 đảo, với h&agrave;ng x&iacute;ch đu d&agrave;i v&agrave; b&atilde;i biển v&ocirc; c&ugrave;ng thơ mộng. Sau đ&oacute; cano đưa qu&yacute; kh&aacute;ch di chuyển tới H&ograve;n M&acirc;y R&uacute;t Ngo&agrave;i để d&ugrave;ng bữa trưa v&agrave; nghỉ ngơi, Qu&yacute; kh&aacute;ch cũng c&oacute; thể tắm tr&aacute;ng nước ngọt v&agrave; thay đồ tại đ&acirc;y. Qu&yacute; kh&aacute;ch sẽ ăn trưa ngay tr&ecirc;n h&ograve;n với thực đơn 8 m&oacute;n bao gồm hải sản (Lẩu c&aacute; bớp, mực x&agrave;o chua ngọt, t&ocirc;m nướng, s&ograve; t&ocirc; nướng mỡ h&agrave;nh, c&aacute; kho tộ, trứng chi&ecirc;n, cơm trắng v&agrave; tr&aacute;i c&acirc;y tr&aacute;ng miệng).</p>

	<p>Tr&ecirc;n đảo l&agrave; những h&agrave;ng dừa xanh ngả b&oacute;ng m&aacute;t, ph&iacute;a dưới l&agrave; b&agrave;n ghế v&agrave; những chiếc v&otilde;ng đu đưa gi&uacute;p bạn ăn trưa v&agrave; nghỉ trưa, tận hưởng kh&ocirc;ng kh&iacute; tươi m&aacute;t của gi&oacute; biển. Điều kh&ocirc;ng thể thiếu l&agrave; H&ograve;n M&acirc;y R&uacute;t Ngo&agrave;i cũng c&oacute; 1 b&atilde;i biển tuy nhỏ nhưng l&agrave;n nước trong xanh v&agrave; cực đẹp.</p>

	<p>Điểm đến cuối c&ugrave;ng l&agrave; H&ograve;n Gầm Gh&igrave; hay c&ograve;n gọi l&agrave; H&ograve;n Dăm Ngang. Tại đ&acirc;y qu&yacute; kh&aacute;ch sẽ c&oacute; cơ hội lặn ngắm san h&ocirc;. H&ograve;n Gầm Gh&igrave; c&oacute; địa h&igrave;nh kh&aacute; độc đ&aacute;o với điểm nhấn l&agrave; những b&atilde;i đ&aacute; kỳ l&acirc;n lớp ngang lớp dọc chen ch&uacute;c nhau v&agrave; được mệnh danh l&agrave; vương quốc san h&ocirc; bởi h&ograve;n đảo sở hữu tới 17 loại san h&ocirc; cứng v&agrave; mềm, c&ugrave;ng c&aacute;c loại hải quỳ kh&aacute;c nhau.</p>

	<p>Cũng tại đ&acirc;y, qu&yacute; kh&aacute;ch sẽ được tặng miễn ph&iacute; bộ ảnh chụp bằng flycam tr&ecirc;n SUP - v&aacute;n trượt giữa l&ograve;ng biển m&ecirc;nh m&ocirc;ng v&agrave; đắm ch&igrave;m trước vẻ đẹp của đại dương biển đảo.</p>

	<p><br />
	<strong>15h00:&nbsp;</strong>Xe đưa qu&yacute; kh&aacute;ch trở về Resort, qu&yacute; kh&aacute;ch tự do ăn tối v&agrave; thư gi&atilde;n tại Resort hoặc kh&aacute;m ph&aacute; th&agrave;nh phố về đ&ecirc;m.</p>
	</li>
	<li>
	<p><strong><span style="color:#A52A2A"><span style="font-size:16px">Ng&agrave;y 3: Ph&uacute; Quốc - Tp. Hồ Ch&iacute; Minh (Ăn s&aacute;ng)</span></span></strong></p>

	<p>Buổi s&aacute;ng qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại nh&agrave; h&agrave;ng của Resort, sau đ&oacute; tự do tắm biển, thư gi&atilde;n tại Resort hoặc gh&eacute; thăm v&agrave; trải nghiệm tổ hợp vui chơi giải tr&iacute; VinWonders v&agrave; c&ocirc;ng vi&ecirc;n bảo tồn động vật VinSafari (Chi ph&iacute; kh&ocirc;ng bao gồm)</p>

	<p><strong>11h30:&nbsp;</strong>Qu&yacute; kh&aacute;ch check-out, trả ph&ograve;ng v&agrave; tự do ăn trưa.</p>

	<p><strong>13h30:&nbsp;</strong>Xe c&ugrave;ng HDV đưa Qu&yacute; kh&aacute;ch gh&eacute; thăm c&aacute;c địa điểm nổi tiếng tại Ph&uacute; Quốc như Nh&agrave; T&ugrave; Ph&uacute; Quốc, trang trại bảo tồn ch&oacute; xo&aacute;y Ph&uacute; Quốc, vườn ti&ecirc;u Ph&uacute; Quốc, trung t&acirc;m nghi&ecirc;n cứu ngọc trai v&agrave; chợ trung t&acirc;m để mua c&aacute;c loại đặc sản tại đ&acirc;y.</p>

	<p><strong>15h30:</strong>&nbsp;Xe v&agrave; HDV đưa qu&yacute; kh&aacute;ch tới s&acirc;n bay Ph&uacute; Quốc, l&agrave;m thủ tục check-in.</p>

	<p><strong>17h05:</strong>&nbsp;Qu&yacute; kh&aacute;ch đ&oacute;n chuyến bay Vietnam Airlines mang số hiệu VN1828 khởi h&agrave;nh l&uacute;c 17:25 tới Tp. Hồ Ch&iacute; Minh.</p>

	<p><strong>18h35:</strong>&nbsp;Xe đ&oacute;n qu&yacute; kh&aacute;ch tại S&acirc;n bay T&acirc;n Sơn Nhất v&agrave; đưa qu&yacute; kh&aacute;ch tới về điểm hẹn, kết th&uacute;c chuyến h&agrave;nh tr&igrave;nh tới Ph&uacute; Quốc với nhiều kỷ niệm đ&aacute;ng nhớ. Ch&agrave;o tạm biệt qu&yacute; kh&aacute;ch v&agrave; hẹn gặp lại trong c&aacute;c chương tr&igrave;nh tiếp theo.</p>
	</li>
</ul>
', N'<ul>
	<li>V&eacute; m&aacute;y bay khứ hồi Vietnam Airlines hạng Economy chặng Tp. Hồ Ch&iacute; Minh &ndash; Ph&uacute; Quốc (Ti&ecirc;u chuẩn h&agrave;nh l&yacute; x&aacute;ch tay 12kg; H&agrave;nh l&yacute; k&yacute; gửi 23kg)</li>
	<li>Xe limousine D-Car vận chuyển theo chương tr&igrave;nh</li>
	<li>Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh trong suốt h&agrave;nh tr&igrave;nh.</li>
	<li>02 đ&ecirc;m nghỉ tại Vinpearl Resort &amp; Golf Ph&uacute; Quốc hạng ph&ograve;ng Deluxe Ocean View (02 kh&aacute;ch/ ph&ograve;ng)</li>
	<li>02 bữa s&aacute;ng tại Vinpearl Resort &amp; Golf</li>
	<li>01 bữa trưa tại đảo M&acirc;y R&uacute;t Ngo&agrave;i</li>
	<li>Chương tr&igrave;nh tham quan 04 Đảo tại Ph&uacute; Quốc (Tour gh&eacute;p)</li>
	<li>Green Fee, Caddy, Sharing Cart/ Buggy (01 v&ograve;ng 18 hố) tại Vinpearl Golf Ph&uacute; Quốc</li>
	<li>V&eacute; tham quan c&aacute;c địa điểm trong chương tr&igrave;nh</li>
	<li>Nước uống: 500ml/người/ng&agrave;y</li>
	<li>Bảo hiểm du lịch</li>
	<li>Thuế, ph&iacute; theo Quy định nh&agrave; nước.</li>
</ul>
', N'<ul>
	<li>Phụ thu cuối tuần, lễ tết &amp; giai đoạn cao điểm.</li>
	<li>C&aacute;c bữa ăn kh&ocirc;ng đề cập trong chương tr&igrave;nh</li>
	<li>C&aacute;c chi ph&iacute; kh&ocirc;ng đề cập trong chương tr&igrave;nh.</li>
	<li>C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ph&aacute;t sinh kh&aacute;c.</li>
	<li>Đồ uống trong c&aacute;c bữa ăn.</li>
	<li>Tiền tip HDV v&agrave; l&aacute;i xe, caddies</li>
</ul>
', N'<p>Phạt 100% chi ph&iacute; nếu hủy dịch vụ sau khi thực hiện đặt dịch vụ hoặc k&yacute; kết hơp đồng. Tiền đặt cọc kh&ocirc;ng ho&agrave;n lại trong mọi trường hợp.</p>
', NULL, CAST(N'2021-11-02T00:00:00.000' AS DateTime), CAST(10510000 AS Decimal(18, 0)), N'what to do in phu quoc.jpg')
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[LienHe] ADD  CONSTRAINT [DF_LienHe_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Order_Tour] ADD  CONSTRAINT [DF_Order_Tour_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_Tour] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order_Tour] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_Tour]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
USE [master]
GO
ALTER DATABASE [BookTourOnline] SET  READ_WRITE 
GO
