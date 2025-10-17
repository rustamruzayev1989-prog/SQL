SELECT 
    o.OrderID, 
    c.CustomerName, 
    o.OrderDate
FROM 
    Orders AS o
INNER JOIN 
    Customers AS c
    ON o.CustomerID = c.CustomerID
WHERE 
    o.OrderDate > '2022-12-31';
