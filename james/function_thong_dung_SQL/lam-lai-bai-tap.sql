use quanlysinhvien;
SELECT Address, count(StudentId) as `Số lượng học viên`
from Student
Group by address;

Select S.StudentId, S.StudentName, AVG(Mark)
From Student S 
join Mark M on S.StudentId = M.StudentId
Group by S.StudentId, S.StudentName 
order by S.StudentId ASC;

USE quanlysinhvien;
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S JOIN Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;
Select *
from mark;

SELECT S.STUDENTID, S.StudentName, AVG(Mark)
from Student S join Mark M
on S.StudentId = M.StudentId
Group by S.StudentId, S.StudentName
Having AVG(Mark) >= ALL
(Select avg(mark) from 
mark group by mark.StudentId);


-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT subid, subname, credit, avg(credit)
from subject
group by subid
having avg(credit) >=
all (Select avg(credit)
from `subject`
group by `subject`.credit)

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select `subject`.subname, max(credit)
from subject
join mark on `subject`.subid = mark.subid
group by credit;
select *
from `mark`;
select * 
from `subject`;
-- Hiển thị các thông tin sinh viên và điểm trung bình 
-- của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT S.*, AVG(MARK) as `Điểm trung bình`
FROM STUDENT S
JOIN MARK M ON S.studentid = M.StudentId
GROUP BY studentid
order by avg(mark) desc;