CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50)
);

CREATE TABLE Suppliers (
    supplier_id INT,
    supplier_name VARCHAR(50)
);
SELECT 
    p.product_name AS Название_продукта,
    s.supplier_name AS Название_поставщика
FROM Products p
CROSS JOIN Suppliers s;
