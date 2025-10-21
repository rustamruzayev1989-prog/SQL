| ProductID | ProductName |
| --------- | ----------- |
| 1         | Laptop      |
| 2         | Phone       |
| 3         | Tablet      |

| SaleID | ProductID | SaleAmount |
| ------ | --------- | ---------- |
| 101    | 1         | 900        |
| 102    | 1         | 1200       |
| 103    | 2         | 800        |
| 104    | 2         | 750        |
| 105    | 3         | 950        |

SELECT 
    p.ProductID,
    p.ProductName,
    s.MaxSaleAmount
FROM Products p
JOIN (
    SELECT 
        ProductID,
        MAX(SaleAmount) AS MaxSaleAmount
    FROM Sales
    GROUP BY ProductID
) s
ON p.ProductID = s.ProductID;
