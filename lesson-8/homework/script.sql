CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT 
    category AS Категория,
    COUNT(*) AS Количество_товаров
FROM Товары
GROUP BY category;
