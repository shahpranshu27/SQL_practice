use university;

create table payment(
customer_id int primary key,
customer varchar(50),
mode varchar(20),
city varchar(20)
);

insert into payment values 
(101, "pranshu", "netbanking", "ahmedabad"),
(102, "radhika", "credit card", "boston"),
(103, "tathya", "credit card", "new york"),
(104, "utsavi", "netbanking", "denver"),
(105, "siddh", "credit card", "nashville"),
(106, "yashvi", "debit card", "california"),
(107, "devanshi", "debit card", "seattle"),
(108, "ujjwal", "netbanking", "washington"),
(109, "nihar", "netbanking", "new jersey"),
(110, "purva", "credit card", "chicago");

select * from payment;

select mode, count(customer_id) from payment group by mode;

select mode, count(customer) from payment group by mode;