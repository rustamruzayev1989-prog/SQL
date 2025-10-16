SELECT c.first_name AS FirstName,
       c.last_name AS LastName,
       o.quantity AS Quantity
FROM Orders o
JOIN Customers c ON o.customer_id = c.id
WHERE o.quantity > 3;
