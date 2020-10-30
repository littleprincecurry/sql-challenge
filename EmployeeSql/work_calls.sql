SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.emp_no, s.salary
FROM "Employees" e
LEFT JOIN "Salaries" s
ON e.emp_no = s.emp_no;

SELECT *
FROM "Employees"
WHERE EXTRACT (YEAR from hire_date) = 1986;
