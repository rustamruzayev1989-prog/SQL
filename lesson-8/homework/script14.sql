CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT 
    name AS Название_товара,
    price AS Цена,
    CASE
        WHEN price < 100 THEN 'Низкая'
        WHEN price BETWEEN 100 AND 500 THEN 'Средняя'
        WHEN price > 500 THEN 'Высокая'
    END AS Ценовая_группа
FROM Товары;
