USE quanlysinhvien;
INSERT INTO Class 
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES(2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);
INSERT INTO Student (StudentName, Address, Phone, `Status`, ClassID)
VALUE  ('Hung', 'Ha noi', '0912113113',1,1);
INSERT INTO Student (StudentName, Address, `Status`, ClassID)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, `Status`, ClassID)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO `subject`
VALUE (1, 'CF', 5, 1),
		(2, 'C',6,1),
        (3, 'HDJ', 5, 1),
        (4, 'RDBMS', 10, 1);
INSERT INTO `Mark` (SubID, StudentID, `Mark`,Examtimes) 
VALUE 	
		(1,2,10,2),SubId
        (2,1,12,1);