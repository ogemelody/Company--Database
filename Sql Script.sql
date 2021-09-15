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

/*CREATE BRANCH table */
CREATE TABLE Branch (
Branch_id INT PRIMARY KEY auto_increment ,
Branch_name VARCHAR (40),
Manager_id INT,
Manager_start_date Date,
FOREIGN KEY (Manager_id) REFERENCES employee_info (Employee_id) ON DELETE SET NULL
);
INSERT INTO Branch (Manager_id)
SELECT Employee_id
FROM employee_info;

/*Alter the employee info to set foreign key of Branch_id and Supervisor_id */
ALTER TABLE employee_info
ADD FOREIGN KEY (Branch_id)
REFERENCES Branch (Branch_id) 
ON DELETE SET NULL;

/*alter table Employee_info add foreign key (Manager_id) references employee_info (Employee_id) ; */



/*CREATE Client table */
CREATE TABLE Client ( 
Client_id INT PRIMARY KEY,
Client_name  VARCHAR  (50),
Branch_id INT ,
FOREIGN KEY (Branch_id) REFERENCES Branch (Branch_id) ON DELETE SET NULL
);

/*CREATE Client table */
CREATE TABLE Branch_Supplier (
Branch_id INT,
Supplier_Name VARCHAR  (40),
Supply_type VARCHAR  (40),
PRIMARY KEY (Branch_id, Supplier_Name),
FOREIGN KEY (Branch_id) REFERENCES Branch (Branch_id) ON DELETE CASCADE
);

/*Supplying data to the created tables */
INSERT  into `employee_info` (`Employee_id`,`First_name`,`Last_name`,`Department`,`Birth_Date`, `Sex`) VALUES
('200','Temmyzeus','Adebayo','Admin','1968-05-07', 'M' ),
('201','Susan','Felix','Auditing','1998-09-19', 'F' ),
('202','Uchenna','Great','Finance','1980-10-31', 'M' ),
('203','Priscilla','James','Product management','1988-04-09', 'F' ),
('204','Temmyzeus','Adebayo','Admin','1968-05-07', 'M' ),
('205','Uchenna','Great','Finance','1980-10-31', 'M' ),
('206','Uchenna','Great','Finance','1980-10-31', 'M' ),
('207','Uchenna','Great','Finance','1980-10-31', 'M' ),
('208','Priscilla','James','Product management','1988-04-09', 'F' ),
('209','Alex','John','Finance','1978-04-09', 'M' ),
('210','Susan','Felix','Auditing','1998-09-19', 'F' ),
('211','Jeph','Wellington','Research and Development','1993-03-19', 'M' ),
('212','Blessing','Ose','IT management','1970-03-19', 'F' ),
('213','Flourish','Awoyele','Auditing','1997-04-21', 'F' ),
('214','Temmyzeus','Adebayo','Admin','1968-05-07', 'M' ),
('215','Alex','John','Finance','1978-04-09', 'M' ),
('216','Priscilla','James','Product management','1988-04-09', 'F'),
('217','Blessing','Ose','IT management','1970-03-19', 'F'),
('218','Uchenna','Great','Finance','1980-10-31', 'M')
;
SELECT * from `employee_info`;


INSERT  into `Branch` (`Branch_name`,`Manager_start_date`) VALUES
('Rutherford','2006-05-07' ),
('Scott','2003-03-19' ),
('Scott','2003-03-19' ),
('Scott','2003-03-19' ),
('Schford','2008-09-19' ),
('Schford','2008-09-19' ),
('Rutherford','2006-05-07' ),
('Schford','2008-09-19' ),
('Clifton','2005-04-09' ),
('Clifton','2005-04-09' ),
('Clifton','2005-04-09' ),
('Clifton','2005-04-09' ),
('Schford','2008-09-19' ),
('Schford','2008-09-19' ),
('Clifton','2005-04-09' ),
('Rutherford','2006-05-07' ),
('Schford','2008-09-19' ),
('Clifton','2005-04-09' ),
('Schford','2008-09-19' ),
('Rutherford','2006-05-07' );

INSERT INTO Branch (Manager_id)
SELECT Employee_id
FROM employee_info;
SELECT * from `Branch`;

