SELECT d.name AS DepartmentName,
       COUNT(e.id) AS EmployeeCount
FROM Employees e
JOIN Departments d ON e.department_id = d.id
GROUP BY d.name
HAVING COUNT(e.id) > 5;
