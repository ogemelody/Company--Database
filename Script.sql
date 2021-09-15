drop database if exists `Company Database`;
create database `Company Database`;
use `Company Database`;
create table employee_info (
Employee_id INT  PRIMARY KEY ,
First_name VARCHAR (40),
Last_name VARCHAR (40),
Department VARCHAR (50),
Birth_Date DATETIME,
Sex VARCHAR (1),
Branch_id INT
);

CREATE TABLE Branch (
Branch_id INT PRIMARY KEY  ,
Branch_name VARCHAR (40),
Manager_id INT,
Manager_start_date Date,
FOREIGN KEY (Manager_id) REFERENCES employee_info (Employee_id) ON DELETE SET NULL);

ALTER TABLE employee_info
ADD FOREIGN KEY (Branch_id)
REFERENCES Branch (Branch_id) 
ON DELETE SET NULL;

CREATE TABLE Client ( 
Client_id INT PRIMARY KEY,
Client_name  VARCHAR  (50),
Branch_id INT ,
FOREIGN KEY (Branch_id) REFERENCES Branch (Branch_id) ON DELETE SET NULL
);

CREATE TABLE Branch_Supplier (
Branch_id INT,
Supplier_Name VARCHAR  (40),
Supply_type VARCHAR  (40),
PRIMARY KEY (Branch_id, Supplier_Name),
FOREIGN KEY (Branch_id) REFERENCES Branch (Branch_id) ON DELETE CASCADE
); 

INSERT INTO employee_info VALUES
(200,'Temmyzeus','Adebayo','Admin','1968-05-07', 'M', NULL),
(201,'Priscilla','James','Product management','1988-04-09', 'F', 1),
(202,'Uchenna','Great','Finance','1980-10-31', 'M',2 ),
(203,'Priscilla','James','Product management','1988-04-09', 'F',3 ),
(204,'Temmyzeus','Adebayo','Admin','1968-05-07', 'M', 2 ),
(205,'Uchenna','Great','Finance','1980-10-31', 'M', 1 ),
(206,'Uchenna','Great','Finance','1980-10-31', 'M', 2 ),
(207,'Uchenna','Great','Finance','1980-10-31', 'M', 3 ),
(208,'Priscilla','James','Product management','1988-04-09', 'F', 1 ),
(209,'Alex','John','Finance','1978-04-09', 'M',2 ),
(210,'Susan','Felix','Auditing','1998-09-19', 'F',3 ),
(211,'Jeph','Wellington','Research and Development','1993-03-19', 'M',NULL ),
(212,'Blessing','Ose','IT management','1970-03-19', 'F',3 ),
(213,'Flourish','Awoyele','Auditing','1997-04-21', 'F', 2 ),
(214,'Temmyzeus','Adebayo','Admin','1968-05-07', 'M' ,1),
(215,'Alex','John','Finance','1978-04-09', 'M', 2 ),
(216,'Priscilla','James','Product management','1988-04-09', 'F', NULL),
(217,'Blessing','Ose','IT management','1970-03-19', 'F',1),
(218,'Uchenna','Great','Finance','1980-10-31', 'M', 3)
;
 


INSERT INTO Branch  VALUES ( 1,'IKEJA',200,'2008-09-19'); 
INSERT INTO Branch  VALUES ( 2,'IKORODU',211,'2005-10-15'); 
INSERT INTO Branch  VALUES ( 3,'AGBARA',216,'2007-03-28'); 

UPDATE employee_info
SET Branch_id  = 1 
WHERE Employee_id = 200;

UPDATE employee_info
SET Branch_id  = 2
WHERE Employee_id = 211;

UPDATE employee_info
SET Branch_id  = 3
WHERE Employee_id = 216;

 SELECT * FROM employee_info;
 SELECT * FROM `Branch`;
 
 
 
 INSERT INTO employee_info VALUES 
(201,'Priscilla','James','Product management','1988-04-09', 'F', 1),
(202,'Uchenna','Great','Finance','1980-10-31', 'M',2 ),
(203,'Priscilla','James','Product management','1988-04-09', 'F',3 ),
(204,'Temmyzeus','Adebayo','Admin','1968-05-07', 'M', 2 ),
(205,'Uchenna','Great','Finance','1980-10-31', 'M', 1 ),
(206,'Uchenna','Great','Finance','1980-10-31', 'M', 2 ),
(207,'Uchenna','Great','Finance','1980-10-31', 'M', 3 ),
(208,'Priscilla','James','Product management','1988-04-09', 'F', 1 ),
(209,'Alex','John','Finance','1978-04-09', 'M',2 ),
(210,'Susan','Felix','Auditing','1998-09-19', 'F',3 ),
(211,'Jeph','Wellington','Research and Development','1993-03-19', 'M',NULL ),
(212,'Blessing','Ose','IT management','1970-03-19', 'F',3 ),
(213,'Flourish','Awoyele','Auditing','1997-04-21', 'F', 2 ),
(214,'Temmyzeus','Adebayo','Admin','1968-05-07', 'M' ,1),
(215,'Alex','John','Finance','1978-04-09', 'M', 2 ),
(216,'Priscilla','James','Product management','1988-04-09', 'F', NULL),
(217,'Blessing','Ose','IT management','1970-03-19', 'F',1),
(218,'Uchenna','Great','Finance','1980-10-31', 'M', 3)
;



SELECT * FROM employee_info;