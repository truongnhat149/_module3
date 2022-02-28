-- hien thi diem cao nhat
-- USE quanlysinhvien;
-- SELECT `subid`, `subname`, `credit`, AVG(credit) 
-- FROM `subject`
-- GROUP BY Subid
-- HAVING AVG(Credit) >= 
-- ALL (SELECT AVG(Credit) 
-- FROM `Subject` 
-- GROUP BY `Subject`.Credit);

-- hien thi mon hoc co diem thi lon nhat
-- SELECT `subject`.subid, subname, credit, AVG(Mark)
-- FROM `subject`
-- JOIN Mark ON `subject`.subid = mark.SubId
-- GROUP BY subid
-- HAVING AVG(Mark) >= 
-- ALL (SELECT AVG(Mark) 
-- FROM MARK 
-- group by mark.subid);

-- hien thi thong tin sinh vien va diem trung binh cua moi sinh vien
-- sap xep theo thu tu diem giam dan
SELECT Student.*, AVG(Mark) 
FROM student
Join Mark
ON Student.studentid = mark.studentid
GROUP BY studentid
order by AVG(mark) DESC;