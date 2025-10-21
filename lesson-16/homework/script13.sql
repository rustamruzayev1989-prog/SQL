| SaleID | SaleDate   | SaleAmount |
| ------ | ---------- | ---------- |
| 1      | 2025-01-15 | 1000       |
| 2      | 2025-02-10 | 1200       |
| 3      | 2025-03-12 | 900        |
| 4      | 2025-04-05 | 1500       |

WITH MonthlySales AS (
    SELECT
        DATE_FORMAT(SaleDate, '%Y-%m') AS Month,   -- Use FORMAT for SQL Server: FORMAT(SaleDate, 'yyyy-MM')
        SUM(SaleAmount) AS TotalSales
    FROM Sales
    GROUP BY DATE_FORMAT(SaleDate, '%Y-%m')
)
SELECT
    Month,
    TotalSales,
    TotalSales - LAG(TotalSales) OVER (ORDER BY Month) AS SalesDifference
FROM MonthlySales
ORDER BY Month;
