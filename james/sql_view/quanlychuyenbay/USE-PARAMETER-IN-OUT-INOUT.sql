 -- Sử Dung tham số OUT
-- 1.Tạo strored procedure để khi nhập vào mã chuyến bay thì 
-- biết được số lượng khách hàng trong mã chuyến bay đó.
 
 use ql_chuyenbay;

 DELIMITER //
 
 CREATE PROCEDURE getCustomerNumber

 (
 in ma_cb VARCHAR(4),
 out SoLuongKhach int
 )
 BEGIN
 
 set SoLuongKhach = (SELECT count(dc.makh) 
 from datcho dc 
 inner join lichbay lb on lb.macb = dc.macb and lb.ngaydi = dc.ngaydi
 WHERE dc.macb = ma_cb);

 end //
 DELIMITER ;
 
 CALL getCustomerNumber('100', @SoLuongKhach);
 select @SoLuongKhach;
 
 -- 2. Tạo stored procedure khi nhập mã loại máy bay thì cho biết 
 -- bao nhiêu nhân viên có thể lái loại máy bay đó
 
 DELIMITER //
 
 CREATE PROCEDURE getEmployeeClassification
 (
 IN MLMB VARCHAR(15),
 OUT NHANVIEN INT
 )
 
 BEGIN
	
SET NHANVIEN = 
(SELECT count(kn.manv)
FROM khanang kn
inner join nhanvien nv on nv.manv = kn.manv
inner join loaimb lmb on lmb.maloai = kn.maloai
where kn.maloai = mlmb and nv.loainv = 1
); 
    
 END //
 
 DELIMITER ;
 
 CALL getEmployeeClassification('A310',@Nhanvien);
 SELECT @Nhanvien;
 
  -- 3. Tạo stored peocedure khi nhập mã nhân viên thì cho ra được 
 -- nhân viên đó đã phục vụ bao nhiêu chuyến bay 
 
 DELIMITER //
 CREATE PROCEDURE employeeServe
 (
 IN ma_nv VARCHAR(15),
 OUT CHUYENBAY INT
 )
 BEGIN
 
 SET CHUYENBAY = 
 (
 SELECT COUNT(pc.MACB)
 FROM phancong pc 
 INNER JOIN nhanvien nv on nv.manv = pc.manv
 INNER JOIN lichbay lb on lb.macb = pc.macb and lb.ngaydi = pc.ngaydi
 WHERE nv.manv = ma_nv
 );
 
 END //
 DELIMITER 
 
 CALL employeeServe('1001',@CHUYENBAY);
 SELECT @CHUYENBAY;
 