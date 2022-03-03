use ql_chuyenbay;
CREATE VIEW QL_CHUYENBAY
AS SELECT * FROM KHACHHANG;
--   Cho biết mã những chuyến bay đã bay tất 
-- cả các máy bay của hãng “Boeing”.
SELECT maloai
FROM LOAIMB
WHERE HANGSX = 'Boeing';
select *
from loaimb;

-- Q52.  Cho biết mã và tên phi công có khả năng lái tất cả các máy bay của hãng “Airbus”.
SELECT DISTINCT NV.MANV, NV.TEN
FROM NHANVIEN NV, LOAIMB LMB
WHERE LOAINV = 1 AND HANGSX = 'Airbus';

SELECT *
FROM NHANVIEN;

-- Q53.   Cho biết tên nhân viên (không phải là phi công) được phân công bay vào tất cả các chuyến bay có mã 100.
SELECT DISTINCT NV.TEN
FROM NHANVIEN NV, PHANCONG PC
WHERE PC.MACB = 100 AND NOT NV.LOAINV = 1;

-- 54.  Cho biết ngày đi nào mà có tất cả các loại máy bay của hãng “Boeing” tham gia.
-- GENDER TẤT CẢ RA ĐỂ XEM THỬ CÓ ĐÚNG DATA KHÔNG?
SELECT *
FROM LICHBAY;
SELECT *
FROM LOAIMB;
SELECT *
FROM MAYBAY;
-- GENDER 
SELECT DISTINCT LB.NGAYDI, LB.SOHIEU, LMB.HANGSX
FROM LICHBAY LB, LOAIMB LMB
WHERE LMB.HANGSX = 'Boeing';

-- 55.  Cho biết loại máy bay của hãng “Boeing” nào có tham gia vào tất cả các ngày đi
SELECT DISTINCT LMB.HANGSX AS `lOẠI MÁY BAY`, LB.NGAYDI, LB.SOHIEU
FROM LOAIMB LMB, LICHBAY LB
WHERE LMB.HANGSX = 'Boeing';

-- 56. Cho biết mã và tên các khách hàng có đặt chổ trong tất cả các ngày từ 2000-10-31 đến2000-1-1
select *
from lichbay;
select *
from datcho;
SELECT DISTINCT KH.MAKH, KH.TEN, DC.NGAYDI
FROM KHACHHANG KH, DATCHO DC
WHERE DC.NGAYDI BETWEEN '2000-1-1' AND '2000-10-31';

-- Cho biết mã và tên phi công không có khả năng lái được tất cả các máy bay của hãng “Airbus”
SELECT *
FROM KHANANG;
SELECT *
FROM NHANVIEN;
SELECT DISTINCT Nv.MANV , Nv.TEN
FROM NHANVIEN NV, KHANANG KN
WHERE NV.LOAINV = 1 ;


-- 58.  Cho biết sân bay nào đã có tất cả các loại máy bay của hãng “Boeing” xuất phát.