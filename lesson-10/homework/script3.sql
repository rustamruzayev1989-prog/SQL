SELECT e.name AS EmployeeName,
       d.name AS DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.id;
