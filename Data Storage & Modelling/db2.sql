DROP TABLE INSTRUCTOR;

CREATE TABLE INSTRUCTOR(
	ins_id integer ,
	lastname varchar(30),
	firstname varchar(30),
	city varchar(30),
	country varchar(30),
	ins_age varchar(2)
);

INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(1,'CAUCHI','JONATHAN','VICTORIA','MALTA',23);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(2,'CAUCHI','JURGEN','LONDON','UK',33);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(3,'CAUCHI','FRANZ','LVIV','UKRAINE',35);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(4,'CAUCHI','LAURA','BERLIN','GERMANY',27);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(5,'CAUCHI','SONYA','MANCHESTER','UK',33);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(6,'CAUCHI','GEORDIE','KIEV','UKRAINE',35);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(7,'CAUCHI','DEAN','BUDAPEST','HUNGARY',42);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(8,'CAUCHI','MARISSA','STOCKHOLM','SWEDEN',31);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(9,'CAUCHI','GEORGE','BELFAST','NORTHERN IRELAND',55);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(10,'CAUCHI','MICHAEL','MARSALFORN','MALTA',73);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(11,'CAUCHI','FLAVIUS','BIRMINGHAM','UK',45);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(12,'CAUCHI','MARCUS','MUNICH','GERMANY',39);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(13,'CAUCHI','AURELIUS','AMSTERDAM','NETHERLANDS',28);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(14,'CAUCHI','MAXIMUS','LIVERPOOL','UK',63);
INSERT INTO INSTRUCTOR(ins_id, lastname, firstname, city, country, ins_age) VALUES(15,'CAUCHI','AUGUSTUS','ROME','ITALY',39);

select * from INSTRUCTOR;

SELECT lastname, firstname FROM INSTRUCTOR WHERE ins_id = 2;

SELECT * FROM INSTRUCTOR WHERE lastname like  'C%';

SELECT * FROM INSTRUCTOR WHERE ins_age between 25 and 40;

SELECT * FROM INSTRUCTOR WHERE ins_age >= 25 and  ins_age <=40;

SELECT * FROM INSTRUCTOR WHERE country IN ('MALTA','UK');

SELECT country FROM INSTRUCTOR order by 1;

SELECT distinct(country) FROM INSTRUCTOR;

SELECT country, count(country) as count FROM INSTRUCTOR GROUP BY country;

SELECT country, count(country) as count FROM INSTRUCTOR GROUP BY country HAVING count(country) >1;

