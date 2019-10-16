use employees;


# write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) as full_name
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
order by departments.dept_name;

# Find the name of all departments currently managed by women.

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) as full_name
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now() AND employees.employees.gender = 'f'
order by departments.dept_name;