CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Employee(
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    emp_salary DOUBLE,
    department VARCHAR(255)
);

INSERT INTO Employee(emp_id,emp_name,emp_salary,department)
VALUES(101,"Shankar",56000,"IT"),
(102,"Vivek",65000,"Real-Estate"),
(103, 'Prathmesh', 45000,'Sales'),
(104, 'Sakshi', 48000,'Sales'),
(105, 'Anvi', 58000,'Sales'),
(106, 'Shardul', 66000,'IT'),
(107, 'Amay', 85000,'IT'),
(108, 'Vedant', 65000,'IT'),
(109, 'Pratik', 36000,'Real-Estate');

SELECT department,count(*) AS Number_Of
FROM Employee
GROUP BY department;

SELECT department,AVG(emp_salary) 
FROM Employee
GROUP BY department;

SELECT department,MIN(emp_salary)
FROM Employee
GROUP BY department;

SELECT department,MAX(emp_salary)
FROM Employee
GROUP BY department;

SELECT department,SUM(emp_salary) AS Spending_salary
FROM Employee
GROUP BY department;

SELECT department, SUM(emp_salary) AS total_salary
FROM Employee
GROUP BY department
ORDER BY total_salary ASC
LIMIT 3;