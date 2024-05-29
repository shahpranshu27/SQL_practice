use demo2;

create table expense(
id int primary key auto_increment,
description varchar(255),
amount float,
date varchar(20)
);

desc expense;