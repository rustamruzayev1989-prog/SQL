CREATE TABLE Продажи (
    id INT,
    client_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);
SELECT 
    client_id AS Клиент,
    SUM(quantity * price) AS Общий_объем_продаж
FROM Продажи
GROUP BY client_id;
