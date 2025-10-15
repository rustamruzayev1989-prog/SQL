SELECT 
    ProductName,
    Price,
    CASE 
        WHEN Price > 1000 THEN 'High'
        ELSE 'Low'
    END AS PriceCategory
FROM Products;
