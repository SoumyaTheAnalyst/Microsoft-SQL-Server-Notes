--SQL WINDOWS FUNCTION / ANALYTIC FUNCTION / RANK FUNCTIONS

CREATE TABLE Tbl_Rank
(
ID INT,
NAME VARCHAR (20),
GENDER VARCHAR (20),
SALARY INT,
);

INSERT INTO Tbl_Rank VALUES (101,'RAM', 'MALE', 10000),
							(102,'SHYAM', 'MALE', 12000),
							(103,'SEETA', 'FEMALE', 23000),                    --drop table Tbl_Rank;
							(104,'GEETA', 'FEMALE', 10500),
							(105,'MANOJ', 'MALE', 20000),
							(106,'CHANDAN', 'MALE', 14000),
							(107,'REETA', 'FEMALE', 15000),
							(105,'MANOJ', 'MALE', 20000),
							(107,'REETA', 'FEMALE', 15000),
							(110,'GAYATRI', 'FEMALE', 27000);

SELECT * FROM Tbl_Rank;

SELECT * FROM CUSTOMERS;
--Syntax : 
	--RANK() OVER (ORDER BY Col1, Col2, ...)										RANK----1 1 3 4 5 6 
	--DENSE_RANK() OVER (ORDER BY Col1, Col2, ...)                                  DENSE RANK-----1 1 2 3 4 4 5 6
	--NTILE (Number_of_Groups) OVER (ORDER BY Col1, Col2, ...)                      NTILE-----1 1 1 2 2 2 3 3 3
	--ROW_NUMBER() OVER (ORDER BY Col1, Col2)                                       ROW_NUMBER-----1 2 3 4 5 6 7 8 9


SELECT NAME, GENDER, salary,
RANK() OVER (ORDER BY salary DESC) AS [RANK],
DENSE_RANK() OVER (ORDER BY salary DESC) AS [DENSE_RANK],
NTILE(3) OVER (ORDER BY salary) AS [NTILE],
ROW_NUMBER() OVER (ORDER BY GENDER) AS [ROW_NUMBER]
FROM Tbl_Rank;

--WITH PARTITION BY CLAUSE
--Syntax : 
	--RANK() OVER (PARTITION BY col_name ORDER BY Col1, Col2, ...)
	--DENSE_RANK() OVER (PARTITION BY col_name ORDER BY Col1, Col2, ...)
	--NTILE() OVER (PARTITION BY col_name ORDER BY Col1, Col2, ...)
	--ROW_NUMBER() OVER (PARTITION BY col_name ORDER BY Col1, Col2) 


SELECT NAME, GENDER, salary,
RANK() OVER (PARTITION BY GENDER ORDER BY salary DESC) AS [RANK],
DENSE_RANK() OVER (PARTITION BY GENDER ORDER BY salary DESC) AS [DENSE_RANK],
NTILE(3) OVER (PARTITION BY GENDER ORDER BY GENDER) AS [NTILE],
ROW_NUMBER() OVER (PARTITION BY GENDER ORDER BY GENDER) AS [ROW_NUMBER]
FROM Tbl_Rank;


--USE CASE FOR RANK AND DANSE RANK FUNCTION

SELECT * FROM Tbl_Rank ORDER BY salary DESC;

WITH RESULT AS
(
SELECT NAME, GENDER, salary,
RANK() OVER (ORDER BY salary DESC) AS [salary_RANK],
DENSE_RANK() OVER (ORDER BY salary DESC) AS [salary_DENSE_RANK]
FROM Tbl_Rank
)
SELECT TOP 1 salary FROM RESULT WHERE salary_RANK = 1 ;


--to delete duplicate record

with Tbl_Rank_Cte as
(
select *, row_number() over (partition by id order by id) as rownumber
from Tbl_Rank
)
delete  from Tbl_Rank_Cte where rownumber > 1;

select * from Tbl_Rank;




