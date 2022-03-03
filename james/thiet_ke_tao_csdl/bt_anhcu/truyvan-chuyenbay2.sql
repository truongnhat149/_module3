-- use ql_chuyenbay;
-- select * 
-- from nhanvien;
-- select max(luong) as `lương lớn nhất`, ten
-- from nhanvien
-- where luong = (select max(luong) from nhanvien);

	-- Yêu cầu trường cặp giá trị NHANVIEN(LUONG,DIENTHOAI) phải duy nhất, 
	-- not null, sử dụng ràng buộc nào?Viết ràng buộc?

-- KHACH HÀNG CHƯA TỪNG ĐẶT CHỔ
select *
from datcho;
select *
from khachhang;

SELECT kh.makh,
       kh.ten
FROM   khachhang kh
WHERE NOT EXISTS (SELECT *
                   FROM  datcho dc
                   WHERE  kh.makh = dc.makh);
-- Yêu cầu trường cặp giá trị (MaSinhVien,MaMonHoc) (StudentId, MarkId) phải sử dụng ràng buộc nào?Viết ràng buộc?

