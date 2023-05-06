-- CREATION OF CONTACT TABLE
CREATE TABLE CONTACT(
ID INT PRIMARY KEY NOT NULL,
EMAIL VARCHAR(50),
FNAME VARCHAR(50),
LNAME VARCHAR(40),
COMPANY VARCHAR(40),
ACTIVE_FLAG INT ,
OPT_OUP INT );

-- INSERTION OF CONTACT TABLE
INSERT INTO CONTACT VALUES(123,'A@A.COM','KIAN','SITH','ABC',1,1),
(133,'B@A.COM','NEHA','SETH','ABC',1,0),
(234,'C@C.COM','PURU','MALIK','CDF',0,0),
(342,'D@D.COM','SID','MAAN','PEG',1,0);
SELECT *FROM CONTACT;

-- Select all columns from the contact table where the active flag is 1
SELECT *FROM CONTACT WHERE ACTIVE_FLAG=1;

-- Deactivate contacts who are opted out 
DELETE FROM CONTACT WHERE OPT_OUP=1;

-- Delete all the contacts who have the company name as ‘ABC’
DELETE FROM CONTACT WHERE COMPANY='ABC';

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO CONTACT VALUES(658,'MILI@GMAIL.COM','MILI','MAY','DGH',1,1);

-- Pull out the unique values of the company column 
SELECT DISTINCT COMPANY FROM CONTACT;

-- Update name “mili” to “niti”.
UPDATE CONTACT SET FNAME='NITI' WHERE FNAME='MILI';

SELECT *FROM CONTACT;