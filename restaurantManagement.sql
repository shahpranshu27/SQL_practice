create database restaurant_db;

use restaurant_db;

create table customers(
id int auto_increment primary key,
name varchar(200) not null
);

create table menu_items(
id int auto_increment primary key,
name varchar(100) not null,
price double not null
);

create table tables(
id int auto_increment primary key,
capacity int not null,
is_occupied boolean not null
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    table_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (table_id) REFERENCES tables(id)
);