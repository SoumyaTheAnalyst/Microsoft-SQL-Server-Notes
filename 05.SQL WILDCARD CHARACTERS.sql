--Wildcard Characters % _ ^ [] -


USE QUERIES;

CREATE TABLE wardens(
ID INT,
NAME VARCHAR(30),
MOBILE_NUMBER BIGINT,
HSTL VARCHAR (30)
);

INSERT INTO wardens VALUES (01,'PANIGIRI',8123456789, 'BAITARANI'),
							  (02,'GIRI',1234567890, 'BANSADHARA'),
							  (03,'BABU_RAO',2345678901, 'NAGABALI'),
							  (04,'KRISHNA',3456789012, 'SAPTAGIRI'),
							  (05,'JENA',4567890123, 'MDC'),
							  (06,'MURTI',5678901234, 'ITI');
SELECT * FROM wardens;

--Abc% MEANS ANY VALUE THAT STARTS WITH Abc
SELECT * FROM wardens
WHERE NAME LIKE 'babu%';

--_UNDERSCORE OPERATOR OCCUPIES SINGLE CHARACTER
SELECT * FROM wardens
WHERE NAME LIKE 'jen_';

SELECT * FROM wardens
WHERE NAME LIKE 'pani_iri';

--(-)HYPHEN OPERATOR IS USED FOR A RANGE OF CHARACTER
SELECT * FROM wardens
WHERE NAME LIKE 'M[A-Z]%';

SELECT * FROM wardens
WHERE NAME LIKE '%[A-Z]I';

-- '^'using this operator will not allow the characters specified
SELECT * FROM wardens
WHERE NAME LIKE 'P[^an]I';