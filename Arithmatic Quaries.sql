CREATE DATABASE School;
USE School;

CREATE TABLE Student(
	id INT NOT NULL,
    Student_Name VARCHAR(255),
    Age INT,
    
    PRIMARY KEY (id)
);

INSERT INTO Student(id,Student_Name,Age)
values(101,"Rahul",19),
(102,"Shrikant",24),
(103,"Harsh",25),
(104,"Prakash",27);

CREATE TABLE Grade(
	Student_id INT,
    Subject_name VARCHAR(255),
    Marks INT,
    
    FOREIGN KEY (Student_id) REFERENCES Student(id)
);

INSERT INTO Grade(student_id,Subject_name,Marks)
VALUES(101,"MATHS",90),
(101,"SCIENCE",85),
(102,"MATHS",87),
(102,"SCIENCE",92),
(103,"MATHS",94),
(103,"SCIENCE",91);

SELECT AVG(Age) FROM Student;
SELECT count(*) FROM Student;
SELECT MIN(Age) FROM Student;
SELECT MAX(Age) FROM Student;
SELECT SUM(Marks) FROM Grade
WHERE student_id=101;
Show TABLES;