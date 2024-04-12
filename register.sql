create database demo;

use demo;
-- name, email, password, gender, city

create table register(
name varchar(20),
email varchar(30),
password varchar(20),
gender varchar(10),
city varchar(20)
);

desc register;

select * from register;