CREATE DATABASE CINEMA
USE CINEMA
GO


--KHACH_HANG--

CREATE TABLE KHACH_HANG(
    MaKH char(5) PRIMARY KEY,
	SDT  char(10),
    HO_Ten nvarchar(50) NOT NULL, 
	NGAYSINH Date ,
	GIOI bit,
	DIACHI nvarchar(30),	
)
INSERT INTO KHACH_HANG VALUES
('KH01',0326987534,N'Nguyễn Thị Hải','1995-02-03',0,N'Hà Nội'),
('KH02',0356987456,N'Trần Văn Chính','1992-12-24',1,N'Bình Định'),
('KH03',0445987456,N'Lê Thu Bạch Yến','1993-02-15',0,N'TPHCM'),
('KH04',0844558789,'NNgô Phúc Hưng','1997-05-05',1,N'Hải Dương'),
('KH05',0869876478,N'Mai Thùy Anh','2000-01-30',0,N'Hà Nam'),
('KH06',0789631456,N'Lê Hoài An','2001-02-10',0,N'Nam Định'),
('KH07',0321456987,N'Lê Thùy Linh','2002-09-09',0,N'Bắc Ninh'),
('KH08',0566987636,N'Hà Anh Tuấn','1993-08-20',	1,N'Bắc Ninh');

--HOA_DON--
CREATE TABLE HOA_DON(
     MAHD CHAR(10),
	 NGAY_MUA DATE,
	 MAKH CHAR(5),
	 MA_THE CHAR(10),
	 CONSTRAINT HD1 FOREIGN KEY(MA_THE) REFERENCES THE_TV(MA_THE), 
	 CONSTRAINT HD2 FOREIGN KEY(MAKH) REFERENCES KHACH_HANG(MAKH),
);

INSERT INTO HOA_DON VALUES
('HD01','2023-11-15','KH01','T01'),
('HD02','2023-10-08','KH01','T01'),
('HD03','2023-12-01','KH01','T01'),
('HD04','2023-11-08','KH02','T03'),
('HD05','2023-12-19','KH03','T02'),
('HD06','2023-12-12','KH02','T03'),
('HD07','2023-11-10','KH03','T02'),
('HD08','2023-11-09','KH02','T03'),
('HD09','2023-09-08','KH01','T01'),
('HD10','2023-11-17','KH04','T03'),
('HD11','2023-11-10','KH06','T02'),
('HD12','2023-10-09','KH05','T01'),
('HD13','2023-12-14','KH07','T03'),
('HD14','2023-12-17','KH08','T02'),
('HD15','2023-12-10','KH05','T01'),
('HD16','2023-11-05','KH05','T01'),
('HD17','2023-11-08','KH06','T02'),
('HD18','2023-09-01','KH07','T03'),
('HD19','2023-12-29','KH07','T03');




--THE_TV--

CREATE TABLE THE_TV(
   MA_THE char(10) PRIMARY KEY,
   HANGTHE nvarchar(10) CHECK(HANGTHE = 'DONG' OR HANGTHE = 'BAC' OR HANGTHE = 'VANG'),
   GIATHE FLOAT  NOT NULL,
   KM Tinyint NOT NULL,
   THOI_HAN NVARCHAR(10)
)

INSERT INTO THE_TV VALUES 
('T01','DONG',50000,'20','2 năm'),
('T02','BAC',100000,'30','2 năm'),
('T03','VANG',150000,'50','2 năm')

--DONG_CHAM_CONG--

CREATE TABLE DONG_CHAM_CONG(
    MaNV char(5),
	TEN_CA_LAM NVARCHAR(5),
	TG Tinyint,
    BAT_DAU  TIME,
	NGAY DATE,
    KET_THUC  TIME ,
   CONSTRAINT DCC1 FOREIGN KEY(MaNV) REFERENCES NHAN_VIEN(MANV), 
   CONSTRAINT DCC2 FOREIGN KEY(TEN_CA_LAM) REFERENCES CA_LAM(TEN_CA_LAM)
)

INSERT INTO DONG_CHAM_CONG VALUES 
('NV01',N'Sáng','4','07:00:00','2023-08-11','11:00:00'),
('NV01',N'Chiều','8','11:00:00','2023-08-11','19:00:00'),
('NV02',N'Tối','4','19:00:00','2023-08-11','23:00:00'),
('NV03',N'Tối','4','19:00:00','2023-11-08','23:00:00'),
('NV02',N'Sáng','4','07:00:00','2023-12-19','11:00:00'),
('NV01',N'Sáng','4','07:00:00','2023-12-12','11:00:00'),
('NV02',N'Chiều','8','11:00:00','2023-11-10','19:00:00'),
('NV02',N'Sáng','4','07:00:00','2023-11-09','11:00:00'),
('NV03',N'Chiều','8','11:00:00','2023-09-08','19:00:00'),
('NV02',N'Tối','4','19:00:00','2023-12-19','23:00:00');
 
--CA_LAM--

CREATE TABLE CA_LAM(
   TEN_CA_LAM NVARCHAR(5) PRIMARY KEY ,
   TGian Tinyint ,
   LUONG FLOAT
) 

INSERT INTO CA_LAM VALUES 
(N'Sáng','4',25000),
(N'Chiều','8',25000),
(N'Tối','4',28000)

--NHAN_VIEN--

CREATE TABLE NHAN_VIEN(
   MANV char(5) PRIMARY KEY ,
   SDT char(10) NOT NULL,
   DIA_CHI nvarchar(30) NOT NULL,
   HO_TEN nvarchar(50) NOT NULL,
   QUE_QUAN nvarchar(30) NOT NULL,
   GIOI bit,
)  

INSERT INTO NHAN_VIEN VALUES
('NV01',0345678978,N'Hà Nội', N'Trần Anh Tuấn',N'Hà Nội',1),
('NV02',0568458674,N'Hải Phòng', N'Trần Thanh Mai',N'Hải Phòng',0),
('NV03',0456887965,N'TPHCM',N'Trần Thị Thu Thủy',N'TPHCM',0)





--PHIM--

CREATE TABLE PHIM(
    MA_PHIM  char(5) PRIMARY KEY,
	DAO_DIEN nvarchar(30) NOT NULL,
	THOI_LUONG Tinyint NOT NULL,
	PHAN_LOAI  CHAR(3),
	TEN_PHIM nvarchar(30)
)
INSERT INTO PHIM VALUES 
('P01',N'Victor Vũ',132,'T16',N'Người Vợ Cuối Cùng'),
('P02',N'Christopher Nolan',165,'T13',N'Kị Sĩ Bóng Đêm Trỗi Dậy'),
('P03',N'Nia DaCosta',104,'K',N'Biệt Đội Marvel'),
('P04',N'Kou Darachan',94,'T16',N'Ác Mộng Tuổi 21'),
('P05',N'Nam Dae-jung',119,'T16',N'Yêu Lại Vợ Ngầu')




--THE_LOAI_PHIM--

CREATE TABLE THE_LOAI_PHIM(
	MA_PHIM CHAR(5),
	THE_LOAI NVARCHAR(30),
	PRIMARY KEY(MA_PHIM,THE_LOAI),
	CONSTRAINT TLP FOREIGN KEY(MA_PHIM) REFERENCES PHIM(MA_PHIM)
)
INSERT INTO THE_LOAI_PHIM VALUES 
('P01',N'Tình cảm '),
('P02',N'Hành động'),
('P03',N'Tâm lý '),
('P03',N'Lãng mạn'),
('P04',N'Kinh dị'),
('P05',N'Hài hước'),
('P05',N'Lãng mạn')


--LICH_CHIEU--

CREATE TABLE LICH_CHIEU(
	MALC char(5) PRIMARY KEY,
	NGAY_CHIEU DATE ,
	CA_CHIEU CHAR(10) NOT NULL,
	MA_PHIM CHAR(5),
	MA_PHONG CHAR(5),
	CONSTRAINT LC1 FOREIGN KEY(MA_PHIM) REFERENCES PHIM(MA_PHIM),
	CONSTRAINT LC2 FOREIGN KEY(MA_PHONG) REFERENCES PHONG_CHIEU(MA_PHONG),
)
INSERT INTO LICH_CHIEU VALUES
('LC01','2023-11-18','8H-11H','P01','PH01'),
('LC02','2023-10-10','12H-15H','P02','PH03'),
('LC03','2023-12-20','17H-19H','P03','PH05'),
('LC04','2023-12-21','13H-15H','P01','PH02'),
('LC05','2023-11-11','7H-10H','P04','PH02'),
('LC06','2023-11-11','22H-24H','P05','PH04'),
('LC07','2023-09-09','10H-22H','P02','PH01'),
('LC08','2023-12-31','12H-15H','P02','PH02'),
('LC09','2023-11-11','12H-14H','P04','PH01'),
('LC10','2023-12-21','13H-15H','P01','PH03')


--GHE_NGOI--
CREATE TABLE GHE_NGOI(
	MA_GHE CHAR(5) PRIMARY KEY,
	TINH_TRANG NVARCHAR(30) NOT NULL,
	VI_TRI char(30) NOT NULL,
	MA_PHONG char(5) REFERENCES PHONG_CHIEU(MA_PHONG) 
)

INSERT INTO GHE_NGOI VALUES 
('G01',N'Đã đạt','Hàng A','PH01'),
('G02',N'Còn trống','Hàng B','PH01'),
('G03',N'Đã đặt','Hàng B','PH01'),
('G04',N'Còn trống','Hàng B','PH01'),
('G05',N'Đã đặt','Hàng A','PH02'),
('G06',N'Còn trống','Hàng B','PH02'),
('G07',N'Còn trống' ,'Hàng A','PH03'),
('G08',N'Đã đặt','Hàng B','PH03'),
('G09',N'Đã đặt','Hàng B','PH03'),
('G10',N'Còn trống','Hàng A','PH04'),
('G11',N'Đã đặt','Hàng B','PH04'),
('G12',N'Còn trống','Hàng B','PH05'),
('G13',N'Đã đặt','Hàng B','PH05'),
('G14',N'Còn trống','Hàng A','PH05'),
('G15',N'Đã đạt','Hàng A','PH05'),
('G16',N'Còn trống','Hàng A','PH01'),
('G17',N'Còn trống','Hàng A','PH01'),
('G18',N'Còn trống','Hàng B','PH02'),
('G19',N'Còn trống','Hàng A','PH04'),
('G20',N'Còn trống','Hàng B','PH03');








--PHONG_CHIEU--
CREATE TABLE PHONG_CHIEU(
	MA_PHONG CHAR(5) PRIMARY KEY,
	TEN_PHONG NVARCHAR(30) NOT NULL,
	TRANG_THAI NVARCHAR(30) NOT NULL,
)

INSERT INTO PHONG_CHIEU VALUES 
('PH01',N'Phòng 01',N'Đã đầy'),
('PH02',N'Phòng 02',N'Đã đầy'),
('PH03',N'Phòng 03',N'Còn trống'),
('PH04',N'Phòng 04',N'Còn trống'),
('PH05',N'Phòng 05',N'Còn trống')




--VE--

CREATE TABLE VE(
	MA_VE char(5) PRIMARY KEY,
	LOAI_VE NVARCHAR(30) ,
	GIA_VE FLOAT NOT NULL,
	MaLC char(5),
	MaNV char(5),
	MaKH char(5),
	NGAY_MUA Date,
	MAGHE CHAR(5), 
	CONSTRAINT V1 FOREIGN KEY(MaLC) REFERENCES LICH_CHIEU(MALC),
	CONSTRAINT V2 FOREIGN KEY(MaNV) REFERENCES NHAN_VIEN(MANV),
	CONSTRAINT V3 FOREIGN KEY(MaKH) REFERENCES KHACH_HANG(MaKH),
	CONSTRAINT V4 FOREIGN KEY(MAGHE) REFERENCES GHE_NGOI(MA_GHE)
)
ALTER TABLE VE ADD UNIQUE(MaLC,MAGHE)
INSERT INTO VE VALUES 
('MV01','3D',150000,'LC01','NV01','KH01','2023-11-15','G02'), 
('MV02','2D',100000,'LC02','NV01','KH01','2023-10-08','G06'), 
('MV03','3D',150000,'LC03','NV02','KH01','2023-12-01','G07'),
('MV04','2D',100000,'LC01','NV03','KH02','2023-11-08','G04'), 
('MV05','3D',150000,'LC04','NV02','KH03','2023-12-19','G19'), 
('MV06','3D',150000,'LC10','NV01','KH02','2023-12-12','G07'), 
('MV07','2D',100000,'LC09','NV02','KH03','2023-11-10','G02'), 
('MV08','2D',100000,'LC09','NV02','KH02','2023-11-09','G04'), 
('MV09','2D',100000,'LC07','NV03','KH01','2023-09-08','G02'), 
('MV11','3D',150000,'LC01','NV02','KH04','2023-11-17','G16'), 
('MV12','3D',150000,'LC01','NV01','KH06','2023-11-10','G17'), 
('MV13','3D',150000,'LC02','NV02','KH05','2023-10-09','G18'), 
('MV14','3D',150000,'LC03','NV03','KH07','2023-12-14','G20'), 
('MV15','3D',150000,'LC04','NV03','KH08','2023-12-17','G10'), 
('MV16','2D',100000,'LC05','NV02','KH05','2023-12-10','G12'),
('MV17','3D',150000,'LC05','NV02','KH05','2023-11-05','G14'), 
('MV18','3D',150000,'LC06','NV02','KH06','2023-11-08','G06'), 
('MV19','2D',100000,'LC07','NV01','KH07','2023-09-01','G18'), 
('MV20','3D',150000,'LC08','NV01','KH07','2023-12-29','G06'); 






--Hiển thị thông tin của phim
SELECT * FROM PHIM
--Thêm thông tin của bộ phim mới
INSERT INTO PHIM VALUES 
('P06',N'Trần Hữu Tấn',110,'T18',N'Kẻ Ăn Hồn')
SELECT * FROM PHIM
--Sắp xếp phim theo bảng chữ cái
SELECT *
FROM PHIM 
ORDER BY TEN_PHIM ASC
--Sắp xếp phim theo thể loại
SELECT * FROM PHIM A INNER JOIN THE_LOAI_PHIM B ON A.MA_PHIM=B.MA_PHIM
ORDER BY B.THE_LOAI 
--Tìm kiếm phim theo thể loại
SELECT PHIM.MA_PHIM , PHIM.TEN_PHIM 
FROM PHIM INNER JOIN THE_LOAI_PHIM ON PHIM.MA_PHIM = THE_LOAI_PHIM.MA_PHIM
WHERE THE_LOAI_PHIM.THE_LOAI = N'Hành động'

--Hiển thị các lịch chiếu của 1 phim
SELECT * 
FROM LICH_CHIEU INNER JOIN PHIM ON LICH_CHIEU.MA_PHIM = PHIM.MA_PHIM
WHERE PHIM.TEN_PHIM =N'Kị Sĩ Bóng Đêm Trỗi Dậy'

--Thêm lịch chiếu cho 1 phim
INSERT INTO LICH_CHIEU VALUES 
('LC11','2023-11-20','7H-10H','P01','PH04')
SELECT * FROM LICH_CHIEU



--Xóa lịch chiếu bị sai
DELETE FROM VE WHERE MALC='LC04'
DELETE FROM LICH_CHIEU WHERE MALC='LC04';
SELECT*FROM VE

--Sửa lịch chiếu sai cho 1 phim
UPDATE LICH_CHIEU SET CA_CHIEU = '8H-10H', NGAY_CHIEU = '2023-11-20'
WHERE MALC='LC01'
SELECT * FROM LICH_CHIEU


--Tìm kiếm lịch chiếu trong ngày
SELECT * FROM LICH_CHIEU
WHERE NGAY_CHIEU='2023-10-10';



--Hiển thị các phòng chiếu còn trống
SELECT * 
FROM PHONG_CHIEU
WHERE TRANG_THAI = N'Còn trống'

--Hiển thị trạng thái các ghế ngồi trong phòng chiếu
SELECT *
FROM GHE_NGOI

--Hiển thị thông tin của khách hàng
SELECT *
FROM KHACH_HANG

--Tìm kiếm khách hàng theo thời gian mua vé
SELECT A.*
FROM KHACH_HANG A , VE B
WHERE A.MaKH=B.MaKH AND B.NGAY_MUA='2023-11-15';



-- Hiển thị thông tin của nhân viên trong ca làm
SELECT A.*,B.NGAY
FROM NHAN_VIEN A
INNER JOIN DONG_CHAM_CONG B ON A.MANV=B.MaNV
WHERE B.TEN_CA_LAM = N'Tối';

--------------------------------------





-- Sắp xếp nhân viên theo ca làm
SELECT A.MANV,A.HO_TEN,B.TEN_CA_LAM,B.NGAY
FROM NHAN_VIEN A
INNER JOIN DONG_CHAM_CONG B ON A.MANV=B.MaNV
ORDER BY CASE
WHEN TEN_CA_LAM=N'Sáng' then 1
WHEN TEN_CA_LAM=N'Chiều' then 2 
WHEN TEN_CA_LAM=N'Tối' then 3
else 4
END ASC,NGAY ASC;

--------------------------------------


--Số lượng vé bán ra trong ngày/tháng/năm
SELECT COUNT(MA_VE) AS 'So Luong Ve Ban Trong Ngay' FROM VE
WHERE NGAY_MUA='2023-10-08'
GROUP BY NGAY_MUA

--Thống kê số lượng vé đã mua của khách hàng
SELECT B.MaKH,B.HO_Ten,COUNT(A.MA_VE) AS 'So Luong Ve Khach Mua'
FROM VE A,KHACH_HANG B
WHERE A.MaKH=B.MaKH
GROUP BY B.MaKH,B.HO_Ten



--Thống kê số lượng khách hàng của các hạng thẻ thành viên
SELECT THE_TV.MA_THE,THE_TV.HANGTHE,COUNT(HOA_DON.MAHD) AS SL
FROM THE_TV INNER JOIN HOA_DON ON THE_TV.MA_THE = HOA_DON.MA_THE
GROUP BY THE_TV.MA_THE,THE_TV.HANGTHE
