CREATE TABLE Продажи (
    id INT,
    category VARCHAR(50),
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);
SELECT 
    category AS Категория,
    SUM(quantity * price) AS Общий_объем_продаж,
    AVG(quantity * price) AS Средний_объем_продаж
FROM Продажи
GROUP BY category;
