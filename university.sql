create database university;

use university;

create table student(
rollno int primary key,
name varchar(20),
marks int not null,
grade varchar(2),
city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values 
(1, "Pranshu", 98, "A", "Ahmedabad"),
(2, "Radhika", 97, "A", "Boston"),
(3, "Tathya", 90, "B", "Delhi"),
(4, "Utsavi", 85, "C", "Texas"),
(5, "Siddh", 80, "D", "Mumbai"),
(6, "Yashvi", 45, "F", "Chennai");

select * from student;

select rollno, name from student;

select distinct city from student; -- here it will return all cities, as all the cities are distinct. but if there were 2 or more cities common, then it would return only the distinct cities

select name, marks from student where marks>=90 AND grade="A";

-- AND : both conditions should be true
-- OR : any one of the conditions should be true

select * from student where marks> 90 OR grade = "C";

select * from student where marks between 80 and 90;

select * from student where city in ("Ahmedabad","Boston");

select * from student where city not in ("Ahmedabad","Boston");

select * from student where marks>80 limit 3;