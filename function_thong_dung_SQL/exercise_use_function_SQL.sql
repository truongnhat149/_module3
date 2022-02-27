-- hien thi cau lenh
-- USE quanlysinhvien;
-- SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
-- FROM student
-- GROUP BY Address;

-- tinh diem trung binh mon hoc cua moi hoc vien
-- USE quanlysinhvien;
-- SELECT S.StudentId, S.StudentName, AVG(Mark) 
-- FROM Student S JOIN Mark M ON S.StudentID = M.StudentId
-- GROUP BY S.StudentId, S.StudentName

-- hien thi hoc vien co diem tb cac mon hon 15
-- USE quanlysinhvien;
-- SELECT S.StudentId, S.StudentName, AVG(Mark)
-- FROM Student S join Mark M on S.StudentId = M.StudentId
-- GROUP BY S.StudentId, S.StudentName

-- hien thi mon hoc lon hon 15
-- USE quanlysinhvien;
-- SELECT S.StudentId, S.StudentName, AVG(Mark)
-- FROM Student S JOIN Mark M on S.StudentId = M.StudentId
-- GROUP BY S.StudentId, S.StudentName
-- HAVING AVG(Mark) > 15;

-- hien thi thong tin hoc vien co diem tb lon nhat

USE quanlysinhvien;
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S JOIN Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(mark) >= ALL(
SELECT AVG(MARK) 
FROM MARK 
GROUP BY Mark.StudentId);