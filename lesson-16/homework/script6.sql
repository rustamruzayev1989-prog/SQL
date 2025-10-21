| EmployeeID | EmployeeName |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 3          | Charlie      |

| SaleID | EmployeeID | SaleAmount |
| ------ | ---------- | ---------- |
| 101    | 1          | 500        |
| 102    | 1          | 300        |
| 103    | 1          | 700        |
| 104    | 2          | 200        |
| 105    | 2          | 300        |
| 106    | 3          | 150        |
| 107    | 1          | 250        |
| 108    | 1          | 600        |
| 109    | 3          | 400        |
| 110    | 1          | 800        |

WITH SalesCount AS (
    SELECT 
        EmployeeID,
        COUNT(*) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
)
SELECT 
    e.EmployeeName,
    s.TotalSales
FROM Employees e
JOIN SalesCount s
    ON e.EmployeeID = s.EmployeeID
WHERE s.TotalSales > 5;
