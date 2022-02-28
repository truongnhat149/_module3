create database `quanlychuyenbay`;
create table `quanlychuyenbay`.`khachhang` (
	maKH INT UNIQUE NOT NULL PRIMARY KEY,
    ten VARCHAR(25) NOT NULL,
    DCHI VARCHAR(255) NOT NULL,
    DTHOAI VARCHAR(11) UNIQUE NOT NULL
); 	

CREATe table `quanlychuyenbay`. `nhanvien` (
	maNV INT UNIQUE NOT NULL PRIMARY KEY,
    ten VARCHAR(25) NOT NULL,
    DCHI VARCHAR(255) NOT NULL,
    LUONG INT NOT NULL,
    LOAINV VARCHAR(2) NOT NULL
); 	


CREATE TABLE `quanlychuyenbay`. `loaimb` (
	maloai INT UNIQUE NOT NULL PRIMARY KEY,
    HANGSX varchar(25) NOT NULL
);	

CREATE TABLE `quanlychuyenbay`.`chuyenbay` (
	macb VARCHAR(50) unique not null primary key,
    sbdi varchar(50) not null,
    sbden varchar(50) not null,
    giodi date,
    gioden date
);

create table `quanlychuyenbay`. `lichbay` (
	ngaydi datetime not null,
	macb varchar(50) unique not null,
    sohieu varchar(30) unique not null,
    maloai varchar(50) unique not null
);

create table `quanlychuyenbay`. `datcho` (
	makh int unique not null,
    ngaydi date,
    macb varchar(50) unique not null
);

create table `quanlychuyenbay`. `khanang` (
	manv int unique not null,
    maloai varchar(50) unique not null
);

create table `quanlychuyenbay`. `phancong` (
	manv int not null unique,
    ngaydi date,
    macb varchar(50) unique not null
);