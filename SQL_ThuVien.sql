CREATE DATABASE ThuVienOnLine
GO
USE ThuVienOnLine
GO

CREATE TABLE NguoiDung
(
UserID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
FullName NVARCHAR(200) NOT NULL,
Ngaysinh Date NOT NULL,
GioiTinh Bit Not Null,
Anh NVARCHAR(Max),
Diachi NVARCHAR(500),
Phone NVARCHAR(20) NOT NULL,
Email NVARCHAR(200) NOT NULL,
Password varchar(26) NOT NULL
)
GO

CREATE TABLE Book
(
BookID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
TheLoai NVARCHAR(500) NOT NULL,
BookName NVARCHAR(500) NOT NULL,
TacGia NVARCHAR(200) NOT NULL,
Anh NVARCHAR(MAX) NOT NULL,
NgayPH DATE NOT NULL,
SoTrang INT Not Null,
Mota NVARCHAR(MAX) NOT NULL
)
GO

SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [TheLoai], [BookName], [TacGia], [Anh], [NgayPH], [SoTrang], [Mota]) VALUES (2, N'Truyện_Tranh', N'Truyện tranh Doraemon', N'Nhật Bản', N'https://doctruyentranh.net.vn/ckfinder/userfiles/images/doc_truyen_tranh_doremon_chap_36_nghe_thuat_lam_truyen_tranh_001.jpg', CAST(N'2022-12-16' AS Date), 45, N'Truyện tranh Doraemon nhật bản')
INSERT [dbo].[Book] ([BookID], [TheLoai], [BookName], [TacGia], [Anh], [NgayPH], [SoTrang], [Mota]) VALUES (3, N'Truyện_Tranh', N'Truyện tranh Conan', N'Nhật Bản', N'https://cf.shopee.vn/file/2b4a3594582b832b864bfde382334397', CAST(N'2022-12-20' AS Date), 35, N'Truyện tranh Conan siêu hay')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([UserID], [FullName], [Ngaysinh], [GioiTinh], [Anh], [Diachi], [Phone], [Email], [Password]) VALUES (1, N'Nguyễn Tiến Dũng', CAST(N'2001-04-06' AS Date), 1, NULL, N'Ha Noi', N'091233445', N'dung@gmail.com', N'123456')
INSERT [dbo].[NguoiDung] ([UserID], [FullName], [Ngaysinh], [GioiTinh], [Anh], [Diachi], [Phone], [Email], [Password]) VALUES (2, N'Nguyễn Công Mạnh', CAST(N'2022-12-14' AS Date), 1, NULL, NULL, N'0346358829', N'manh@gmail.com', N'123456')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO