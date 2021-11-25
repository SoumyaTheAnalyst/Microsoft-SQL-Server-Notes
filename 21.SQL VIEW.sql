--SQL VIEW

SELECT * FROM employee;


--to create a view

CREATE VIEW VwEmp
AS
SELECT * FROM employee;

SELECT * FROM VwEmp;

--to see row level security of view 

CREATE VIEW VwEmpByDept
AS
SELECT * FROM employee 
WHERE dept = 'cse';

SELECT * FROM VwEmpByDept;

--to modify a view

ALTER VIEW VwEmpByDept
AS
SELECT * FROM employee 
WHERE salary = 50000;

SELECT * FROM VwEmpByDept;

--to delete a view

DROP VIEW vwemp;
DROP VIEW VwEmpByDept;