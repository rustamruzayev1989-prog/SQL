SELECT 
    ProductID,
    ProductName,
    ISNULL(Price, 0) AS Price,
    CategoryID,
    Stock
FROM Products;
