use university;

create table  students(
student_id int primary key,
name varchar(30)
);

create table course(
student_id int primary key,
course varchar(20)
);

insert into students values 
(101, "pranshu"),
(102, "radhika"),
(103, "tathya");

select * from students;

insert into course values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer_science");

select * from course;

select * 
from students as s -- we can use either words for the joining, i.e. students or s
inner join course as c -- we can use either names for joining i.e. course or c
on students.student_id=course.student_id;

select * 
from students
left join course
on students.student_id = course.student_id;

select * 
from students as s
right join course as c
on s.student_id = c.student_id;

select *
from students as s
left join course as c
on s.student_id = c.student_id
union
select *
from students as s
right join course as c
on s.student_id = c.student_id;