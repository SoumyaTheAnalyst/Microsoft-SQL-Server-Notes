--CREATING A DATABASE TO STORE DATA
--CREATE DATABASE database_name;


CREATE DATABASE QUERIES;
USE QUERIES;

--CREATING TABELE TO STORE DATA IN DATABASE ALONG WITH DATA TYPES
--CREATE TABLE TABLE_NAME();


CREATE TABLE StudentDetails
(
student_id bigint,
student_name varchar(8000),
mobile_number bigint,
branch varchar(8000)
);


--incerting data in to table
-- INSERT INTO TABLE_NAME VALUES(VALUE 1,VALUE 2 ...);


insert into StudentDetails values(150101120034, 'soumya', 9692345797, 'cse'),
                                 (150101120017, 'sameer', 7788556699, 'mech'),
						         (150101120003, 'tarun', 6645982672, 'ece'),
						         (150101120043, 'himanshu', 9861628996, 'civil');


--SELECT STATEMENT IS USED TO DISPLAY RECORDS FROM THE TABLE
--TO VIEW TABLE
--SELECT * FROM TABLE_NAME;


SELECT * FROM StudentDetails;


--TO VIEW A PERTICULAR COLUMN/COLUMNS
--SELECT COLUMN_NAME FROM TABLE_NAME;


SELECT student_id FROM StudentDetails;
SELECT student_name, branch FROM StudentDetails;


--TO VIEW NON REPETITIVE DATA FROM THE TABLE
--SELECT DISTINCT COL1,COL2.... FROM TABLE NAME;


SELECT DISTINCT mobile_number FROM StudentDetails;