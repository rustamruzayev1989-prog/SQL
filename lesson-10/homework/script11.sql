SELECT p.id AS ProductID,
       p.name AS ProductName
FROM Products p
LEFT JOIN Sales s ON p.id = s.product_id
WHERE s.product_id IS NULL;
