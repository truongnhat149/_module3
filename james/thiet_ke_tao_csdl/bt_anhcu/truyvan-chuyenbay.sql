-- SELECT PC.MACB, PC.NGAYDI, SUM(LUONG) AS TONGLUONG
--  FROM LICHBAY LB, NHANVIEN NV, PHANCONG PC
--  WHERE LB.NGAYDI = PC.NGAYDI AND LB.MACB = PC.MACB 
--  GROUP BY PC.MACB, PC.NGAYDI;
--  Với mỗi chuyến bay, cho biết mã chuyến bay,
--  ngày đi, tổng lương của phi hành đoàn. sắp tăng dần tổng lương

 -- với mỗi nhân viên cho biết đã phục vụ chuyến bay nào
 
--  select pc.macb, nv.ten, nv.manv
--  from chuyenbay cb, lichbay lb, phancong pc, nhanvien nv
-- where pc.macb = lb.macb and nv.manv = pc.manv
-- group by nv.ten , nv.manv 
-- order by nv.ten;

-- mỗi chuyến bay cho biết có những nhân viên nào phục vụ
-- với mỗi chuyến bay cho biết đã phục vụ những khách hàng nào
select cb.macb, kh.makh, kh.ten, kh.dchi, kh.dthoai
from khachhang kh, chuyenbay cb, datcho dc, lichbay lb 
where cb.macb = lb.macb and dc.makh = kh.makh
group by cb.macb;

select KH.TEN, KH.DCHI, KH.DTHOAI, cb.macb
 FROM KHACHHANG KH, LOAIMB LMB, LICHBAY LB, DATCHO DC, CHUYENBAY CB
 where (LB.MALOAI = LMB.MALOAI and DC.MAKH = KH.MAKH 
 and DC.MACB = LB.MACB and CB.MACB = LB.MACB )
 group by cb.macb, kh.ten;
 
SELECT chuyenbay(macb)
FROM KHACHHANG KH, LOAIMB LMB, LICHBAY LB, DATCHO DC, CHUYENBAY CB

ON (LB.MALOAI = LMB.MALOAI and DC.MAKH = KH.MAKH 
and DC.MACB = LB.MACB and CB.MACB = LB.MACB )
WHERE condition;

select *
from khachhang;