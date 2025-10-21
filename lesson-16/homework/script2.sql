| EmployeeID | EmployeeName |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 3          | Charlie      |

    | SaleID | EmployeeID | Amount |
| ------ | ---------- | ------ |
| 101    | 1          | 500    |
| 102    | 1          | 300    |
| 103    | 2          | 700    |
| 104    | 3          | 200    |

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
