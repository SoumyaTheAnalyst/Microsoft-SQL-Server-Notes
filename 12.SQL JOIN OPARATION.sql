--SQL JOIN OPARATION

CREATE DATABASE PHARMA;
USE PHARMA;
CREATE TABLE customer
(
id int,
name varchar (20),
gender varchar (20),
city varchar (20)
);


insert into customer values (1,'ram','male','blr'),
                            (2,'sam','male','blr'),
							(3,'sita','female','hyd'),
							(4,'gita','female','hyd');

select * from customer;

CREATE TABLE product
(
id int,
product varchar (20),
cost int
);

insert into product values (1,'cold',200),
                           (2,'fever',300),
						   (3,'BP',500);

SELECT * FROM product;

--INNER JOIN 
--SELECT * FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;


SELECT * FROM CUSTOMER;
SELECT * FROM product;
SELECT * FROM customer join product ON customer.id = product.id;

--LEFT OUTER JOIN
--SELECT * FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;


SELECT * FROM CUSTOMER;
select * from product;
SELECT * FROM customer LEFT join product ON customer.id = product.id;

--RIGHT OUTER JOIN
--SELECT * FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;


SELECT * FROM CUSTOMER;
select * from product;
SELECT * FROM customer RIGHT join product ON customer.id = product.id;

--FULL OUTER JOIN
--SELECT * FROM table1 FULL JOIN table2 ON table1.column_name = table2.column_name;


SELECT * FROM CUSTOMER;
select * from product;
SELECT * FROM customer FULL join product ON customer.id = product.id;

--CROSS JOIN
--SELECT * FROM TABLE1 CROSS JOIN TABLE2

SELECT * FROM CUSTOMER;
select * from product;
SELECT * FROM customer CROSS join product;

--SELF JOIN

CREATE TABLE DATAGYAN
(
e_id int,
name varchar(20),
m_id int
);

INSERT INTO DATAGYAN VALUES (1,'sachin',2),
							(2,'bikash',3),
							(3,'rohan',4),
							(4,'rupa',1),
							(5,'ganesh',2);

SELECT * FROM DATAGYAN;

--SELECT sub_table_name1 . column_name(E.NAME) AS EMP_NAME, sub_table_name2 . column_name(M.NAME) AS MANAGER_NAME 
--FROM table_name AS sub_table_name1(E) SELF JOIN table_name AS sub_table_name2(M)
--ON sub_table_name1 . column_name(E.e_id) = sub_table_name2 . column_name(M.m_id)

SELECT E.NAME AS EMP_NAME, M.NAME AS MANAGER_NAME 
FROM DATAGYAN AS E JOIN DATAGYAN AS M 
ON E.e_id = M.m_id;
