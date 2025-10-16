CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50)
);

CREATE TABLE Suppliers (
    supplier_id INT,
    supplier_name VARCHAR(50)
);

CREATE TABLE Products_Suppliers (
    product_id INT,
    supplier_id INT
);
SELECT 
    s.supplier_name AS Название_поставщика,
    p.product_name AS Название_товара
FROM Products_Suppliers ps
INNER JOIN Products p ON ps.product_id = p.product_id
INNER JOIN Suppliers s ON ps.supplier_id = s.supplier_id;
