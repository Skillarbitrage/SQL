CREATE DATABASE Visionary_Software;


USE Visionary_Software;

# Creating our very first table whose name is employees
CREATE TABLE employees (
    id INT ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Modify -- change the data type of column email to char with maximum character length 100

ALTER TABLE employees MODIFY email char(100);


-- Rename column email to emails

ALTER TABLE employees RENAME COLUMN email TO EMAILS;

-- Change name of column emails to email and change data type to varchar with maximum character length 100

ALTER TABLE EMPLOYEES CHANGE EMAILS EMAIL VARCHAR(100);


SELECT * FROM employees;


# INserting values into the table now:
INSERT INTO employees (id, first_name, last_name, email, phone_number, hire_date, job_title, salary) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-0123', '2021-01-15', 'Software Engineer', 75000.00),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '555-0456', '2020-03-22', 'Product Manager', 90000.00),
(3, 'Carol', 'Williams', 'carol.williams@example.com', '555-0789', '2019-06-10', 'UX Designer', 65000.00),
(4, 'David', 'Brown', 'david.brown@example.com', '555-1112', '2022-08-30', 'DevOps Engineer', 80000.00),
(5, 'Eva', 'Davis', 'eva.davis@example.com', '555-1314', '2023-05-05', 'QA Engineer', 60000.00);

INSERT INTO employees (id, first_name, job_title, email, phone_number, hire_date, salary, last_name)  VALUES
(6, 'Harsha', 'QA', 'harsha.id@example.com', '555-1314', '2023-05-05',60000.00, 'XYZ' );

INSERT INTO employees (id, first_name, job_title, email, phone_number, hire_date, salary, last_name)  VALUES
(9, 'Kavita', 'QA', 'harsha.id@example.com', '555-1314', '2023-05-05', 56000.00, ' ' );



-- 2.	Update Command:
-- Here we will be understanding how we can use the update and Delete in order to perform modifications in our Table. 

select * from employees;
--	Update an Employees Salary 

-- Suppose you want to give a raise to Alice, increasing her salary to  $80,000:

UPDATE employees SET salary = 80000 WHERE first_name = 'Alice' AND last_name = 'Johnson';





-- Suppose you want to change the job title of Carol Williams from "UX Designer" to "Senior UX Designer."

UPDATE employees SET job_title = 'Senior UX Designer' where first_name = 'Carol' AND last_name = 'Williams';




--	Updating Multiple Columns You can also update multiple columns at once.
-- For example, if you want to update both the job title and salary for David Brown (salary 90000 and jobtitle as senior DevOps Engineer):

UPDATE employees SET salary = 90000, job_title = 'senior DevOps Engineer' where first_name = 'David' and last_name = 'Brown';

Select * from employees;

-- Delete an Employee

#Suppose you want to remove Bob Smith from the employees table:

DELETE FROM employees where first_name = 'Bob' and last_name = 'Smith';

###############################################################


-- Use of simple SELECT Command: 


--	Select All Columns for All Employees:

Select * FROM employees;


--	Select Specific Columns for Employees:

Select id, salary, email FROM employees; 


-- SELECT Command with the = (Equal to) Operator:

-- Find all details for an employee named "David," you can use:

SELECT * FROM employees WHERE first_name = 'David';



-- SELECT Command with 

--  != or <>(Not equal to)

-- >(Greater than)

-- < (Less than)

-- >= (Greater than or equal to) 

-- <= (Less than or equal to):

-- 4.3.1 Not Equal To( != or <>):
-- To find all employees whose job title is not "Software Engineer," you can use:

SELECT * from employees where job_title <> 'Software Engineer';


-- 4.3.2 Greater Than( >):
-- To find all employees with a salary greater than $70,000, you can use:

select * from employees where salary > 70000 ; 


-- 4.3.3 Less Than(<):
-- To find all employees hired before January 1, 2020, you can use

select * from employees where hire_date < '2020-01-01';


-- 4.3.4 Greater Than or Equal To(>=):
-- To find all employees with a salary greater than or equal to $60,000, you can use:

select * from employees where salary >= 60000 ;

-- 4.3.5 Less Than or Equal To(<=):
-- To find all employees hired on or before December 31, 2022, you can use:

select * from employees where hire_date <= '2022-12-31';




-- Use of Select command with BETWEEN Operator:
-- The BETWEEN operator is used to filter results within a specified range, inclusive of the boundary values. 
-- It allows you to easily retrieve records where a column's value falls between two specified values, making it useful for analysing ranges in numerical or date data.


-- To find all employees whose salaries are between $50,000 and $80,000:

Select * from employees where salary between 50000 and 80000 ; 


-- Use of Select command with Like Operator:

-- The LIKE operator is used to search for a specified pattern in a column, 
-- allowing for flexible matching of text. It is often used with wildcard characters:
●	% represents zero or more characters.
●	_ represents a single character.

--	Using LIKE to Find Employees with a Specific Pattern:
To find all employees whose first names start with "A":

select * from employees where first_name LIKE 'A%';


--	Using LIKE to Find Employees with a Specific Substring
-- To find all employees whose last names contain "son":

SELECT * FROM employees WHERE last_name LIKE '%son%';




--	Using LIKE with a Single Character Wildcard
-- To find all employees with a last name that has "a" as the second character:

SELECT * FROM employees WHERE last_name LIKE '_a%';

--	Using NOT LIKE to Exclude a Pattern
-- To find all employees with a last name that has not "a" as the second character:

SELECT * FROM employees WHERE last_name NOT LIKE '_a%';

-- Use of SELECT Command using AND and OR operator: 

-- Using And Operator:
-- To find all employees who are "Software Engineers" and have a salary greater than $70,000:

Select * FROM employees WHERE job_title = 'Software Engineer' and salary > 70000;




-- Finding Employees Hired After a Certain Date with a Specific Job Title
-- To find employees hired after January 1, 2021, who are "Product Managers":

Select * FROM employees WHERE job_title = 'Product Mannager' and hire_date > '2021-01-01';


-- Using OR operator:
-- Finding Employees in Specific Job Titles
-- To find all employees who are either "Software Engineer" or "QA Engineer":

Select * FROM employees WHERE job_title = 'Software Engineer' or job_title = 'QA' ;

























