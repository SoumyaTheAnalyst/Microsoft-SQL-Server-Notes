--ALTER COMMAND WILL ADD COLUMN TO AN EXISTING TABLE

USE QUERIES;

CREATE TABLE employees
(
id INT,
name VARCHAR(30),
salary INT
);

INSERT INTO employees values(101,'soumya',30000),
					        (102,'sameer',40000),
					        (103,'himanshu',35000),
					        (104,'tarun',45000),
					        (105,'sagar',25000);

SELECT * FROM employees;

---ALTER COMMAND TO ADD COLUMN
ALTER TABLE employees
ADD city VARCHAR(50);

SELECT * FROM employees;

--UPDATE COMMAND IS USED TO UPDATE DATA IN AN EXISTING TABLE
UPDATE employees
SET city = 'berhempur';

SELECT * FROM employees;

UPDATE employees
SET city ='vizag'
WHERE name = 'tarun';

SELECT * FROM employees;

--NULL VALUES IN RECORDS
INSERT INTO employees VALUES (106, NULL,42000,'buguda');

SELECT * FROM employees;

--UPDATING
UPDATE employees
SET NAME = 'sekhar'
WHERE NAME IS NULL;

SELECT * FROM employees;

UPDATE employees
SET salary =50000
WHERE ID = 104;

SELECT * FROM employees;

--DISTINCT COMMAND IS USED TO SHOW DIFFERENT VALUE IN RETURN IGNORING THE REPETITIVE VALUES
SELECT * FROM employees
SELECT DISTINCT city FROM employees;

--DELETE A COLUMN FROM A TABLE
ALTER TABLE employees DROP COLUMN salary;

SELECT * FROM employees;
