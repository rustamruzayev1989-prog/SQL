CREATE TABLE Products (
    id INT,
    name VARCHAR(100),
    price DECIMAL(10,2)
);
SELECT 
    name AS ProductName
FROM Products
WHERE name LIKE '%er';
