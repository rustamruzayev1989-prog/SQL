| EmployeeID | EmployeeName |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 3          | Charlie      |

| SaleID | EmployeeID | SaleDate   | SaleAmount |
| ------ | ---------- | ---------- | ---------- |
| 101    | 1          | 2025-01-10 | 15000      |
| 102    | 1          | 2025-02-18 | 20000      |
| 103    | 1          | 2025-03-25 | 12000      |
| 104    | 2          | 2025-04-14 | 30000      |
| 105    | 2          | 2025-05-20 | 20000      |
| 106    | 3          | 2025-06-08 | 10000      |

SELECT 
    e.EmployeeID,
    e.EmployeeName,
    sales_data.SalesQuarter,
    sales_data.TotalSales
FROM Employees e
JOIN (
    SELECT 
        EmployeeID,
        CONCAT(YEAR(SaleDate), '-Q', QUARTER(SaleDate)) AS SalesQuarter,
        SUM(SaleAmount) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID, YEAR(SaleDate), QUARTER(SaleDate)
    HAVING SUM(SaleAmount) > 45000
) AS sales_data
ON e.EmployeeID = sales_data.EmployeeID
ORDER BY e.EmployeeID, sales_data.SalesQuarter;
