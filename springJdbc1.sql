use springjdbc;

show tables;

insert into student values (2, "xyz", "blr");

select * from student;

create table emp(
id int not null,
name varchar(50),
department varchar(20),
salary float
);

desc emp;
select * from emp;
insert into emp values(1, "abc", "HR", 2300);

delete from emp where id=2;