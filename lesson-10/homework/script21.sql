SELECT o.id AS OrderID,
       o.order_date AS OrderDate
FROM Orders o
LEFT JOIN Payments p ON o.id = p.order_id
WHERE p.order_id IS NULL
  AND o.order_date < '2020-01-01';
