create database quanlybanhang;
use quanlybanhang;
create table customer(
	cid int NOT NULL AUTO_INCREMENT primary key,
    cname varchar(20) NOT NULL,
    cage int
);
create table 0rder (
	oid int NOT NULL AUTO_INCREMENT primary key,
    cid INT NOT NULL,
    oDate DATETIME NOT NULL,
    oTotalPrice DOUBLE NOT NULL,
    FOREIGN KEY(cID) REFERENCES Customer (cID)
);

CREATE TABLE Product (
	pID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(20) NOT NULL,
    pPrice DOUBLE NOT NULL
);

CREATE TABLE OrderDetail (
	oID INT NOT NULL,
    pID INT NOT NULL,
    odQTY INT NOT NULL,
    FOREIGN KEY(pID) REFERENCES Product(pID),
    FOREIGN KEY(oID) REFERENCES 0rder(oID)
);