DROP DATABASE IF EXISTS college;

CREATE DATABASE IF NOT EXISTS college;

use college;


create table teacher(
	id INT primary key,
    name varchar(30) ,
    subject varchar(30),
    salary int default 0
);


INSERT INTO teacher
(id , name , subject , salary)
values
(23 , "Ajay" , "Maths" , 50000),
(47 , "Bharat" , "English" , 60000),
(18 , "Chetan" , "Chemistry" , 45000),
(9 , "Divya" , "Physics" , 75000);


select * from teacher;

select * from teacher
where salary > 50000;


Alter table teacher 
change salary ctc Int default 0;


set sql_safe_updates = 0;

update teacher
set ctc = ctc + 0.25*ctc;


Alter table teacher
add column city varchar(30) default "gurgaon";


alter table teacher
drop column ctc;




create table student(
	roll_no int primary key,
    name varchar(30) ,
    city varchar(30) ,
    marks int
    
);


insert into student
(roll_no , name , city , marks)
values
(110 , "adam" , "delhi" , 76),
(108 , "bob" , "mumbai" , 65),
(124 , "casey" , "pune" , 94),
(112 , "duke" , "pune" , 80);


select * from student
where marks > 75;

select distinct city 
from student;


select city , max(marks)
from student
group by city
;

select avg(marks)
from student;


alter table student
add column grade varchar(30);

set sql_safe_updates = 0;

update student
set grade = "O"
where marks >= 80;

update student
set grade = "A"
where marks >= 70 and marks <80;

update student
set grade = "B"
where marks >= 60 and marks <70;

select * from student;