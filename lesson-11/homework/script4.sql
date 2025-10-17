SELECT 
    d.DepartmentName, 
    MAX(e.Salary) AS MaxSalary
FROM 
    Departments AS d
INNER JOIN 
    Employees AS e
    ON d.DepartmentID = e.DepartmentID
GROUP BY 
    d.DepartmentName;
