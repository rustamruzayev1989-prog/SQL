SELECT 
    ProductName,
    Price,
    IIF(Price > 1000, 'Дорого', 'Доступно') AS ЦеноваяКатегория
FROM Продукты;
