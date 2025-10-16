CREATE TABLE Заказы (
    id INT,
    client_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);
SELECT 
    client_id AS Клиент,
    COUNT(*) AS Количество_заказов
FROM Заказы
GROUP BY client_id
HAVING COUNT(*) >= 3;
