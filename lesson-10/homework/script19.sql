SELECT e.name AS EmployeeName,
       e.salary AS Salary
FROM Employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE department_id = e.department_id
);
