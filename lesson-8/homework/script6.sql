CREATE TABLE Товары (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
SELECT 
    MAX(price) AS Самая_высокая_цена
FROM Товары;
