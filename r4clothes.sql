USE [master]
GO
/****** Object:  Database [r4clothes]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE DATABASE [r4clothes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'r4clothes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\r4clothes.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'r4clothes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\r4clothes_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [r4clothes] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [r4clothes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [r4clothes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [r4clothes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [r4clothes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [r4clothes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [r4clothes] SET ARITHABORT OFF 
GO
ALTER DATABASE [r4clothes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [r4clothes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [r4clothes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [r4clothes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [r4clothes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [r4clothes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [r4clothes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [r4clothes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [r4clothes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [r4clothes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [r4clothes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [r4clothes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [r4clothes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [r4clothes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [r4clothes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [r4clothes] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [r4clothes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [r4clothes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [r4clothes] SET  MULTI_USER 
GO
ALTER DATABASE [r4clothes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [r4clothes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [r4clothes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [r4clothes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [r4clothes] SET DELAYED_DURABILITY = DISABLED 
GO
USE [r4clothes]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiaSes]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiaSes](
	[MaChiaSe] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[EmailNguoiNhan] [nvarchar](max) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[LinkSP] [nvarchar](100) NOT NULL,
	[ThoiGian] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ChiaSes] PRIMARY KEY CLUSTERED 
(
	[MaChiaSe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDons]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[Mahoadon] [int] NOT NULL,
	[Masanpham] [int] NOT NULL,
	[Tensanpham] [nvarchar](250) NOT NULL,
	[Soluong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDons] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGiaSanPhams]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaSanPhams](
	[MaDanhGiaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[Makhachhang] [int] NOT NULL,
	[Masanpham] [int] NOT NULL,
	[Thoigian] [datetime2](7) NOT NULL,
	[Noidung] [nvarchar](250) NULL,
 CONSTRAINT [PK_DanhGiaSanPhams] PRIMARY KEY CLUSTERED 
(
	[MaDanhGiaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDons]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDons](
	[Mahoadon] [int] IDENTITY(1,1) NOT NULL,
	[Makhachhang] [int] NOT NULL,
	[Nguoiquantri] [int] NOT NULL,
	[Tongtien] [float] NOT NULL,
	[Ngaydat] [datetime2](7) NOT NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_HoaDons] PRIMARY KEY CLUSTERED 
(
	[Mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[Makhachhang] [int] IDENTITY(1,1) NOT NULL,
	[Tenkhachhang] [nvarchar](150) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Diachi] [nvarchar](250) NOT NULL,
	[Ngaysinh] [datetime2](7) NULL,
	[Gioitinh] [int] NULL,
	[Sodienthoai] [varchar](15) NOT NULL,
	[Hinh] [nvarchar](100) NULL,
	[Trangthai] [bit] NULL,
	[Matkhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHangs] PRIMARY KEY CLUSTERED 
(
	[Makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPhams]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPhams](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_LoaiSanPhams] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuanTris]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuanTris](
	[Maquantri] [int] IDENTITY(1,1) NOT NULL,
	[Taikhoan] [nvarchar](100) NOT NULL,
	[Hoten] [nvarchar](100) NOT NULL,
	[Matkhau] [varchar](50) NULL,
 CONSTRAINT [PK_QuanTris] PRIMARY KEY CLUSTERED 
(
	[Maquantri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[Masanpham] [int] IDENTITY(1,1) NOT NULL,
	[Maquantri] [int] NOT NULL,
	[Tensanpham] [nvarchar](250) NOT NULL,
	[Maloai] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[Hinh] [nvarchar](100) NULL,
	[Soluotxem] [int] NOT NULL,
	[Ngaynhap] [datetime2](7) NOT NULL,
	[Giamgia] [int] NULL,
	[Mota] [nvarchar](250) NULL,
	[Trangthai] [bit] NOT NULL,
	[Dacbiet] [bit] NOT NULL,
 CONSTRAINT [PK_SanPhams] PRIMARY KEY CLUSTERED 
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YeuThichs]    Script Date: 12/19/2021 9:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThichs](
	[Mayeuthich] [int] IDENTITY(1,1) NOT NULL,
	[Makhachhang] [int] NOT NULL,
	[Masanpham] [int] NOT NULL,
 CONSTRAINT [PK_YeuThichs] PRIMARY KEY CLUSTERED 
(
	[Mayeuthich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211210153448_create3', N'5.0.11')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] ON 

INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [Mahoadon], [Masanpham], [Tensanpham], [Soluong], [Gia]) VALUES (1, 1, 1, N'Áo khoác XD', 0, 150000)
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [Mahoadon], [Masanpham], [Tensanpham], [Soluong], [Gia]) VALUES (2, 2, 3, N'Áo khoác HD', 0, 100000)
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [Mahoadon], [Masanpham], [Tensanpham], [Soluong], [Gia]) VALUES (3, 3, 2, N'Áo khoác HD', 0, 100000)
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [Mahoadon], [Masanpham], [Tensanpham], [Soluong], [Gia]) VALUES (4, 3, 3, N'Áo khoác HD', 0, 100000)
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [Mahoadon], [Masanpham], [Tensanpham], [Soluong], [Gia]) VALUES (5, 4, 1, N'Áo khoác XD', 0, 150000)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] OFF
SET IDENTITY_INSERT [dbo].[DanhGiaSanPhams] ON 

INSERT [dbo].[DanhGiaSanPhams] ([MaDanhGiaSanPham], [Makhachhang], [Masanpham], [Thoigian], [Noidung]) VALUES (1, 1, 1, CAST(N'2021-11-14 14:13:26.6920000' AS DateTime2), N'Hang chat luong')
INSERT [dbo].[DanhGiaSanPhams] ([MaDanhGiaSanPham], [Makhachhang], [Masanpham], [Thoigian], [Noidung]) VALUES (2, 1, 1, CAST(N'2021-11-14 14:13:26.6920000' AS DateTime2), N'Hàng khá chất lượng')
SET IDENTITY_INSERT [dbo].[DanhGiaSanPhams] OFF
SET IDENTITY_INSERT [dbo].[HoaDons] ON 

INSERT [dbo].[HoaDons] ([Mahoadon], [Makhachhang], [Nguoiquantri], [Tongtien], [Ngaydat], [Trangthai]) VALUES (1, 1, 1, 600000, CAST(N'2021-12-13 21:50:31.6799675' AS DateTime2), 0)
INSERT [dbo].[HoaDons] ([Mahoadon], [Makhachhang], [Nguoiquantri], [Tongtien], [Ngaydat], [Trangthai]) VALUES (2, 1, 1, 200000, CAST(N'2021-12-13 21:51:52.1392491' AS DateTime2), 0)
INSERT [dbo].[HoaDons] ([Mahoadon], [Makhachhang], [Nguoiquantri], [Tongtien], [Ngaydat], [Trangthai]) VALUES (3, 1, 1, 500000, CAST(N'2021-12-13 21:58:35.6889154' AS DateTime2), 0)
INSERT [dbo].[HoaDons] ([Mahoadon], [Makhachhang], [Nguoiquantri], [Tongtien], [Ngaydat], [Trangthai]) VALUES (4, 1, 1, 300000, CAST(N'2021-12-14 16:38:13.9682138' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[HoaDons] OFF
SET IDENTITY_INSERT [dbo].[KhachHangs] ON 

INSERT [dbo].[KhachHangs] ([Makhachhang], [Tenkhachhang], [Email], [Diachi], [Ngaysinh], [Gioitinh], [Sodienthoai], [Hinh], [Trangthai], [Matkhau]) VALUES (1, N'Son', N'ltsson1111@gmail.com', N'Tp', CAST(N'2021-12-12 13:55:17.3530000' AS DateTime2), 0, N'0975845896', N'string', 1, N'C4CA4238A0B923820DCC509A6F75849B')
INSERT [dbo].[KhachHangs] ([Makhachhang], [Tenkhachhang], [Email], [Diachi], [Ngaysinh], [Gioitinh], [Sodienthoai], [Hinh], [Trangthai], [Matkhau]) VALUES (3, N'Nhat', N'nhatnm111@gmail.com', N'Tp', CAST(N'2001-01-01 00:00:00.0000000' AS DateTime2), 0, N'0147852369', N'string', 1, N'C4CA4238A0B923820DCC509A6F75849B')
INSERT [dbo].[KhachHangs] ([Makhachhang], [Tenkhachhang], [Email], [Diachi], [Ngaysinh], [Gioitinh], [Sodienthoai], [Hinh], [Trangthai], [Matkhau]) VALUES (4, N'Thien', N'Thienvn111@gmail.com', N'Tp', CAST(N'2001-01-01 00:00:00.0000000' AS DateTime2), 0, N'0234568795', N'string', 1, N'C4CA4238A0B923820DCC509A6F75849B')
INSERT [dbo].[KhachHangs] ([Makhachhang], [Tenkhachhang], [Email], [Diachi], [Ngaysinh], [Gioitinh], [Sodienthoai], [Hinh], [Trangthai], [Matkhau]) VALUES (5, N'Duc', N'Duclq111@gmail.com', N'Tp', CAST(N'2001-01-01 00:00:00.0000000' AS DateTime2), 0, N'0687459863', N'string', 1, N'C4CA4238A0B923820DCC509A6F75849B')
SET IDENTITY_INSERT [dbo].[KhachHangs] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPhams] ON 

INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (1, N'Áo Jeans')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (2, N'Áo Phông Stype Rách')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (3, N'Áo Phông Tay Dài')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (4, N'Quần Chinos ')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (5, N'Quần Jeans')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (6, N'Quần Short')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (7, N'Áo Sơ Mi')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (8, N'Áo Phông')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (9, N'Áo Hoodie')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (10, N'Quần Tây')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (11, N'Quần Jogger')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (12, N'Quần KaKi')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (13, N'Quần Baggy')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (14, N'Áo Gile')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (15, N'Áo form dài')
INSERT [dbo].[LoaiSanPhams] ([Maloai], [Tenloai]) VALUES (16, N'Quần Suông Trouser')
SET IDENTITY_INSERT [dbo].[LoaiSanPhams] OFF
SET IDENTITY_INSERT [dbo].[QuanTris] ON 

INSERT [dbo].[QuanTris] ([Maquantri], [Taikhoan], [Hoten], [Matkhau]) VALUES (1, N'son@gmail.com', N'LeSon', N'C4CA4238A0B923820DCC509A6F75849B')
INSERT [dbo].[QuanTris] ([Maquantri], [Taikhoan], [Hoten], [Matkhau]) VALUES (2, N'son1@gmail.com', N'SonLe', N'1')
INSERT [dbo].[QuanTris] ([Maquantri], [Taikhoan], [Hoten], [Matkhau]) VALUES (3, N'nhat@gmail.com', N'Nhat', N'C4CA4238A0B923820DCC509A6F75849B')
SET IDENTITY_INSERT [dbo].[QuanTris] OFF
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (1, 1, N'Quần Chino Dáng Slim Fit', 4, 10, 599000, N'v1639922295/eu8gudntbiqv67rwoasm.webp', 10001, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 50, N'Sự vừa vặn cũng như form dáng quần là những yếu tố cần thiết nhất trên một chiếc chinos. Tuy là dạng quần dễ phối và kết hợp nhưng bạn cũng nên chọn dáng quần chinos phù hợp với hoàn cảnh: đi học/đi làm và đi chơi hay còn gọi là formal và casual.', 1, 1)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (2, 1, N'Quần Chino Skinny Fit Co Giãn 2 Chiều', 4, 10, 799000, N'v1639922326/apindj2cheh9go7oqnvf.jpg', 10001, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 30, N' Mang lại cảm giác thoải mái không gây căng chặt và dễ cử động ngay cả khi bạn uốn cong đầu gối.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (3, 1, N'Quần Chino Dáng Regular Fit', 4, 10, 799000, N'v1639922368/gc7ymtm24493onzh3zcr.jpg', 10001, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 10, N'Sự vừa vặn cũng như form dáng quần là những yếu tố cần thiết nhất trên một chiếc chinos. Tuy là dạng quần dễ phối và kết hợp nhưng bạn cũng nên chọn dáng quần chinos phù hợp với hoàn cảnh: đi học/đi làm và đi chơi hay còn gọi là formal và casual.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (9, 1, N'Quần Chino Dáng Slim Fit', 4, 15, 599000, N'v1639922392/nj8f4pkf72qibxejtisf.jpg', 10001, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 0, N'Sự vừa vặn cũng như form dáng quần là những yếu tố cần thiết nhất trên một chiếc chinos. Tuy là dạng quần dễ phối và kết hợp nhưng bạn cũng nên chọn dáng quần chinos phù hợp với hoàn cảnh: đi học/đi làm và đi chơi hay còn gọi là formal và casual.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (11, 1, N'Quần Chino Dáng Slim Fit', 4, 20, 599000, N'v1639922613/f380kpd8m2gl8gww9khd.jpg', 10001, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 0, N'Sự vừa vặn cũng như form dáng quần là những yếu tố cần thiết nhất trên một chiếc chinos. Tuy là dạng quần dễ phối và kết hợp nhưng bạn cũng nên chọn dáng quần chinos phù hợp với hoàn cảnh: đi học/đi làm và đi chơi hay còn gọi là formal và casual.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (13, 1, N'Quần Chino Dáng Slim Fit', 4, 12, 599000, N'v1639922625/wovnbiy5wadvtaayooo6.jpg', 10001, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 0, N'Sự vừa vặn cũng như form dáng quần là những yếu tố cần thiết nhất trên một chiếc chinos. Tuy là dạng quần dễ phối và kết hợp nhưng bạn cũng nên chọn dáng quần chinos phù hợp với hoàn cảnh: đi học/đi làm và đi chơi hay còn gọi là formal và casual.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (16, 1, N'Quần jean nữ Nút Túi Dây kéo màu trơn', 5, 20, 420000, N'v1639922688/xsypayjgmww3goyekgmr.webp', 10002, CAST(N'2021-12-19 12:08:46.3270000' AS DateTime2), 0, N'Quần ống rộng và có dây kéo tích hợp', 1, 1)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (17, 1, N'Quần jean nữ Nút Túi Hem thô Dây kéo màu trơn', 5, 14, 484000, N'v1639922702/x8evff8x1typjd4l2bbd.webp', 12001, CAST(N'2021-12-19 00:00:00.0000000' AS DateTime2), 10, N'	Hem thô, Nút, Túi, Dây kéo, quần ống rộng, Dây kéo tích hợp, Vòng eo cao.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (18, 1, N'Quần jean nữ Nút Đắp vá Túi Dây kéo Denim mùa giặt màu trơn', 5, 13, 474000, N'v1639922716/ypkkoueafc05qjeuilui.webp', 18001, CAST(N'2021-12-19 00:00:00.0000000' AS DateTime2), 30, N'Đắp vá, Nút, Túi, Dây kéo, Denim mùa giặt, quần ống rộng, Dây kéo tích hợp', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (19, 1, N'Quần jean Nút màu trơn', 5, 18, 473000, N'v1639922738/yvwlc9nkhq1ozd3vr5vw.webp', 18701, CAST(N'2021-12-19 00:00:00.0000000' AS DateTime2), 0, N'Nút, Túi, Dây kéo', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (20, 1, N'Quần jean Túi Dây kéo màu trơn', 5, 19, 406000, N'v1639922764/jiby5ahd5v2ndomjc36t.webp', 12476, CAST(N'2021-12-19 00:00:00.0000000' AS DateTime2), 0, N'Túi, Dây kéo, Chân thẳng', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (21, 1, N'Quần Short Nam Thời Trang Kiểu Dáng Tây Âu Chất Liệu Vải Tuyết Mưa Co Dãn Tốt Không Nhăn Và Bám Bụi', 6, 14, 87000, N'v1639923178/phdjawkogot5zkrannnj.jpg', 15558, CAST(N'2021-12-19 00:00:00.0000000' AS DateTime2), 0, N'Quần được may theo form dáng Tây Âu rộng . không ôm sát da rộng thoải mái', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (24, 1, N'Quần Short Thun Umi BOUTON Slim Fit', 6, 13, 300000, N'v1639923193/x7wli35evosfdshxqc1f.jpg', 14579, CAST(N'2021-12-19 00:00:00.0000000' AS DateTime2), 10, N'Nổi bật với chất liệu vải Umi, sự kết hợp giữa các sợi spandex cùng các thành phần tự nhiên nên sở hữu các đặc tính thoáng khí cao', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (26, 1, N'Quần Short Jeans BOUTON Light Blue Skinny', 6, 18, 280000, N'v1639923222/hiy1gczlupj5h7cagoxh.jpg', 44255, CAST(N'2021-12-20 00:00:00.0000000' AS DateTime2), 30, N'Mẫu đợt này bụi & chất lắm nha ae, màu light blue mix đồ khá trẻ trung.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (27, 1, N'Quần Short Nỉ BOUTON Basic', 6, 23, 270000, N'v1639923268/ta7yoo1r4x3rqsdh3vhv.jpg', 14253, CAST(N'2021-12-20 00:00:00.0000000' AS DateTime2), 0, N'Mẫu đợt này bụi & chất lắm nha ae, màu light blue mix đồ khá trẻ trung.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (29, 1, N'Quần Short Tây NOMOUS ESSENTIALS Embroidery', 6, 30, 300000, N'v1639923282/lh7oc3usbczsfebxi7xj.jpg', 47476, CAST(N'2021-12-20 00:00:00.0000000' AS DateTime2), 0, N'Mẫu đợt này bụi & chất lắm nha ae, màu light blue mix đồ khá trẻ trung.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (30, 1, N'Quần Tây Nữ Ống Đứng Công Sở', 10, 5, 549000, N'v1639922838/texpm2pqgn69fc23k3bz.jpg', 48522, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Vải mềm mại, có độ rủ nhất định, không nhăn, không xù lông', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (31, 1, N'Quần Tây Nữ Ống Rộng Lưng Cao Xẻ Gấu', 10, 32, 469000, N'v1639922864/h6o5x4aihcdhhucrkyat.jpg', 54142, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Sản phẩm có độ co giãn tốt, nhẹ và khả năng thấm hút hiệu quả', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (33, 1, N'Quần Tây Nữ Lưng Cao Baggy Thời Trang', 10, 114, 489000, N'v1639922879/trkkwuljqxcbem6rdwqc.jpg', 45858, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Quần vải tương đối nhẹ, thấm hút mồ hôi và nhanh khô', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (36, 1, N'Quần Tây Nam Ống Đứng Nano Melange', 10, 45, 559000, N'v1639922896/crvkbwsy04f3t944ktjf.jpg', 54258, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Vải Nano với thành phần 100% Polyester được dệt theo công nghệ mới', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (37, 1, N'Quần Tây Nam Nano Công Sở Trẻ Trung', 10, 56, 549000, N'v1639922914/xvqfrtguqjmobfo40pnl.jpg', 58243, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 50, N'Bề mặt vải mềm và nhẹ giúp cho khách hàng cảm thấy vô cùng thoải mái', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (38, 1, N'Quần Jogger Dáng Rộng', 11, 45, 999000, N'v1639922957/chmfdrrsjwzxa3zbbti2.webp', 47526, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Thoải mái với dáng rộng, Thắt lưng dây rút và viền co giãn tạo sự thoải mái', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (40, 1, N'Quần Jogger Cotton Dáng Relax', 11, 23, 399000, N'v1639922985/jagfyjexxoki5foycbnx.webp', 74577, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 30, N'Chất liệu vải cotton co giãn được cập nhật với lớp xử lý siêu nhỏ cho cảm giác mềm mại hơn.', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (41, 1, N'QUẦN KAKI LƯNG SỌC QK007 MÀU ĐEN', 12, 41, 445000, N'v1639923009/au0wocxf7ghkencspz1l.jpg', 74256, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Vải kaki sớ mịn bền màu, ít nhăn và thấm hút mồ hôi tốt. Ngoài thành phần chính là cotton bền bỉ', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (43, 1, N'QUẦN KAKI TRƠN CĂN BẢN QK004 MÀU ĐEN', 12, 62, 395000, N'v1639923317/dwunvsqxso2p69y2mtaj.jpg', 75427, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Sớ vải dệt xéo nổi lên khá lạ mắt tạo nên một sản phẩm dày dặn, bền bỉ và ít nhăn', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (44, 1, N'Quần Baggy Tây Nữ Vải Tuyết Mưa Cao Cấp Dày Dặn Đẹp', 13, 71, 240000, N'v1639923055/kdkfyrmqfhatxpuofg2v.jpg', 78546, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Quần Baggy Tây Nữ Vải Tuyết Mưa Cao Cấp Dày Dặn Đẹp', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (46, 1, N'QUẦN BAGGY VẢI', 13, 24, 270000, N'v1639923067/cztcem5qigobpo5cpaof.jpg', 75243, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Thiết kế dáng dài 9 tấc, fom baggy, cạp cao tôn dáng , gọn bụng, E này diện đc quanh năm luôn nè, ko kén người mặc', 1, 0)
INSERT [dbo].[SanPhams] ([Masanpham], [Maquantri], [Tensanpham], [Maloai], [Soluong], [Gia], [Hinh], [Soluotxem], [Ngaynhap], [Giamgia], [Mota], [Trangthai], [Dacbiet]) VALUES (48, 1, N'BANDANA TROUSER - QUẦN BANDANA ỐNG SUÔNG ỐNG RỘNG', 16, 74, 628000, N'v1639923084/r1qgeiprpohzbaafrxsm.jpg', 44546, CAST(N'2021-12-21 00:00:00.0000000' AS DateTime2), 0, N'Quần Bandana với 2 phối màu Blue/ Gold sẽ giúp bạn cực nổi cực chất trên phố với hoạ tiết "iconic" của văn hoá Streetwear - Đúng chất Dân chơi!', 1, 0)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
/****** Object:  Index [IX_ChiaSes_MaKhachHang]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiaSes_MaKhachHang] ON [dbo].[ChiaSes]
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiaSes_MaSanPham]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiaSes_MaSanPham] ON [dbo].[ChiaSes]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDons_Mahoadon]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDons_Mahoadon] ON [dbo].[ChiTietHoaDons]
(
	[Mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDons_Masanpham]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDons_Masanpham] ON [dbo].[ChiTietHoaDons]
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DanhGiaSanPhams_Makhachhang]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_DanhGiaSanPhams_Makhachhang] ON [dbo].[DanhGiaSanPhams]
(
	[Makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DanhGiaSanPhams_Masanpham]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_DanhGiaSanPhams_Masanpham] ON [dbo].[DanhGiaSanPhams]
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDons_Makhachhang]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDons_Makhachhang] ON [dbo].[HoaDons]
(
	[Makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDons_Nguoiquantri]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDons_Nguoiquantri] ON [dbo].[HoaDons]
(
	[Nguoiquantri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPhams_Maloai]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPhams_Maloai] ON [dbo].[SanPhams]
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPhams_Maquantri]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPhams_Maquantri] ON [dbo].[SanPhams]
(
	[Maquantri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_YeuThichs_Makhachhang]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_YeuThichs_Makhachhang] ON [dbo].[YeuThichs]
(
	[Makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_YeuThichs_Masanpham]    Script Date: 12/19/2021 9:26:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_YeuThichs_Masanpham] ON [dbo].[YeuThichs]
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiaSes]  WITH CHECK ADD  CONSTRAINT [FK_ChiaSes_KhachHangs_MaKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHangs] ([Makhachhang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiaSes] CHECK CONSTRAINT [FK_ChiaSes_KhachHangs_MaKhachHang]
GO
ALTER TABLE [dbo].[ChiaSes]  WITH CHECK ADD  CONSTRAINT [FK_ChiaSes_SanPhams_MaSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([Masanpham])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiaSes] CHECK CONSTRAINT [FK_ChiaSes_SanPhams_MaSanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDons_HoaDons_Mahoadon] FOREIGN KEY([Mahoadon])
REFERENCES [dbo].[HoaDons] ([Mahoadon])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_ChiTietHoaDons_HoaDons_Mahoadon]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDons_SanPhams_Masanpham] FOREIGN KEY([Masanpham])
REFERENCES [dbo].[SanPhams] ([Masanpham])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_ChiTietHoaDons_SanPhams_Masanpham]
GO
ALTER TABLE [dbo].[DanhGiaSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaSanPhams_KhachHangs_Makhachhang] FOREIGN KEY([Makhachhang])
REFERENCES [dbo].[KhachHangs] ([Makhachhang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGiaSanPhams] CHECK CONSTRAINT [FK_DanhGiaSanPhams_KhachHangs_Makhachhang]
GO
ALTER TABLE [dbo].[DanhGiaSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaSanPhams_SanPhams_Masanpham] FOREIGN KEY([Masanpham])
REFERENCES [dbo].[SanPhams] ([Masanpham])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGiaSanPhams] CHECK CONSTRAINT [FK_DanhGiaSanPhams_SanPhams_Masanpham]
GO
ALTER TABLE [dbo].[HoaDons]  WITH CHECK ADD  CONSTRAINT [FK_HoaDons_KhachHangs_Makhachhang] FOREIGN KEY([Makhachhang])
REFERENCES [dbo].[KhachHangs] ([Makhachhang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDons] CHECK CONSTRAINT [FK_HoaDons_KhachHangs_Makhachhang]
GO
ALTER TABLE [dbo].[HoaDons]  WITH CHECK ADD  CONSTRAINT [FK_HoaDons_QuanTris_Nguoiquantri] FOREIGN KEY([Nguoiquantri])
REFERENCES [dbo].[QuanTris] ([Maquantri])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDons] CHECK CONSTRAINT [FK_HoaDons_QuanTris_Nguoiquantri]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_LoaiSanPhams_Maloai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[LoaiSanPhams] ([Maloai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_SanPhams_LoaiSanPhams_Maloai]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_QuanTris_Maquantri] FOREIGN KEY([Maquantri])
REFERENCES [dbo].[QuanTris] ([Maquantri])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_SanPhams_QuanTris_Maquantri]
GO
ALTER TABLE [dbo].[YeuThichs]  WITH CHECK ADD  CONSTRAINT [FK_YeuThichs_KhachHangs_Makhachhang] FOREIGN KEY([Makhachhang])
REFERENCES [dbo].[KhachHangs] ([Makhachhang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuThichs] CHECK CONSTRAINT [FK_YeuThichs_KhachHangs_Makhachhang]
GO
ALTER TABLE [dbo].[YeuThichs]  WITH CHECK ADD  CONSTRAINT [FK_YeuThichs_SanPhams_Masanpham] FOREIGN KEY([Masanpham])
REFERENCES [dbo].[SanPhams] ([Masanpham])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuThichs] CHECK CONSTRAINT [FK_YeuThichs_SanPhams_Masanpham]
GO
USE [master]
GO
ALTER DATABASE [r4clothes] SET  READ_WRITE 
GO
