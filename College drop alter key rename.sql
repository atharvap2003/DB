CREATE DATABASE College;
USE College;

CREATE TABLE Departments(
	id INT,
    Department_Name VARCHAR(255),
    PRIMARY KEY (Department_Name)
);
INSERT INTO Departments( id,Department_Name)
VALUES (101,"Computer"),
(102,"IT"),
(103,"ENTC");


CREATE TABLE Teachers(
	id INT NOT NULL,
    Teacher_Name VARCHAR(255),
    Department VARCHAR(255),
    Mobile_No DOUBLE,
    
    PRIMARY KEY (id),
    FOREIGN KEY (Department) REFERENCES Departments(Department_Name)
);
INSERT INTO Teachers(id, Teacher_Name, Department, Mobile_No)
VALUES(1001, "Patil","Computer",9876543210),
(1002, "Shinde","IT",8795462130),
(1003, "Pohokar","Computer",7984651320),
(1004, "Kulkarni","ENTC",8965473201);

CREATE TABLE Student(
	id INT NOT NULL,
    Student_Name VARCHAR(255),
    Department VARCHAR(255),
    Mobile_No DOUBLE,
    
    PRIMARY KEY (id),
    FOREIGN KEY (Department) REFERENCES Departments(Department_Name)
);
INSERT INTO Student(id, Student_Name, Department, Mobile_No)
VALUES(501, "Rahul","Computer",9877773210),
(502, "Sushil","IT",8796662130),
(503, "Pratik","Computer",7777651320),
(504, "Kaustubh","ENTC",8965113201);

SELECT * FROM Teachers;
SELECT * FROM Departments;
SELECT * FROM Student;

UPDATE Teachers
SET Teacher_Name = "Pare"
Where id = 1003;

ALTER TABLE Teachers
DROP Column Address;

ALTER TABLE Teachers
RENAME TO Teacher;
 