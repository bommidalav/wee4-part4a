# create database
CREATE DATABASE `ecommerce`

#create tables
CREATE TABLE Supplier (
  Supplier_Name varchar(50),
  Contact_No varchar(50),
  OrderNo varchar(50)
);

CREATE TABLE OrderTable (
  OrderNo varchar(50),
  Product_Name varchar(50),
  Qty int,
  Price float
  
);

CREATE TABLE Store (
 
  StoreName varchar(50),
  Address varchar(50),
  Rating varchar(5)
);

CREATE TABLE Customer (
  
  Customer_Name varchar(50),
  Address varchar(50),
  OrderNo varchar(50)
 
);

CREATE TABLE Payment (
  Payment_id varchar(50),
  Pay_by varchar(50),
  method varchar(50),
  Total_Amount float
  
);


#load data set
#load data in customer table

LOAD DATA LOCAL INFILE 'C:\\Users\\Admin\\Desktop\\VBOMMI~1\\week2\\Customer.csv'
INTO TABLE customer
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(`Customer_Name`, `Address`, `OrderNo`);

#load data in ordertable table
LOAD DATA LOCAL INFILE 'C:\\Users\\Admin\\Desktop\\VBOMMI~1\\week2\\Order.csv'
INTO TABLE ordertable
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(`OrderNo`, `Product_Name`, `Qty`,`Price`);

#load data in payment table 
LOAD DATA LOCAL INFILE 'C:\\Users\\Admin\\Desktop\\VBOMMI~1\\week2\\Payment.csv'
INTO TABLE payment
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(`Payment_id`,`Pay_by`,`method`,`Total_Amount`);

#load data in store table 

LOAD DATA LOCAL INFILE 'C:\\Users\\Admin\\Desktop\\VBOMMI~1\\week2\\Store.csv'
INTO TABLE store
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(`StoreName`,`Address`,`Rating`);

#load data in supplier table 

LOAD DATA LOCAL INFILE 'C:\\Users\\Admin\\Desktop\\VBOMMI~1\\week2\\Supplier.csv'
INTO TABLE supplier
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(`Supplier_Name`,`Contact_No`,`OrderNo`);


