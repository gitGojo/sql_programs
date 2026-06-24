USE Company;

CREATE TABLE Employee(
    E_id INT PRIMARY KEY,
    E_name VARCHAR(50),
    Age INT,
    Salary FLOAT
);

INSERT INTO Employee VALUES(100,"ABC",18,123);
INSERT INTO Employee VALUES(101,"XYZ",19,124);
INSERT INTO Employee VALUES(102,"PQR",20,125);

SELECT * FROM Employee;

DELIMITER //
CREATE PROCEDURE emp_cursor_proc()
BEGIN
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE V_id INT;
    DECLARE V_name VARCHAR(50);
    DECLARE V_Age INT;
    DECLARE V_Salary FLOAT;

    DECLARE emp_cursor CURSOR FOR
    SELECT E_id,E_name,Age,Salary FROM Employee;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET done = TRUE;

    OPEN emp_cursor;
    read_loop : LOOP
        FETCH emp_cursor INTO V_id,V_name,V_Age,V_Salary;
        IF done THEN
                LEAVE read_loop;
        END IF;
        SELECT 
        V_id AS ID,
        V_name AS Name,
        V_Age AS Age,
        V_Salary AS Salary;
        END LOOP;

    CLOSE emp_cursor;
END

// DELIMITER

CALL emp_cursor_proc();

DROP TABLE Employee;

DROP PROCEDURE IF EXISTS emp_cursor_proc;