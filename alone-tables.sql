USE [TrungTamNgoaiNguENVN]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[IdNhanVien] [int] NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKyKhoaHoc]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyKhoaHoc](
	[IdHocVien] [int] NOT NULL,
	[IdKhoaHoc] [int] NOT NULL,
	[DaDangKy] [int] NOT NULL,
 CONSTRAINT [PK_DangKyKhoaHoc] PRIMARY KEY CLUSTERED 
(
	[IdHocVien] ASC,
	[IdKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKyThi]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyThi](
	[IdKyThi] [int] NOT NULL,
	[IdHocVien] [int] NOT NULL,
	[DaDangKy] [int] NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_DangKyThi] PRIMARY KEY CLUSTERED 
(
	[IdKyThi] ASC,
	[IdHocVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocVien]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HocVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[NgayBatDau] [date] NULL,
	[ChuDe] [int] NOT NULL,
	[Khoa] [int] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KyThi]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyThi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[ThoiGianThi] [datetime] NOT NULL,
	[DiaDiem] [nvarchar](50) NOT NULL,
	[SoLuongDuThi] [int] NULL,
 CONSTRAINT [PK_KyThi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichHoc]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichHoc](
	[IdKhoaHoc] [int] NOT NULL,
	[BuoiHoc] [int] NOT NULL,
	[ThoiGianHoc] [datetime] NULL,
	[PhongHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_LichHoc] PRIMARY KEY CLUSTERED 
(
	[IdKhoaHoc] ASC,
	[BuoiHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Luong] [money] NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[VaiTro] [int] NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanHoiHocVien]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoiHocVien](
	[IdHocVien] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhanHoiHocVien] PRIMARY KEY CLUSTERED 
(
	[IdHocVien] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyenHan]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenHan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QuyenHan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [varchar](50) NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
	[LastLogin] [datetime] NULL,
	[QuyenHan] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoanNhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongBaoKhoaHoc]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaoKhoaHoc](
	[IdKhoaHoc] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[NoiDung] [nvarchar](255) NULL,
 CONSTRAINT [PK_ThongBaoKhoaHoc] PRIMARY KEY CLUSTERED 
(
	[IdKhoaHoc] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 6/21/2015 4:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([Id], [Ten], [IdNhanVien]) VALUES (1, N'TOEFL', 6)
INSERT [dbo].[ChuDe] ([Id], [Ten], [IdNhanVien]) VALUES (2, N'TOEIC', 6)
INSERT [dbo].[ChuDe] ([Id], [Ten], [IdNhanVien]) VALUES (3, N'IELTS', 8)
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
INSERT [dbo].[DangKyKhoaHoc] ([IdHocVien], [IdKhoaHoc], [DaDangKy]) VALUES (1, 1, 0)
INSERT [dbo].[DangKyKhoaHoc] ([IdHocVien], [IdKhoaHoc], [DaDangKy]) VALUES (1, 2, 1)
INSERT [dbo].[DangKyKhoaHoc] ([IdHocVien], [IdKhoaHoc], [DaDangKy]) VALUES (1, 3, 1)
INSERT [dbo].[DangKyKhoaHoc] ([IdHocVien], [IdKhoaHoc], [DaDangKy]) VALUES (2, 3, 1)
INSERT [dbo].[DangKyKhoaHoc] ([IdHocVien], [IdKhoaHoc], [DaDangKy]) VALUES (4, 1, 1)
INSERT [dbo].[DangKyThi] ([IdKyThi], [IdHocVien], [DaDangKy], [Diem]) VALUES (1, 1, 1, 300)
INSERT [dbo].[DangKyThi] ([IdKyThi], [IdHocVien], [DaDangKy], [Diem]) VALUES (1, 2, 1, NULL)
INSERT [dbo].[DangKyThi] ([IdKyThi], [IdHocVien], [DaDangKy], [Diem]) VALUES (4, 1, 1, 700)
INSERT [dbo].[DangKyThi] ([IdKyThi], [IdHocVien], [DaDangKy], [Diem]) VALUES (4, 2, 1, 500)
INSERT [dbo].[DangKyThi] ([IdKyThi], [IdHocVien], [DaDangKy], [Diem]) VALUES (5, 1, 1, 10)
INSERT [dbo].[DangKyThi] ([IdKyThi], [IdHocVien], [DaDangKy], [Diem]) VALUES (5, 2, 1, 8.5)
SET IDENTITY_INSERT [dbo].[HocVien] ON 

INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (1, N'Lâm Tâm Như', N'Láng hạ hạ', N'012345678', CAST(0x6F230B00 AS Date), NULL, N'hocvien1')
INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (2, N'Lâm Chí Khanh', N'123 Chùa bà', N'123456789', CAST(0xCC390B00 AS Date), NULL, N'hocvien2')
INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (3, N'Lâm Tâm Như', N'456 Thiền viện', N'123456789', CAST(0xC03A0B00 AS Date), NULL, N'hocvien3')
INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (4, N'Lâm Chí', N'147 Ba đình', N'123456789', CAST(0x953B0B00 AS Date), NULL, N'hocvien4')
INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (5, N'Lâm Chí', N'123123123', N'321545465', CAST(0x73390B00 AS Date), NULL, N'hocvien5')
INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (6, N'huynhlong', N'123123', N'321231321', CAST(0xFF3A0B00 AS Date), NULL, N'hocvien6')
INSERT [dbo].[HocVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh], [TaiKhoan]) VALUES (7, N'dskjfsdkljflk', N'sljfklsdj', N'1231231', CAST(0x73390B00 AS Date), NULL, N'hocvien8')
SET IDENTITY_INSERT [dbo].[HocVien] OFF
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([Id], [Ten], [NgayBatDau], [ChuDe], [Khoa], [NgayKetThuc]) VALUES (1, N'Chuyên đề thi TOEFL trên 501', CAST(0xEA390B00 AS Date), 1, 2015, CAST(0x0E3A0B00 AS Date))
INSERT [dbo].[KhoaHoc] ([Id], [Ten], [NgayBatDau], [ChuDe], [Khoa], [NgayKetThuc]) VALUES (2, N'Chuyên đề thi TOEFL trên 600', CAST(0x033A0B00 AS Date), 1, 2015, CAST(0x223A0B00 AS Date))
INSERT [dbo].[KhoaHoc] ([Id], [Ten], [NgayBatDau], [ChuDe], [Khoa], [NgayKetThuc]) VALUES (3, N'Chuyên đề thi TOEIC trên 800', CAST(0x2C3A0B00 AS Date), 2, 2016, CAST(0x4B3A0B00 AS Date))
INSERT [dbo].[KhoaHoc] ([Id], [Ten], [NgayBatDau], [ChuDe], [Khoa], [NgayKetThuc]) VALUES (9, N'Test', CAST(0xEB390B00 AS Date), 1, 2015, CAST(0x0A3A0B00 AS Date))
INSERT [dbo].[KhoaHoc] ([Id], [Ten], [NgayBatDau], [ChuDe], [Khoa], [NgayKetThuc]) VALUES (11, N'test 2', CAST(0x133A0B00 AS Date), 1, 0, CAST(0x223A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
SET IDENTITY_INSERT [dbo].[KyThi] ON 

INSERT [dbo].[KyThi] ([Id], [Ten], [ThoiGianThi], [DiaDiem], [SoLuongDuThi]) VALUES (1, N'TOELF 3000', CAST(0x0000A4CE00000000 AS DateTime), N'Trung tâm 2', NULL)
INSERT [dbo].[KyThi] ([Id], [Ten], [ThoiGianThi], [DiaDiem], [SoLuongDuThi]) VALUES (3, N'TOELF 2000', CAST(0x0000A4DB00000000 AS DateTime), N'Trung tâm 1', NULL)
INSERT [dbo].[KyThi] ([Id], [Ten], [ThoiGianThi], [DiaDiem], [SoLuongDuThi]) VALUES (4, N'TOELF 1000', CAST(0x0000A4B00128A180 AS DateTime), N'Trung tâm 0', NULL)
INSERT [dbo].[KyThi] ([Id], [Ten], [ThoiGianThi], [DiaDiem], [SoLuongDuThi]) VALUES (5, N'TOEIC 800', CAST(0x0000A4AC00F05370 AS DateTime), N'Trung tâm 0', NULL)
SET IDENTITY_INSERT [dbo].[KyThi] OFF
INSERT [dbo].[LichHoc] ([IdKhoaHoc], [BuoiHoc], [ThoiGianHoc], [PhongHoc]) VALUES (1, 1, CAST(0x0000A4C30128A180 AS DateTime), N'F25')
INSERT [dbo].[LichHoc] ([IdKhoaHoc], [BuoiHoc], [ThoiGianHoc], [PhongHoc]) VALUES (1, 2, CAST(0x0000A4910140CD00 AS DateTime), N'F23')
INSERT [dbo].[LichHoc] ([IdKhoaHoc], [BuoiHoc], [ThoiGianHoc], [PhongHoc]) VALUES (1, 3, CAST(0x0000A4B100F42BD0 AS DateTime), N'F30')
INSERT [dbo].[LichHoc] ([IdKhoaHoc], [BuoiHoc], [ThoiGianHoc], [PhongHoc]) VALUES (1, 5, CAST(0x0000A4B700DF9260 AS DateTime), N'cccccc')
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [Luong], [NgaySinh], [GioiTinh], [VaiTro], [TaiKhoan]) VALUES (6, N'Huỳnh Thanh Phong', N'24/3 Láng Hạ', N'19761235', 5000000.0000, CAST(0x33050B00 AS Date), N'Nam', 1, N'test')
INSERT [dbo].[NhanVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [Luong], [NgaySinh], [GioiTinh], [VaiTro], [TaiKhoan]) VALUES (7, N'Lâm Chí Khanh', N'181818', N'123123123', 6000000.0000, CAST(0x223A0B00 AS Date), N'Nữ', 1, N'nhanvien7')
INSERT [dbo].[NhanVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [Luong], [NgaySinh], [GioiTinh], [VaiTro], [TaiKhoan]) VALUES (8, N'Lương Tâm', N'123123', N'123890123', 100000.0000, CAST(0x89390B00 AS Date), N'Nam', 1, N'nhanvien8')
INSERT [dbo].[NhanVien] ([Id], [HoTen], [DiaChi], [SoDienThoai], [Luong], [NgaySinh], [GioiTinh], [VaiTro], [TaiKhoan]) VALUES (10, N'La Hán Long', N'1231165', N'321321321', 0.0000, CAST(0x063A0B00 AS Date), N'Nam', 1, N'admin')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[PhanHoiHocVien] ([IdHocVien], [ThoiGian], [NoiDung]) VALUES (1, CAST(0x0000A48D005338B0 AS DateTime), N'Em rất thích cách ở đây hướng dẫn học sinh Em rất thích cách ở đây hướng dẫn học sinh Em rất thích cách ở đây hướng dẫn học sinh')
INSERT [dbo].[PhanHoiHocVien] ([IdHocVien], [ThoiGian], [NoiDung]) VALUES (1, CAST(0x0000A4B100000000 AS DateTime), N'Em thích rất nhiều')
SET IDENTITY_INSERT [dbo].[QuyenHan] ON 

INSERT [dbo].[QuyenHan] ([Id], [Ten]) VALUES (1, N'Học viên')
INSERT [dbo].[QuyenHan] ([Id], [Ten]) VALUES (2, N'Nhân viên')
INSERT [dbo].[QuyenHan] ([Id], [Ten]) VALUES (3, N'Giám đốc')
INSERT [dbo].[QuyenHan] ([Id], [Ten]) VALUES (4, N'Quản trị')
SET IDENTITY_INSERT [dbo].[QuyenHan] OFF
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'admin', N'4297f44b13955235245b2497399d7a93', NULL, 4)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien1', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien2', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien3', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien4', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien5', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien6', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'hocvien8', N'4297f44b13955235245b2497399d7a93', NULL, 1)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'nhanvien7', N'4297f44b13955235245b2497399d7a93', NULL, 2)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'nhanvien8', N'4297f44b13955235245b2497399d7a93', NULL, 3)
INSERT [dbo].[TaiKhoan] ([Id], [MatKhau], [LastLogin], [QuyenHan]) VALUES (N'test', N'4297f44b13955235245b2497399d7a93', NULL, 2)
INSERT [dbo].[ThongBaoKhoaHoc] ([IdKhoaHoc], [ThoiGian], [NoiDung]) VALUES (1, CAST(0x0000A4B5011B1C6F AS DateTime), N'chào các bạn')
INSERT [dbo].[ThongBaoKhoaHoc] ([IdKhoaHoc], [ThoiGian], [NoiDung]) VALUES (1, CAST(0x0000A4B50137E5CE AS DateTime), N'Hello')
INSERT [dbo].[ThongBaoKhoaHoc] ([IdKhoaHoc], [ThoiGian], [NoiDung]) VALUES (1, CAST(0x0000A4D100004650 AS DateTime), N'Không được tới trễ')
INSERT [dbo].[ThongBaoKhoaHoc] ([IdKhoaHoc], [ThoiGian], [NoiDung]) VALUES (1, CAST(0x0000A4D100C5C100 AS DateTime), N'Các bạn phải tới sớm trước giờ học')
SET IDENTITY_INSERT [dbo].[VaiTro] ON 

INSERT [dbo].[VaiTro] ([Id], [Ten]) VALUES (1, N'Nhân viên')
INSERT [dbo].[VaiTro] ([Id], [Ten]) VALUES (2, N'Quản trị')
INSERT [dbo].[VaiTro] ([Id], [Ten]) VALUES (3, N'Giám đốc')
SET IDENTITY_INSERT [dbo].[VaiTro] OFF
ALTER TABLE [dbo].[ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_ChuDe_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[ChuDe] CHECK CONSTRAINT [FK_ChuDe_NhanVien]
GO
ALTER TABLE [dbo].[DangKyKhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_DangKyKhoaHoc_HocVien] FOREIGN KEY([IdHocVien])
REFERENCES [dbo].[HocVien] ([Id])
GO
ALTER TABLE [dbo].[DangKyKhoaHoc] CHECK CONSTRAINT [FK_DangKyKhoaHoc_HocVien]
GO
ALTER TABLE [dbo].[DangKyKhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_DangKyKhoaHoc_KhoaHoc] FOREIGN KEY([IdKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([Id])
GO
ALTER TABLE [dbo].[DangKyKhoaHoc] CHECK CONSTRAINT [FK_DangKyKhoaHoc_KhoaHoc]
GO
ALTER TABLE [dbo].[DangKyThi]  WITH CHECK ADD  CONSTRAINT [FK_DangKyThi_HocVien] FOREIGN KEY([IdHocVien])
REFERENCES [dbo].[HocVien] ([Id])
GO
ALTER TABLE [dbo].[DangKyThi] CHECK CONSTRAINT [FK_DangKyThi_HocVien]
GO
ALTER TABLE [dbo].[DangKyThi]  WITH CHECK ADD  CONSTRAINT [FK_DangKyThi_KyThi] FOREIGN KEY([IdKyThi])
REFERENCES [dbo].[KyThi] ([Id])
GO
ALTER TABLE [dbo].[DangKyThi] CHECK CONSTRAINT [FK_DangKyThi_KyThi]
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD  CONSTRAINT [FK_HocVien_TaiKhoan] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[HocVien] CHECK CONSTRAINT [FK_HocVien_TaiKhoan]
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_KhoaHoc_ChuDe] FOREIGN KEY([ChuDe])
REFERENCES [dbo].[ChuDe] ([Id])
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [FK_KhoaHoc_ChuDe]
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_KhoaHoc] FOREIGN KEY([IdKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([Id])
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_KhoaHoc]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_VaiTro] FOREIGN KEY([VaiTro])
REFERENCES [dbo].[VaiTro] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_VaiTro]
GO
ALTER TABLE [dbo].[PhanHoiHocVien]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoiHocVien_HocVien] FOREIGN KEY([IdHocVien])
REFERENCES [dbo].[HocVien] ([Id])
GO
ALTER TABLE [dbo].[PhanHoiHocVien] CHECK CONSTRAINT [FK_PhanHoiHocVien_HocVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_QuyenHan] FOREIGN KEY([QuyenHan])
REFERENCES [dbo].[QuyenHan] ([Id])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_QuyenHan]
GO
ALTER TABLE [dbo].[ThongBaoKhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_ThongBaoKhoaHoc_KhoaHoc] FOREIGN KEY([IdKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([Id])
GO
ALTER TABLE [dbo].[ThongBaoKhoaHoc] CHECK CONSTRAINT [FK_ThongBaoKhoaHoc_KhoaHoc]
GO
