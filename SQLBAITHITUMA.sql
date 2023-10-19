Create Database QLlUONG
GO
use QLlUONG
GO

CREATE TABLE TTNV
(
  NVID varchar(8) primary key,
  TENNV nvarchar(25) not null,
)
go

CREATE TABLE TTPHONG
(
  PHONGID varchar(8) primary key ,
  NVID varchar(8) foreign key (NVID) references TTNV(NVID),
)
GO
CREATE TABLE BANGCONG
(
   NGAYCONG float(8) not null,
   NCOLUONG float(8) not null,
   NKOLUONG float(8) not null,
   NVID varchar(8) foreign key (NVID) references TTNV(NVID),
   PHONGID varchar(8) foreign key (PHONGID) references TTPHONG(PHONGID),
)
GO

CREATE TABLE BANGLUONG
(
   LCOBAN float(8) not null,
   LCUNG float(8) not null,
   TLUONG float(8) not null,
   NVID varchar(8) foreign key (NVID) references TTNV(NVID), 
)
GO


INSERT TTNV(
		  NVID,TENNV)
VALUES	('A1',N'Nguyễn Văn A'),
		('A2',N'Lê Thị Bình'),
		('B1',N'Nguyễn Lan'),
		('D1',N'Mai Tuấn Anh'),
		('C1',N'Hà Thị Lan'),
		('C2',N'Lê Tú Chinh '),
		('D2',N'Trần Văn Toàn'),
		('A3',N'Trần Văn Nam'),
		('B2',N'Huỳnh Anh')
GO
INSERT TTPHONG(
		  PHONGID,NVID)
VALUES	(N'IT','A1'),
		(N'IT','A2'),
		(N'HR','B1'),
		(N'HR','D1'),
		(N'HR','C1'),
		(N'SALE','C2'),
		(N'HR','D2'),
		(N'IT','A3'),
		(N'SALE','B2')
GO

INSERT BANGCONG(
		  NGAYCONG,NVID)
VALUES	(N'IT','A1'),
		(N'IT','A2'),
		(N'HR','B1'),
		(N'HR','D1'),
		(N'HR','C1'),
		(N'SALE','C2'),
		(N'HR','D2'),
		(N'IT','A3'),
		(N'SALE','B2')
GO
INSERT BANGLUONG(
		  NGAYCONG,NVID)
VALUES	(N'IT','A1'),
		(N'IT','A2'),
		(N'HR','B1'),
		(N'HR','D1'),
		(N'HR','C1'),
		(N'SALE','C2'),
		(N'HR','D2'),
		(N'IT','A3'),
		(N'SALE','B2')
GO