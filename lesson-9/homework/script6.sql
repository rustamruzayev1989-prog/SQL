CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT,
    product_id INT,
    quantity INT
);
SELECT 
    p.product_name AS Название_продукта,
    o.order_id AS Идентификатор_заказа
FROM Orders o
INNER JOIN Products p ON o.product_id = p.product_id;
