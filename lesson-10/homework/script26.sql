SELECT o.id AS OrderID,
       o.order_date AS OrderDate,
       p.id AS PaymentID
FROM Orders o
LEFT JOIN Payments p ON o.id = p.order_id
WHERE p.id IS NULL;
