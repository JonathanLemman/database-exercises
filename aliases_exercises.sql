use employees;

select CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date as DOM
from employees
limit 10;