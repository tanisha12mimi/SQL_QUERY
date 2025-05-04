CREATE database mycollage;
 use mycollage;
--  // CONSTRAINS NOTES BY APNA COLLAGE --
 create TABLE student(
 rollno int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1),
 city varchar(20)
 );
 insert into student
 (rollno,name, marks, grade ,city)
 VALUES 
 
 (101,"ANIL",78,"C","PUNE"),
 (102, "MAYUKH",93,"A", "MUMBAI"),
 (103, "MIMI",85,"B", "MUMBAI"),
 (104, "SAKSHI",96,"A", "DELHI"),
 (105, "WTF",12,"F", "KOLKATA"),
 (106, "TANI",85,"B", "PUNE");
 
 SELECT *FROM student;
 
 
--  WHERE CLAUSE

SELECT * FROM student WHERE marks >80;

 -- USE OPERATORS IN WHERE
  -- ARITHMETIC OPERATORS :  +,-,*,/,%(MODULOUS)
--   COMPASION OPERATORS : = , !=( NOT EQUALTO),>,>=,<,<=
--   LOGICAL OPERATORS : AND, OR , NOT ,IN ,BETWEEN, ALL, LIKE , ANY
--   BITWISE OPERATORS : &(BITWISE AND),|(BITWISE OR)
 
 -- AND 
 SELECT *FROM student WHERE marks > 80 AND city = "MUMBAI";
 --  OR
 SELECT *FROM student WHERE marks > 90 OR  city = "MUMBAI";
 --  BETWEEN
 SELECT *FROM  student where marks between 80 and 90;
 
-- IN
SELECT *FROM  student where city IN ( "DELHI", "MUMBAI");
 --  NOT
 SELECT *FROM  student where city NOT IN ( "DELHI", "MUMBAI"); -- // REVERSE
 
 
 -- LIMIT CLAUSE
 SELECT * from student LIMIT 3;
 SELECT  name from student LIMIT 3;
 
 -- ORDER BY CLAUSE
 -- ASC - ASENDING ORDER
--  DESE - DEASENDING ORDER
 
 SELECT *FROM student 
 ORDER BY city ASC;

 -- DESC
 SELECT name FROM student 
 ORDER BY city DESC;

-- Aggerate function
-- 1 COUNT()
-- 2 MAX()
-- 3 MIN()
-- 4 SUM()
-- 5 AVG()
 -- MAX
 SELECT max(marks) FROM student;
 -- AVG
 SELECT avg(marks) FROM student;
--  MIN
 SELECT MIN(marks) FROM student;
 -- COUNT
 SELECT COUNT(name) FROM student;
 
 -- SUM
 SELECT sum(rollno) FROM student;
 
-- group by clause


select city ,count(name)
from student
group by city;

-- having clause 
 
-- countn no of student  each city where max marks cross 90
SELECT city , count(rollno)
FROM student 
GROUP BY city
HAVING max(marks)>90;


 
 
 
 