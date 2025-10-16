SELECT e.name AS EmployeeName,
       m.name AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.id;
