SELECT c.first_name AS FirstName,
       c.last_name AS LastName,
       o.order_date AS OrderDate
FROM Orders o
JOIN Customers c ON o.customer_id = c.id
WHERE YEAR(o.order_date) = 2023;
