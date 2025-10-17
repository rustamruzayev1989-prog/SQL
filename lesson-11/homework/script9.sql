SELECT 
    p.ProductName, 
    s.SaleDate, 
    s.SaleAmount
FROM 
    Products AS p
INNER JOIN 
    Sales AS s
    ON p.ProductID = s.ProductID
WHERE 
    YEAR(s.SaleDate) = 2022
    OR s.SaleAmount > 400;
