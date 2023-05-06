-- creation of customer table
CREATE TABLE CUSTOMERS(
CUSTOMER_ID INT PRIMARY KEY NOT NULL,
CUST_NAME VARCHAR(50),
CITY VARCHAR(50),
GRADE INT,
SALESMAN_ID INT); 
-- INSERTING VALUES INTO CUSTOMER TABLE
INSERT INTO CUSTOMERS VALUES(3002,'NICK RIMANDO','NEW YORK',100,5001),
(3007,'BRAD DAVIS','NEW YORK',200,5002),
(3005,'GRAHAAM ZUSI','CALIFORNIA',200,5002),
(3008,'FABIAN JOHNSON','PARIS',300,5006),
(3009,'GEOFF CAMERON','BETLIN',100,5003),
(3003,'JOZY ALTIDOR','MOSCOW',200,5007),
(3001,'BRAD GUZAN','LONDON', 100,5005);

-- CREATION OF SALESMAN TABLE
CREATE TABLE SALESMANS(
SALESMAN_ID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(50),
CITY VARCHAR(50),
COMMISSION float);

-- INSERTION OF DATA INTO SALESMANS TABLE
INSERT INTO SALESMANS VALUES(5001,'JAMES HOOG','NEW YORK',0.15),
(5002,'NAIL KNITE','PARIS',0.13),
(5005,'PIT ALEX','LONDON',0.11),
(5006,'MC LYON','PARIS',0.14),
(5007,'PAUL ADAM','ROME',0.13),
(5003,'LAUSON HEN','SAN JOSE',0.12);
SELECT CUSTOMERS.CUST_NAME ,CUSTOMERS.CITY,CUSTOMERS.GRADE,SALESMANS.NAME AS "SALESMAN",SALESMANS.CITY FROM CUSTOMERS LEFT OUTER JOIN SALESMANS ON SALESMANS.SALESMAN_ID=SALESMANS.SALESMAN_ID WHERE CUSTOMERS.GRADE<100 ORDER BY CUSTOMERS.CUSTOMER_ID;