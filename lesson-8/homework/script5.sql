CREATE TABLE Клиенты (
    id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);
SELECT 
    id,
    name AS Имя,
    country AS Страна
FROM Клиенты
WHERE country LIKE '%А';
