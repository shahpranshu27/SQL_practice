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

insert into student values (7, "Atman", 83, "C", "Delhi");

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

select * from student order by city desc; -- asc for ascending, desc for descending

-- print marks of top 3 students
select * from student order by marks desc limit 3;

select max(marks) from student;

select min(marks) from student;

select avg(marks) from student;

select sum(marks) from student;

select count(marks) from student;

-- count number of students in each city
select city, name, count(name) from student group by city, name;

select city, avg(marks) from student group by city;

select city, avg(marks) from student group by city order by city;

-- if at least 1 person from the city should have scored marks > 90
select count(name), city from student group by city having max(marks)>90;

select city 
from student
where grade = "A"
group by city
having max(marks)>90
order by city desc;

set sql_safe_updates = 0;

update student 
set grade="O" 
where grade="A";

select * from student;

update student
set marks=82
where marks=45;

update student
set grade="C"
where marks=82;

update student
set marks = marks+1;

insert into student values (8, "xyz", 40, "E", "Hyderabad");

delete from student where marks < 50;

create table dept(
id int primary key,
name varchar(20)
);

insert into dept(id, name) 
values 
(101, "Quant"),
(102, "Verbal");

update dept
set id=103
where id=102;

update dept
set id = 111
where id = 101;

select * from dept;

create table teacher(
id int primary key,
name varchar(20),
dept_id int,
foreign key (dept_id) references dept(id)
-- write below tags, only if we want to reflect the changes from the dept table to teacher table. like if there's any updation or deletion in dept table, it would get reflected in the teacher table as well
-- on delete cascade
-- on update cascade
);

drop table teacher;

create table teacher(
id int primary key,
name varchar(20),
dept_id int,
foreign key (dept_id) references dept(id)
-- write below tags, only if we want to reflect the changes from the dept table to teacher table. like if there's any updation or deletion in dept table, it would get reflected in the teacher table as well
on delete cascade
on update cascade
);

insert into teacher
values
(101, "pranshu", 101),
(102, "radhika", 102);

select * from teacher;

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

insert into student values (7, "Atman", 83, "C", "Delhi");

select * from student;

alter table student
add column age int not null default 19;

alter table student
modify column age varchar(2);

alter table student
change age stud_age int;

insert into student values (8, "Gagan", 73, "C", "Delhi", 123);

insert into student(rollno, name, marks, stud_age)
values (9, "Magan", 79, 100);

update student
set grade="A"
where grade="O";

alter table student
drop column stud_age;

alter table student
rename students;

alter table students
rename student;

select * from students;

create table stu(
id int primary key,
name varchar(20),
marks int,
grade varchar(2)
);

insert into stu 
values 
(1, "pranshu", 97, "A"), 
(2, "radhika", 98, "A"),
(3, "tathya", 70, "C");

select * from stu;

delete from stu where marks<80;

alter table stu
drop column grade;

truncate table stu; -- so, the table still remains, just the data from table is deleted

alter table stu
change column id student_id int;

drop table stu;

select * from student;

-- select name from student where (select * from student where marks>avg(marks));

select avg(marks) from student;

select name, marks from student where marks>(select avg(marks) from student);

select rollno, name from student where rollno%2=0;

select rollno, name from student where rollno in (select rollno from student where rollno%2=0);

select * from student where city="Delhi";

select max(marks) from (select * from student where city="Delhi") as temp; -- whenever we use condition in from, we have to use an alias name for the table

select max(marks) from student where city="Delhi";