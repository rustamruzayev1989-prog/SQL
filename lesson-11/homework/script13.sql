SELECT 
    e.EmployeeName, 
    d.DepartmentName, 
    e.HireDate
FROM 
    Employees AS e
INNER JOIN 
    Departments AS d
    ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'Sales'
    OR e.HireDate > '2020-12-31';
