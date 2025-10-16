CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT 
    category AS Категория,
    AVG(price) AS Средняя_цена
FROM Товары
GROUP BY category
HAVING AVG(price) > 400;
