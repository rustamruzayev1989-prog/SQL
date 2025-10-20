SELECT e.id, e.name, e.salary, d.department_name
FROM employees e
JOIN departments d
  ON e.department_id = d.id
WHERE e.department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);
