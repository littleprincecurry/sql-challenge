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