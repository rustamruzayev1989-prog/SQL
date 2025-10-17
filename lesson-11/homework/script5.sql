SELECT 
    c.CustomerName, 
    COUNT(o.OrderID) AS TotalOrders
FROM 
    Customers AS c
LEFT JOIN 
    Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerName;
