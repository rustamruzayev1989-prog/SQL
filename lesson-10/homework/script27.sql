SELECT p.id AS ProductID,
       p.name AS ProductName,
       c.name AS CategoryName
FROM Products p
JOIN Categories c ON p.category_id = c.id
WHERE c.name IN ('Electronics', 'Furniture');
