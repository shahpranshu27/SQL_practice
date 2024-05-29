use hotel_db;

CREATE TABLE guests (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE rooms (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    guestId INT NOT NULL,
    roomNumber INT NOT NULL,
    checkInDate varchar(200) NOT NULL,
    checkOutDate varchar(200) NOT NULL
);
select * from rooms;
drop table bookings;

drop table rooms;

drop table guests;
