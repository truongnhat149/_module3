-- Với mỗi máy bay, cho biết tổng số lượng khách hàng đã phục vụ.
use ql_chuyenbay;
SELECT lb.macb , COUNT(distinct dc.makh) soluongkhach
FROM datcho dc, khachhang kh, lichbay lb
where dc.macb = lb.macb and dc.ngaydi = lb.ngaydi
group by lb.macb, lb.ngaydi;

-- VỚI MỖI chuyến bay, cho biết những phi công nào phục vụ

 SELECT DISTINCT LB.MACB, NV.TEN
 FROM NHANVIEN NV, PHANCONG PC, LICHBAY LB
 WHERE   (NV.LOAINV = 1) AND PC.MACB = LB.MACB 
 GROUP BY LB.MACB, NV.MANV;
 
-- với mỗi khách hàng, cho biết sô lần đã đặt chổ
 SELECT DC.MACB, DC.NGAYDI, COUNT(DC.MACB) AS `SO LAN DAT CHO`
 FROM LICHBAY LB, DATCHO DC, KHACHHANG KH
 WHERE DC.MACB = LB.MACB AND DC.NGAYDI = LB.NGAYDI AND DC.MAKH = KH.MAKH
 GROUP BY DC.MACB, DC.NGAYDI
