CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT 
    AVG(price) AS Средняя_цена_электроники
FROM Товары
WHERE category = 'Электроника';
