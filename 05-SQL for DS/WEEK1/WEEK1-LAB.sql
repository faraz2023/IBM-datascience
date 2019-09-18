drop table INSTRUCTOR;
create table INSTRUCTOR(
	ins_id INT PRIMARY KEY NOT NULL,
	lastname VARCHAR(20) NOT NULL,
	firstname VARCHAR(20) NOT NULL,
	city VARCHAR(10),
	country CHAR(2)
);

INSERT INTO INSTRUCTOR
	(ins_id, lastname, firstname, city, country)
	VALUES
	(1, 'Ahuja', 'Rav', 'Toronto', 'CA'),
	(2, 'faraz', 'khosh', 'Toronto', 'CA'),
	(3, 'Sar', 'khosh', 'Nwyork', 'US');
	
SELECT * from INSTRUCTOR;

SELECT firstname, lastname, country from INSTRUCTOR
	WHERE city='Toronto';
	
UPDATE INSTRUCTOR
	SET city= 'Markham'
	WHERE lastname = 'Ahuja';
	
SELECT * from INSTRUCTOR;

DELETE from INSTRUCTOR
	WHERE lastname = 'faraz';
	
SELECT * from INSTRUCTOR
	

	