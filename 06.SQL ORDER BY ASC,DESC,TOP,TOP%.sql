--ORDER BY ASC,DESC,TOP,TOP%

USE QUERIES;

CREATE TABLE university
(
serial_number int,
branch varchar(30),
number_of_students int
);

INSERT INTO university values (01,'cse',45),
							 (02,'ece',35),
							 (03,'eee',26),
							 (04,'mech',30),
							 (05,'civil',28),
							 (06,'petro_chem',03),
							 (07,'b_tech_ag',200),
							 (08,'bsc_ag',500);

SELECT * FROM university;

--ASCENDING ORDER
SELECT * FROM university
ORDER BY number_of_students ASC;

--DESCENDING_ORDER
SELECT * FROM university
ORDER BY branch DESC;

---TOP CLAUSE FROM TABLE
SELECT TOP 3* 
FROM university

SELECT TOP 3 number_of_students
FROM university;

--TOP PERCENT FROM COLUMN/COLUMNS
SELECT TOP 3 branch , number_of_students
FROM university;

--TOP PERCENT FROM TABLE
SELECT * FROM university
SELECT TOP 50 PERCENT * FROM university;

--TOP PERCENT FROM COLUMN,COLUMNS
SELECT TOP 50 PERCENT branch, number_of_students
FROM university;

SELECT * FROM university;
SELECT TOP 5* FROM university
WHERE number_of_students BETWEEN 100 AND 1000



