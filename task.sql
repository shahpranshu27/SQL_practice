show databases;

use demo;

show tables;

create table tasks(
id int primary key auto_increment,
name varchar(50),
description varchar(255)
);

desc tasks;

select * from tasks;