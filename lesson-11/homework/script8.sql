SELECT 
    c.CustomerName, 
    o.OrderTotal
FROM 
    Orders AS o
INNER JOIN 
    Customers AS c
    ON o.CustomerID = c.CustomerID
WHERE 
    o.OrderTotal > 500;
