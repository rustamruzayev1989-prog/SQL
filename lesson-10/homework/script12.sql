SELECT c.first_name AS FirstName,
       c.last_name AS LastName,
       COUNT(o.id) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.id = o.customer_id
GROUP BY c.id, c.first_name, c.last_name
HAVING COUNT(o.id) >= 1;
