-- Consider the relation:
-- EMPLOYEE(E_id, E_name, Age, Salary)
-- Write an SQL query to count the total number of employees in the EMPLOYEE table.
-- Write an SQL query to count the number of employee names available in the EMPLOYEE table.
-- Write an SQL query to find the maximum and minimum age of employees in the EMPLOYEE table.
-- Write an SQL query to display the salaries of all employees in ascending order.
-- Write an SQL query to display only employee names and salaries.


USE lab;
CREATE TABLE EMPLOYEE(
    E_id INT PRIMARY KEY,
    E_name VARCHAR(50),
    Age INT,
    Salary INT
);
INSERT INTO EMPLOYEE VALUES(101,"abc",27,90000);

INSERT INTO EMPLOYEE VALUES(102,"xyz",27,90000);

INSERT INTO EMPLOYEE VALUES(103,"uvw",27,90000);

INSERT INTO EMPLOYEE VALUES(104,NULL,45,456);

SELECT COUNT(*) AS Total_emp FROM EMPLOYEE;

SELECT COUNT(E_name) AS Num_Emp_Names FROM EMPLOYEE;

SELECT MAX(Age),MIN(age)  FROM EMPLOYEE;

SELECT Salary FROM EMPLOYEE
ORDER BY Salary
ASC;

SELECT E_name,Salary FROM EMPLOYEE;


