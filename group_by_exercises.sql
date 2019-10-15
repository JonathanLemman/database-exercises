use employees;

select distinct title from titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
group by last_name;