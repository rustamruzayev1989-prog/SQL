SELECT 
    c.CustomerName, 
    MAX(o.OrderDate) AS MostRecentOrderDate
FROM 
    Customers AS c
LEFT JOIN 
    Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerName;
