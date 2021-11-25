-- AND OR NOT OPERATOR USING WHERE CLAUSE


USE QUERIES;

CREATE TABLE teachers
(
ID int,
Name varchar(30),
Age int
);

INSERT INTO teachers VALUES (01,'Bhola_Sir',35),
                            (02,'Ravi_Sir',40),
							(03,'Nayak_Sir',37),
							(04,'Bijya_Sir',30),
							(05,'Shyam_Sir',25),
							(06,'Manmohan_Sir',45);
SELECT * FROM teachers;

--AND OPERATOR TO VIEW TABLE
SELECT * FROM teachers
WHERE NAME = 'bhola_sir' AND age = 35;

--AND OPERATOR TO VIEW COLUMN
SELECT ID
FROM teachers
WHERE ID = 1 AND NAME = 'bhola_sir';

--AND OPERATOR TO VIEW COLUMNS
SELECT ID,NAME,age
FROM teachers
WHERE ID =1 AND age = 35;

--OR OPERATOR TO VIEW TABLE
SELECT * FROM teachers
WHERE NAME = 'bhola_sir' OR age = 40;

--OR OPERATOR TO VIEW COLUMN
SELECT ID
FROM teachers
WHERE ID =6 OR age = 40;

--OR OPERATOR TO VIEW COLUMNS
SELECT ID,age
FROM teachers
WHERE ID =1 OR age = 25;

--NOT OPERATOR TO VIEW TABLE
SELECT * FROM teachers
WHERE NOT NAME = 'ravi_sir';
