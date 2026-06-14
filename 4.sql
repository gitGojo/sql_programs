USE lab;
DROP TABLE Employee;

CREATE TABLE Employee(
    e_id INT PRIMARY KEY,
    E_Name VARCHAR(50),
    Age INT,
    Salary DECIMAL(10,2)
);

INSERT INTO Employee VALUES (1, 'Amit', 25, 50000.00);
INSERT INTO Employee VALUES (2, 'Rahul', 30, 60000.00);
INSERT INTO Employee VALUES (3, 'Priya', 25, 50000.00);
INSERT INTO Employee VALUES (4, 'Sneha', 28, 75000.00);

SELECT COUNT(E_Name) FROM Employee;

SELECT MAX(Age) FROM Employee;
SELECT MIN(Age) FROM Employee;

SELECT *  FROM Employee
ORDER BY SALARY;

SELECT Salary,COUNT(*)
FROM Employee
GROUP BY SALARY;