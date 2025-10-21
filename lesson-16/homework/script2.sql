SELECT 
    e.EmployeeID,
    e.EmployeeName,
    s.TotalSales
FROM Employees e
JOIN (
    SELECT 
        EmployeeID,
        SUM(Amount) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
) s
ON e.EmployeeID = s.EmployeeID;
