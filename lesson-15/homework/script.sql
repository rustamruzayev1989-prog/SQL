SELECT id, name, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);
