--SQL CONSTRAINTS

USE QUERIES;

CREATE TABLE applicants
(
ID INT PRIMARY KEY,
NAME VARCHAR (30) NOT NULL,
MOB BIGINT UNIQUE,
MAIL_ID VARCHAR (30) UNIQUE,
AGE INT CHECK (AGE>20),
CITY VARCHAR (30) DEFAULT 'HYD'
);

INSERT INTO applicants VALUES (1,'soumya',9692345797,'soumya@gmail.com',24,default),
							  (2,'sameer',9692645797,'sameer@gmail.com',23,default),
							  (3,'sagar',9692355797,'sagar@gmail.com',26,default),
							  (4,'kishan',9692545797,'kishan@gmail.com',21,default),
							  (5,'tarun',9692345597,'tarun@gmail.com',22,default),
							  (6,'himanshu',9692035797,'himanshu@gmail.com',25,default),
							  (7,'ranjeet',9693455797,'ranjeet@gmail.com',21,default),
							  (8,'debasish',9923455797,'debasish@gmail.com',22,default),
							  (9,'arun',9692345767,'arun@gmail.com',23,default);

SELECT * FROM applicants;


--another way to add values in a column by not typing default

INSERT INTO applicants(ID,NAME,MOB,MAIL_ID,AGE)VALUES (10,'SATISH',5566882299,'SATISH@GMAIL.COM',22);

SELECT * FROM applicants;
