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

# Find all the department names that currently have female managers.

SELECT departments.dept_name
FROM departments
WHERE departments.dept_no IN(
    SELECT dept_manager.dept_no
    FROM dept_manager
    WHERE dept_manager.to_date > now() AND dept_manager.emp_no IN(
        SELECT employees.emp_no
        FROM employees
        WHERE employees.gender = 'f'
        )
);


# Find the first and last name of the employee with the highest salary.

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no IN(
    SELECT salaries.emp_no
    FROM salaries
    WHERE salaries.salary IN(
        SELECT max(salary)
        FROM salaries
        )
    )
