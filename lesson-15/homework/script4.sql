SELECT e.id, e.name, d.department_name
FROM employees e
JOIN departments d
  ON e.department_id = d.id
WHERE d.department_name = 'Sales';
