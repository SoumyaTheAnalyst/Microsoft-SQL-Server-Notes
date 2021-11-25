--SQL_Alias

USE CUTM;

CREATE TABLE room
(
student_name varchar(30),
student_mobile bigint,
student_dob date,
student_city varchar(30)
);

INSERT INTO room VALUES ('soumya',9692345797,'1997-11-24','polasara'),
						('sagar',9692335797,'1997-01-14','berhempur'),
						('kishan',9694345797,'1997-05-22','sorada'),
						('tarun',9692445797,'1997-04-09','vizag'),
						('ranjeet',9612345797,'1997-06-28','koraput');
SELECT * FROM ROOM;						

--alias column with using "AS" function

SELECT student_mobile AS Mob_No
FROM room;

--alias column without using "AS" function

SELECT student_mobile 'Mob_No'
FROM room;

--alias column without using "AS" function and '' 

SELECT student_mobile  Mob_No FROM room;

--alias table

CREATE TABLE K
(
NAME VARCHAR(10)
);

INSERT INTO K VALUES ('HARI');

SELECT student_name,name FROM ROOM AS HSTL, K AS DAY_SCHOLER;


