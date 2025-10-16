CREATE TABLE Заказы (
    id INT,
    client_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);
SELECT 
    MIN(quantity) AS Минимальное_количество,
    MAX(quantity) AS Максимальное_количество
FROM Заказы;
