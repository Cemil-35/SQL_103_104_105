-- Database: Techpro

-- table oluşturma;

CREATE TABLE students
(
student_id SMALLINT,
student_name VARCHAR(50),
student_age SMALLINT,
student_dob DATE
);


-- 2. yol
CREATE TABLE student_name_age
AS SELECT student_name,student_age
FROM students;



SELECT *FROM student_name_age;

CREATE TABLE students
(
student_id SMALLINT PRIMARY KEY, --> STUDENT İD null değerler dışında tektarsız olmalı
student_name VARCHAR(50) NOT NULL,
student_age SMALLINT,
student_dob DATE UNIQUE
);

--2.YOL

CREATE TABLE students
(
student_id SMALLINT,
student_name VARCHAR(50),
student_age SMALLINT,
student_dob DATE,
CONSTRAINT	student_id_pk PRIMARY KEY(student_id)
);

-- foreign key
CREATE TABLE parents
(
student_id SMALLINT,
parent_name	VARCHAR(50),
phone_number CHAR(11),	
CONSTRAINT student_id_pk PRIMARY KEY(student_id)	
	
	
);


CREATE TABLE students
(
student_id SMALLINT,
student_name VARCHAR(50),
student_age SMALLINT,
student_dob DATE,
CONSTRAINT student_id_fk FOREIGN KEY(student_id) REFERENCES parents(student_id)
);


--check constraint

CREATE TABLE students
(
student_id SMALLINT,
student_name VARCHAR(50),
student_age SMALLINT,
student_dob DATE,
CONSTRAINT student_age_check CHECK(student_age BETWEEN 0 AND 30),
CONSTRAINT student_name_check CHECK(student_name=UPPER(student_name))	
	
);

-- table veri nasıl girilir


CREATE TABLE students
(
student_id SMALLINT PRIMARY KEY,
student_name VARCHAR(50) UNIQUE,
student_age SMALLINT NOT NULL,
student_dob DATE,
CONSTRAINT student_age_check CHECK(student_age BETWEEN 0 AND 30),
CONSTRAINT student_name_check CHECK(student_name=UPPER(student_name))	
	
);
INSERT INTO students VALUES(101,'ALİ CAN',13,'10-Aug-2008'); 
INSERT INTO students VALUES(102,'VELİ HAN',14,'10-Aug-2007'); 
INSERT INTO students VALUES(103,'AYSE HAN',14,'10-Aug-2007'); 

-- Integer degerler single quote ile veya yalın kullanılabilir

INSERT INTO students VALUES(104,'KEMAL KUZU',14,NULL); 
INSERT INTO students VALUES(105,'TOM HANKS',15,'12-SEP-1996'); 
INSERT INTO students VALUES(106,'ANGELİNA JULIE',30,'12-SEP-1987'); 

INSERT INTO students(student_id,student_age) VALUES(108,17);

-- VAR OLAN BİR DATA NASIL DEGİSTİRİLİR

UPDATE students
SET student_name='LEO OCEAN'
WHERE student_id=108;

UPDATE students
SET student_dob='11-dec-1997'
WHERE student_id=109;

SELECT *FROM students;


