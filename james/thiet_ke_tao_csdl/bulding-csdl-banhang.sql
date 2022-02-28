create database `quanlybanhang1`;
use quanlybanhang;

create table `quanlybanhang1`.`Customer` (
	cID INT NOT NULL UNIQUE PRIMARY KEY,
    cName VARCHAR(25) NOT NULL,
    cAge INT
);

CREATE TABLE `quanlybanhang1`.`Order` (
	oID INT NOT NULL UNIQUE PRIMARY KEY,
    cID INT NOT NULL UNIQUE,
    oDate DATE NOT NULL,
    oTotalPrice FLOAT NOT NULL,
    CONSTRAINT FK_Customer FOREIGN KEY (cID) 
    REFERENCES Customer(cID)
);


CREATE TABLE `quanlybanhang1`.`OrderDetail` (
	oID INT NOT NULL UNIQUE,
    pID INT NOT NULL UNIQUE,
    odQTY INT NOT NULL,
    CONSTRAINT FK_Orderdetail FOREIGN KEY (oID) 
    REFERENCES `Order`(oID)
  
);

CREATE TABLE `quanlybanhang1`.`Product` (
	pID INT NOT NULL UNIQUE PRIMARY KEY,
    pName VARCHAR(25) NOT NULL,
    pPrice FLOAT NOT NULL
);

ALTER TABLE OrderDetail 
ADD FOREIGN KEY (pID) REFERENCES Product(pID);