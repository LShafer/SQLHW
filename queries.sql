--List employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--List employees hired in 1986
SELECT first_name, last_name, hire_date FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List dept. manager & dept number, dept name, manager emp_no, last name, first name, and start/end employment dates.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and dept name.
SELECT dept_emp.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including employee number, last name, first name, and dept name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--List all employees in the Sales & Development departments, including employee number, last name, first name, and dept name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


--Solution to the riddle at the end. HAHA.
SELECT emp_no, last_name, first_name FROM employees
WHERE emp_no = '499942';
