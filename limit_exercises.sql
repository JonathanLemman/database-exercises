use employees;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name desc
LIMIT 10;

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date,hire_date desc
LIMIT 5 OFFSET 45;