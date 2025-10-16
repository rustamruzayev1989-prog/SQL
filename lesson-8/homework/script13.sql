CREATE TABLE Заказы (
    order_id INT,
    client_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);
SELECT 
    YEAR(order_date) AS Год,
    AVG(total_amount) AS Средняя_сумма_заказа
FROM Заказы
GROUP BY YEAR(order_date)
ORDER BY Год;
