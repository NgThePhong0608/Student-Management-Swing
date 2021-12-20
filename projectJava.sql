USE [master]
GO

CREATE DATABASE [QLTH]

GO
USE [QLTH]
GO

/****** Object:  Table [dbo].[tblChuyenNganh]  ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblChuyenNganh](
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldTenChuyenNganh] [nvarchar](30) NOT NULL,
	[fldMaKhoa] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dboChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[fldMaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblDiem]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDiem](
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldDiemTK] [nvarchar](10) NOT NULL,
	[fldDiemGK] [nvarchar](3) NOT NULL,
	[fldDiemCK] [nvarchar](3) NOT NULL,
	[fldDiemTB] [nvarchar](3) NOT NULL,
	[fldXepLoai] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblGiaoVien]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiaoVien](
	[fldMaGV] [nvarchar](10) NOT NULL,
	[fldTenGV] [nvarchar](50) NOT NULL,
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldNgaySinh] [nvarchar](10) NOT NULL,
	[fldGioiTinh] [nvarchar](10) NOT NULL,
	[fldEmail] [nvarchar](50) NOT NULL,
	[fldDiaChi] [nvarchar](70) NOT NULL,
	[fldSDT] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_tblGiangVien] PRIMARY KEY CLUSTERED 
(
	[fldMaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblHocPhan]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHocPhan](
	[fldMaHP] [nvarchar](10) NOT NULL,
	[fldTenHP] [nvarchar](50) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldTenKhoa] [nvarchar](50) NOT NULL,
	[fldHocPhanYeuCau] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblHocPhan] PRIMARY KEY CLUSTERED 
(
	[fldMaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhoa]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldTenKhoa] [nvarchar](50) NOT NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblKhoa] PRIMARY KEY CLUSTERED 
(
	[fldMaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblLop]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLop](
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldTenLop] [nvarchar](50) NOT NULL,
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldSiSo] [nvarchar](2) NOT NULL,
	[fldKhoaHoc] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblLop] PRIMARY KEY CLUSTERED 
(
	[fldMaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblLopHP]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopHP](
	[fldMaLHP] [nvarchar](10) NOT NULL,
	[fldMaHP] [nvarchar](10) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldTietHoc] [nvarchar](10) NOT NULL,
	[fldPhongHoc] [nvarchar](10) NOT NULL,
	[fldThu] [nvarchar](10) NOT NULL,
	[fldSiSo] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](10) NOT NULL,
	[fldNamHoc] [nvarchar](10) NOT NULL,
	[fldNgayThi] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblLopHP_1] PRIMARY KEY CLUSTERED 
(
	[fldMaLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblMonHoc]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldTenMH] [nvarchar](30) NOT NULL,
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](1) NOT NULL,
	[fldSoTinChi] [nvarchar](1) NOT NULL,
	[fldHinhThucThi] [nvarchar](20) NOT NULL,
	[fldBatBuoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[fldMaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblNguoiDung]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiDung](
	[fldTenDangNhap] [nvarchar](10) NOT NULL,
	[fldMatKhau] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblNguoiDung] PRIMARY KEY CLUSTERED 
(
	[fldTenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblNguoiQuanLy]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiQuanLy](
	[fldMaNQL] [nvarchar](10) NOT NULL,
	[fldTen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[fldMaNQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblPhieuDangKyDay]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuDangKyDay](
	[fldMaLHP] [nvarchar](10) NOT NULL,
	[fldMaGV] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](10) NOT NULL,
	[fldNamHoc] [nvarchar](10) NOT NULL,
	[fldNgayDangKy] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblPhieuDangKyHoc]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuDangKyHoc](
	[fldMaLHP] [nvarchar](10) NOT NULL,
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](10) NOT NULL,
	[fldNamHoc] [nvarchar](10) NOT NULL,
	[fldNgayDangKy] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldTenSV] [nvarchar](70) NOT NULL,
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldHeDaoTao] [nvarchar](50) NOT NULL,
	[fldNgaySinh] [nvarchar](10) NOT NULL,
	[fldGioiTinh] [nvarchar](10) NOT NULL,
	[fldDiaChi] [nvarchar](100) NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[fldMaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/*** them cac chuyen nganh ***/
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'CNTT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'HTTT', N'Hệ Thống Thông Tin', N'CNTT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'KHDL', N'Khoa Học Dữ Liệu', N'CNTT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'DTVT', N'Điện Tử Viễn Thông', N'DTVT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'VLKT', N'Vật Lý Kỹ Thuật', N'DTVT')

/*** Them diem ***/
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'CNTT1A', N'SV001', N'MH001', N'5', N'5', N'5', N'5', N'D')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'CNTT1A', N'SV002', N'MH002', N'8', N'8', N'8', N'8', N'B')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'HTTT1A', N'SV003', N'MH001', N'8', N'7', N'4', N'5.7', N'C')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'HTTT1A', N'SV004', N'MH003', N'9', N'9', N'9', N'9', N'A')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'DTVT1A', N'SV005', N'MH002', N'5', N'5', N'5', N'5', N'D')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'DTVT1A', N'SV006', N'MH003', N'5.5', N'5.5', N'6.7', N'6.1', N'C')

/*** Them giao vien ***/
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV001', N'Bùi Việt Hà', N'CNTT', N'12/01/1984', N'1', N'x@x.com', N'zxczxc', N'123131313')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV002', N'Phạm Tiến Lâm', N'CNTT', N'01/12/1983', N'1', N'xxxx@xx.com', N'xxxxxx', N'34242424')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV003', N'Nguyễn Tiến Cường', N'DTVT', N'13/11/1984', N'1', N'x@x.com', N'zxczxc', N'132131314')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV004', N'Nguyễn Cảnh Việt', N'VLKT', N'12/09/1983', N'1', N'xxxx@xx.com', N'xxxxxx', N'234242424')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV005', N'Nguyễn Thị Thanh Nhàn', N'VLKT', N'15/04/1984', N'0', N'x@x.com', N'zxczxc', N'345353535')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV006', N'Phạm Quỳnh Chinh', N'DTVT', N'11/02/1983', N'1', N'xxxx@xx.com', N'xxxxxx', N'2424325255')

/*** them hoc phan ***/
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP001', N'Lập trình Web', N'MH001', N'Công Nghệ Thông Tin', N'HP002')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP002', N'Lập Trình Java', N'MH002', N'Công Nghệ Thông Tin', N'')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP003', N'Lập trình C/C++', N'MH003', N'Điện Tử Viễn Thông', N'')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP004', N'Cấu trúc dữ liệu và giải thuật', N'MH006', N'Công Nghệ Thông Tin', N'HP003')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP005', N'Lập trình Python', N'MH004', N'Công Nghệ Thông Tin', N'')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP006', N'Lập Trình Nhúng', N'MH005', N'Vật Lý Kỹ Thuật', N'HP003')

/*** them cac khoa ***/
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'09191231823')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'DTVT', N'Điện Tử Viễn Thông', N'1231123123')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'VLKT', N'Vật Lý Kỹ Thuật', N'1111111111111')

/** them cac lop hoc ***/
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'DTVT65A', N'Điện Tử Viễn Thông 65A', N'DTVT', N'50', N'2020-2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'VLKT65A', N'Vật Lý Kỹ Thuạt 65A', N'VLKT', N'40', N'2020-2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'CNTT65A', N'Công Nghệ Thông Tin 65A', N'CNTT', N'60', N'2020-2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'KHDL65A', N'Khoa Học Dữ Liệu 65A', N'KHDL', N'60', N'2020-2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'HTTT65A', N'Hệ Thống Thông Tin 65A', N'HTTT', N'60', N'2020-2024')

/*** them lich hoc ***/
INSERT INTO tblLopHP (fldMaLHP,fldMaHP, fldMaMH, fldMaKhoa, fldTietHoc, fldPhongHoc, fldThu, fldSiSo, fldHocKy, fldNamHoc, fldNgayThi) VALUES 
('LHP001A', 'HP001', 'MH001', 'CNTT', '1-3','408C2', N'Thứ 3', 55,2, 2021,10-11-2021),
('LHP002A', 'HP002', 'MH002', 'CNTT', '3-5', '408C3', N'Thứ 5', 55, 2, 2021, 10-11-2021),
('LHP003A', 'HP003', 'MH003', 'DTVT', '6-8', '402C1', N'Thứ 2', 55, 2, 2021, 10-11-2021),
('LHP004A', 'HP004', 'MH004', 'CNTT', '9-10', '401C5', N'Thứ 6', 55, 2, 2021, 10-11-2021)

/*** Them lich thi ***/
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH002', N'Lập Trình Java', N'CNTT', N'4', N'3', N'Thi Thực Hành', N'')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH004', N'Lập Trình Python', N'KHDL', N'4', N'3', N'Thi Thực Hành', N'')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH001', N'Lập Trình Web', N'HTTT', N'4', N'3', N'Thi Thực Hành', N'')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH003', N'Lập Trình C/C++', N'DTVT', N'4', N'3', N'Thi Thực Hành', N'Bắt Buộc')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH005', N'Lập Trình Nhúng', N'VLKT', N'4', N'3', N'Thi Thực Hành', N'Bắt Buộc')

/*** them account ***/
/*** them account ***/
INSERT INTO tblNguoiDung (fldTenDangNhap, fldMatKhau) VALUES
('admin', 'admin'),
('GV001', '12345'),
('GV002', '12345'),
('GV003', '12345'),
('SV001', '12345'),
('SV002', '12345'),
('SV003', '12345'),
('SV004', '12345')
INSERT [dbo].[tblNguoiQuanLy] ([fldMaNQL], [fldTen]) VALUES (N'AD001', N'AD001')

/*** them dang ki day, hoc ***/
INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP001A', N'GV001', N'2', N'2021', N'27-10-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP001A', N'SV001', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP001A', N'SV002', N'2', N'2021', N'26-10-2021')

INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP002A', N'GV002', N'2', N'2021', N'27-10-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP002A', N'SV001', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP002A', N'SV003', N'2', N'2021', N'26-10-2021')

INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP003A', N'GV003', N'2', N'2021', N'27-10-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP003A', N'SV003', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP003A', N'SV004', N'2', N'2021', N'26-10-2021')

INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP004A', N'GV004', N'2', N'2021', N'27-10-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP004A', N'SV004', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP004A', N'SV005', N'2', N'2021', N'26-10-2021')

INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP005A', N'GV005', N'2', N'2021', N'27-10-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP005A', N'SV001', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP005A', N'SV005', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP005A', N'SV006', N'2', N'2021', N'26-10-2021')

INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP006A', N'GV006', N'2', N'2021', N'27-10-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP006A', N'SV002', N'2', N'2021', N'06-11-2021')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP006A', N'SV005', N'2', N'2021', N'26-10-2021')

/*** them sinh vien ***/
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV001', N'Nguyễn Thế Phong', N'CNTT65A', N'Đại Học', N'06/08/2001', N'1', N'Hà Nội', N'01663699279')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV002', N'Phùng Phúc Hậu', N'KHDL65A', N'Đại Học', N'5/12/2002', N'1', N'Hà Nội', N'123123123123')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV003', N'Đinh Khả Vy', N'KHDL65A', N'Đại Học', N'12/12/2002', N'0', N'Hà Nam', N'123123123123')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV004', N'Nguyễn Quỳnh Anh', N'KHDL65A', N'Đại Học', N'13/02/2001', N'0', N'Hải Dương', N'123123123123')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV005', N'Nguyễn Thị Minh Anh', N'DTVT65A', N'Đại Học', N'12/08/2001', N'0', N'Hà Nội', N'123123123123')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV006', N'Nguyễn Tất Nghĩa', N'DTVT65A', N'Đại Học', N'13/09/2001', N'1', N'Hà Nội', N'123123123123')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV007', N'Nguyễn Đình Quang', N'CNTT65A', N'Đại Học', N'14/02/2000', N'1', N'Bắc Ninh', N'01663699279')

-- ALTER TABLE [dbo].[tblChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_tblChuyenNganh_tblKhoa] FOREIGN KEY([fldMaKhoa])
-- REFERENCES [dbo].[tblKhoa] ([fldMaKhoa])
-- GO
-- ALTER TABLE [dbo].[tblChuyenNganh] CHECK CONSTRAINT [FK_tblChuyenNganh_tblKhoa]
-- GO
-- ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblSinhVien] FOREIGN KEY([fldMaSV])
-- REFERENCES [dbo].[tblSinhVien] ([fldMaSV])
-- GO
-- ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblSinhVien]
-- GO
-- ALTER TABLE [dbo].[tblHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_tblHocPhan_tblMonHoc] FOREIGN KEY([fldMaMH])
-- REFERENCES [dbo].[tblMonHoc] ([fldMaMH])
-- GO
-- ALTER TABLE [dbo].[tblHocPhan] CHECK CONSTRAINT [FK_tblHocPhan_tblMonHoc]
-- GO
-- ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD  CONSTRAINT [FK_tblLop_tblChuyenNganh1] FOREIGN KEY([fldMaChuyenNganh])
-- REFERENCES [dbo].[tblChuyenNganh] ([fldMaChuyenNganh])
-- GO
-- ALTER TABLE [dbo].[tblLop] CHECK CONSTRAINT [FK_tblLop_tblChuyenNganh1]
-- GO
-- ALTER TABLE [dbo].[tblLopHP]  WITH CHECK ADD  CONSTRAINT [FK_tblLopHP_tblHocPhan] FOREIGN KEY([fldMaHP])
-- REFERENCES [dbo].[tblHocPhan] ([fldMaHP])
-- GO
-- ALTER TABLE [dbo].[tblLopHP] CHECK CONSTRAINT [FK_tblLopHP_tblHocPhan]
-- GO
-- ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD  CONSTRAINT [FK_tblSinhVien_tblLop1] FOREIGN KEY([fldMaLop])
-- REFERENCES [dbo].[tblLop] ([fldMaLop])
-- GO
-- ALTER TABLE [dbo].[tblSinhVien] CHECK CONSTRAINT [FK_tblSinhVien_tblLop1]
-- GO
-- USE [master]
-- GO
-- ALTER DATABASE [QLDKHP] SET  READ_WRITE 
-- GO

ALTER TABLE tblChuyenNganh ADD  CONSTRAINT FK_tblChuyenNganh_tblKhoa FOREIGN KEY(fldMaKhoa)        REFERENCES tblKhoa (fldMaKhoa)
ALTER TABLE tblDiem        ADD  CONSTRAINT FK_tblDiem_tblSinhVien    FOREIGN KEY(fldMaSV)          REFERENCES tblSinhVien (fldMaSV)
ALTER TABLE tblLop         ADD  CONSTRAINT FK_tblLop_tblChuyenNganh1 FOREIGN KEY(fldMaChuyenNganh) REFERENCES tblChuyenNganh(fldMaChuyenNganh)
ALTER TABLE tblLopHP       ADD  CONSTRAINT FK_tblLopHP_tblHocPhan    FOREIGN KEY(fldMaHP)          REFERENCES tblHocPhan (fldMaHP)
ALTER TABLE tblSinhVien    ADD  CONSTRAINT FK_tblSinhVien_tblLop1    FOREIGN KEY(fldMaLop)         REFERENCES tblLop(fldMaLop)
alter table tblGiaoVien    ADD  CONSTRAINT fk_giaovien_chuyennganh   FOREIGN KEY(fldMaChuyenNganh) REFERENCES tblChuyenNganh (fldMaChuyenNganh)
alter table tblHocPhan     ADD  CONSTRAINT fk_hocphan_monhoc         FOREIGN KEY(fldMaMH)          REFERENCES tblMonHoc(fldMaMH)