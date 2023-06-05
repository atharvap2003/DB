CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE Doctors(
	id INT NOT NULL AUTO_INCREMENT,
	Doctor_Name VARCHAR(255) NOT NULL, 
    Specialization VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE Doctors
ADD Mobile_No double; 

CREATE TABLE Patient(
	id INT NOT NULL AUTO_INCREMENT,
	Patient_Name VARCHAR(255) NOT NULL,
    Mobile_No INTEGER NOT NULL,
    CorresDocID INTEGER, 
	PRIMARY KEY (id),
    FOREIGN KEY (CorresDocID) REFERENCES Doctors(id)
);

Insert INTO Doctors(Doctor_name,Specialization,Mobile_No)
VALUES("Shinde","Cardioc",9876543210);

Insert INTO Doctors(Doctor_name,Specialization,Mobile_No)
VALUES("Gandhi","General Surgeon",9638527410),
("PAtil","Ortho",8529637410);

SELECT * FROM Doctor;

ALTER TABLE Doctors 
RENAME TO Doctor; 

Insert INTO Patient(Patient_Name,Mobile_No,CorresDocID)
VALUES("Sanjay",98765,3),
("Varun",89765,2),
("Harish",79865,1);

SELECT * FROM Patient;

UPDATE Doctor
SET Doctor_Name = "Patil"
WHERE id = 3;