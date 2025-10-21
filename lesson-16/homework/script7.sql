| ProductID | ProductName |
| --------- | ----------- |
| 1         | Laptop      |
| 2         | Phone       |
| 3         | Tablet      |

| SaleID | ProductID | SaleAmount |
| ------ | --------- | ---------- |
| 101    | 1         | 300        |
| 102    | 1         | 400        |
| 103    | 2         | 200        |
| 104    | 2         | 350        |
| 105    | 3         | 1000       |

WITH ProductSales AS (
    SELECT 
        ProductID,
        SUM(SaleAmount) AS TotalSales
    FROM Sales
    GROUP BY ProductID
)
SELECT 
    p.ProductID,
    p.ProductName,
    ps.TotalSales
FROM Products p
JOIN ProductSales ps
    ON p.ProductID = ps.ProductID
WHERE ps.TotalSales > 500;
