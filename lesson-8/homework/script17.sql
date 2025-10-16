CREATE TABLE Products (
    id INT,
    name VARCHAR(50)
);
SELECT name AS Имя_продукта
FROM Products
WHERE name LIKE '%oo%';
