CREATE TABLE Продукты (
    id INT,
    name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);
SELECT 
    id,
    name AS Название,
    quantity AS Количество,
    CASE 
        WHEN quantity < 30 THEN 'Мало запасов'
        ELSE 'Достаточно'
    END AS СтатусЗапаса
FROM Продукты;
