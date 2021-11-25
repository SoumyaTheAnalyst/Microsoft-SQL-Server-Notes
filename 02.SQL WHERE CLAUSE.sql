--WHERE CLAUSE IS USED TO FILTURE RECORDS

USE QUERIES;

CREATE TABLE employee
(
emp_id int,
emp_name varchar(8000),
dept varchar(8000),
salary int
);

INSERT INTO employee values(01,'soumya','cse',30000),
                           (02,'sagar','ece',20000),
						   (03,'kishan','civil',50000),
						   (04,'jyoti','eee',25000);


--SELECT * FROM TABLE_NAME
---WHERE CLAUSE;



SELECT * FROM employee
WHERE salary = 30000;

SELECT * FROM employee
WHERE salary > 20000;

SELECT * FROM employee
WHERE salary < 25000;

SELECT * FROM employee
WHERE salary >= 25000;

SELECT * FROM employee
WHERE salary <= 25000;

SELECT * FROM employee
WHERE salary != 30000;

SELECT * FROM employee
WHERE salary BETWEEN 25000 AND 50000;

SELECT * FROM employee
WHERE salary IN (20000,30000,25000);

SELECT * FROM employee
WHERE salary NOT BETWEEN 20000 AND 30000;

SELECT * FROM employee
WHERE salary NOT IN (20000,30000,500000);

--WHERE CLAUSE CAN ALSO BE USED IN UPDATE AND DELETE STATEMENTS
--UPDATE TABLE_NAME
--SET COL1=VAL1,COL2=VAL2,COL3=VAL3
--WHERE condition;


UPDATE employee
SET dept = 'mech'
WHERE emp_id = 04;

SELECT salary FROM employee
where salary = 30000;

--WHERE NOT CLAUSE

SELECT * FROM employee
WHERE NOT salary = 30000;