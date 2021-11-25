--MySQL IF & CASE Statement

CREATE TABLE CLASS
(
Id int identity,
Name varchar (20),
Gender_Id int
);

INSERT INTO CLASS values ('ram', 1),
						 ('shyam', 1),
				         ('sita', 2),
			    	     ('gita', 2),
					     ('gopal', 1),
			    	     ('krushna', 1),
					     ('radha', 2),
				         ('jeevan', 1),
			      	     ('deepak', 1),
						 ('ashok', 1);
						 
SELECT * FROM CLASS;     

--USING IIF FUNCTION

DECLARE @Gender_Id INT
SET @Gender_Id = 1

SELECT IIF (@Gender_Id = 1, 'male','female') AS Gender;

SELECT NAME, Gender_Id,
IIF (Gender_Id = 1, 'male', 'female') AS Gender
FROM CLASS;


--USING CASE Statement

SELECT NAME, Gender_Id,
CASE  
	WHEN Gender_Id = 1
	THEN 'male'
	ELSE 'female'
END AS Gender
FROM CLASS;


