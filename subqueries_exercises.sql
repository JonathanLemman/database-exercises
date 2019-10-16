use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows

SELECT *
FROM employees
WHERE employees.hire_date = (
    SELECT employees.hire_date
    FROM employees
    WHERE employees.emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT titles.title
FROM titles
WHERE titles.emp_no IN(
    SELECT employees.emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
    );

# Find all the current department managers that are female.

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE dept_manager.to_date > now()
    )
AND employees.gender = 'f';

