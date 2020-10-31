SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" e
LEFT JOIN "Salaries" s
ON e.emp_no = s.emp_no;

SELECT *
FROM "Employees"
WHERE EXTRACT (YEAR from hire_date) = 1986;

SELECT m.emp_no, m.dept_no, d.dept_name, e.first_name, e.last_name
FROM "Department_Managers" m
LEFT JOIN "Departments" d
ON m.dept_no = d.dept_no
LEFT JOIN "Employees" e
ON m.emp_no = e.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM "Employees" e
LEFT JOIN "Department_Employees" p
on e.emp_no = p.emp_no
LEFT JOIN "Departments" d
on d.dept_no = p.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
LEFT JOIN "Department_Employees" p
on e.emp_no = p.emp_no
LEFT JOIN "Departments" d
on d.dept_no = p.dept_no
WHERE d.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
LEFT JOIN "Department_Employees" p
on e.emp_no = p.emp_no
LEFT JOIN "Departments" d
on d.dept_no = p.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;
