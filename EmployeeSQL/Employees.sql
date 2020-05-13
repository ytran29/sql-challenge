SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries ON (employees.emp_no = salaries.emp_no);

SELECT*
FROM departments
WHERE hire_date >='1986-01-01'
ORDER BY hire_date;

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, 
dept_manager.from_date, dept_manager.to_date
FROM dept_manager INNER JOIN departments 
	ON (dept_manager.dept_no = departments.dept_no)
INNER JOIN employees 
	ON (dept_manager.emp_no = employees.emp_no);
	
SELECT departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp INNER JOIN employees
	ON (dept_emp.emp_no = employees.emp_no)
INNER JOIN departments
	ON (dept_emp.dept_no = departments.dept_no);
	
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp INNER JOIN employees
	ON (dept_emp.emp_no = employees.emp_no)
INNER JOIN departments
	ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales';

SELECT departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp INNER JOIN employees
	ON (dept_emp.emp_no = employees.emp_no)
INNER JOIN departments
	ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name IN ('Sales', 'Development')
ORDER BY last_name;

SELECT last_name, COUNT (last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
	
	


