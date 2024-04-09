create database players;

create table players.cricketers(
playerid int,
name varchar(255)
);

insert into players.cricketers(playerid, name) values (1, "Virat Kohli");
insert into players.cricketers(playerid, name) values (2, "Rsohit Sharma");

select * from players.cricketers;
