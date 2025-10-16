CREATE TABLE Заказы (
    order_id INT,
    client_id INT,
    order_date DATE
);

CREATE TABLE СчетаФактуры (
    invoice_id INT,
    client_id INT,
    invoice_date DATE
);
SELECT DISTINCT o.client_id
FROM Заказы o
LEFT JOIN СчетаФактуры f 
    ON o.client_id = f.client_id
WHERE 
    o.order_date >= '2023-01-01'
    AND o.order_date < '2023-02-01'
    AND f.client_id IS NULL;
