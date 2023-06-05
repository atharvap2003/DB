Create DATABASE ECommerse;
USE ECommerse;

CREATE TABLE Product(
	id INT NOT NULL,
    product_name VARCHAR(255),
    price Double,
    quantity INT,
    
    PRIMARY KEY (id)
);
INSERT INTO Product(id,product_name,price,quantity)
VALUES(1, 'iPhone X', 82316, 10),
(2, 'Samsung Galaxy S21', 65853, 15),
(3, 'Google Pixel 5', 57621, 8),
(4, 'OnePlus 9 Pro', 74084, 12);

-- Boolean Operator

SELECT * FROM Product
WHERE price>70000 OR quantity>13;

SELECT * FROM Product
WHERE price>60000 AND quantity>13;

SELECT * FROM Product
WHERE NOT price>60000;

-- Pattern Match making

SELECT * FROM Product
WHERE product_name LIKE '%phone%';

SELECT * FROM Product
WHERE product_name LIKE '%_phone%';

-- IN
SELECT * FROM Product
WHERE id IN (2,3,4);

-- NOT IN
SELECT * FROM Product
WHERE id NOT IN (2,3,4);

-- IS NULL
SELECT * FROM Product 
WHERE quantity IS NULL;

-- IS NOT NULL
SELECT * FROM Product 
WHERE quantity IS NOT NULL;