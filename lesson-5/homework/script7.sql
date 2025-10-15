SELECT 
    ProductName,
    StockQuantity,
    IIF(StockQuantity > 100, 'Да', 'Нет') AS InStock
FROM Products_Discounted;
