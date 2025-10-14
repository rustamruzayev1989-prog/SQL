SELECT *
FROM employees
WHERE age < 30
  AND (department = 'HR' OR department = 'IT');
