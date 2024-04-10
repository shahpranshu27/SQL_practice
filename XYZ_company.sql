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