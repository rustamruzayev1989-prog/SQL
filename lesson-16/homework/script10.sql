| ProductID | ProductName | Category    |
| --------- | ----------- | ----------- |
| 1         | Laptop      | Electronics |
| 2         | Phone       | Electronics |
| 3         | Desk        | Furniture   |
| 4         | Chair       | Furniture   |

| SaleID | ProductID | SaleAmount |
| ------ | --------- | ---------- |
| 101    | 1         | 800        |
| 102    | 2         | 600        |
| 103    | 3         | 300        |
| 104    | 4         | 200        |
| 105    | 1         | 1200       |

SELECT 
    p.Category,
    SUM(sales_data.TotalSales) AS CategorySales
FROM (
    SELECT 
        ProductID,
        SUM(SaleAmount) AS TotalSales
    FROM Sales
    GROUP BY ProductID
) AS sales_data
JOIN Products p 
    ON p.ProductID = sales_data.ProductID
GROUP BY p.Category
ORDER BY CategorySales DESC;
