create database demo3;

use demo3;

create table users (
id int not null auto_increment,
name varchar(20) not null,
email varchar(30) not null,
country varchar(20),
primary key(id) 
);

desc users;