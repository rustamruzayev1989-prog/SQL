CREATE TABLE Клиенты (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);
SELECT 
    id,
    name AS Имя,
    city AS Город
FROM Клиенты
WHERE city LIKE 'Л%';
