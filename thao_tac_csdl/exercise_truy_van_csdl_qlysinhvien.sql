USE QuanLySinhVien;
-- SELECT *
-- FROM Student
-- WHERE Status = true; 
-- FROM `Subject`
-- WHERE Credit < 10;

-- buoc 5: hien thi danh sach hoc vien a1 voi join 2 bang 
-- student va class
-- SELECT S.StudentID, S.StudentName, C.ClassName
-- FROM Student S join Class C on S.ClassId = C.ClassID;

-- hien thi danh sach hoc vien a1
-- SELECT S.StudentID, S.StudentName, C.ClassName
-- FROM Student S join Class C on S.ClassId = C.ClassID
-- WHERE C.ClassName = 'A1';

-- buoc 6: hien thi mon CF cua cac hoc vien
-- SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark
-- FROM Student S join Mark M on S.StudentId = M.StudentID
-- join Subject Sub on M.SubId = Sub.SubId
-- WHERE Sub.SubName = 'CF';