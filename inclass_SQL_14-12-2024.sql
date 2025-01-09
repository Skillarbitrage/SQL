-- to create a database

CREATE DATABASE db1; 

-- to use/open a database

USE db1;

-- DDL commands >>> CREATE , DROP , ALTER TABLE, TRUNCATE

-- DML commands >>> INSERT INTO, DELETE , UPDATE

-- DQL commands >>> SELECT

-- to a create table

-- frequently used datatypes in SQL >>>> INT, FLOAT, CHAR(10), VARCHAR(50)


9841 _ _ _ _ _ _ >>>> 1 set of byte

_ _ _ _ _ _ _ _ _ _ >>>> next set of byte


name_of_customer VARCHAR(50)
USHI _______________________________________________________


CREATE TABLE student
( roll_number int PRIMARY KEY,
name_student varchar(20),
age int CHECK age>0,
score float 
);

select * from students;

-- to see the structure table
DESC student;


-- ALTER stuructre

-- to add a new attribute
ALTER TABLE student add course varchar(15);
ALTER TABLE student add course varchar(15) FIRST;
ALTER TABLE student add course varchar(15) AFTER roll_number;

SELECT * FROM student;


-- to remove/delete attribute >>>> DROP

ALTER TABLE student DROP course;


-- to change the existing datatype >>>>> MODIFY

ALTER TABLE student MODIFY age float;


-- rename the column >>> RENAME COLUMN

ALTER TABLE student RENAME COLUMN score TO Marks;

-- replace the column name and datatype both

ALTER TABLE student CHANGE Marks score int;


MODIFY >>>> used to change datatype only
RENAME COLUMN >>> used to change the name only
CHANGE >>> used to change the datatype and name both




-- to a create table
CREATE TABLE students
(course VARCHAR(15), age int, mark float, rollno int ,name VARCHAR(20));

 
 Truncate -- delete all data and retain the data structure 
 truncate from students;
 
 -- Tell me the difference between delete and truncate.
 delete >>> DML, daily operations, rollback available
 truncate >>> DDL, maintenance purpose, faster execution
 
 desc students;
 
 SELECT * FROM students;
 
 CREATE TABLE students
(course VARCHAR(15), age int, mark float, rollno int ,name VARCHAR(20));

 -- DML update, insert, delete
 insert into students values ('DSE', 25, 80, 43 ,'FERDIANAND');
 
 select * from students;
 
 insert into students values ('DSE', 25, NULL, 43 ,'ASHOK');
 
 insert into students
 (age, course, mark, rollno, name)
 values
 (27,'AI', 75, 102, 'CHETAN');
 
  insert into students 
  (rollno, name, course, age)
  values
 (103, 'ZZZ', 'DSE', 27);
 
 select * from students;


-- svsvsjvs


 
 ### DQL >> To fetch the information from the existing table
 
select * from students;

select rollno, name from students;

desc students;
-- list all tables under the database
show tables;

insert into students values 
(105, 'vidya', 'DSE', 35, 78),
(106, 'Ravi', 'BABI', 29, 67);


DML >>>> INSERT INTO, UPDATE, DELETE

-- update score of student with roll number 103 to 82 marks

UPDATE students SET mark= 67
WHERE rollno = 103;

select * from students;

update students set mark=90
where course='DSE';


-- Delete
delete from students;

delete from students
where rollno=106;




-- date datetime time

create table date_type
(
dt date,
dtime datetime,
ti time
);

desc date_type;

select current_date() from dual;
select current_time() from dual;
select now() from dual;


insert into date_type
values
(current_date(),now(), current_time());

select * from date_type;

select current_date(), current_time(), now() from dual;



insert into date_type
values
('2020-01-28','2020-02-15 08:30:00', '20:25:12');

-- 28-01-2020 / YYYY-MM-DD
 -- 08:30:00/HH:MM:SS


select * from employees;
 
 -- list the employee_id and first_name for those salary is greater than 10000

select employee_id , first_name , salary FROM employees WHERE salary > 10000;


 
 -- list the employees working for department 80 
 
 SELECT employee_id , first_name, department_id FROM employees WHERE department_id = 80;

 
 -- list employees other than working for department 30

 SELECT employee_id , first_name, department_id FROM employees WHERE department_id <> 30;
  
  -- list employees who are working for department 80 and 90 both

SELECT employee_id , first_name, department_id FROM employees WHERE department_id IN (80,90,60,30);
  
-- list employees working for dept 80 and earning salary more than 5000

SELECT employee_id , first_name, salary, department_id FROM employees 
WHERE department_id = 80
AND salary >5000;
  



 
 -- List employees working for 80 90 100 120
 
 SELECT employee_id , first_name, department_id FROM employees 
 WHERE department_id IN (80,90,100,120);
  

 
 -- list employees who are earning salary > 5000 and <10000 
 
 SELECT employee_id , first_name, department_id, salary FROM employees 
 WHERE salary > 5000 AND salary <= 10000;
 
 between >>>>>>> to include both values as well
 
 
 -- Like operator
 -- soundex, pattern matching
 -- wild card char % multiple char, _ single char
 
 -- % >>>> any number of character
 
 -- list first_name whose name starts with 's'
 
 SELECT first_name FROM employees WHERE first_name LIKE 's%' ;
 
 

 
 -- list first_name whose name ends with 's'
 
  SELECT first_name FROM employees WHERE first_name LIKE '%s' ;

 
 -- list first_name whose name contain 'le'
 
  SELECT first_name FROM employees WHERE first_name LIKE '%le%' ;

 
 -- list first_name whose name contains 'l' as second character
 
SELECT first_name FROM employees WHERE first_name LIKE '_l%' ;

SELECT first_name FROM employees WHERE first_name LIKE '_____' ;











