USE mycollage;
-- UPDATE ERROR(SAFE MODE on)

 UPDATE student
 set grade="O"
 where grade ="A" ;
 
 
--  (Safe mode on)
-- SET SQL_SAFE_UPDATES=0;
-- (safe mode off)
-- SET SQL_SAFE_UPDATES=1;
 
 
 -- next problem
 
 update student 
 set marks =99
 where rollno=102;
 

  -- next problem
  
update student
set grade= "A"
where marks BETWEEN 75 AND 85;


-- next problem
-- EVERY STUDENT RESUTR INCRESAE +1 MARKS -- 
UPDATE student
set marks =marks+1;
 
                             -- delete --
 
 
 
 
 
 SELECT * FROM student;