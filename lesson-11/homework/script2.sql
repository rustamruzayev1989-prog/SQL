SELECT 
    e.EmployeeName, 
    d.DepartmentName
FROM 
    Employees AS e
INNER JOIN 
    Departments AS d
    ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('Sales', 'Marketing');
