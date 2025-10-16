SELECT p.id AS ProductID,
       p.name AS ProductName
FROM Products p
LEFT JOIN Orders o ON p.id = o.product_id
WHERE o.product_id IS NULL;
