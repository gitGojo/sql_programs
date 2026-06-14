USE lab;

DROP TABLE Employee;
CREATE TABLE Employee(
    EmpNo INT PRIMARY KEY,
    EName VARCHAR(50),
    Job VARCHAR(20),
    MGR DECIMAL(10,2),
    Salary DECIMAL(10,2)
);

ALTER TABLE Employee
    ADD Commission DECIMAL(10,2) ;

DESCRIBE Employee;

INSERT INTO Employee VALUES(101,"Ram","CEO",123,90000.00,900.00);
INSERT INTO Employee VALUES(102,"Sita","Manager",124,900020.00,9200.00);
INSERT INTO Employee VALUES(103,"Laxman","Employee",125,900200.00,9010.00);

UPDATE Employee
SET Job="CEO"
WHERE EName="Sita";

ALTER TABLE Employee
    RENAME COLUMN MGR TO ManagerNo;

DELETE FROM Employee WHERE EmpNo=103;

SELECT * FROM Employee;