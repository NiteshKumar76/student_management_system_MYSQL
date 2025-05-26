-- Most Important Question 
-- Q1. list 5  topper student got higest marks ?
select *
from student_management.student AS s
left join Result AS R
on s.student_id=R.student_id
union
select *
from student_management.student AS s
right join Result AS R
on s.student_id=R.student_id
order by Marks desc
limit 5;

 
-- Q2. list the student who is from varanasi?
select * from student_management.student
where Address in ("Varanasi");

-- Q3. What is the Highest marks got by the studnets? 
select max(marks) from student_management.result;

-- Q4. What is the minimum  Marks student get ?
select min(Marks) from student_management.result;  

-- Q5. count number of students in a city ?
select Address, count(student_Name) from student_management.student
group  by Address ; 

-- Q6. list the name of student in Ascending order ?
select StudentName from student_management.student
order by student_name Asc;

-- Q7. Update the address of student neha kumari vranasi to Varanansi

update student 
set Address="Varanasi"
where Address ="vranasi";

-- Q8.  Give complete data of student table and result table ?
select *
from student AS s
left join Result AS R
on s.student_id=R.student_id
union
select *
from student AS s
right join Result AS R
on s.student_id=R.student_id;


-- Q9. list 5 students Name and Email id?
select student_Name, Email from student_management.student
limit 5; 

-- Q10. Count number of students in each city where max marks cross 90.
select *
from student_management.student AS s
left join Result AS R
on s.student_id=R.student_id
union
select *
from student_management.student AS s
right join Result AS R
on s.student_id=R.student_id
order by Marks Asc
limit 1;




