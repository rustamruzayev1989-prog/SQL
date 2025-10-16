CREATE TABLE Продукты (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT COUNT(DISTINCT category) AS Количество_уникальных_категорий
FROM Продукты;
