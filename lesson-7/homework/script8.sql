CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT 
    category AS Категория,
    MIN(price) AS Минимальная_цена,
    MAX(price) AS Максимальная_цена
FROM Товары
GROUP BY category;
