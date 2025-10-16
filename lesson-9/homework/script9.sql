CREATE TABLE Orders (
    order_id INT,
    client_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

CREATE TABLE Payments (
    payment_id INT,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2)
);
SELECT 
    o.order_id AS Идентификатор_заказа,
    o.client_id AS Идентификатор_клиента,
    o.order_date AS Дата_заказа,
    o.total_amount AS Сумма_заказа
FROM Orders o
INNER JOIN Payments p ON o.order_id = p.order_id
GROUP BY o.order_id, o.client_id, o.order_date, o.total_amount;
