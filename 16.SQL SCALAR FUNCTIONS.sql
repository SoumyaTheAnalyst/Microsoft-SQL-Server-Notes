--SQL SCALAR FUNCTIONS

CREATE TABLE EMP
(
FN VARCHAR(10),
LN VARCHAR(10),
AGE INT,
CITY VARCHAR(20),
SALARY DECIMAL(6,2)
);

INSERT INTO EMP VALUES ('Ram','Chandra',32,'DELHI',2000.56),
					   (' JHON','CINA',25,'MUMBAI',1500.21),
					   ('kapil','SHARMA',23,'BANGALORE',2000.00),
					   ('Virat ','koholi',25,'PUNE',6500.82),
					   ('lAXMAN','KUMAR',32,'KOLKATA',8500.00),
					   ('BROCK','lesnor',22,'HYDERABAD',4500.00);

SELECT * FROM EMP;

SELECT UPPER(FN) AS EMP_NAME FROM EMP;

SELECT LOWER(LN) AS EMP_NAME FROM EMP;

SELECT CONCAT(FN,' ',LN) AS FULL_NAME FROM EMP;

SELECT FN,LEN(FN) AS COUNT_CHAR FROM EMP;

SELECT FN FROM EMP ORDER BY FN ASC;

SELECT FN FROM EMP ORDER BY FN DESC;

SELECT FN,LEN(FN) AS COUNT_CHAR FROM EMP ORDER BY COUNT_CHAR;

SELECT SUBSTRING (LN,2,4) AS MID_NAME FROM EMP;

SELECT TRIM(FN) AS MY_NAME FROM EMP;

SELECT LTRIM(FN) AS MY_NAME FROM EMP;

SELECT RTRIM(FN) AS MY_NAME FROM EMP;

SELECT SUBSTRING(TRIM(FN),2,4) AS MY_NAME FROM EMP;

SELECT REPLACE(FN,'RAM','KRUSHNA') AS MY_NAME FROM EMP;

SELECT GETDATE() AS TODAY, * FROM EMP;

SELECT *, GETDATE() AS TODAY FROM EMP;

SELECT ROUND(SALARY,1) AS ROUND_SALARY FROM EMP;
select * from emp;