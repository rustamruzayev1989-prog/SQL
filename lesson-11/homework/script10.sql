SELECT 
    p.ProductName, 
    SUM(s.SaleAmount) AS TotalSalesAmount
FROM 
    Products AS p
LEFT JOIN 
    Sales AS s
    ON p.ProductID = s.ProductID
GROUP BY 
    p.ProductName;
