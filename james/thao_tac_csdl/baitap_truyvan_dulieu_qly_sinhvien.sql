USE quanlysinhvien;
-- hien thi tat ca sinh vien
-- SELECT * 
-- FROM `student`;

-- hien thi tat cac sinh vien bat dau bang chu h
-- SELECT *
-- FROM `student`
-- WHERE `StudentName` like 'H%';

-- 	hien thi thong tin lop hoc co tgian  bat dau vao thang 12
-- SELECT *
-- FROM `class`
-- WHERE `startdate` like '%12%';

-- hien thi thong tin mon hoc co credit khoang 3-5
-- SELECT *
-- FROM `subject`
-- WHERE `Credit` BETWEEN 3 AND 5;

-- HIEN THI thay doi lop (class id) cua sinh vien co ten hung
-- SELECT * FROM `STUDENT`;
-- UPDATE student SET classId = 2
-- WHERE studentName = 'Hoa';


-- hien thi du lieu tu sap xep tang dan
-- SELECT studentname, subname, mark
-- from `subject` join `student` join `mark`
-- ORDER BY mark DESC;