SELECT e.name AS EmployeeName,
       e.salary AS Salary,
       d.name AS DepartmentName
FROM Employees e
JOIN Departments d ON e.department_id = d.id
WHERE d.name = 'Sales'
  AND e.salary > 60000;
