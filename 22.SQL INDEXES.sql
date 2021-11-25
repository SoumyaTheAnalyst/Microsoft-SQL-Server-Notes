--Indexes in sql server

CREATE TABLE tblemp
(
id int identity,
name varchar (20),
grnder varchar (20),
salary int
);

INSERT INTO tblemp VALUES ('ram','male',2500),
						  ('sita','female',6500),
						  ('shyam','male',4500),
						  ('gita','female',5500),
						  ('gopal','male',3100);

select * from tblemp;

--TO CREATEAN INDEX

CREATE INDEX IX_tblemp_salary
ON tblemp (salary ASC);

--TO FIND THE INDEX ON A TABLE

SP_HELPINDEX tblemp;

--TO DROP AN INDEX

DROP INDEX tblemp.IX_tblemp_salary;

--TO CREATE AN INDEX GRAPHICALLY ON THE OBJECT EXPLORER

--INDEXES -> NEW INDEX -> SET INDEX NAME AND TYPE -> SPECIFY THE COLUMN -> BOOOOOM

