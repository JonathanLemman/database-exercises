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

# Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title as Title, count(*) as Count
from titles
join employees on titles.emp_no = employees.emp_no
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'customer service' AND titles.to_date > now() AND dept_emp.to_date > now()
group by titles.title;

# Find the current salary of all current managers.

SELECT departments.dept_name, concat(employees.first_name, ' ', employees.last_name), salaries.salary
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date > now() AND salaries.to_date > now()
order by departments.dept_name;