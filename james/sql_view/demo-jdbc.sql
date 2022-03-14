create database demo;
use demo;
create table users(
id int(3) NOT NULL AUTO_INCREMENT,
name varchar(120) NOT NULL,
email varchar(220) NOT NULL,
country varchar(120),
PRIMARY KEY (id)
);
insert into users(name, email, country) values("nhat truong", "nhatttruong@123gmail.com","viet nam");
insert into users(name, email, country) values("nhat", "nhatt@435gmail.com","hue");
insert into users(name, email, country) values("truong", "ruong@3123gmail.com","da nang");