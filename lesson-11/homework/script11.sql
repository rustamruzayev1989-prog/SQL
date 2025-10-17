SELECT 
    e.EmployeeName, 
    d.DepartmentName, 
    e.Salary
FROM 
    Employees AS e
INNER JOIN 
    Departments AS d
    ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'HR'
    AND e.Salary > 60000;
