CREATE DATABASE Employee;
USE Employee;

Create TABLE Employee_info(
	id INT NOT NULL,
    Employee_Name VARCHAR(255),
    Department VARCHAR(255),
    Salary Double,
    
    PRIMARY KEY (id)
);
INSERT INTO Employee_info(id,Employee_Name,Department,Salary)
VALUES(101,"Harish","IT",55000),
(102,"Harsh","RealEstate",65000),
(103,"Ravish","IT",50000),
(104,"Mahesh","IT",57000);

SELECT * FROM Employee_info
WHERE Salary>60000;

SELECT * FROM Employee_info
WHERE Salary<60000;

SELECT * FROM Employee_info
WHERE Department = "IT";

SELECT * FROM Employee_info
WHERE Department != "IT";

SELECT * FROM Employee_info
WHERE Employee_Name LIKE 'S%' ;