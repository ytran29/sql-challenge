CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR (30)
);
CREATE TABLE Employees (s
	emp_no INT PRIMARY KEY, 
	birth_date date,
	first_name VARCHAR (25),
	last_name VARCHAR (25),
	gender VARCHAR (7),
	hire_date date
);
CREATE TABLE dept_emp(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date date,
	to_date date,
	PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	from_date date,
	to_date date,
	PRIMARY KEY (dept_no, emp_no)
);
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date date,
	to_date date	
);
CREATE TABLE titles(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	title VARCHAR,
	from_date date,
	to_date date
);
SELECT * FROM titles
--DROP TABLE titles