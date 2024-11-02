CREATE DATABASE Visionary_Software;

USE Visionary_Software;

# Creating our very first table whose name is employees
CREATE TABLE employees (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Modify -- change the data type of column

ALTER TABLE employees MODIFY email CHAR(100);


-- Rename column

ALTER TABLE employees RENAME COLUMN email TO emails;

-- CHange name and data type both

ALTER TABLE employees CHANGE emails email varchar(100);
SELECT * FROM employees;


# Inserting values into the table now:
INSERT INTO employees (id, first_name, last_name, email, phone_number, hire_date, job_title, salary) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-0123', '2021-01-15', 'Software Engineer', 75000.00),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '555-0456', '2020-03-22', 'Product Manager', 90000.00),
(3, 'Carol', 'Williams', 'carol.williams@example.com', '555-0789', '2019-06-10', 'UX Designer', 65000.00),
(4, 'David', 'Brown', 'david.brown@example.com', '555-1112', '2022-08-30', 'DevOps Engineer', 80000.00),
(5, 'Eva', 'Davis', 'eva.davis@example.com', '555-1314', '2023-05-05', 'QA Engineer', 60000.00);


