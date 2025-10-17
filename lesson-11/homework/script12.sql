SELECT 
    p.ProductName, 
    s.SaleDate, 
    p.StockQuantity
FROM 
    Products AS p
INNER JOIN 
    Sales AS s
    ON p.ProductID = s.ProductID
WHERE 
    YEAR(s.SaleDate) = 2023
    AND p.StockQuantity > 100;
