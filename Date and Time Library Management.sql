CREATE DATABASE Library;
USE Library;

CREATE TABLE Library (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    author VARCHAR(100),
    published DATE,
    borrowed DATETIME
);

INSERT INTO Library(book_id, book_title, author, published, borrowed) 
VALUES(1, 'The God of Small Things', 'Arundhati Roy', '1997-06-04', '2022-01-15 09:30:00'),
(2, 'A Suitable Boy', 'Vikram Seth', '1993-01-24', '2022-02-10 14:45:00'),
(3, 'The White Tiger', 'Aravind Adiga', '2008-03-12', '2022-03-25 11:15:00'),
(4, 'The Immortals of Meluha', 'Amish Tripathi', '2010-01-31', '2022-04-20 16:20:00');

 SELECT CURDATE() AS CurrDate;
 SELECT NOW() AS DateAndTime;
 
 SELECT book_title, YEAR(published) AS publish_year FROM Library;
 SELECT book_title, MONTH(published) AS publish_month FROM Library;
 SELECT book_title, DAY(published) As published_day FROM Library;
 
SELECT book_title, HOUR(borrowed) AS Hours FROM Library;
SELECT book_title, MINUTE(borrowed) AS Minutes FROM Library;
SELECT book_title, SECOND(borrowed) AS Seconds FROM Library;

SELECT book_title, DATE_ADD(published,INTERVAL 7 DAY) AS Due_Date FROM Library;
SELECT book_title, DATE_SUB(published,INTERVAL 2 HOUR) AS Return_time FROM Library;

SELECT book_title,DATEDIFF(borrowed,published) FROM Library;