SELECT 
    e.EmployeeID,
    e.EmployeeName,
    s.TotalOrders
FROM Employees e
JOIN (
    SELECT 
        EmployeeID,
        COUNT(*) AS TotalOrders
    FROM Sales
    GROUP BY EmployeeID
) s
ON e.EmployeeID = s.EmployeeID
ORDER BY s.TotalOrders DESC
LIMIT 5;  -- (Use TOP 5 for SQL Server)
