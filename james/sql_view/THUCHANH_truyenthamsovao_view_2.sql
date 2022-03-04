 use classicmodels;
 
 -- tham số loại in
 DELIMITER //
 CREATE PROCEDURE getCusById
 (IN cusNum INT(11))
 BEGIN
 SELECT *
 FROM CUSTOMERS 
 WHERE customerNumber = cusNum;
 END //
 DELIMITER;
 call getCusById(175);
 call getCusById(11);
 
 -- tham số loại out
 DELIMITER //
 CREATE PROCEDURE GetCustomersCountByCity(
	IN IN_CITY VARCHAR(50),
    OUT total INT
 )
 BEGIN
 SELECT COUNT(customerNumber)
 INTO total
 FROM customers
 WHERE city = in_city;
 END//
 DELIMITER;
 CALL GetCustomersCountByCity('Lyon', @total);
 select @total;
 
 -- tham số loại inout
 DELIMITER //
 CREATE PROCEDURE SetCounter(
 INOUT counter INT,
 IN inc int
 )
 begin
 SET counter = counter + inc;
 END //
 DELIMITER;
 
 SET @counter = 1;
 CALL SetCounter(@counter, 1);
 
 CALL SetCounter(@counter, 2);
 
 CALL SETCOUNTER(@COUNTER, 5);
 
 SELECT @COUNTER;