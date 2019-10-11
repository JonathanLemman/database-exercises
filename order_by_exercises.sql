use employees;


-- Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name desc, first_name desc;

-- Find all employees whose last name starts with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name Like 'e%'
ORDER BY emp_no desc;

-- Find all employees hired in the 90s
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Find all employees born on Christmas
SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

-- Find all employees with a 'q' in their last name
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE gender = 'M'
AND (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya');

-- Find all employees whose last name starts or ends with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

-- Find all employees hired in the 90s and born on Christmas
SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date,hire_date desc;

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';