CREATE TABLE Clients (
    client_id INT,
    client_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT,
    client_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);
SELECT 
    c.client_name AS Имя_клиента,
    o.order_id AS Идентификатор_заказа
FROM Orders o
INNER JOIN Clients c ON o.client_id = c.client_id;
