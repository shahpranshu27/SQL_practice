-- comment
# comment
/* 
comment
*/
CREATE DATABASE temp1; -- creating a databse  
DROP DATABASE temp1; -- dropping/deleting the database

CREATE DATABASE college;

USE college; -- this command USE is used when whatever we want to do, we want to do in that particular database only

-- creating a table in the database
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(55),
age INT NOT NULL
);

-- inserting the values in the table created
INSERT into student values(1, "Pranshu", 21);
INSERT into student values(2, "Siddh", 22);

-- printing the table
SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;

INSERT INTO student(id, name, age) VALUES (3, "Radhika", 22),(4, "Utsavi", 24);
SELECT * FROM student;

INSERT INTO student VALUES (5, "Tathya", 26);