-- Project on Student Management in MySQL
-- Before creating the tables first we have to design E-digram to understand the requirements and connection between different tables 
-- First Create database

create database Student_management;
use student_management;

-- Create  Student table 

drop table if exists student_management.student;
Create table student(
student_id int primary key ,
student_Name varchar(200),
Address varchar(200),
Email varchar(300),
DOB date
);  

-- create course table

drop table if exists student_management.course;
create table course(
course_id int primary key ,
course_name varchar(300)
);


-- create teacher table

drop table if exists student_management.Teacher;
create table Teacher(
Teacher_id int primary key,
Teacher_name varchar(200),
course_id int ,
foreign key (course_id) references course (course_id)
on delete cascade 
on update cascade
);


-- create Enrollment table 

drop table if exists student_management.Enrollment;
create table Enrollment(
Enrollment_id int primary key ,
Enrollment_date date,
student_id int,
foreign key (student_id) references student(student_id)
on delete cascade
on update cascade
);


-- create  Result  Result 

drop table if exists student_management.Result;
create table Result(
student_id int ,
foreign key(student_id) references student(student_id)
on delete cascade
on update cascade,
Enrollment_id int ,
foreign key (Enrollment_id) references Enrollment(Enrollment_id)
on delete cascade
on update cascade,
course_id int ,
foreign key (course_id) references course(course_id)
on delete cascade
on update cascade,
Marks int not null
);



-- insert data into student table 

insert into student 
(student_id, student_Name , Address,Email,DOB)
values
(1,"Nitesh kumar","Varanasi","Niteshk@gmail.com",'2005-07-03'),
(2,"Neha kumari","Vranasi","Nehak@gmail.coom",'2002-10-08'),
(3,"Rahul","Mumbai","rahulsupr@gmail.com",'1999-09-29'),
(4,"Shusant Ravat","Goa","Susntrvt@gamil.com",'2000-10-01'),
(5,"Anita","Arunachal Pradesh","Arushine@gmail.com",'2003-05-30'),
(6,"Akshat Duby","Ramnagar","Akshtstar@gamil.com",'2003-03-16'),
(7,"shusmita kapoor","Delhi","Sushmitakvs@gmail.com",'2001-02-22'),
(8,"Shivani singh","Mugalsarai","vanisingh@gamil.com",'2004-08-01'),
(9,"Mahima sonkar","Assam","Mahimasss21@gamil.com",'1999-11-23'),
(10,"Abhinav jain","Madhya Pradesh","Abhi2jn@gamil.com",'2000-12-13'),
(11,"Avanti patil ","Rajasthan","AvantiSn234@gamil.com",'2003-03-17'),
(12,"Ram kumar","Banaras","Ramksingh77@gamil.com",'2003-03-04'),
(13,"Atharav yadav","Varanasi","Atharva21922@gmail.com",'2001-04-13'),
(14,"Akanksha gautam","Mirzapur","Akanshag99@gmail.com",'2002-08-19'),
(15,"Abhay Rai","Chandauli","Abhayrai88@gmail.com",'1999-10-22');
 
 
 -- insert data into course table

insert into course
(course_id,course_name)
values
(101,"JAVA"),
(102,"Python"),
(103,"C language"),
(104,"C++"),
(105,"SQL");


--  insert data into Teacher table

insert into Teacher
(Teacher_id,Teacher_name,course_id)
values
(111,"Vivek sir " , 101),
(112,"Pradeep Pathak ",102),
(113,"Ankit Mishra",103),
(114,"Pankaj Pandey",104),
(115,"Aman Sir",105);


-- insert  data into Enrollment table

insert into Enrollment
(Enrollment_id,Enrollment_date,student_id)
values
(1234,'2025-02-01',1),
(1235,'2025-02-03',2),
(1236,'2025-02-02',3),
(1237,'2025-02-07',4),
(1238,'2025-02-04',5),
(1239,'2025-02-03',6),
(1240,'2025-02-05',7),
(1241,'2025-02-07',8),
(1242,'2025-02-01',9),
(1243,'2025-02-02',10),
(1244,'2025-02-03',11),
(1245,'2025-02-07',12),
(1246,'2025-02-01',13),
(1247,'2025-02-02',14),
(1248,'2025-02-01',15);

-- insert data into Result table

insert into Result
(student_id,Enrollment_id,course_id,Marks)
values
(1,1234,102,87),
(2,1235,104,67),
(3,1236,101,78),
(4,1237,101,90),
(5,1238,105,98),
(6,1239,102,76),
(7,1240,103,69),
(8,1241,105,88),
(9,1242,102,71),
(10,1243,103,94),
(11,1244,104,83),
(12,1245,105,90),
(13,1246,101,84),
(14,1247,103,96),
(15,1248,101,75);

