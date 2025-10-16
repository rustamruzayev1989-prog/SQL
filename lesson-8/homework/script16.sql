CREATE TABLE Продажи (
    sale_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);
SELECT 
    product_id AS ProductID,
    SUM(quantity * price) AS Общий_объем_продаж
FROM Продажи
GROUP BY product_id
ORDER BY product_id;
