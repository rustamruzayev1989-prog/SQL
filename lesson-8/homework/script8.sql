CREATE TABLE Клиенты (
    id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);
SELECT 
    country AS Страна,
    COUNT(*) AS Количество_клиентов
FROM Клиенты
GROUP BY country;
