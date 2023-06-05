CREATE DATABASE Viewe;
USE Viewe;

CREATE TABLE Customer(
	id INT NOT NULL,
    customer_name VARCHAR(255),
    account_no VARCHAR(255),
    
    PRIMARY KEY (id)
);
INSERT INTO Customer(id,customer_name,account_no)
VALUES (1,'Sudhir Sardeshpande','BPO90'),
(2,'Shashank Shinde','PPO91'),
(3,'S Patil','JJ990'),
(4,'Dhiraj Nawle','LL090');

CREATE TABLE transactions(
		t_id INT PRIMARY KEY,
		t_num VARCHAR(255),
        t_account_no VARCHAR(255)
);

INSERT INTO transactions(t_id,t_num,t_account_no)
VALUES(1101,'A9090','BPO90'),
(1102,'B8090','PPO91'),
(1103,'C7089','JJ990'),
(1104,'D4560','LL090');

CREATE VIEW v1 AS
SELECT customer_name,id,account_no
FROM Customer;
SELECT * FROM v1;


CREATE VIEW v2 AS
SELECT c.customer_name, c.account_no, t.t_id
FROM Customer c,transactions t
WHERE c.account_no = t.t_account_no;

SELECT * FROM v2;

UPDATE v1
SET customer_name = 'Suyash Patil'
WHERE id=3;

ALTER VIEW v1 AS
SELECT account_no, customer_name
FROM Customer;

DROP VIEW v2;
