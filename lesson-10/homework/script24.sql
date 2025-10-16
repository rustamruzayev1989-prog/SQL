SELECT s.id AS SaleID,
       p.name AS ProductName,
       s.amount AS SaleAmount
FROM Sales s
JOIN Products p ON s.product_id = p.id
WHERE s.amount > 500;
