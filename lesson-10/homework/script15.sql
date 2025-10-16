SELECT o.id AS OrderID,
       o.order_date AS OrderDate,
       c.first_name AS FirstName,
       c.last_name AS LastName
FROM Orders o
JOIN Customers c ON o.customer_id = c.id
WHERE YEAR(o.order_date) = 2022;
