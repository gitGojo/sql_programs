USE lab;
-- Consider the relation:
-- PRODUCT (P_id, P_name, Category, Price, Quantity)
-- Write SQL queries for the following:
-- Count the total number of products in the PRODUCT table. 
-- Display the names of products whose price is greater than 1000. 
-- Find the highest and lowest product prices. 
-- Display all products in ascending order of price. 
-- Display only product names and prices. 
-- Calculate the total quantity of all products available in stock.

CREATE TABLE PRODUCT
(
    P_id INT PRIMARY KEY,
    P_name VARCHAR(50),
    Category VARCHAR(20),
    Price INT,
    Quantity INT
);

INSERT INTO PRODUCT VALUES(100,"Bat","Sports",17000,2);
INSERT INTO PRODUCT VALUES(101,"Ball","Sports",130,2);

SELECT COUNT(P_id) AS Total_products FROM PRODUCT ;

SELECT P_name FROM PRODUCT WHERE Price >=1000;

SELECT MAX(Price),MIN(Price) FROM PRODUCT;

SELECT P_name FROM PRODUCT
ORDER BY Price
ASC;

SELECT P_name,Price FROM PRODUCT;

SELECT SUM(QUANTITY) AS Total_Stock FROM PRODUCT;
