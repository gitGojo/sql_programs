USE lab;

CREATE TABLE SALESMAN(
    Salesman_id INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(20),
    Commission DECIMAL(10,2)
);

CREATE TABLE CUSTOMER(
    Customer_id INT PRIMARY KEY,
    Cust_Name VARCHAR(50),
    City VARCHAR(50),
    Grade VARCHAR(50),
    Salesman_id INT,
    Foreign Key (Salesman_id) REFERENCES SALESMAN(Salesman_id) ON DELETE CASCADE
);
DROP TABLE ORDERS;
CREATE TABLE ORDERS(
    Ord_no INT PRIMARY KEY,
    Purchase_Amt FLOAT,
    Ord_Date DATE,
    Customer_id INT,
    Salesman_id INT,
    Foreign Key (Customer_id) REFERENCES CUSTOMER(Customer_id) ON DELETE CASCADE,
    Foreign Key (Salesman_id) REFERENCES SALESMAN(Salesman_id) ON DELETE CASCADE
);

INSERT INTO SALESMAN VALUES (1000, 'Pradeep', 'Bangalore', 0.15);
INSERT INTO SALESMAN VALUES (2000, 'Ravi', 'Mysore', 0.12);
INSERT INTO SALESMAN VALUES (3000, 'Kumar', 'Bangalore', 0.14);

INSERT INTO CUSTOMER VALUES (11, 'Ananya', 'Bangalore', 300, 1000);
INSERT INTO CUSTOMER VALUES (12, 'Darshan', 'Bangalore', 100, 1000);
INSERT INTO CUSTOMER VALUES (13, 'Chetan', 'Mysore', 200, 2000);
INSERT INTO CUSTOMER VALUES (14, 'Bhavana', 'Mangalore', 400, 3000);

INSERT INTO ORDERS VALUES (501, 5000.00, '2026-05-18', 11, 1000);
INSERT INTO ORDERS VALUES (502, 12000.00, '2026-05-18', 12, 1000);
INSERT INTO ORDERS VALUES (503, 3000.00, '2026-05-19', 13, 2000);


SELECT COUNT(*) FROM CUSTOMER WHERE Grade >
(SELECT AVG(Grade) FROM CUSTOMER WHERE City="Bangalore");

SELECT S.Name,COUNT(*)
FROM SALESMAN S,CUSTOMER C
WHERE S.Salesman_id = C.Salesman_id
GROUP BY C.Salesman_id,S.Name
HAVING COUNT(*)>1;

SELECT S.Name , 'Match' AS STATUS
FROM SALESMAN S,CUSTOMER C
WHERE S.Salesman_id = C.Salesman_id AND S.City=C.City 
UNION
SELECT S.Name ,'Not Match' AS STATUS
FROM SALESMAN S,CUSTOMER C
WHERE S.Salesman_id = C.Salesman_id AND S.City!=C.City;

CREATE OR REPLACE VIEW Topsales AS
SELECT O.Ord_Date, S.Salesman_id, S.Name, O.Purchase_Amt 
FROM SALESMAN S, ORDERS O 
WHERE S.Salesman_id = O.Salesman_id 
  AND O.Purchase_Amt = (SELECT MAX(Purchase_Amt) FROM ORDERS WHERE Ord_Date = O.Ord_Date);

SELECT * FROM Topsales;

DELETE FROM SALESMAN WHERE Salesman_id=1000;

SELECT * FROM SALESMAN;