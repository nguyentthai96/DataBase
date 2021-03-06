USE [master]
GO
/****** Object:  Database [QuanLyCaNhanSinhVien]    Script Date: 05/10/2016 10:00:50 AM ******/
CREATE DATABASE [QuanLyCaNhanSinhVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyCaNhanSinhVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuanLyCaNhanSinhVien.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyCaNhanSinhVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuanLyCaNhanSinhVien_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCaNhanSinhVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyCaNhanSinhVien]
GO
/****** Object:  Table [dbo].[AccountGiangVien]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGiangVien](
	[MaGV] [nchar](10) NOT NULL,
	[PasswordGV] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccountGiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccountSinhVien]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountSinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[PasswordSV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhSachMon]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhSachMon](
	[MaSV] [varchar](10) NOT NULL,
	[MaMon] [varchar](10) NOT NULL,
	[MaHK] [varchar](10) NOT NULL,
 CONSTRAINT [PK_DanhSachMon] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMon] ASC,
	[MaHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiemSo]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiemSo](
	[MaSV] [varchar](10) NOT NULL,
	[MaMon] [varchar](10) NOT NULL,
	[MaHK] [varchar](10) NOT NULL,
	[MaDiem] [varchar](10) NOT NULL,
	[SoDiem] [float] NULL,
	[HeSo] [float] NULL,
	[NgayDiem] [date] NULL,
 CONSTRAINT [PK_DiemSo] PRIMARY KEY CLUSTERED 
(
	[MaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoatDong]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoatDong](
	[MaHD] [varchar](10) NOT NULL,
	[MaMon] [varchar](10) NULL,
	[ChinhKhoa] [bit] NULL,
	[Tiet] [int] NULL,
	[GioBD] [time](7) NULL,
	[GioKT] [time](7) NULL,
	[GhiChuHD] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocKy](
	[MaHK] [varchar](10) NOT NULL,
	[TenHK] [nvarchar](50) NULL,
	[NamHoc] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocPhi]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocPhi](
	[MaSV] [varchar](10) NOT NULL,
	[MaHK] [varchar](10) NOT NULL,
	[SoTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[Khoa_ID] [nchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[Khoa_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[ID_Lop] [nchar](10) NOT NULL,
	[TenLop] [nchar](20) NULL,
	[ID_Khoa] [nchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[ID_Lop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [varchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[SoTinhChi] [int] NULL,
	[SoTiet] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [char](10) NULL,
	[NgaySinh] [nchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[KhoaHoc] [nchar](15) NULL,
	[ID_Lop] [nchar](10) NULL,
	[HinhAnh] [varbinary](50) NULL,
 CONSTRAINT [PK__SinhVien__2725081A247E0C77] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 05/10/2016 10:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[MaSV] [varchar](10) NOT NULL,
	[Thu] [int] NOT NULL,
	[MaHD] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ThoiKhoaBieu] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[Thu] ASC,
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AccountSinhVien]  WITH CHECK ADD  CONSTRAINT [FK__AccountSin__MaSV__1FCDBCEB] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[AccountSinhVien] CHECK CONSTRAINT [FK__AccountSin__MaSV__1FCDBCEB]
GO
ALTER TABLE [dbo].[DanhSachMon]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[DanhSachMon]  WITH CHECK ADD FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[DanhSachMon]  WITH CHECK ADD  CONSTRAINT [FK__DanhSachMo__MaSV__164452B1] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DanhSachMon] CHECK CONSTRAINT [FK__DanhSachMo__MaSV__164452B1]
GO
ALTER TABLE [dbo].[DiemSo]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[DiemSo]  WITH CHECK ADD  CONSTRAINT [FK__DiemSo__MaSV__1B0907CE] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DiemSo] CHECK CONSTRAINT [FK__DiemSo__MaSV__1B0907CE]
GO
ALTER TABLE [dbo].[HocPhi]  WITH CHECK ADD FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[HocPhi]  WITH CHECK ADD  CONSTRAINT [FK__HocPhi__MaSV__239E4DCF] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[HocPhi] CHECK CONSTRAINT [FK__HocPhi__MaSV__239E4DCF]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoa] FOREIGN KEY([ID_Khoa])
REFERENCES [dbo].[Khoa] ([Khoa_ID])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Khoa]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([ID_Lop])
REFERENCES [dbo].[Lop] ([ID_Lop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoatDong] ([MaHD])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_SinhVien]
GO
USE [master]
GO
ALTER DATABASE [QuanLyCaNhanSinhVien] SET  READ_WRITE 
GO
