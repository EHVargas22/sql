-- CREATE TABLES --

-- Titles table
CREATE TABLE titles
(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM titles;


-- Employees table 
CREATE TABLE employees
(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;


-- Departments table
CREATE TABLE departments
(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;


-- Department Managers table
CREATE TABLE dept_managers
(
	dept_no	VARCHAR,
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_managers;


-- Department Employees table
CREATE TABLE dept_employees
(
	emp_no INT,
	dept_no	VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_employees;


-- Salaries table
CREATE TABLE salaries
(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
