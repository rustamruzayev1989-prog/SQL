SELECT e.name AS EmployeeName,
       d.name AS DepartmentName
FROM Employees e
JOIN Departments d ON e.department_id = d.id
WHERE d.name = 'Human Resources';
