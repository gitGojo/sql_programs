--Consider the relation: 
-- SALES (Sale_id, Product_Name, Quantity, Price, Salesperson) 
-- Write SQL queries for the following: -- Find the total number of sales records. 
-- Calculate the total quantity sold. -- Find the highest product price. 
-- Calculate the average product price. -- Display only Product_Name and Price. 
-- Display only Salesperson and Quantity. 
USE lab; 
CREATE TABLE SALES(Sale_id INT PRIMARY KEY, Product_Name VARCHAR(50), Quantity INT, Price INT, Salesperson VARCHAR(30) ); 
INSERT INTO SALES VALUES(100,"Bat",2,450,"ABC"); INSERT INTO SALES VALUES(101,"Wicket",1,1000,"XYZ"); 
SELECT COUNT(Sale_id) AS Sales_records FROM SALES; SELECT SUM(Quantity) FROM SALES; 
SELECT MAX(Price) AS Highest_price FROM SALES; SELECT AVG(Price) AS Average FROM SALES; 
SELECT Product_Name,Price FROM SALES; 
SELECT Salesperson,Quantity FROM SALES;