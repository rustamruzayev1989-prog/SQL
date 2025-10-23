SELECT e.id, e.name, e.salary, e.department_id
FROM employees e
WHERE e.salary > (SELECT AVG(salary) FROM employees)
  AND e.salary < (
      SELECT MAX(e2.salary)
      FROM employees e2
      WHERE e2.department_id = e.department_id
  );

