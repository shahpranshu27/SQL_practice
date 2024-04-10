CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);

insert into employee VALUES 
(1, "Pranshu", 3000000), 
(2, "Radhika", 4000000);

SELECT * FROM employee;

CREATE TABLE temp1(
id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
-- INSERT INTO temp1 VALUES (101);

CREATE TABLE temp2(
-- id INT PRIMARY KEY,
id INT,
name VARCHAR(50),
age INT,
city VARCHAR(20),
PRIMARY KEY(id) -- we can also make a unique pair a primary key too, ex. PRIMARY KEY(id, name) Remember :- id or name can be duplicate individually, but both togeather would be a unique pair
);

CREATE table emp1(
id int,
salary int default 20000
);

insert into emp1(id) values (101);

select * from emp1;

create table city(
id int primary key,
city varchar(20),
age int,
constraint age_check check (age>=18 AND city="Ahmedabad")
);

-- can also create constraint by age INT check(age>=18)

insert into city values (1, "Ahmedabad", 20);

select * from city;