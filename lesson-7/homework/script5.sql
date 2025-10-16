CREATE TABLE Продажи (
    id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);
SELECT 
    SUM(quantity * price) AS Общая_сумма_продаж
FROM Продажи
WHERE product_id = 7;
