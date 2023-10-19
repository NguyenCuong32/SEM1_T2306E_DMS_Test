use QLNV
CREATE TABLE NHANVIEN
(
  MaNV varchar(6) primary key,
  TenNV nvarchar(30) not null
  )
  go
  CREATE TABLE PHONG
(
  MaPhong varchar(6) primary key,
  MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv)
  )
  go
  CREATE TABLE NGAYLAMVIEC
  (
 MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
 MaPhong varchar(6) foreign key (MaPhong) references PHONG(MaPhong),
 SoNgayLamViec int not null,
 SoNgayNghiCoLuong int not null,
 SoNgayNghiKhongLuong int not null

  )
  go
   CREATE TABLE LUONG
   (
MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
LuongCoBan int	not null,
LuongCung int	not null,
TongLuong int    not null
)
go
insert into NHANVIEN values ('A1', N'Nguyễn Văn A ')
insert into NHANVIEN values ('A2', N'Lê Thị Bình ')
insert into NHANVIEN values ('B1', N'Nguyễn Lan')
insert into NHANVIEN values ('D1', N'Mai Tuấn Anh')
insert into NHANVIEN values ('C1', N'Hà Thị Lan')
use QLNV
CREATE TABLE NHANVIEN
(
  MaNV varchar(6) primary key,
  TenNV nvarchar(30) not null
  )
  go
  CREATE TABLE PHONG
(
  MaPhong varchar(6) primary key,
  MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv)
  )
  go
  CREATE TABLE NGAYLAMVIEC
  (
 MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
 MaPhong varchar(6) foreign key (MaPhong) references PHONG(MaPhong),
 SoNgayLamViec int not null,
 SoNgayNghiCoLuong int not null,
 SoNgayNghiKhongLuong int not null

  )
  go
   CREATE TABLE LUONG
   (
MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
LuongCoBan int	not null,
LuongCung int	not null,
TongLuong int    not null
)
go
insert into NHANVIEN values ('A1', N'Nguyễn Văn A ')
insert into NHANVIEN values ('A2', N'Lê Thị Bình ')
insert into NHANVIEN values ('B1', N'Nguyễn Lan')
insert into NHANVIEN values ('D1', N'Mai Tuấn Anh')
insert into NHANVIEN values ('C1', N'Hà Thị Lan')
use QLNV
CREATE TABLE NHANVIEN
(
  MaNV varchar(6) primary key,
  TenNV nvarchar(30) not null
  )
  go
  CREATE TABLE PHONG
(
  MaPhong varchar(6) primary key,
  MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv)
  )
  go
  CREATE TABLE NGAYLAMVIEC
  (
 MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
 MaPhong varchar(6) foreign key (MaPhong) references PHONG(MaPhong),
 SoNgayLamViec int not null,
 SoNgayNghiCoLuong int not null,
 SoNgayNghiKhongLuong int not null

  )
  go
   CREATE TABLE LUONG
   (
MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
LuongCoBan int	not null,
LuongCung int	not null,
TongLuong int    not null
)
go
insert into NHANVIEN values ('A1', N'Nguyễn Văn A ')
insert into NHANVIEN values ('A2', N'Lê Thị Bình ')
insert into NHANVIEN values ('B1', N'Nguyễn Lan')
insert into NHANVIEN values ('D1', N'Mai Tuấn Anh')
insert into NHANVIEN values ('C1', N'Hà Thị Lan')
use QLNV
CREATE TABLE NHANVIEN
(
  MaNV varchar(6) primary key,
  TenNV nvarchar(30) not null
  )
  go
  CREATE TABLE PHONG
(
  MaPhong varchar(6) primary key,
  MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv)
  )
  go
  CREATE TABLE NGAYLAMVIEC
  (
 MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
 MaPhong varchar(6) foreign key (MaPhong) references PHONG(MaPhong),
 SoNgayLamViec int not null,
 SoNgayNghiCoLuong int not null,
 SoNgayNghiKhongLuong int not null

  )
  go
   CREATE TABLE LUONG
   (
MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
LuongCoBan int	not null,
LuongCung int	not null,
TongLuong int    not null
)
go
insert into NHANVIEN values ('A1', N'Nguyễn Văn A ')
insert into NHANVIEN values ('A2', N'Lê Thị Bình ')
insert into NHANVIEN values ('B1', N'Nguyễn Lan')
insert into NHANVIEN values ('D1', N'Mai Tuấn Anh')
insert into NHANVIEN values ('C1', N'Hà Thị Lan')
use QLNV
CREATE TABLE NHANVIEN
(
  MaNV varchar(6) primary key,
  TenNV nvarchar(30) not null
  )
  go
  CREATE TABLE PHONG
(
  MaPhong varchar(6) primary key,
  MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv)
  )
  go
  CREATE TABLE NGAYLAMVIEC
  (
 MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
 MaPhong varchar(6) foreign key (MaPhong) references PHONG(MaPhong),
 SoNgayLamViec int not null,
 SoNgayNghiCoLuong int not null,
 SoNgayNghiKhongLuong int not null

  )
  go
   CREATE TABLE LUONG
   (
MaNv varchar(6) foreign key (MaNv) references NHANVIEN(MaNv),
LuongCoBan int	not null,
LuongCung int	not null,
TongLuong int    not null
)
go
insert into NHANVIEN values ('A1', N'Nguyễn Văn A ')
insert into NHANVIEN values ('A2', N'Lê Thị Bình ')
insert into NHANVIEN values ('B1', N'Nguyễn Lan')
insert into NHANVIEN values ('D1', N'Mai Tuấn Anh')
insert into NHANVIEN values ('C1', N'Hà Thị Lan')
insert into NHANVIEN values ('C2', N'Lê Tú Trinh')
insert into NHANVIEN values ('D2', N'Trần Văn Toàn')
insert into NHANVIEN values ('A3', N'Trần Văn Nam')
insert into NHANVIEN values ('B2', N'Huỳnh Anh ')
go
insert into Phong values ('IT', N'A1')
insert into Phong values ('IT', N'A2')
insert into Phong values ('HR', N'B1')
insert into Phong values ('HR', N'D1')
insert into Phong values ('HR', N'C1')
insert into Phong values ('Sale', N'C2')
insert into Phong values ('HR', N'D2')
insert into Phong values ('IT', N'A3')
insert into Phong values ('Sale', N'B2')
go
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
insert into NGAYLAMVIEC values ('A1', N'IT','21','1','0')
insert into NGAYLAMVIEC values ('A1', N'IT','20','1','1')
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
insert into NGAYLAMVIEC values ('A1', N'IT','22','0','0')
go
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
insert into LUONG values ('1000', '22000','20000')
go
















